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

  let mut count = 0

  let label = QLabel::new()
  label.setText("Count: 0")

  let button = QPushButton::new()
  button.setText("Click me!")

  let _ = QObject::connect(button.clicked(), _ => {
    count += 1
    try! label.setText("Count: \{count}")
  })

  let layout = QBoxLayout::horizontal()
  layout.addWidget(button)
  layout.addWidget(label)

  let window = QWidget::new()
  window.setWindowTitle("Counter")
  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}
