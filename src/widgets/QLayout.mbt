///|
pub(open) trait AsLayout: AsObject {
  as_layout(Self) -> QLayout
  addWidget(Self, widget : &AsWidget) -> Unit = _
}

///|
impl AsLayout with addWidget(self, widget) {
  @ffi._QLayout_addWidget(self.as_layout().0, widget.as_widget().0)
}

///|
pub(all) struct QLayout(@ffi.QLayout)

///|
pub impl AsObject for QLayout with as_object(self) {
  @ffi._QLayout_as_QObject(self.0)
}

///|
pub impl AsLayout for QLayout with as_layout(self) {
  self
}
