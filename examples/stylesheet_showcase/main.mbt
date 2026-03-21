///|
using @qt {
  type NullptrError,
  type QApplication,
  type QBoxLayout,
  type QCheckBox,
  type QFormLayout,
  type QGroupBox,
  type QLabel,
  type QLineEdit,
  type QObject,
  type QPushButton,
  type QTextEdit,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
fn section_title(text : String) -> QLabel raise NullptrError {
  let label = QLabel::new()
  label.setText(text)
  label
}

///|
fn build_style() -> String {
  let style =
    #|QWidget {
    #|  background: #f4efe8;
    #|  color: #2d241d;
    #|  font-size: 14px;
    #|}
    #|
    #|QGroupBox {
    #|  background: #fffaf4;
    #|  border: 1px solid #dbc9b7;
    #|  border-radius: 20px;
    #|  margin-top: 18px;
    #|  padding: 22px 18px 18px 18px;
    #|  font-weight: 700;
    #|}
    #|
    #|QGroupBox::title {
    #|  subcontrol-origin: margin;
    #|  left: 16px;
    #|  padding: 0 8px;
    #|  color: #8b5e3c;
    #|  background: #f4efe8;
    #|}
    #|
    #|QLabel {
    #|  background: transparent;
    #|  color: #5f4a3a;
    #|}
    #|
    #|QLineEdit,
    #|QTextEdit {
    #|  background: #fffdf9;
    #|  border: 1px solid #d9c6b5;
    #|  border-radius: 14px;
    #|  padding: 10px 12px;
    #|  selection-background-color: #d98f5c;
    #|  selection-color: #fffaf4;
    #|}
    #|
    #|QLineEdit:focus,
    #|QTextEdit:focus {
    #|  border: 2px solid #d98f5c;
    #|  background: #ffffff;
    #|}
    #|
    #|QPushButton {
    #|  background: #c96f3b;
    #|  color: #fffaf4;
    #|  border: none;
    #|  border-radius: 15px;
    #|  padding: 10px 18px;
    #|  font-weight: 700;
    #|}
    #|
    #|QPushButton:hover {
    #|  background: #d67f4e;
    #|}
    #|
    #|QPushButton:pressed {
    #|  background: #a95627;
    #|}
    #|
    #|QPushButton:disabled {
    #|  background: #d8c7b8;
    #|  color: #8d7969;
    #|}
    #|
    #|QCheckBox {
    #|  spacing: 10px;
    #|  color: #4a3a2f;
    #|}
    #|
    #|QCheckBox::indicator {
    #|  width: 18px;
    #|  height: 18px;
    #|  border-radius: 6px;
    #|  border: 1px solid #b9977f;
    #|  background: #fffaf4;
    #|}
    #|
    #|QCheckBox::indicator:checked {
    #|  background: #d98f5c;
    #|  border: 1px solid #d98f5c;
    #|}
  style
}

///|
struct StyleSheetShowcase(QWidget)

///|
fn StyleSheetShowcase::new() -> Self raise NullptrError {
  let title = section_title("Qt Style Sheet Showcase")
  title.setText("Qt Style Sheet Showcase")

  let subtitle = QLabel::new()
  subtitle.setText(
    "Warm card UI with focus, hover, pressed, checked, and disabled states.",
  )
  subtitle.setWordWrap(true)

  let name = QLineEdit::new()
  name.setPlaceholderText("Project name")
  name.setText("Aurora Notes")

  let owner = QLineEdit::new()
  owner.setPlaceholderText("Owner email")
  owner.setText("design@moonbit.dev")

  let premium = QCheckBox::new()
  premium.setText("Enable premium workspace")
  premium.setChecked(true)

  let notifications = QCheckBox::new()
  notifications.setText("Allow desktop notifications")
  notifications.setChecked(true)

  let note = QTextEdit::new()
  note.setAcceptRichText(false)
  note.setPlaceholderText("Write a quick note for the launch checklist")
  note.setPlainText(
    "- Review palette\n- Verify spacing\n- Click the buttons to preview states",
  )

  let launch = QPushButton::new()
  launch.setText("Launch workspace")

  let quiet = QPushButton::new()
  quiet.setText("Mute alerts")

  let summary = QLabel::new()
  summary.setWordWrap(true)

  let refresh_summary = () => {
    let plan = if premium.isChecked() { "Premium" } else { "Starter" }
    let alerts = if notifications.isChecked() {
      "Alerts on"
    } else {
      "Alerts off"
    }
    let note_len = note.toPlainText().char_length()
    summary.setText(
      "\{plan} theme selected | \{alerts} | Note length: \{note_len} chars",
    )
  }

  let _ = QObject::connect(premium.toggled(), enabled => {
    try! ({
      launch.setText(
        if enabled {
          "Launch premium workspace"
        } else {
          "Launch workspace"
        },
      )
      refresh_summary()
    })
  })
  let _ = QObject::connect(notifications.toggled(), enabled => {
    try! ({
      quiet.setEnabled(enabled)
      refresh_summary()
    })
  })
  let _ = QObject::connect(note.textChanged(), _ => try! refresh_summary())
  let _ = QObject::connect(launch.clicked(), _ => {
    try! ({
      note.append("Launch button clicked.")
      refresh_summary()
    })
  })
  let _ = QObject::connect(quiet.clicked(), _ => {
    try! ({
      notifications.setChecked(false)
      note.append("Notifications muted.")
      refresh_summary()
    })
  })

  quiet.setEnabled(notifications.isChecked())
  refresh_summary()

  let profile_form = QFormLayout::new()
  profile_form.addRow(section_title("Project"), name)
  profile_form.addRow(section_title("Owner"), owner)
  profile_form.addRowWidget(premium)
  profile_form.addRowWidget(notifications)

  let profile_box = QGroupBox::new()
  profile_box.setTitle("Studio Profile")
  profile_box.setLayout(profile_form)

  let action_row = QBoxLayout::horizontal()
  action_row.addWidget(launch)
  action_row.addWidget(quiet)

  let action_column = QBoxLayout::vertical()
  action_column.addWidget(note)
  action_column.addSpacing(12)
  action_column.addLayout(action_row)
  action_column.addSpacing(10)
  action_column.addWidget(summary)

  let action_box = QGroupBox::new()
  action_box.setTitle("Launch Pad")
  action_box.setCheckable(true)
  action_box.setChecked(true)
  action_box.setLayout(action_column)

  let layout = QBoxLayout::vertical()
  layout.addWidget(title)
  layout.addWidget(subtitle)
  layout.addSpacing(10)
  layout.addWidget(profile_box)
  layout.addWidget(action_box)

  let root = QWidget::new()
  root.setMinimumSize(560, 500)
  root.setLayout(layout)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())
  app.setStyleSheet(build_style())

  let window = StyleSheetShowcase::new()
  window.setWindowTitle("Style Sheet Showcase")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for StyleSheetShowcase with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for StyleSheetShowcase with as_widget(self) {
  self.0.as_widget()
}
