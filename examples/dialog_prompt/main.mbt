///|
using @qt {
  type QApplication,
  type QDialog,
  type QLabel,
  type QObject,
  type QPushButton,
  type QScrollArea,
  type QVBoxLayout,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
fn paragraph(text : String) -> QLabel {
  let label = QLabel::new()
  label.setText(text)
  label.setWordWrap(true)
  label
}

///|
struct DialogPrompt(QWidget)

///|
fn DialogPrompt::new() -> Self {
  let dialog = QDialog::new()
  dialog.setModal(true)
  dialog.setWindowTitle("Release Notes")

  let content = QWidget::new()
  let content_layout = QVBoxLayout::new()
  content_layout.addWidget(
    paragraph("This dialog is backed by QDialog and QScrollArea bindings."),
  )
  content_layout.addWidget(
    paragraph(
      "It is intentionally longer than the visible area so the example exercises scroll behavior instead of just showing another plain widget.",
    ),
  )
  content_layout.addWidget(
    paragraph(
      "This is a good shape for changelogs, onboarding notes, or any long-form preview content in a small window.",
    ),
  )
  content_layout.addWidget(
    paragraph(
      "Next useful steps after this would be dialog button boxes, richer message dialogs, and item views.",
    ),
  )
  content.setLayout(content_layout)

  let scroll = QScrollArea::new()
  scroll.setWidget(content)
  scroll.setWidgetResizable(true)

  let close = QPushButton::new()
  close.setText("Close dialog")

  let dialog_layout = QVBoxLayout::new()
  dialog_layout.addWidget(scroll)
  dialog_layout.addWidget(close)
  dialog.setMinimumSize(360, 260)
  dialog.setLayout(dialog_layout)

  let title = QLabel::new()
  title.setText("Dialog result: pending")

  let open = QPushButton::new()
  open.setText("Open dialog")

  let accept = QPushButton::new()
  accept.setText("Accept")

  let reject = QPushButton::new()
  reject.setText("Reject")

  let _ = QObject::connect(open.clicked(), _ => {
    dialog.show()
    scroll.ensureVisible(0, 0)
  })
  let _ = QObject::connect(accept.clicked(), _ => dialog.accept())
  let _ = QObject::connect(close.clicked(), _ => dialog.accept())
  let _ = QObject::connect(reject.clicked(), _ => dialog.reject())
  let _ = QObject::connect(dialog.accepted(), _ => {
    title.setText("Dialog result: accepted")
  })
  let _ = QObject::connect(dialog.rejected(), _ => {
    title.setText("Dialog result: rejected")
  })
  let _ = QObject::connect(dialog.finished(), result => {
    title.setText("Dialog result: \{result}")
  })

  let layout = QVBoxLayout::new()
  layout.addWidget(title)
  layout.addWidget(open)
  layout.addWidget(accept)
  layout.addWidget(reject)

  let root = QWidget::new()
  root.setMinimumSize(320, 180)
  root.setLayout(layout)

  root
}

///|
fn main {
  let app = QApplication::new(@env.args())

  let window = DialogPrompt::new()
  window.setWindowTitle("Dialog Prompt")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for DialogPrompt with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for DialogPrompt with as_widget(self) {
  self.0.as_widget()
}
