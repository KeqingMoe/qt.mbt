///|
using @qt {
  type QApplication,
  type QComboBox,
  type NullptrError,
  type QBoxLayout,
  type QCheckBox,
  type QGridLayout,
  type QGroupBox,
  type QLabel,
  type QLineEdit,
  type QObject,
  type QNetworkAccessManager,
  type QNetworkRequest,
  type QPlainTextEdit,
  type QPushButton,
  type QTabWidget,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
struct ExtractedContent {
  answer : String
  reasoning : String
}

///|
fn ExtractedContent::empty() -> Self {
  ExtractedContent::{ answer: "", reasoning: "" }
}

///|
fn append_text_value(current : String, next : String) -> String {
  if next == "" {
    current
  } else if current == "" {
    next
  } else {
    current + next
  }
}

///|
fn append_block_value(current : String, next : String) -> String {
  let normalized = next.trim().to_string()
  if normalized == "" {
    current
  } else if current == "" {
    normalized
  } else {
    current + "\n\n" + normalized
  }
}

///|
fn build_responses_request_body(
  model : String,
  prompt : String,
  stream : Bool,
  reasoning_summary : Bool,
) -> Bytes {
  let model_json = model.to_json().stringify(escape_slash=false)
  let prompt_json = prompt.to_json().stringify(escape_slash=false)
  let stream_json = if stream { "true" } else { "false" }
  let body = StringBuilder::new()
  body.write_string("{\"model\": ")
  body.write_string(model_json)
  body.write_string(", \"input\": ")
  body.write_string(prompt_json)
  if reasoning_summary {
    body.write_string(", \"reasoning\": {\"summary\": \"auto\"}")
  }
  body.write_string(", \"stream\": ")
  body.write_string(stream_json)
  body.write_string("}")
  @utf8.encode(body.to_string())
}

///|
fn build_chat_completions_request_body(
  model : String,
  prompt : String,
  stream : Bool,
  reasoning_enabled : Bool,
) -> Bytes {
  let model_json = model.to_json().stringify(escape_slash=false)
  let prompt_json = prompt.to_json().stringify(escape_slash=false)
  let stream_json = if stream { "true" } else { "false" }
  let body = StringBuilder::new()
  body.write_string("{\"model\": ")
  body.write_string(model_json)
  body.write_string(", \"messages\": [{\"role\": \"user\", \"content\": ")
  body.write_string(prompt_json)
  body.write_string("}]")
  if reasoning_enabled {
    body.write_string(", \"reasoning\": {\"enabled\": true}")
  }
  body.write_string(", \"stream\": ")
  body.write_string(stream_json)
  body.write_string("}")
  @utf8.encode(body.to_string())
}

///|
fn label(text : String) -> QLabel raise NullptrError {
  let value = QLabel::new()
  value.setText(text)
  value
}

///|
fn normalize_base_url(base_url : String) -> String {
  base_url.trim().trim_end(chars="/").to_string()
}

///|
fn is_openrouter_mode(mode_index : Int) -> Bool {
  mode_index == 1
}

///|
fn default_base_url(mode_index : Int) -> String {
  if is_openrouter_mode(mode_index) {
    "https://openrouter.ai/api/v1"
  } else {
    "https://api.openai.com/v1"
  }
}

///|
fn request_url(base_url : String, mode_index : Int) -> String {
  if is_openrouter_mode(mode_index) {
    "\{base_url}/chat/completions"
  } else {
    "\{base_url}/responses"
  }
}

///|
fn plain_editor(
  placeholder : String,
  read_only? : Bool = false,
  no_wrap? : Bool = false,
) -> QPlainTextEdit raise NullptrError {
  let editor = QPlainTextEdit::new()
  editor.setPlaceholderText(placeholder)
  editor.setReadOnly(read_only)
  if no_wrap {
    editor.setLineWrapMode(NoWrap)
  }
  editor
}

///|
fn sync_editor(
  editor : QPlainTextEdit,
  text : String,
) -> Unit raise NullptrError {
  if text == "" {
    editor.clear()
  } else {
    editor.setPlainText(text)
  }
}

///|
fn sync_outputs(
  answer : QPlainTextEdit,
  reasoning : QPlainTextEdit,
  raw : QPlainTextEdit,
  answer_text : String,
  reasoning_text : String,
  raw_text : String,
) -> Unit raise NullptrError {
  sync_editor(answer, answer_text)
  sync_editor(reasoning, reasoning_text)
  sync_editor(raw, raw_text)
}

///|
fn json_object_field(json : Json, key : String) -> Json? {
  match json {
    Object(object) => object.get(key)
    _ => None
  }
}

///|
fn json_array_field(json : Json, key : String) -> Array[Json]? {
  match json_object_field(json, key) {
    Some(Array(items)) => Some(items)
    _ => None
  }
}

///|
fn json_string_field(json : Json, key : String) -> String? {
  match json_object_field(json, key) {
    Some(String(value)) => Some(value)
    _ => None
  }
}

///|
fn json_first_array_item(json : Json, key : String) -> Json? {
  match json_array_field(json, key) {
    Some(items) => items.get(0)
    None => None
  }
}

///|
fn json_plain_text(json : Json) -> String? {
  match json {
    String(value) => Some(value)
    Object(object) =>
      match object.get("text") {
        Some(String(value)) => Some(value)
        _ => None
      }
    Array(items) => {
      let parts : Array[String] = []
      items.each(item => {
        match json_plain_text(item) {
          Some(text) => parts.push(text)
          None => ()
        }
      })
      let joined = parts.join("")
      if joined == "" {
        None
      } else {
        Some(joined)
      }
    }
    _ => None
  }
}

///|
fn response_payload(json : Json) -> Json {
  match json_object_field(json, "response") {
    Some(response) => response
    None => json
  }
}

///|
fn response_error_message(json : Json) -> String? {
  match json_object_field(response_payload(json), "error") {
    Some(error) => json_string_field(error, "message")
    None => None
  }
}

///|
fn extract_part(part : Json) -> ExtractedContent {
  match json_string_field(part, "type") {
    Some("output_text") =>
      match json_string_field(part, "text") {
        Some(text) => ExtractedContent::{ answer: text, reasoning: "" }
        None => ExtractedContent::empty()
      }
    Some("reasoning_text") | Some("summary_text") =>
      match json_string_field(part, "text") {
        Some(text) => ExtractedContent::{ answer: "", reasoning: text }
        None => ExtractedContent::empty()
      }
    Some("refusal") =>
      match json_string_field(part, "refusal") {
        Some(text) =>
          ExtractedContent::{ answer: "[refusal]\n" + text, reasoning: "" }
        None => ExtractedContent::empty()
      }
    _ => ExtractedContent::empty()
  }
}

///|
fn merge_extracted(
  current : ExtractedContent,
  next : ExtractedContent,
) -> ExtractedContent {
  ExtractedContent::{
    answer: append_text_value(current.answer, next.answer),
    reasoning: append_text_value(current.reasoning, next.reasoning),
  }
}

///|
fn fill_missing_extracted(
  current : ExtractedContent,
  fallback : ExtractedContent,
) -> ExtractedContent {
  ExtractedContent::{
    answer: if current.answer == "" {
      fallback.answer
    } else {
      current.answer
    },
    reasoning: if current.reasoning == "" {
      fallback.reasoning
    } else {
      current.reasoning
    },
  }
}

///|
fn extract_responses_content(json : Json) -> ExtractedContent {
  let response = response_payload(json)
  let mut answer = ""
  let mut reasoning = ""

  match json_array_field(response, "output") {
    Some(output) =>
      output.each(item => {
        match json_string_field(item, "type") {
          Some("message") =>
            match json_array_field(item, "content") {
              Some(parts) =>
                parts.each(part => {
                  let extracted = extract_part(part)
                  answer = append_text_value(answer, extracted.answer)
                  reasoning = append_text_value(reasoning, extracted.reasoning)
                })
              None => ()
            }
          Some("reasoning") => {
            match json_array_field(item, "summary") {
              Some(parts) =>
                parts.each(part => {
                  let extracted = extract_part(part)
                  reasoning = append_block_value(reasoning, extracted.reasoning)
                })
              None => ()
            }
            match json_array_field(item, "content") {
              Some(parts) =>
                parts.each(part => {
                  let extracted = extract_part(part)
                  answer = append_text_value(answer, extracted.answer)
                  reasoning = append_text_value(reasoning, extracted.reasoning)
                })
              None => ()
            }
          }
          _ => ()
        }
      })
    None => ()
  }

  if answer == "" && reasoning == "" {
    match response_error_message(response) {
      Some(message) => reasoning = message
      None => ()
    }
  }

  ExtractedContent::{ answer, reasoning }
}

///|
fn extract_openrouter_response(json : Json) -> ExtractedContent {
  match json_object_field(json, "error") {
    Some(error) =>
      match json_string_field(error, "message") {
        Some(message) =>
          ExtractedContent::{ answer: "", reasoning: "[error] " + message }
        None => ExtractedContent::empty()
      }
    None =>
      match json_first_array_item(json, "choices") {
        Some(choice) =>
          match json_object_field(choice, "message") {
            Some(message) => {
              let answer = match json_object_field(message, "content") {
                Some(content) =>
                  match json_plain_text(content) {
                    Some(text) => text
                    None => ""
                  }
                None => ""
              }
              let reasoning = match json_object_field(message, "reasoning") {
                Some(reasoning_json) =>
                  match json_plain_text(reasoning_json) {
                    Some(text) => text
                    None => ""
                  }
                None => ""
              }
              ExtractedContent::{ answer, reasoning }
            }
            None => ExtractedContent::empty()
          }
        None => ExtractedContent::empty()
      }
  }
}

///|
fn parse_sse_event_json(block : String) -> Json? {
  let payload_lines : Array[String] = []
  block
  .split("\n")
  .map(StringView::to_string)
  .each(line => {
    let normalized = line.trim_end(chars="\r").to_string()
    if normalized.length() >= 5 && normalized[:5] == "data:" {
      payload_lines.push(normalized[5:].trim_start(chars=" ").to_string())
    }
  })

  let payload = payload_lines.join("\n")
  if payload == "" || payload == "[DONE]" {
    return None
  }

  try @json.parse(payload) catch {
    _ => None
  } noraise {
    json => Some(json)
  }
}

///|
fn extract_stream_event(json : Json) -> ExtractedContent {
  match json_string_field(json, "type") {
    Some("response.output_text.delta") =>
      match json_string_field(json, "delta") {
        Some(delta) => ExtractedContent::{ answer: delta, reasoning: "" }
        None => ExtractedContent::empty()
      }
    Some("response.reasoning_summary_text.delta")
    | Some("response.reasoning_text.delta") =>
      match json_string_field(json, "delta") {
        Some(delta) => ExtractedContent::{ answer: "", reasoning: delta }
        None => ExtractedContent::empty()
      }
    Some("response.failed") => extract_responses_content(json)
    _ => ExtractedContent::empty()
  }
}

///|
fn extract_openrouter_stream_event(json : Json) -> ExtractedContent {
  match json_object_field(json, "error") {
    Some(error) =>
      match json_string_field(error, "message") {
        Some(message) =>
          ExtractedContent::{ answer: "", reasoning: "[error] " + message }
        None => ExtractedContent::empty()
      }
    None =>
      match json_first_array_item(json, "choices") {
        Some(choice) =>
          match json_object_field(choice, "delta") {
            Some(delta) => {
              let answer = match json_object_field(delta, "content") {
                Some(content) =>
                  match json_plain_text(content) {
                    Some(text) => text
                    None => ""
                  }
                None => ""
              }
              let reasoning = match json_object_field(delta, "reasoning") {
                Some(reasoning_json) =>
                  match json_plain_text(reasoning_json) {
                    Some(text) => text
                    None => ""
                  }
                None => ""
              }
              ExtractedContent::{ answer, reasoning }
            }
            None => ExtractedContent::empty()
          }
        None => ExtractedContent::empty()
      }
  }
}

///|
fn extract_sse_event_block(block : String) -> ExtractedContent {
  match parse_sse_event_json(block) {
    Some(json) => extract_stream_event(json)
    None => ExtractedContent::empty()
  }
}

///|
fn extract_openrouter_sse_event_block(block : String) -> ExtractedContent {
  match parse_sse_event_json(block) {
    Some(json) => extract_openrouter_stream_event(json)
    None => ExtractedContent::empty()
  }
}

///|
fn extract_sse_fallback(raw_text : String) -> ExtractedContent {
  let normalized = raw_text.split("\r\n").map(StringView::to_string).join("\n")
  let blocks = normalized.split("\n\n").map(StringView::to_string).collect()
  let mut extracted = ExtractedContent::empty()

  blocks.each(block => {
    match parse_sse_event_json(block) {
      Some(json) =>
        match json_string_field(json, "type") {
          Some("response.completed") | Some("response.failed") =>
            extracted = fill_missing_extracted(
              extracted,
              extract_responses_content(json),
            )
          Some("response.reasoning_summary_part.done")
          | Some("response.reasoning_summary_part.added")
          | Some("response.content_part.done") =>
            match json_object_field(json, "part") {
              Some(part) =>
                extracted = fill_missing_extracted(
                  extracted,
                  extract_part(part),
                )
              None => ()
            }
          _ => ()
        }
      None => ()
    }
  })
  extracted
}

///|
fn extract_openrouter_sse_fallback(raw_text : String) -> ExtractedContent {
  let normalized = raw_text.split("\r\n").map(StringView::to_string).join("\n")
  let blocks = normalized.split("\n\n").map(StringView::to_string).collect()
  let mut extracted = ExtractedContent::empty()

  blocks.each(block => {
    match parse_sse_event_json(block) {
      Some(json) =>
        extracted = fill_missing_extracted(
          extracted,
          merge_extracted(
            extract_openrouter_response(json),
            extract_openrouter_stream_event(json),
          ),
        )
      None => ()
    }
  })
  extracted
}

///|
fn extract_sse_chunks(buffer : String) -> (String, ExtractedContent) {
  let normalized = buffer.split("\r\n").map(StringView::to_string).join("\n")
  let blocks = normalized.split("\n\n").map(StringView::to_string).collect()
  if blocks.length() == 0 {
    return (normalized, ExtractedContent::empty())
  }

  let mut extracted = ExtractedContent::empty()
  let complete_count = blocks.length() - 1
  for i in 0..<complete_count {
    extracted = merge_extracted(extracted, extract_sse_event_block(blocks[i]))
  }
  (blocks[blocks.length() - 1], extracted)
}

///|
fn extract_openrouter_sse_chunks(buffer : String) -> (String, ExtractedContent) {
  let normalized = buffer.split("\r\n").map(StringView::to_string).join("\n")
  let blocks = normalized.split("\n\n").map(StringView::to_string).collect()
  if blocks.length() == 0 {
    return (normalized, ExtractedContent::empty())
  }

  let mut extracted = ExtractedContent::empty()
  let complete_count = blocks.length() - 1
  for i in 0..<complete_count {
    extracted = merge_extracted(
      extracted,
      extract_openrouter_sse_event_block(blocks[i]),
    )
  }
  (blocks[blocks.length() - 1], extracted)
}

///|
struct ApiWorkbench(QWidget)

///|
fn ApiWorkbench::new(args : Array[String]) -> Self raise NullptrError {
  let manager = QNetworkAccessManager::new()

  let api_mode = QComboBox::new()
  api_mode.addItem("OpenAI Responses")
  api_mode.addItem("OpenRouter Chat")

  let api_key = QLineEdit::new()
  api_key.setEchoMode(Password)
  api_key.setPlaceholderText("sk-...")

  let model = QLineEdit::new()

  let base_url = QLineEdit::new()
  base_url.setText(default_base_url(0))
  base_url.setPlaceholderText(default_base_url(0))

  let stream = QCheckBox::new()
  stream.setText("Stream response")
  stream.setChecked(true)

  let reasoning_summary = QCheckBox::new()
  reasoning_summary.setText("Enable reasoning when supported")
  reasoning_summary.setChecked(true)

  let prompt = plain_editor(
    "Write your prompt or message here. The request path depends on API mode.",
  )
  let answer = plain_editor("Model output appears here.", read_only=true)
  let thinking = plain_editor(
    "Reasoning or thinking content appears here when the provider returns it.",
    read_only=true,
  )
  let raw = plain_editor(
    "Raw JSON or SSE payloads appear here for debugging.",
    read_only=true,
    no_wrap=true,
  )

  let status = QLabel::new()
  status.setWordWrap(true)
  status.setText("Ready. Configure an API mode and send a request.")

  let send = QPushButton::new()
  send.setText("Send Request")

  let clear = QPushButton::new()
  clear.setText("Clear Output")

  if args.length() > 1 {
    api_key.setText(args[1])
  }
  if args.length() > 2 {
    model.setText(args[2])
  }
  if args.length() > 3 {
    base_url.setText(args[3])
    if args[3].contains("openrouter.ai") {
      api_mode.setCurrentIndex(1)
    }
  }
  if args.length() > 4 {
    prompt.setPlainText(args[4])
  }

  let refresh_mode = () => {
    let mode_index = api_mode.currentIndex()
    if is_openrouter_mode(mode_index) {
      reasoning_summary.setText("Enable reasoning tokens")
    } else {
      reasoning_summary.setText("Request reasoning summary when supported")
    }

    let current = normalize_base_url(base_url.text())
    let openai_default = default_base_url(0)
    let openrouter_default = default_base_url(1)
    if current == "" ||
      current == openai_default ||
      current == openrouter_default {
      let next_default = default_base_url(mode_index)
      base_url.setText(next_default)
      base_url.setPlaceholderText(next_default)
    } else {
      base_url.setPlaceholderText(default_base_url(mode_index))
    }
  }

  let _ = QObject::connect(api_mode.currentIndexChanged(), _ => refresh_mode())
  refresh_mode()

  let request_box = QGroupBox::new()
  request_box.setTitle("Request")
  let request_grid = QGridLayout::new()
  request_grid.addWidget(label("API Key"), 0, 0)
  request_grid.addWidget(api_key, 0, 1, columnSpan=3)
  request_grid.addWidget(label("API Mode"), 1, 0)
  request_grid.addWidget(api_mode, 1, 1)
  request_grid.addWidget(label("Model"), 1, 2)
  request_grid.addWidget(model, 1, 3)
  request_grid.addWidget(label("Base URL"), 2, 0)
  request_grid.addWidget(base_url, 2, 1, columnSpan=3)
  request_grid.addWidget(stream, 3, 0, columnSpan=2)
  request_grid.addWidget(reasoning_summary, 3, 2, columnSpan=2)
  request_grid.setColumnStretch(1, 1)
  request_grid.setColumnStretch(3, 2)
  request_box.setLayout(request_grid)

  let prompt_box = QGroupBox::new()
  prompt_box.setTitle("Prompt")
  let prompt_layout = QBoxLayout::vertical()
  prompt_layout.addWidget(prompt)
  prompt_box.setLayout(prompt_layout)

  let tabs = QTabWidget::new()
  let _ = tabs.addTab(answer, "Answer")
  let _ = tabs.addTab(thinking, "Thinking")
  let _ = tabs.addTab(raw, "Raw")
  tabs.setTabToolTip(0, "Parsed main model output")
  tabs.setTabToolTip(1, "Reasoning or thinking content when available")
  tabs.setTabToolTip(2, "Full raw JSON body or SSE stream")

  let response_box = QGroupBox::new()
  response_box.setTitle("Response")
  let response_layout = QBoxLayout::vertical()
  response_layout.addWidget(tabs)
  response_box.setLayout(response_layout)

  let actions = QBoxLayout::horizontal()
  actions.addWidget(clear)
  actions.addStretch()
  actions.addWidget(send)

  let root = QWidget::new()
  root.setMinimumSize(980, 760)

  let outer = QBoxLayout::vertical()
  outer.addWidget(request_box)
  outer.addWidget(prompt_box)
  outer.addLayout(actions)
  outer.addWidget(response_box, stretch=1)
  outer.addWidget(status)
  root.setLayout(outer)

  let _ = QObject::connect(clear.clicked(), _ => {
    answer.clear()
    thinking.clear()
    raw.clear()
    tabs.setCurrentIndex(0)
    status.setText("Output cleared.")
  })

  let _ = QObject::connect(send.clicked(), _ => {
    let mode_index = api_mode.currentIndex()
    let key_value = api_key.text().trim().to_string()
    let model_value = model.text().trim().to_string()
    let base_url_value = normalize_base_url(base_url.text())
    let prompt_value = prompt.toPlainText().trim().to_string()
    let stream_value = stream.isChecked()
    let reasoning_summary_value = reasoning_summary.isChecked()

    if key_value == "" {
      status.setText("API Key is required.")
      return
    }
    if model_value == "" {
      status.setText("Model is required.")
      return
    }
    if base_url_value == "" {
      status.setText("Base URL is required.")
      return
    }
    if prompt_value == "" {
      status.setText("Prompt cannot be empty.")
      return
    }

    let url = request_url(base_url_value, mode_index)
    let request = QNetworkRequest::new(url)
    let body = if is_openrouter_mode(mode_index) {
      build_chat_completions_request_body(
        model_value, prompt_value, stream_value, reasoning_summary_value,
      )
    } else {
      build_responses_request_body(
        model_value, prompt_value, stream_value, reasoning_summary_value,
      )
    }
    request.setContentLength(body.length().to_int64())
    request.setContentType("application/json")
    request.setTransferTimeout(120000)
    request.setRawHeader("Authorization", @utf8.encode("Bearer \{key_value}"))
    if stream_value {
      request.setRawHeader("Accept", @utf8.encode("text/event-stream"))
    }

    let mut answer_text = ""
    let mut reasoning_text = ""
    let mut raw_text = ""
    let mut stream_buffer = ""

    let refresh_outputs = () => {
      sync_outputs(answer, thinking, raw, answer_text, reasoning_text, raw_text)
    }

    let apply_extracted = (extracted : ExtractedContent) => {
      answer_text = append_text_value(answer_text, extracted.answer)
      reasoning_text = append_text_value(reasoning_text, extracted.reasoning)
      refresh_outputs()
    }

    refresh_outputs()
    tabs.setCurrentIndex(0)
    send.setEnabled(false)
    status.setText("Sending request to \{url} ...")

    let reply = manager.post(request, body)

    let ready_read = reply.readyRead()
    let _ = ready_read.connect(_ => {
      let chunk = @utf8.decode_lossy(reply.readAll())
      if chunk == "" {
        return
      }

      raw_text = append_text_value(raw_text, chunk)
      if stream_value {
        stream_buffer = append_text_value(stream_buffer, chunk)
        let (remainder, extracted) = if is_openrouter_mode(mode_index) {
          extract_openrouter_sse_chunks(stream_buffer)
        } else {
          extract_sse_chunks(stream_buffer)
        }
        stream_buffer = remainder
        apply_extracted(extracted)
        status.setText("Streaming response...")
      } else {
        sync_outputs(
          answer, thinking, raw, answer_text, reasoning_text, raw_text,
        )
      }
    })

    let error_occurred = reply.errorOccurred()
    let _ = error_occurred.connect(err => {
      let message = reply.errorString()
      if message != "" {
        raw_text = append_block_value(raw_text, "[network error] \{message}")
        sync_outputs(
          answer, thinking, raw, answer_text, reasoning_text, raw_text,
        )
      }
      status.setText("Network error: \{err}")
    })

    let finished = reply.finished()
    let _ = finished.connect(_ => {
      let status_code = reply.httpStatusCode()
      let reason_phrase = reply.httpReasonPhrase()
      let error = reply.error()
      let remaining = @utf8.decode_lossy(reply.readAll())

      if remaining != "" {
        raw_text = append_text_value(raw_text, remaining)
      }

      if stream_value {
        stream_buffer = append_text_value(stream_buffer, remaining)
        let flushed = if is_openrouter_mode(mode_index) {
          extract_openrouter_sse_event_block(stream_buffer)
        } else {
          extract_sse_event_block(stream_buffer)
        }
        let current = ExtractedContent::{
          answer: answer_text,
          reasoning: reasoning_text,
        }
        let appended = merge_extracted(current, flushed)
        let completed = fill_missing_extracted(
          appended,
          if is_openrouter_mode(mode_index) {
            extract_openrouter_sse_fallback(raw_text)
          } else {
            extract_sse_fallback(raw_text)
          },
        )
        answer_text = completed.answer
        reasoning_text = completed.reasoning
      } else {
        let parsed = try @json.parse(raw_text) catch {
          _ => ExtractedContent::empty()
        } noraise {
          json =>
            if is_openrouter_mode(mode_index) {
              extract_openrouter_response(json)
            } else {
              extract_responses_content(json)
            }
        }
        answer_text = parsed.answer
        reasoning_text = parsed.reasoning
      }

      sync_outputs(answer, thinking, raw, answer_text, reasoning_text, raw_text)
      send.setEnabled(true)
      reply.deleteLater()

      if error == NoError {
        if reason_phrase == "" {
          status.setText("Done. HTTP \{status_code}")
        } else {
          status.setText("Done. HTTP \{status_code} \{reason_phrase}")
        }
      } else if reason_phrase == "" {
        status.setText("Failed. HTTP \{status_code}, error: \{error}")
      } else {
        status.setText(
          "Failed. HTTP \{status_code} \{reason_phrase}, error: \{error}",
        )
      }
    })
  })

  root
}

///|
fn main raise NullptrError {
  let args = @env.args()
  let app = QApplication::new(args)
  let window = ApiWorkbench::new(args)
  window.setWindowTitle("LLM API Workbench")
  window.show()
  let _ = app.exec()
}

///|
impl AsObject for ApiWorkbench with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for ApiWorkbench with as_widget(self) {
  self.0.as_widget()
}
