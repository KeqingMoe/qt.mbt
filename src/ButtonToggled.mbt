///|
pub type ButtonToggled

///|
#borrow(button)
extern "C" fn _ButtonToggled_new(
  button : QAbstractButton,
  checked : Bool,
) -> ButtonToggled = "ButtonToggled_new"

///|
#borrow(this)
extern "C" fn _ButtonToggled_button(this : ButtonToggled) -> QAbstractButton = "ButtonToggled_button"

///|
#borrow(this)
extern "C" fn _ButtonToggled_checked(this : ButtonToggled) -> Bool = "ButtonToggled_checked"

///|
pub fn ButtonToggled::new(button : QAbstractButton, checked : Bool) -> Self {
  _ButtonToggled_new(button, checked)
}

///|
pub fn ButtonToggled::button(self : Self) -> QAbstractButton {
  _ButtonToggled_button(self)
}

///|
pub fn ButtonToggled::checked(self : Self) -> Bool {
  _ButtonToggled_checked(self)
}
