///|
using @qt {
  type NullptrError,
  type QApplication,
  type QLabel,
  type QHBoxLayout,
  type QVBoxLayout,
  type QWidget,
  trait AsWidget,
  trait AsLayout,
  trait AsObject,
}

///|
struct Blog(QLabel)

///|
fn Blog::new(text : String) -> Self raise NullptrError {
  let label = QLabel::new()
  label.setText(text)
  label
}

///|
struct BlogLayout {
  layout : QVBoxLayout
  mut last_row : QHBoxLayout?
  mut last_row_has : Int
}

///|
fn BlogLayout::new() -> Self {
  BlogLayout::{ layout: QVBoxLayout::new(), last_row: None, last_row_has: 0 }
}

///|
fn BlogLayout::add_new_row(self : Self) -> QHBoxLayout raise NullptrError {
  let row = QHBoxLayout::new()
  self.layout.addLayout(row)
  row
}

///|
impl AsLayout for BlogLayout with addWidget(self, widget) {
  match self.last_row {
    None => {
      self.layout.addWidget(widget)
      let row = self.add_new_row()
      self.last_row = Some(row)
    }
    Some(row) =>
      if self.last_row_has < 2 {
        row.addWidget(widget)
        self.last_row_has += 1
      } else {
        let next_row = self.add_new_row()
        self.last_row = Some(next_row)
        self.last_row_has = 0
      }
  }
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let window = QWidget::new()
  window.setWindowTitle("Blog Layout")

  let layout = BlogLayout::new()

  for i in 1..<10 {
    let blog = Blog::new("Blog \{i}")
    layout.addWidget(blog)
  }

  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for Blog with as_object(self) {
  self.as_widget().as_object()
}

///|
impl AsWidget for Blog with as_widget(self) {
  self.0.as_widget()
}

///|
impl AsObject for BlogLayout with as_object(self) {
  self.layout.as_object()
}

///|
impl AsLayout for BlogLayout with as_layout(self) {
  self.layout.as_layout()
}
