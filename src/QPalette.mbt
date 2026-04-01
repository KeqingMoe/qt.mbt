///|
pub type QPalette

///|
extern "C" fn _QPalette_new() -> QPalette = "QPalette_new"

///|
#borrow(this, role)
extern "C" fn _QPalette_color(this : QPalette, role : ColorRole) -> QColor = "QPalette_color"

///|
#borrow(this, role, color)
extern "C" fn _QPalette_setColor(
  this : QPalette,
  role : ColorRole,
  color : QColor,
) = "QPalette_setColor"

///|
pub fn QPalette::new() -> Self {
  _QPalette_new()
}

///|
pub fn QPalette::color(self : Self, role : ColorRole) -> QColor {
  _QPalette_color(self, role)
}

///|
pub fn QPalette::setColor(
  self : Self,
  role : ColorRole,
  color : QColor,
) -> Unit {
  _QPalette_setColor(self, role, color)
}
