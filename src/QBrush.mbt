///|
pub type QBrush

///|
extern "C" fn _QBrush_new() -> QBrush = "QBrush_new"

///|
#borrow(color)
extern "C" fn _QBrush_newWithColor(color : QColor) -> QBrush = "QBrush_newWithColor"

///|
#borrow(this)
extern "C" fn _QBrush_color(this : QBrush) -> QColor = "QBrush_color"

///|
#borrow(this)
extern "C" fn _QBrush_isOpaque(this : QBrush) -> Bool = "QBrush_isOpaque"

///|
#borrow(this, color)
extern "C" fn _QBrush_setColor(this : QBrush, color : QColor) = "QBrush_setColor"

///|
pub fn QBrush::new() -> Self {
  _QBrush_new()
}

///|
pub fn QBrush::newWithColor(color : QColor) -> Self {
  _QBrush_newWithColor(color)
}

///|
pub fn QBrush::color(self : Self) -> QColor {
  _QBrush_color(self)
}

///|
pub fn QBrush::isOpaque(self : Self) -> Bool {
  _QBrush_isOpaque(self)
}

///|
pub fn QBrush::setColor(self : Self, color : QColor) -> Unit {
  _QBrush_setColor(self, color)
}
