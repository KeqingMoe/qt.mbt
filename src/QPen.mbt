///|
pub type QPen

///|
extern "C" fn _QPen_new() -> QPen = "QPen_new"

///|
#borrow(color)
extern "C" fn _QPen_newWithColor(color : QColor) -> QPen = "QPen_newWithColor"

///|
#borrow(this)
extern "C" fn _QPen_color(this : QPen) -> QColor = "QPen_color"

///|
#borrow(this, color)
extern "C" fn _QPen_setColor(this : QPen, color : QColor) = "QPen_setColor"

///|
#borrow(this, width)
extern "C" fn _QPen_setWidthF(this : QPen, width : Double) = "QPen_setWidthF"

///|
#borrow(this, style)
extern "C" fn _QPen_setStyle(this : QPen, style : PenStyle) = "QPen_setStyle"

///|
#borrow(this, style)
extern "C" fn _QPen_setCapStyle(this : QPen, style : PenCapStyle) = "QPen_setCapStyle"

///|
#borrow(this, style)
extern "C" fn _QPen_setJoinStyle(this : QPen, style : PenJoinStyle) = "QPen_setJoinStyle"

///|
#borrow(this)
extern "C" fn _QPen_widthF(this : QPen) -> Double = "QPen_widthF"

///|
pub fn QPen::new() -> Self {
  _QPen_new()
}

///|
pub fn QPen::newWithColor(color : QColor) -> Self {
  _QPen_newWithColor(color)
}

///|
pub fn QPen::color(self : Self) -> QColor {
  _QPen_color(self)
}

///|
pub fn QPen::setColor(self : Self, color : QColor) -> Unit {
  _QPen_setColor(self, color)
}

///|
pub fn QPen::setWidthF(self : Self, width : Double) -> Unit {
  _QPen_setWidthF(self, width)
}

///|
pub fn QPen::setStyle(self : Self, style : PenStyle) -> Unit {
  _QPen_setStyle(self, style)
}

///|
pub fn QPen::setCapStyle(self : Self, style : PenCapStyle) -> Unit {
  _QPen_setCapStyle(self, style)
}

///|
pub fn QPen::setJoinStyle(self : Self, style : PenJoinStyle) -> Unit {
  _QPen_setJoinStyle(self, style)
}

///|
pub fn QPen::widthF(self : Self) -> Double {
  _QPen_widthF(self)
}
