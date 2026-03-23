///|
using @qt {
  type NullptrError,
  type QObject,
  type QApplication,
  type QWidget,
  type QBoxLayout,
  type QPushButton,
  type QLabel,
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let label = QLabel::new()
  label.setText("State here!")

  let button = QPushButton::new()
  button.setText("Click me!")

  let _ = QObject::connect(button.pressed(), _ => {
    label.setText("Button Pressed!")
  })
  let _ = QObject::connect(button.released(), _ => {
    label.setText("Button Released!")
  })

  let layout = QBoxLayout::horizontal()
  layout.addWidget(button)
  layout.addWidget(label)

  let window = QWidget::new()
  window.setWindowTitle("Test Press and Release")
  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}
