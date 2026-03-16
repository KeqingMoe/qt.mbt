///|
#external
pub type QLabel

///|
pub extern "C" fn _QLabel_new() -> QLabel = "QLabel_new"

///|
#borrow(this, text)
pub extern "C" fn _QLabel_setText(this : QLabel, text : String) = "QLabel_setText"

///|
#borrow(this)
pub extern "C" fn _QLabel_as_QFrame(this : QLabel) -> QFrame = "QLabel_as_QFrame"
