///|
pub type QButtonGroup

///|
extern "C" fn _QButtonGroup_new() -> QButtonGroup = "QButtonGroup_new"

///|
#borrow(parent)
extern "C" fn _QButtonGroup_newWithParent(parent : QObject) -> QButtonGroup = "QButtonGroup_newWithParent"

///|
#borrow(this, button, id)
extern "C" fn _QButtonGroup_addButton(
  this : QButtonGroup,
  button : QAbstractButton,
  id : Int,
) = "QButtonGroup_addButton"

///|
#borrow(this, id)
extern "C" fn _QButtonGroup_button(
  this : QButtonGroup,
  id : Int,
) -> QAbstractButton = "QButtonGroup_button"

///|
#borrow(this)
extern "C" fn _QButtonGroup_buttons(this : QButtonGroup) -> QAbstractButtonList = "QButtonGroup_buttons"

///|
#borrow(this)
extern "C" fn _QButtonGroup_checkedButton(
  this : QButtonGroup,
) -> QAbstractButton = "QButtonGroup_checkedButton"

///|
#borrow(this)
extern "C" fn _QButtonGroup_checkedId(this : QButtonGroup) -> Int = "QButtonGroup_checkedId"

///|
#borrow(this)
extern "C" fn _QButtonGroup_exclusive(this : QButtonGroup) -> Bool = "QButtonGroup_exclusive"

///|
#borrow(this, button)
extern "C" fn _QButtonGroup_id(
  this : QButtonGroup,
  button : QAbstractButton,
) -> Int = "QButtonGroup_id"

///|
#borrow(this, button)
extern "C" fn _QButtonGroup_removeButton(
  this : QButtonGroup,
  button : QAbstractButton,
) = "QButtonGroup_removeButton"

///|
#borrow(this, value)
extern "C" fn _QButtonGroup_setExclusive(this : QButtonGroup, value : Bool) = "QButtonGroup_setExclusive"

///|
#borrow(this, button, id)
extern "C" fn _QButtonGroup_setId(
  this : QButtonGroup,
  button : QAbstractButton,
  id : Int,
) = "QButtonGroup_setId"

///|
#borrow(this)
extern "C" fn _QButtonGroup_buttonClicked(
  this : QButtonGroup,
) -> Signal[QAbstractButton] = "QButtonGroup_buttonClicked"

///|
#borrow(this)
extern "C" fn _QButtonGroup_buttonPressed(
  this : QButtonGroup,
) -> Signal[QAbstractButton] = "QButtonGroup_buttonPressed"

///|
#borrow(this)
extern "C" fn _QButtonGroup_buttonReleased(
  this : QButtonGroup,
) -> Signal[QAbstractButton] = "QButtonGroup_buttonReleased"

///|
#borrow(this)
extern "C" fn _QButtonGroup_buttonToggled(
  this : QButtonGroup,
) -> Signal[ButtonToggled] = "QButtonGroup_buttonToggled"

///|
#borrow(this)
extern "C" fn _QButtonGroup_idClicked(this : QButtonGroup) -> Signal[Int] = "QButtonGroup_idClicked"

///|
#borrow(this)
extern "C" fn _QButtonGroup_idPressed(this : QButtonGroup) -> Signal[Int] = "QButtonGroup_idPressed"

///|
#borrow(this)
extern "C" fn _QButtonGroup_idReleased(this : QButtonGroup) -> Signal[Int] = "QButtonGroup_idReleased"

///|
#borrow(this)
extern "C" fn _QButtonGroup_idToggled(this : QButtonGroup) -> Signal[IdToggled] = "QButtonGroup_idToggled"

///|
#borrow(this)
extern "C" fn _QButtonGroup_as_QObject(this : QButtonGroup) -> QObject = "QButtonGroup_as_QObject"

///|
pub fn QButtonGroup::new() -> Self {
  _QButtonGroup_new()
}

///|
pub fn QButtonGroup::newWithParent(parent : &AsObject) -> Self {
  _QButtonGroup_newWithParent(parent.as_object())
}

///|
pub fn QButtonGroup::addButton(
  self : Self,
  button : &AsAbstractButton,
  id? : Int = -1,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_addButton(self, button.as_abstract_button(), id)
}

///|
pub fn QButtonGroup::button(
  self : Self,
  id : Int,
) -> QAbstractButton raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_button(self, id)
}

///|
pub fn QButtonGroup::buttonClicked(
  self : Self,
) -> Signal[QAbstractButton] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_buttonClicked(self)
}

///|
pub fn QButtonGroup::buttonPressed(
  self : Self,
) -> Signal[QAbstractButton] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_buttonPressed(self)
}

///|
pub fn QButtonGroup::buttonReleased(
  self : Self,
) -> Signal[QAbstractButton] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_buttonReleased(self)
}

///|
pub fn QButtonGroup::buttons(
  self : Self,
) -> Array[QAbstractButton] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_buttons(self).to_array()
}

///|
pub fn QButtonGroup::buttonToggled(
  self : Self,
) -> Signal[ButtonToggled] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_buttonToggled(self)
}

///|
pub fn QButtonGroup::checkedButton(
  self : Self,
) -> QAbstractButton raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_checkedButton(self)
}

///|
pub fn QButtonGroup::checkedId(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_checkedId(self)
}

///|
pub fn QButtonGroup::exclusive(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_exclusive(self)
}

///|
pub fn QButtonGroup::id(
  self : Self,
  button : &AsAbstractButton,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_id(self, button.as_abstract_button())
}

///|
pub fn QButtonGroup::idClicked(self : Self) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_idClicked(self)
}

///|
pub fn QButtonGroup::idPressed(self : Self) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_idPressed(self)
}

///|
pub fn QButtonGroup::idReleased(self : Self) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_idReleased(self)
}

///|
pub fn QButtonGroup::idToggled(
  self : Self,
) -> Signal[IdToggled] raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_idToggled(self)
}

///|
pub fn QButtonGroup::removeButton(
  self : Self,
  button : &AsAbstractButton,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_removeButton(self, button.as_abstract_button())
}

///|
pub fn QButtonGroup::setExclusive(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_setExclusive(self, value)
}

///|
pub fn QButtonGroup::setId(
  self : Self,
  button : &AsAbstractButton,
  id : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QButtonGroup_setId(self, button.as_abstract_button(), id)
}

///|
pub impl AsObject for QButtonGroup with as_object(self) {
  _QButtonGroup_as_QObject(self)
}
