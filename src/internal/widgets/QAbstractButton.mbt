///|
#external
pub type QAbstractButton

///|
#borrow(this, text)
pub extern "C" fn _QAbstractButton_setText(
  this : QAbstractButton,
  text : String,
) = "QAbstractButton_setText"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_clicked(
  this : QAbstractButton,
) -> Signal[Bool] = "QAbstractButton_clicked"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_pressed(
  this : QAbstractButton,
) -> Signal[Unit] = "QAbstractButton_pressed"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_released(
  this : QAbstractButton,
) -> Signal[Unit] = "QAbstractButton_released"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_toggled(
  this : QAbstractButton,
) -> Signal[Bool] = "QAbstractButton_toggled"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_as_QWidget(
  this : QAbstractButton,
) -> QWidget = "QAbstractButton_as_QWidget"
