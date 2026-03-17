///|
pub type QLineEdit

///|
extern "C" fn _QLineEdit_new() -> QLineEdit = "QLineEdit_new"

///|
#borrow(this, text)
extern "C" fn _QLineEdit_setText(this : QLineEdit, text : String) = "QLineEdit_setText"

///|
#borrow(this)
extern "C" fn _QLineEdit_text(this : QLineEdit) -> String = "QLineEdit_text"

///|
#borrow(this)
extern "C" fn _QLineEdit_textChanged(this : QLineEdit) -> Signal[String] = "QLineEdit_textChanged"

///|
#borrow(this)
extern "C" fn _QLineEdit_as_QWidget(this : QLineEdit) -> QWidget = "QLineEdit_as_QWidget"

///|
pub fn QLineEdit::new() -> Self {
  _QLineEdit_new()
}

///|
pub fn QLineEdit::setText(self : Self, text : String) -> Unit {
  _QLineEdit_setText(self, text)
}

///|
pub fn QLineEdit::text(self : Self) -> String {
  _QLineEdit_text(self)
}

///|
pub fn QLineEdit::textChanged(self : Self) -> Signal[String] {
  _QLineEdit_textChanged(self)
}

///|
pub impl AsObject for QLineEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLineEdit with as_widget(self) {
  _QLineEdit_as_QWidget(self)
}
