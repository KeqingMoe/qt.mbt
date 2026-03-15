///|
#external
pub type QLineEdit

///|
pub extern "C" fn _QLineEdit_new() -> QLineEdit = "QLineEdit_new"

///|
#borrow(this, text)
pub extern "C" fn _QLineEdit_setText(this : QLineEdit, text : String) = "QLineEdit_setText"

///|
#borrow(this)
pub extern "C" fn _QLineEdit_text(this : QLineEdit) -> String = "QLineEdit_text"

///|
#borrow(this)
pub extern "C" fn _QLineEdit_textChanged(this : QLineEdit) -> Signal[String] = "QLineEdit_textChanged"

///|
#borrow(this)
pub extern "C" fn _QLineEdit_as_QWidget(this : QLineEdit) -> QWidget = "QLineEdit_as_QWidget"
