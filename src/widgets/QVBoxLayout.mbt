///|
pub(all) struct QVBoxLayout(@ffi.QVBoxLayout)

///|
pub fn QVBoxLayout::new() -> Self {
  @ffi._QVBoxLayout_new()
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
  @ffi._QVBoxLayout_as_QBoxLayout(self.0)
}
