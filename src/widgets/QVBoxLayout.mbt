///|
#external
pub type QVBoxLayout

///|
pub extern "C" fn QVBoxLayout::new() -> Self = "QVBoxLayout_new"

///|
#borrow(layout)
pub extern "C" fn _QVBoxLayout_as_QLayout(layout : QVBoxLayout) -> QLayout = "QVBoxLayout_as_QLayout"

///|
pub impl AsObject for QVBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QVBoxLayout with as_layout(self) {
  _QVBoxLayout_as_QLayout(self)
}
