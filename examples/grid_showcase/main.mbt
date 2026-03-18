///|
using @qt {
  type NullptrError,
  type QApplication,
  type QGridLayout,
  type QLabel,
  type QWidget,
  trait AsLayout,
  trait AsObject,
  trait AsWidget,
}

///|
struct Card(QWidget)

///|
fn Card::new(title : String, body : String) -> Self raise NullptrError {
  let card = QWidget::new()
  card.setMinimumSize(180, 90)

  let grid = QGridLayout::new()
  grid.setHorizontalSpacing(12)
  grid.setVerticalSpacing(8)

  let title_label = QLabel::new()
  title_label.setText(title)

  let body_label = QLabel::new()
  body_label.setText(body)
  body_label.setWordWrap(true)

  grid.addWidget(title_label, 0, 0)
  grid.addWidget(body_label, 1, 0)

  card.setLayout(grid)
  card
}

///|
struct DashboardLayout(QGridLayout)

///|
fn DashboardLayout::new() -> Self raise NullptrError {
  let grid = QGridLayout::new()
  grid.setColumnStretch(0, 1)
  grid.setColumnStretch(1, 1)
  grid.setHorizontalSpacing(18)
  grid.setRowStretch(2, 1)
  grid.setVerticalSpacing(14)

  grid.addWidget(
    Card::new("Build", "Native check passes with the current bindings."),
    0,
    0,
  )
  grid.addWidget(
    Card::new("Layouts", "QGridLayout now supports span and spacing controls."),
    0,
    1,
  )
  grid.addWidget(
    Card::new(
      "Forms", "QFormLayout and QGroupBox make forms much easier to build.",
    ),
    1,
    0,
    rowSpan=1,
    columnSpan=2,
  )

  grid
}

///|
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let layout = DashboardLayout::new()

  let window = QWidget::new()
  window.setWindowTitle("Grid Showcase")
  window.setMinimumSize(520, 300)
  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}

///|
impl AsObject for Card with as_object(self) {
  self.0.as_object()
}

///|
impl AsWidget for Card with as_widget(self) {
  self.0.as_widget()
}

///|
impl AsObject for DashboardLayout with as_object(self) {
  self.0.as_object()
}

///|
impl AsLayout for DashboardLayout with as_layout(self) {
  self.0.as_layout()
}
