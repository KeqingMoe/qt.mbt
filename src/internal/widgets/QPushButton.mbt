///|
#external
pub type QPushButton

///|
pub extern "C" fn _QPushButton_new() -> QPushButton = "QPushButton_new"

///|
#borrow(this)
#owned(cb)
pub extern "C" fn _QPushButton_on_clicked(this : QPushButton, cb : () -> Unit) = "QPushButton_on_clicked"

///|
#borrow(this)
pub extern "C" fn _QPushButton_as_QAbstractButton(
  this : QPushButton,
) -> QAbstractButton = "QPushButton_as_QAbstractButton"
