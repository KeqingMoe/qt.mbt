///|
pub type QAbstractButton

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_animateClick(this : QAbstractButton) = "QAbstractButton_animateClick"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_autoExclusive(
  this : QAbstractButton,
) -> Bool = "QAbstractButton_autoExclusive"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_autoRepeat(this : QAbstractButton) -> Bool = "QAbstractButton_autoRepeat"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_autoRepeatDelay(
  this : QAbstractButton,
) -> Int = "QAbstractButton_autoRepeatDelay"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_autoRepeatInterval(
  this : QAbstractButton,
) -> Int = "QAbstractButton_autoRepeatInterval"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_click(this : QAbstractButton) = "QAbstractButton_click"

///|
#borrow(this, text)
pub extern "C" fn _QAbstractButton_setText(
  this : QAbstractButton,
  text : String,
) = "QAbstractButton_setText"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_isCheckable(this : QAbstractButton) -> Bool = "QAbstractButton_isCheckable"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_isChecked(this : QAbstractButton) -> Bool = "QAbstractButton_isChecked"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_isDown(this : QAbstractButton) -> Bool = "QAbstractButton_isDown"

///|
#borrow(this, value)
pub extern "C" fn _QAbstractButton_setAutoExclusive(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setAutoExclusive"

///|
#borrow(this, value)
pub extern "C" fn _QAbstractButton_setAutoRepeat(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setAutoRepeat"

///|
#borrow(this, delay)
pub extern "C" fn _QAbstractButton_setAutoRepeatDelay(
  this : QAbstractButton,
  delay : Int,
) = "QAbstractButton_setAutoRepeatDelay"

///|
#borrow(this, interval)
pub extern "C" fn _QAbstractButton_setAutoRepeatInterval(
  this : QAbstractButton,
  interval : Int,
) = "QAbstractButton_setAutoRepeatInterval"

///|
#borrow(this, value)
pub extern "C" fn _QAbstractButton_setCheckable(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setCheckable"

///|
#borrow(this, value)
pub extern "C" fn _QAbstractButton_setChecked(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setChecked"

///|
#borrow(this, value)
pub extern "C" fn _QAbstractButton_setDown(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setDown"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_text(this : QAbstractButton) -> String = "QAbstractButton_text"

///|
#borrow(this)
pub extern "C" fn _QAbstractButton_toggle(this : QAbstractButton) = "QAbstractButton_toggle"

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
