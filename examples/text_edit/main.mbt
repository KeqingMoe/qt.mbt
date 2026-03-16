///|
using @qt {
  type QApplication,
  type QLineEdit,
  type QLabel,
  type QObject,
  type QHBoxLayout,
  type QVBoxLayout,
  type QWidget,
  trait AsWidget,
  trait AsObject,
}

///|
struct LengthComputer(QWidget)

///|
fn LengthComputer::new() -> Self {
  let label = QLabel::new()
  label.setText("Text length: 0")

  let line_edit = QLineEdit::new()
  let _ = QObject::connect(line_edit.textChanged(), text => {
    label.setText("Text length: \{text.char_length()}")
  })

  let layout = QHBoxLayout::new()
  layout.addWidget(line_edit)
  layout.addWidget(label)

  let root = QWidget::new()
  root.setLayout(layout)

  root
}

///|
fn main {
  let app = QApplication::new(@env.args())

  let window = QWidget::new()
  window.setWindowTitle("Text Edit")

  let layout = QVBoxLayout::new()

  layout.addWidget(LengthComputer::new())
  layout.addWidget(LengthComputer::new())
  layout.addWidget(LengthComputer::new())

  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for LengthComputer with as_object(self) {
  self.as_object()
}

///|
impl AsWidget for LengthComputer with as_widget(self) {
  self.0.as_widget()
}
