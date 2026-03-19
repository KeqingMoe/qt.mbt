///|
using @qt {
  type NullptrError,
  type QApplication,
  type QBoxLayout,
  type QLabel,
  type QWidget,
  type Alignment,
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
  layout : QBoxLayout
  mut last_row : QBoxLayout?
  mut last_row_has : Int
}

///|
fn BlogLayout::new() -> Self {
  BlogLayout::{
    layout: QBoxLayout::vertical(),
    last_row: None,
    last_row_has: 0,
  }
}

///|
fn BlogLayout::add_new_row(self : Self) -> QBoxLayout raise NullptrError {
  let row = QBoxLayout::horizontal()
  self.layout.addLayout(row)
  row
}

///|
impl AsLayout for BlogLayout with addWidget(self, widget) {
  match self.last_row {
    None => {
      self.layout.addWidget(widget)
      let _ = self.layout.setAlignment(widget, Alignment::h(Center))
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
