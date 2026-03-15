///|
pub(all) struct QHBoxLayout(@ffi.QHBoxLayout)

///|
pub fn QHBoxLayout::new() -> Self {
  @ffi._QHBoxLayout_new()
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
  @ffi._QHBoxLayout_as_QBoxLayout(self.0)
}
