///|
#external
pub type QPushButton

///|
pub extern "C" fn _QPushButton_new() -> QPushButton = "QPushButton_new"

///|
#borrow(this, text)
pub extern "C" fn _QPushButton_setText(this : QPushButton, text : String) = "QPushButton_setText"

///|
#borrow(this)
#owned(cb)
pub extern "C" fn _QPushButton_on_clicked(this : QPushButton, cb : () -> Unit) = "QPushButton_on_clicked"

///|
#borrow(this)
pub extern "C" fn _QPushButton_clicked(this : QPushButton) -> Signal[Bool] = "QPushButton_clicked"

///|
#borrow(this)
pub extern "C" fn _QPushButton_as_QWidget(this : QPushButton) -> QWidget = "QPushButton_as_QWidget"
