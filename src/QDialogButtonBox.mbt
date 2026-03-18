///|
pub type QDialogButtonBox

///|
extern "C" fn _QDialogButtonBox_new() -> QDialogButtonBox = "QDialogButtonBox_new"

///|
#borrow(this, button, role)
extern "C" fn _QDialogButtonBox_addButton(
  this : QDialogButtonBox,
  button : QAbstractButton,
  role : ButtonRole,
) = "QDialogButtonBox_addButton"

///|
#borrow(this)
extern "C" fn _QDialogButtonBox_centerButtons(this : QDialogButtonBox) -> Bool = "QDialogButtonBox_centerButtons"

///|
#borrow(this)
extern "C" fn _QDialogButtonBox_clear(this : QDialogButtonBox) = "QDialogButtonBox_clear"

///|
#borrow(this, value)
extern "C" fn _QDialogButtonBox_setCenterButtons(
  this : QDialogButtonBox,
  value : Bool,
) = "QDialogButtonBox_setCenterButtons"

///|
#borrow(this)
extern "C" fn _QDialogButtonBox_accepted(
  this : QDialogButtonBox,
) -> Signal[Unit] = "QDialogButtonBox_accepted"

///|
#borrow(this)
extern "C" fn _QDialogButtonBox_rejected(
  this : QDialogButtonBox,
) -> Signal[Unit] = "QDialogButtonBox_rejected"

///|
#borrow(this)
extern "C" fn _QDialogButtonBox_as_QWidget(this : QDialogButtonBox) -> QWidget = "QDialogButtonBox_as_QWidget"

///|
pub fn QDialogButtonBox::new() -> Self {
  _QDialogButtonBox_new()
}

///|
pub fn QDialogButtonBox::accepted(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_accepted(self)
}

///|
pub fn QDialogButtonBox::addButton(
  self : Self,
  button : &AsAbstractButton,
  role : ButtonRole,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_addButton(self, button.as_abstract_button(), role)
}

///|
pub fn QDialogButtonBox::centerButtons(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_centerButtons(self)
}

///|
pub fn QDialogButtonBox::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_clear(self)
}

///|
pub fn QDialogButtonBox::rejected(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_rejected(self)
}

///|
pub fn QDialogButtonBox::setCenterButtons(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialogButtonBox_setCenterButtons(self, value)
}

///|
pub impl AsObject for QDialogButtonBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QDialogButtonBox with as_widget(self) {
  _QDialogButtonBox_as_QWidget(self)
}
