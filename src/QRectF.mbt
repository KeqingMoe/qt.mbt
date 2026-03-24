///|
pub type QRectF

///|
extern "C" fn _QRectF_new(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> QRectF = "QRectF_new"

///|
#borrow(this, dx1, dy1, dx2, dy2)
extern "C" fn _QRectF_adjusted(
  this : QRectF,
  dx1 : Double,
  dy1 : Double,
  dx2 : Double,
  dy2 : Double,
) -> QRectF = "QRectF_adjusted"

///|
#borrow(this)
extern "C" fn _QRectF_bottom(this : QRectF) -> Double = "QRectF_bottom"

///|
#borrow(this, x, y)
extern "C" fn _QRectF_contains(this : QRectF, x : Double, y : Double) -> Bool = "QRectF_contains"

///|
#borrow(this)
extern "C" fn _QRectF_height(this : QRectF) -> Double = "QRectF_height"

///|
#borrow(this, other)
extern "C" fn _QRectF_intersected(this : QRectF, other : QRectF) -> QRectF = "QRectF_intersected"

///|
#borrow(this, other)
extern "C" fn _QRectF_intersects(this : QRectF, other : QRectF) -> Bool = "QRectF_intersects"

///|
#borrow(this)
extern "C" fn _QRectF_isEmpty(this : QRectF) -> Bool = "QRectF_isEmpty"

///|
#borrow(this)
extern "C" fn _QRectF_isNull(this : QRectF) -> Bool = "QRectF_isNull"

///|
#borrow(this)
extern "C" fn _QRectF_isValid(this : QRectF) -> Bool = "QRectF_isValid"

///|
#borrow(this)
extern "C" fn _QRectF_left(this : QRectF) -> Double = "QRectF_left"

///|
#borrow(this)
extern "C" fn _QRectF_normalized(this : QRectF) -> QRectF = "QRectF_normalized"

///|
#borrow(this)
extern "C" fn _QRectF_right(this : QRectF) -> Double = "QRectF_right"

///|
#borrow(this, value)
extern "C" fn _QRectF_setBottom(this : QRectF, value : Double) = "QRectF_setBottom"

///|
#borrow(this, value)
extern "C" fn _QRectF_setHeight(this : QRectF, value : Double) = "QRectF_setHeight"

///|
#borrow(this, value)
extern "C" fn _QRectF_setLeft(this : QRectF, value : Double) = "QRectF_setLeft"

///|
#borrow(this, x, y, width, height)
extern "C" fn _QRectF_setRect(
  this : QRectF,
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) = "QRectF_setRect"

///|
#borrow(this, value)
extern "C" fn _QRectF_setRight(this : QRectF, value : Double) = "QRectF_setRight"

///|
#borrow(this, value)
extern "C" fn _QRectF_setTop(this : QRectF, value : Double) = "QRectF_setTop"

///|
#borrow(this, value)
extern "C" fn _QRectF_setWidth(this : QRectF, value : Double) = "QRectF_setWidth"

///|
#borrow(this, value)
extern "C" fn _QRectF_setX(this : QRectF, value : Double) = "QRectF_setX"

///|
#borrow(this, value)
extern "C" fn _QRectF_setY(this : QRectF, value : Double) = "QRectF_setY"

///|
#borrow(this)
extern "C" fn _QRectF_top(this : QRectF) -> Double = "QRectF_top"

///|
#borrow(this, dx, dy)
extern "C" fn _QRectF_translate(this : QRectF, dx : Double, dy : Double) = "QRectF_translate"

///|
#borrow(this, dx, dy)
extern "C" fn _QRectF_translated(
  this : QRectF,
  dx : Double,
  dy : Double,
) -> QRectF = "QRectF_translated"

///|
#borrow(this, other)
extern "C" fn _QRectF_united(this : QRectF, other : QRectF) -> QRectF = "QRectF_united"

///|
#borrow(this)
extern "C" fn _QRectF_width(this : QRectF) -> Double = "QRectF_width"

///|
#borrow(this)
extern "C" fn _QRectF_x(this : QRectF) -> Double = "QRectF_x"

///|
#borrow(this)
extern "C" fn _QRectF_y(this : QRectF) -> Double = "QRectF_y"

///|
pub fn QRectF::new(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> Self {
  _QRectF_new(x, y, width, height)
}

///|
pub fn QRectF::adjusted(
  self : Self,
  dx1 : Double,
  dy1 : Double,
  dx2 : Double,
  dy2 : Double,
) -> Self {
  _QRectF_adjusted(self, dx1, dy1, dx2, dy2)
}

///|
pub fn QRectF::bottom(self : Self) -> Double {
  _QRectF_bottom(self)
}

///|
pub fn QRectF::contains(self : Self, x : Double, y : Double) -> Bool {
  _QRectF_contains(self, x, y)
}

///|
pub fn QRectF::height(self : Self) -> Double {
  _QRectF_height(self)
}

///|
pub fn QRectF::intersected(self : Self, other : Self) -> Self {
  _QRectF_intersected(self, other)
}

///|
pub fn QRectF::intersects(self : Self, other : Self) -> Bool {
  _QRectF_intersects(self, other)
}

///|
pub fn QRectF::isEmpty(self : Self) -> Bool {
  _QRectF_isEmpty(self)
}

///|
pub fn QRectF::isNull(self : Self) -> Bool {
  _QRectF_isNull(self)
}

///|
pub fn QRectF::isValid(self : Self) -> Bool {
  _QRectF_isValid(self)
}

///|
pub fn QRectF::left(self : Self) -> Double {
  _QRectF_left(self)
}

///|
pub fn QRectF::normalized(self : Self) -> Self {
  _QRectF_normalized(self)
}

///|
pub fn QRectF::right(self : Self) -> Double {
  _QRectF_right(self)
}

///|
pub fn QRectF::setBottom(self : Self, value : Double) -> Unit {
  _QRectF_setBottom(self, value)
}

///|
pub fn QRectF::setHeight(self : Self, value : Double) -> Unit {
  _QRectF_setHeight(self, value)
}

///|
pub fn QRectF::setLeft(self : Self, value : Double) -> Unit {
  _QRectF_setLeft(self, value)
}

///|
pub fn QRectF::setRect(
  self : Self,
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> Unit {
  _QRectF_setRect(self, x, y, width, height)
}

///|
pub fn QRectF::setRight(self : Self, value : Double) -> Unit {
  _QRectF_setRight(self, value)
}

///|
pub fn QRectF::setTop(self : Self, value : Double) -> Unit {
  _QRectF_setTop(self, value)
}

///|
pub fn QRectF::setWidth(self : Self, value : Double) -> Unit {
  _QRectF_setWidth(self, value)
}

///|
pub fn QRectF::setX(self : Self, value : Double) -> Unit {
  _QRectF_setX(self, value)
}

///|
pub fn QRectF::setY(self : Self, value : Double) -> Unit {
  _QRectF_setY(self, value)
}

///|
pub fn QRectF::top(self : Self) -> Double {
  _QRectF_top(self)
}

///|
pub fn QRectF::translate(self : Self, dx : Double, dy : Double) -> Unit {
  _QRectF_translate(self, dx, dy)
}

///|
pub fn QRectF::translated(self : Self, dx : Double, dy : Double) -> Self {
  _QRectF_translated(self, dx, dy)
}

///|
pub fn QRectF::united(self : Self, other : Self) -> Self {
  _QRectF_united(self, other)
}

///|
pub fn QRectF::width(self : Self) -> Double {
  _QRectF_width(self)
}

///|
pub fn QRectF::x(self : Self) -> Double {
  _QRectF_x(self)
}

///|
pub fn QRectF::y(self : Self) -> Double {
  _QRectF_y(self)
}
