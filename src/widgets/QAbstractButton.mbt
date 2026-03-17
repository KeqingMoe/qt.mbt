///|
pub type QAbstractButton

///|
#borrow(this)
extern "C" fn _QAbstractButton_animateClick(this : QAbstractButton) = "QAbstractButton_animateClick"

///|
#borrow(this)
extern "C" fn _QAbstractButton_autoExclusive(this : QAbstractButton) -> Bool = "QAbstractButton_autoExclusive"

///|
#borrow(this)
extern "C" fn _QAbstractButton_autoRepeat(this : QAbstractButton) -> Bool = "QAbstractButton_autoRepeat"

///|
#borrow(this)
extern "C" fn _QAbstractButton_autoRepeatDelay(this : QAbstractButton) -> Int = "QAbstractButton_autoRepeatDelay"

///|
#borrow(this)
extern "C" fn _QAbstractButton_autoRepeatInterval(
  this : QAbstractButton,
) -> Int = "QAbstractButton_autoRepeatInterval"

///|
#borrow(this)
extern "C" fn _QAbstractButton_click(this : QAbstractButton) = "QAbstractButton_click"

///|
#borrow(this, text)
extern "C" fn _QAbstractButton_setText(this : QAbstractButton, text : String) = "QAbstractButton_setText"

///|
#borrow(this)
extern "C" fn _QAbstractButton_isCheckable(this : QAbstractButton) -> Bool = "QAbstractButton_isCheckable"

///|
#borrow(this)
extern "C" fn _QAbstractButton_isChecked(this : QAbstractButton) -> Bool = "QAbstractButton_isChecked"

///|
#borrow(this)
extern "C" fn _QAbstractButton_isDown(this : QAbstractButton) -> Bool = "QAbstractButton_isDown"

///|
#borrow(this, value)
extern "C" fn _QAbstractButton_setAutoExclusive(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setAutoExclusive"

///|
#borrow(this, value)
extern "C" fn _QAbstractButton_setAutoRepeat(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setAutoRepeat"

///|
#borrow(this, delay)
extern "C" fn _QAbstractButton_setAutoRepeatDelay(
  this : QAbstractButton,
  delay : Int,
) = "QAbstractButton_setAutoRepeatDelay"

///|
#borrow(this, interval)
extern "C" fn _QAbstractButton_setAutoRepeatInterval(
  this : QAbstractButton,
  interval : Int,
) = "QAbstractButton_setAutoRepeatInterval"

///|
#borrow(this, value)
extern "C" fn _QAbstractButton_setCheckable(
  this : QAbstractButton,
  value : Bool,
) = "QAbstractButton_setCheckable"

///|
#borrow(this, value)
extern "C" fn _QAbstractButton_setChecked(this : QAbstractButton, value : Bool) = "QAbstractButton_setChecked"

///|
#borrow(this, value)
extern "C" fn _QAbstractButton_setDown(this : QAbstractButton, value : Bool) = "QAbstractButton_setDown"

///|
#borrow(this)
extern "C" fn _QAbstractButton_text(this : QAbstractButton) -> String = "QAbstractButton_text"

///|
#borrow(this)
extern "C" fn _QAbstractButton_toggle(this : QAbstractButton) = "QAbstractButton_toggle"

///|
#borrow(this)
extern "C" fn _QAbstractButton_clicked(this : QAbstractButton) -> Signal[Bool] = "QAbstractButton_clicked"

///|
#borrow(this)
extern "C" fn _QAbstractButton_pressed(this : QAbstractButton) -> Signal[Unit] = "QAbstractButton_pressed"

///|
#borrow(this)
extern "C" fn _QAbstractButton_released(this : QAbstractButton) -> Signal[Unit] = "QAbstractButton_released"

///|
#borrow(this)
extern "C" fn _QAbstractButton_toggled(this : QAbstractButton) -> Signal[Bool] = "QAbstractButton_toggled"

///|
#borrow(this)
extern "C" fn _QAbstractButton_as_QWidget(this : QAbstractButton) -> QWidget = "QAbstractButton_as_QWidget"

///|
pub(open) trait AsAbstractButton: AsWidget {
  as_abstract_button(Self) -> QAbstractButton
  animateClick(Self) -> Unit = _
  autoExclusive(Self) -> Bool = _
  autoRepeat(Self) -> Bool = _
  autoRepeatDelay(Self) -> Int = _
  autoRepeatInterval(Self) -> Int = _
  click(Self) -> Unit = _
  isCheckable(Self) -> Bool = _
  isChecked(Self) -> Bool = _
  isDown(Self) -> Bool = _
  setAutoExclusive(Self, value : Bool) -> Unit = _
  setAutoRepeat(Self, value : Bool) -> Unit = _
  setAutoRepeatDelay(Self, delay : Int) -> Unit = _
  setAutoRepeatInterval(Self, interval : Int) -> Unit = _
  setCheckable(Self, value : Bool) -> Unit = _
  setChecked(Self, value : Bool) -> Unit = _
  setDown(Self, value : Bool) -> Unit = _
  setText(Self, text : String) -> Unit = _
  text(Self) -> String = _
  toggle(Self) -> Unit = _
  clicked(Self) -> Signal[Bool] = _
  pressed(Self) -> Signal[Unit] = _
  released(Self) -> Signal[Unit] = _
  toggled(Self) -> Signal[Bool] = _
}

///|
impl AsAbstractButton with animateClick(self) {
  _QAbstractButton_animateClick(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoExclusive(self) {
  _QAbstractButton_autoExclusive(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeat(self) {
  _QAbstractButton_autoRepeat(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeatDelay(self) {
  _QAbstractButton_autoRepeatDelay(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeatInterval(self) {
  _QAbstractButton_autoRepeatInterval(self.as_abstract_button())
}

///|
impl AsAbstractButton with click(self) {
  _QAbstractButton_click(self.as_abstract_button())
}

///|
impl AsAbstractButton with clicked(self) {
  _QAbstractButton_clicked(self.as_abstract_button())
}

///|
impl AsAbstractButton with isCheckable(self) {
  _QAbstractButton_isCheckable(self.as_abstract_button())
}

///|
impl AsAbstractButton with isChecked(self) {
  _QAbstractButton_isChecked(self.as_abstract_button())
}

///|
impl AsAbstractButton with isDown(self) {
  _QAbstractButton_isDown(self.as_abstract_button())
}

///|
impl AsAbstractButton with pressed(self) {
  _QAbstractButton_pressed(self.as_abstract_button())
}

///|
impl AsAbstractButton with released(self) {
  _QAbstractButton_released(self.as_abstract_button())
}

///|
impl AsAbstractButton with setAutoExclusive(self, value) {
  _QAbstractButton_setAutoExclusive(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setAutoRepeat(self, value) {
  _QAbstractButton_setAutoRepeat(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setAutoRepeatDelay(self, delay) {
  _QAbstractButton_setAutoRepeatDelay(self.as_abstract_button(), delay)
}

///|
impl AsAbstractButton with setAutoRepeatInterval(self, interval) {
  _QAbstractButton_setAutoRepeatInterval(self.as_abstract_button(), interval)
}

///|
impl AsAbstractButton with setCheckable(self, value) {
  _QAbstractButton_setCheckable(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setChecked(self, value) {
  _QAbstractButton_setChecked(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setDown(self, value) {
  _QAbstractButton_setDown(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setText(self, text) {
  _QAbstractButton_setText(self.as_abstract_button(), text)
}

///|
impl AsAbstractButton with text(self) {
  _QAbstractButton_text(self.as_abstract_button())
}

///|
impl AsAbstractButton with toggle(self) {
  _QAbstractButton_toggle(self.as_abstract_button())
}

///|
impl AsAbstractButton with toggled(self) {
  _QAbstractButton_toggled(self.as_abstract_button())
}

///|
pub impl AsObject for QAbstractButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractButton with as_widget(self) {
  _QAbstractButton_as_QWidget(self)
}

///|
pub impl AsAbstractButton for QAbstractButton with as_abstract_button(self) {
  self
}
