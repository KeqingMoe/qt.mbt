///|
using @qt {type QNetworkAccessManager, type QNetworkRequest}

///|
test "NetworkProgress stores current and total bytes" {
  let progress = @qt.NetworkProgress::new(12, 34)

  assert_eq(progress.received(), 12)
  assert_eq(progress.total(), 34)
}

///|
test "QNetworkRequest stores and updates url" {
  let request = QNetworkRequest::new("https://example.com/alpha")
  assert_eq(request.url(), "https://example.com/alpha")

  request.setUrl("https://example.com/beta")
  assert_eq(request.url(), "https://example.com/beta")
}

///|
test "QNetworkRequest raw headers and transfer timeout roundtrip" {
  let owner = @qt.QObject::new()
  let request = QNetworkRequest::new("https://example.com/upload")
  let value = b"application/octet-stream;v=1"

  owner.setObjectName("network-owner")
  assert_eq(request.hasRawHeader("Content-Type"), false)

  request.setContentLength(7L)
  request.setContentType("application/octet-stream")
  request.setRawHeader("Content-Type", value)
  request.setMaximumRedirectsAllowed(7)
  request.setOriginatingObject(owner)
  request.setPeerVerifyName("example.com")
  request.setPriority(High)
  request.setTransferTimeout(1234)

  assert_eq(request.contentLength(), 7L)
  assert_eq(request.contentType(), "application/octet-stream;v=1")
  assert_eq(request.hasRawHeader("Content-Type"), true)
  assert_eq(request.maximumRedirectsAllowed(), 7)
  assert_eq(request.originatingObject().objectName(), "network-owner")
  assert_eq(request.peerVerifyName(), "example.com")
  assert_eq(request.priority(), High)
  assert_eq(request.rawHeaderList().length() > 0, true)
  assert_eq(request.rawHeader("Content-Type"), value)
  assert_eq(request.transferTimeout(), 1234)
}

///|
test "QNetworkAccessManager exposes QObject ancestry and reply deletion toggle" {
  let manager = QNetworkAccessManager::new()

  assert_eq(manager.is_null(), false)
  assert_eq(manager.inherits("QNetworkAccessManager"), true)
  assert_eq(manager.inherits("QObject"), true)

  let initial = manager.autoDeleteReplies()
  manager.setAutoDeleteReplies(not(initial))
  assert_eq(manager.autoDeleteReplies(), not(initial))

  manager.setAutoDeleteReplies(initial)
  assert_eq(manager.autoDeleteReplies(), initial)

  manager.setRedirectPolicy(Manual)
  assert_eq(manager.redirectPolicy(), Manual)

  manager.setRedirectPolicy(NoLessSafe)
  assert_eq(manager.redirectPolicy(), NoLessSafe)

  let schemes = manager.supportedSchemes()
  let mut has_http = false
  let mut has_https = false
  for i in 0..<schemes.length() {
    if schemes[i] == "http" {
      has_http = true
    }
    if schemes[i] == "https" {
      has_https = true
    }
  }
  assert_eq(has_http, true)
  assert_eq(has_https, true)
}

///|
test "QNetworkAccessManager request methods return reply objects with expected metadata" {
  let manager = QNetworkAccessManager::new()
  let request = QNetworkRequest::new("http://127.0.0.1:1/network-test")
  let payload = b"moonbit"

  manager.setTransferTimeout(4321)
  assert_eq(manager.transferTimeout(), 4321)

  let post_reply = manager.post(request, payload)
  let post_op = post_reply.operation()
  let post_err = post_reply.error()
  assert_eq(post_reply.is_null(), false)
  assert_eq(post_op, Post)
  assert_eq(post_reply.request().url(), "http://127.0.0.1:1/network-test")
  assert_eq(post_reply.url(), "http://127.0.0.1:1/network-test")
  assert_eq(post_reply.manager().is_null(), false)
  assert_eq(post_err, NoError)
  assert_eq(post_reply.contentLength(), 0L)
  assert_eq(post_reply.contentType(), "")
  assert_eq(post_reply.httpStatusCode(), 0)
  assert_eq(post_reply.httpReasonPhrase(), "")
  assert_eq(post_reply.isConnectionEncrypted(), false)
  assert_eq(post_reply.isSequential(), true)
  assert_eq(post_reply.originalContentLength(), 0L)
  assert_eq(post_reply.readBufferSize(), 0L)
  assert_eq(post_reply.redirectionTarget(), "")
  assert_eq(post_reply.rawHeaderList().length(), 0)
  assert_eq(post_reply.aboutToClose().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.downloadProgress().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.metaDataChanged().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.readAll(), b"")
  assert_eq(
    post_reply.readChannelFinished().connect(_ => ()).disconnect(),
    true,
  )
  assert_eq(post_reply.readyRead().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.redirected().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.requestSent().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.sourceIsFromCache(), false)
  post_reply.setReadBufferSize(2048L)
  assert_eq(
    post_reply.socketStartedConnecting().connect(_ => ()).disconnect(),
    true,
  )
  assert_eq(post_reply.uploadProgress().connect(_ => ()).disconnect(), true)
  assert_eq(post_reply.readBufferSize(), 2048L)
  post_reply.close()
  post_reply.abort()
  assert_eq(post_reply.wasHttp2Used(), false)

  let put_reply = manager.put(request, payload)
  assert_eq(put_reply.is_null(), false)
  assert_eq(put_reply.operation(), Put)
  put_reply.abort()

  let delete_reply = manager.deleteResource(request)
  assert_eq(delete_reply.is_null(), false)
  assert_eq(delete_reply.operation(), Delete)
  delete_reply.abort()

  let custom_reply = manager.sendCustomRequest(request, b"PATCH", payload)
  assert_eq(custom_reply.is_null(), false)
  assert_eq(custom_reply.operation(), Custom)
  custom_reply.abort()
}

///|
test "QNetworkAccessManager finished signal can connect and disconnect" {
  let manager = QNetworkAccessManager::new()
  let mut seen = false

  let conn = manager
    .finished()
    .connect(reply => seen = seen || not(reply.is_null()))

  assert_eq(conn.is_valid(), true)
  assert_eq(conn.disconnect(), true)
  assert_eq(conn.is_valid(), false)
  assert_eq(seen, false)
}
