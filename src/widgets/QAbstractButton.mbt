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
  @ffi._QAbstractButton_animateClick(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with autoExclusive(self) {
  @ffi._QAbstractButton_autoExclusive(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with autoRepeat(self) {
  @ffi._QAbstractButton_autoRepeat(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with autoRepeatDelay(self) {
  @ffi._QAbstractButton_autoRepeatDelay(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with autoRepeatInterval(self) {
  @ffi._QAbstractButton_autoRepeatInterval(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with click(self) {
  @ffi._QAbstractButton_click(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with clicked(self) {
  @ffi._QAbstractButton_clicked(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with isCheckable(self) {
  @ffi._QAbstractButton_isCheckable(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with isChecked(self) {
  @ffi._QAbstractButton_isChecked(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with isDown(self) {
  @ffi._QAbstractButton_isDown(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with pressed(self) {
  @ffi._QAbstractButton_pressed(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with released(self) {
  @ffi._QAbstractButton_released(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with setAutoExclusive(self, value) {
  @ffi._QAbstractButton_setAutoExclusive(self.as_abstract_button().0, value)
}

///|
impl AsAbstractButton with setAutoRepeat(self, value) {
  @ffi._QAbstractButton_setAutoRepeat(self.as_abstract_button().0, value)
}

///|
impl AsAbstractButton with setAutoRepeatDelay(self, delay) {
  @ffi._QAbstractButton_setAutoRepeatDelay(self.as_abstract_button().0, delay)
}

///|
impl AsAbstractButton with setAutoRepeatInterval(self, interval) {
  @ffi._QAbstractButton_setAutoRepeatInterval(
    self.as_abstract_button().0,
    interval,
  )
}

///|
impl AsAbstractButton with setCheckable(self, value) {
  @ffi._QAbstractButton_setCheckable(self.as_abstract_button().0, value)
}

///|
impl AsAbstractButton with setChecked(self, value) {
  @ffi._QAbstractButton_setChecked(self.as_abstract_button().0, value)
}

///|
impl AsAbstractButton with setDown(self, value) {
  @ffi._QAbstractButton_setDown(self.as_abstract_button().0, value)
}

///|
impl AsAbstractButton with setText(self, text) {
  @ffi._QAbstractButton_setText(self.as_abstract_button().0, text)
}

///|
impl AsAbstractButton with text(self) {
  @ffi._QAbstractButton_text(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with toggle(self) {
  @ffi._QAbstractButton_toggle(self.as_abstract_button().0)
}

///|
impl AsAbstractButton with toggled(self) {
  @ffi._QAbstractButton_toggled(self.as_abstract_button().0)
}

///|
pub(all) struct QAbstractButton(@ffi.QAbstractButton)

///|
pub impl AsObject for QAbstractButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractButton with as_widget(self) {
  @ffi._QAbstractButton_as_QWidget(self.0)
}

///|
pub impl AsAbstractButton for QAbstractButton with as_abstract_button(self) {
  self
}
