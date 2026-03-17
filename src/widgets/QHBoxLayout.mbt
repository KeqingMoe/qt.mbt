///|
pub type QHBoxLayout

///|
extern "C" fn _QHBoxLayout_new() -> QHBoxLayout = "QHBoxLayout_new"

///|
#borrow(this)
extern "C" fn _QHBoxLayout_as_QBoxLayout(this : QHBoxLayout) -> QBoxLayout = "QHBoxLayout_as_QBoxLayout"

///|
pub fn QHBoxLayout::new() -> Self {
  _QHBoxLayout_new()
}

///|
pub impl AsObject for QHBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QHBoxLayout with as_layout(self) {
  self.as_box_layout().as_layout()
}

///|
pub impl AsBoxLayout for QHBoxLayout with as_box_layout(self) {
  _QHBoxLayout_as_QBoxLayout(self)
}
