///|
pub(all) struct QLabel(@ffi.QLabel)

///|
pub fn QLabel::new() -> Self {
  @ffi._QLabel_new()
}

///|
pub fn QLabel::setText(self : Self, text : String) -> Unit {
  @ffi._QLabel_setText(self.0, text)
}

///|
pub impl AsObject for QLabel with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLabel with as_widget(self) {
  @ffi._QLabel_as_QWidget(self.0)
}
