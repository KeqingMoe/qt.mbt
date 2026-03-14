///|
using @qt {
  type QObject,
  type QApplication,
  type QWidget,
  type QHBoxLayout,
  type QPushButton,
  type QLabel,
  type Connection,
}

///|
fn main {
  let app = QApplication::new(@env.args())

  let mut count = 0

  let label = QLabel::new()
  label.setText("Count: 0")

  let button = QPushButton::new()
  button.setText("Click me!")

  let mut conn : Connection? = None
  let connection = QObject::connect(button.clicked(), fn(x : Bool) {
    count += 1
    label.setText("Count: \{count}")
    let conn = conn.unwrap()
    println("clicked: \{x}, connection valid: \{conn.is_valid()}")
    if count > 10 {
      let _ = conn.disconnect()
    }
  })
  conn = Some(connection)

  let layout = QHBoxLayout::new()
  layout.addWidget(button)
  layout.addWidget(label)

  let window = QWidget::new()
  window.setWindowTitle("Counter")
  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}
