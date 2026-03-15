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
pub extern "C" fn _QAbstractButton_as_QWidget(
  this : QAbstractButton,
) -> QWidget = "QAbstractButton_as_QWidget"
