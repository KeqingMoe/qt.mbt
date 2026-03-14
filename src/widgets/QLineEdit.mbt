///|
#external
pub type QLineEdit

///|
pub extern "C" fn QLineEdit::new() -> Self = "QLineEdit_new"

///|
#borrow(self, text)
pub extern "C" fn QLineEdit::setText(self : Self, text : String) = "QLineEdit_setText"

///|
#borrow(self)
pub extern "C" fn QLineEdit::text(self : Self) -> String = "QLineEdit_text"

///|
#borrow(self)
pub extern "C" fn QLineEdit::textChanged(self : Self) -> Signal[String] = "QLineEdit_textChanged"

///|
#borrow(self)
pub extern "C" fn QLineEdit::as_QWidget(self : Self) -> QWidget = "QLineEdit_as_QWidget"

///|
pub impl AsObject for QLineEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLineEdit with as_widget(self) {
  self.as_QWidget()
}
