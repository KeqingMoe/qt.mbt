///|
pub type QCheckBox

///|
extern "C" fn _QCheckBox_new() -> QCheckBox = "QCheckBox_new"

///|
#borrow(this)
extern "C" fn _QCheckBox_checkState(this : QCheckBox) -> CheckState = "QCheckBox_checkState"

///|
#borrow(this)
extern "C" fn _QCheckBox_checkStateChanged(
  this : QCheckBox,
) -> Signal[CheckState] = "QCheckBox_checkStateChanged"

///|
#borrow(this)
extern "C" fn _QCheckBox_isTristate(this : QCheckBox) -> Bool = "QCheckBox_isTristate"

///|
#borrow(this, state)
extern "C" fn _QCheckBox_setCheckState(this : QCheckBox, state : CheckState) = "QCheckBox_setCheckState"

///|
#borrow(this, tristate)
extern "C" fn _QCheckBox_setTristate(this : QCheckBox, tristate : Bool) = "QCheckBox_setTristate"

///|
#borrow(this)
extern "C" fn _QCheckBox_stateChanged(this : QCheckBox) -> Signal[CheckState] = "QCheckBox_stateChanged"

///|
#borrow(this)
extern "C" fn _QCheckBox_as_QAbstractButton(
  this : QCheckBox,
) -> QAbstractButton = "QCheckBox_as_QAbstractButton"

///|
pub fn QCheckBox::new() -> Self {
  _QCheckBox_new()
}

///|
pub fn QCheckBox::checkState(self : Self) -> CheckState {
  _QCheckBox_checkState(self)
}

///|
pub fn QCheckBox::checkStateChanged(self : Self) -> Signal[CheckState] {
  _QCheckBox_checkStateChanged(self)
}

///|
pub fn QCheckBox::isTristate(self : Self) -> Bool {
  _QCheckBox_isTristate(self)
}

///|
pub fn QCheckBox::setCheckState(self : Self, state : CheckState) -> Unit {
  _QCheckBox_setCheckState(self, state)
}

///|
pub fn QCheckBox::setTristate(self : Self, tristate? : Bool = true) -> Unit {
  _QCheckBox_setTristate(self, tristate)
}

///|
pub fn QCheckBox::stateChanged(self : Self) -> Signal[CheckState] {
  _QCheckBox_stateChanged(self)
}

///|
pub impl AsObject for QCheckBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QCheckBox with as_widget(self) {
  self.as_abstract_button().as_widget()
}

///|
pub impl AsAbstractButton for QCheckBox with as_abstract_button(self) {
  _QCheckBox_as_QAbstractButton(self)
}
