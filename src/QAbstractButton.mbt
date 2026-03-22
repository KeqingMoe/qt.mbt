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
#borrow(this)
extern "C" fn _QAbstractButton_icon(this : QAbstractButton) -> QIcon = "QAbstractButton_icon"

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
#borrow(this, icon)
extern "C" fn _QAbstractButton_setIcon(this : QAbstractButton, icon : QIcon) = "QAbstractButton_setIcon"

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
  animateClick(Self) -> Unit raise NullptrError = _
  autoExclusive(Self) -> Bool raise NullptrError = _
  autoRepeat(Self) -> Bool raise NullptrError = _
  autoRepeatDelay(Self) -> Int raise NullptrError = _
  autoRepeatInterval(Self) -> Int raise NullptrError = _
  click(Self) -> Unit raise NullptrError = _
  icon(Self) -> QIcon raise NullptrError = _
  isCheckable(Self) -> Bool raise NullptrError = _
  isChecked(Self) -> Bool raise NullptrError = _
  isDown(Self) -> Bool raise NullptrError = _
  setAutoExclusive(Self, value : Bool) -> Unit raise NullptrError = _
  setAutoRepeat(Self, value : Bool) -> Unit raise NullptrError = _
  setAutoRepeatDelay(Self, delay : Int) -> Unit raise NullptrError = _
  setAutoRepeatInterval(Self, interval : Int) -> Unit raise NullptrError = _
  setCheckable(Self, value : Bool) -> Unit raise NullptrError = _
  setChecked(Self, value : Bool) -> Unit raise NullptrError = _
  setDown(Self, value : Bool) -> Unit raise NullptrError = _
  setIcon(Self, icon : QIcon) -> Unit raise NullptrError = _
  setText(Self, text : String) -> Unit raise NullptrError = _
  text(Self) -> String raise NullptrError = _
  toggle(Self) -> Unit raise NullptrError = _
  clicked(Self) -> Signal[Bool] raise NullptrError = _
  pressed(Self) -> Signal[Unit] raise NullptrError = _
  released(Self) -> Signal[Unit] raise NullptrError = _
  toggled(Self) -> Signal[Bool] raise NullptrError = _
}

///|
impl AsAbstractButton with animateClick(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_animateClick(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoExclusive(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_autoExclusive(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeat(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_autoRepeat(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeatDelay(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_autoRepeatDelay(self.as_abstract_button())
}

///|
impl AsAbstractButton with autoRepeatInterval(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_autoRepeatInterval(self.as_abstract_button())
}

///|
impl AsAbstractButton with click(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_click(self.as_abstract_button())
}

///|
impl AsAbstractButton with icon(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_icon(self.as_abstract_button())
}

///|
impl AsAbstractButton with clicked(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_clicked(self.as_abstract_button())
}

///|
impl AsAbstractButton with isCheckable(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_isCheckable(self.as_abstract_button())
}

///|
impl AsAbstractButton with isChecked(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_isChecked(self.as_abstract_button())
}

///|
impl AsAbstractButton with isDown(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_isDown(self.as_abstract_button())
}

///|
impl AsAbstractButton with pressed(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_pressed(self.as_abstract_button())
}

///|
impl AsAbstractButton with released(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_released(self.as_abstract_button())
}

///|
impl AsAbstractButton with setAutoExclusive(self, value) {
  ensure_not_nullptr(self)
  _QAbstractButton_setAutoExclusive(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setAutoRepeat(self, value) {
  ensure_not_nullptr(self)
  _QAbstractButton_setAutoRepeat(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setAutoRepeatDelay(self, delay) {
  ensure_not_nullptr(self)
  _QAbstractButton_setAutoRepeatDelay(self.as_abstract_button(), delay)
}

///|
impl AsAbstractButton with setAutoRepeatInterval(self, interval) {
  ensure_not_nullptr(self)
  _QAbstractButton_setAutoRepeatInterval(self.as_abstract_button(), interval)
}

///|
impl AsAbstractButton with setCheckable(self, value) {
  ensure_not_nullptr(self)
  _QAbstractButton_setCheckable(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setChecked(self, value) {
  ensure_not_nullptr(self)
  _QAbstractButton_setChecked(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setDown(self, value) {
  ensure_not_nullptr(self)
  _QAbstractButton_setDown(self.as_abstract_button(), value)
}

///|
impl AsAbstractButton with setIcon(self, icon) {
  ensure_not_nullptr(self)
  _QAbstractButton_setIcon(self.as_abstract_button(), icon)
}

///|
impl AsAbstractButton with setText(self, text) {
  ensure_not_nullptr(self)
  _QAbstractButton_setText(self.as_abstract_button(), text)
}

///|
impl AsAbstractButton with text(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_text(self.as_abstract_button())
}

///|
impl AsAbstractButton with toggle(self) {
  ensure_not_nullptr(self)
  _QAbstractButton_toggle(self.as_abstract_button())
}

///|
impl AsAbstractButton with toggled(self) {
  ensure_not_nullptr(self)
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
