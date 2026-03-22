///|
pub type QPushButton

///|
extern "C" fn _QPushButton_new() -> QPushButton = "QPushButton_new"

///|
#borrow(this)
extern "C" fn _QPushButton_isFlat(this : QPushButton) -> Bool = "QPushButton_isFlat"

///|
#borrow(this, flat)
extern "C" fn _QPushButton_setFlat(this : QPushButton, flat : Bool) = "QPushButton_setFlat"

///|
#borrow(this)
extern "C" fn _QPushButton_as_QAbstractButton(
  this : QPushButton,
) -> QAbstractButton = "QPushButton_as_QAbstractButton"

///|
pub fn QPushButton::new() -> Self {
  _QPushButton_new()
}

///|
pub fn QPushButton::isFlat(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QPushButton_isFlat(self)
}

///|
pub fn QPushButton::setFlat(
  self : Self,
  flat : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPushButton_setFlat(self, flat)
}

///|
pub impl AsObject for QPushButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QPushButton with as_widget(self) {
  self.as_abstract_button().as_widget()
}

///|
pub impl AsAbstractButton for QPushButton with as_abstract_button(self) {
  _QPushButton_as_QAbstractButton(self)
}
