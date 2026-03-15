///|
#external
pub type QHBoxLayout

///|
pub extern "C" fn QHBoxLayout::new() -> Self = "QHBoxLayout_new"

///|
#borrow(layout)
extern "C" fn _QHBoxLayout_as_QLayout(layout : QHBoxLayout) -> QLayout = "QHBoxLayout_as_QLayout"

///|
pub impl AsObject for QHBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QHBoxLayout with as_layout(self) {
  _QHBoxLayout_as_QLayout(self)
}
