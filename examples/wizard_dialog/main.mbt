///|
using @qt {
  type NullptrError,
  type ButtonRole,
  type QApplication,
  type QLabel,
  type QObject,
  type QDialog,
  type QDialogButtonBox,
  type QPlainTextEdit,
  type QPushButton,
  type QStackedWidget,
  type QVBoxLayout,
  type QWidget,
  trait AsObject,
  trait AsWidget,
}

///|
fn page(title : String, body : String) -> QWidget raise NullptrError {
  let title_label = QLabel::new()
  title_label.setText(title)

  let body_edit = QPlainTextEdit::new()
  body_edit.setPlaceholderText("Notes for this step")
  body_edit.setPlainText(body)
  body_edit.setReadOnly(true)

  let layout = QVBoxLayout::new()
  layout.addWidget(title_label)
  layout.addWidget(body_edit)

  let root = QWidget::new()
  root.setLayout(layout)

  root
}

///|
struct WizardDialogDemo(QWidget)

///|
fn WizardDialogDemo::new() -> Self raise NullptrError {
  let dialog = QDialog::new()
  dialog.setModal(true)
  dialog.setWindowTitle("Setup Wizard")
  dialog.setMinimumSize(480, 320)

  let pages = QStackedWidget::new()
  let _ = pages.addWidget(
    page("Step 1", "Choose a workspace and confirm the initial settings."),
  )
  let _ = pages.addWidget(
    page("Step 2", "Review generated notes and tweak the values if needed."),
  )
  let _ = pages.addWidget(
    page(
      "Step 3", "Ready to finish. This step is a good place for summary text.",
    ),
  )

  let box = QDialogButtonBox::new()
  box.setCenterButtons(true)

  let back = QPushButton::new()
  back.setText("Back")
  box.addButton(back, ButtonRole::ActionRole)

  let next = QPushButton::new()
  next.setText("Next")
  box.addButton(next, ButtonRole::ActionRole)

  let cancel = QPushButton::new()
  cancel.setText("Cancel")
  box.addButton(cancel, ButtonRole::RejectRole)

  let finish = QPushButton::new()
  finish.setText("Finish")
  box.addButton(finish, ButtonRole::ApplyRole)

  let dialog_layout = QVBoxLayout::new()
  dialog_layout.addWidget(pages)
  dialog_layout.addWidget(box)
  dialog.setLayout(dialog_layout)

  let status = QLabel::new()
  status.setText("Wizard status: pending")

  let open = QPushButton::new()
  open.setText("Open wizard")

  let update_buttons = () => {
    back.setEnabled(pages.currentIndex() > 0)
    next.setEnabled(pages.currentIndex() + 1 < pages.count())
  }

  let _ = QObject::connect(open.clicked(), _ => {
    try! ({
      pages.setCurrentIndex(0)
      update_buttons()
      dialog.show()
    })
  })
  let _ = QObject::connect(back.clicked(), _ => {
    try! ({
      let current = pages.currentIndex()
      if current > 0 {
        pages.setCurrentIndex(current - 1)
      }
      update_buttons()
    })
  })
  let _ = QObject::connect(next.clicked(), _ => {
    try! ({
      let current = pages.currentIndex()
      if current + 1 < pages.count() {
        pages.setCurrentIndex(current + 1)
      }
      update_buttons()
    })
  })
  let _ = QObject::connect(cancel.clicked(), _ => try! dialog.reject())
  let _ = QObject::connect(finish.clicked(), _ => try! dialog.accept())
  let _ = QObject::connect(box.accepted(), _ => try! dialog.accept())
  let _ = QObject::connect(box.rejected(), _ => try! dialog.reject())
  let _ = QObject::connect(dialog.accepted(), _ => {
    try! status.setText("Wizard status: accepted")
  })
  let _ = QObject::connect(dialog.rejected(), _ => {
    try! status.setText("Wizard status: rejected")
  })
  let _ = QObject::connect(pages.currentChanged(), index => {
    try! ({
      status.setText("Wizard status: step \{index + 1}")
      update_buttons()
    })
  })

  update_buttons()

  let layout = QVBoxLayout::new()
  layout.addWidget(status)
  layout.addWidget(open)

  let root = QWidget::new()
  root.setMinimumSize(320, 140)
  root.setLayout(layout)

  root
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = WizardDialogDemo::new()
  window.setWindowTitle("Wizard Dialog")
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for WizardDialogDemo with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for WizardDialogDemo with as_widget(self) {
  self.0.as_widget()
}
