///|
pub(all) struct QLineEdit(@ffi.QLineEdit)

///|
pub fn QLineEdit::new() -> Self {
  @ffi._QLineEdit_new()
}

///|
pub fn QLineEdit::setText(self : Self, text : String) -> Unit {
  @ffi._QLineEdit_setText(self.0, text)
}

///|
pub fn QLineEdit::text(self : Self) -> String {
  @ffi._QLineEdit_text(self.0)
}

///|
pub fn QLineEdit::textChanged(self : Self) -> Signal[String] {
  @ffi._QLineEdit_textChanged(self.0)
}

///|
pub impl AsObject for QLineEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLineEdit with as_widget(self) {
  @ffi._QLineEdit_as_QWidget(self.0)
}
