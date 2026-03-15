///|
pub(open) trait AsBoxLayout: AsLayout {
  as_box_layout(Self) -> QBoxLayout
  addLayout(Self, layout : &AsLayout) -> Unit = _
}

///|
impl AsBoxLayout with addLayout(self, layout) {
  @ffi._QBoxLayout_addLayout(self.as_box_layout().0, layout.as_layout().0)
}

///|
pub(all) struct QBoxLayout(@ffi.QBoxLayout)

///|
impl AsObject for QBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
impl AsLayout for QBoxLayout with as_layout(self) {
  @ffi._QBoxLayout_as_QLayout(self.0)
}
