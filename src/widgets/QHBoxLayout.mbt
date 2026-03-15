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
  @ffi._QHBoxLayout_as_QLayout(self.0)
}
