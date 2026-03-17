///|
pub type QVBoxLayout

///|
extern "C" fn _QVBoxLayout_new() -> QVBoxLayout = "QVBoxLayout_new"

///|
#borrow(this)
extern "C" fn _QVBoxLayout_as_QBoxLayout(this : QVBoxLayout) -> QBoxLayout = "QVBoxLayout_as_QBoxLayout"

///|
pub fn QVBoxLayout::new() -> Self {
  _QVBoxLayout_new()
}

///|
pub impl AsObject for QVBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QVBoxLayout with as_layout(self) {
  self.as_box_layout().as_layout()
}

///|
pub impl AsBoxLayout for QVBoxLayout with as_box_layout(self) {
  _QVBoxLayout_as_QBoxLayout(self)
}
