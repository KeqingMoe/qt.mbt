///|
pub type QRect

///|
extern "C" fn _QRect_new(x : Int, y : Int, width : Int, height : Int) -> QRect = "QRect_new"

///|
#borrow(this, dx1, dy1, dx2, dy2)
extern "C" fn _QRect_adjusted(
  this : QRect,
  dx1 : Int,
  dy1 : Int,
  dx2 : Int,
  dy2 : Int,
) -> QRect = "QRect_adjusted"

///|
#borrow(this)
extern "C" fn _QRect_bottom(this : QRect) -> Int = "QRect_bottom"

///|
#borrow(this, x, y)
extern "C" fn _QRect_contains(this : QRect, x : Int, y : Int) -> Bool = "QRect_contains"

///|
#borrow(this)
extern "C" fn _QRect_height(this : QRect) -> Int = "QRect_height"

///|
#borrow(this, other)
extern "C" fn _QRect_intersected(this : QRect, other : QRect) -> QRect = "QRect_intersected"

///|
#borrow(this, other)
extern "C" fn _QRect_intersects(this : QRect, other : QRect) -> Bool = "QRect_intersects"

///|
#borrow(this)
extern "C" fn _QRect_isEmpty(this : QRect) -> Bool = "QRect_isEmpty"

///|
#borrow(this)
extern "C" fn _QRect_isNull(this : QRect) -> Bool = "QRect_isNull"

///|
#borrow(this)
extern "C" fn _QRect_isValid(this : QRect) -> Bool = "QRect_isValid"

///|
#borrow(this)
extern "C" fn _QRect_left(this : QRect) -> Int = "QRect_left"

///|
#borrow(this)
extern "C" fn _QRect_normalized(this : QRect) -> QRect = "QRect_normalized"

///|
#borrow(this)
extern "C" fn _QRect_right(this : QRect) -> Int = "QRect_right"

///|
#borrow(this, value)
extern "C" fn _QRect_setBottom(this : QRect, value : Int) = "QRect_setBottom"

///|
#borrow(this, value)
extern "C" fn _QRect_setHeight(this : QRect, value : Int) = "QRect_setHeight"

///|
#borrow(this, value)
extern "C" fn _QRect_setLeft(this : QRect, value : Int) = "QRect_setLeft"

///|
#borrow(this, x, y, width, height)
extern "C" fn _QRect_setRect(
  this : QRect,
  x : Int,
  y : Int,
  width : Int,
  height : Int,
) = "QRect_setRect"

///|
#borrow(this, value)
extern "C" fn _QRect_setRight(this : QRect, value : Int) = "QRect_setRight"

///|
#borrow(this, value)
extern "C" fn _QRect_setTop(this : QRect, value : Int) = "QRect_setTop"

///|
#borrow(this, value)
extern "C" fn _QRect_setWidth(this : QRect, value : Int) = "QRect_setWidth"

///|
#borrow(this, value)
extern "C" fn _QRect_setX(this : QRect, value : Int) = "QRect_setX"

///|
#borrow(this, value)
extern "C" fn _QRect_setY(this : QRect, value : Int) = "QRect_setY"

///|
#borrow(this)
extern "C" fn _QRect_top(this : QRect) -> Int = "QRect_top"

///|
#borrow(this, dx, dy)
extern "C" fn _QRect_translate(this : QRect, dx : Int, dy : Int) = "QRect_translate"

///|
#borrow(this, dx, dy)
extern "C" fn _QRect_translated(this : QRect, dx : Int, dy : Int) -> QRect = "QRect_translated"

///|
#borrow(this, other)
extern "C" fn _QRect_united(this : QRect, other : QRect) -> QRect = "QRect_united"

///|
#borrow(this)
extern "C" fn _QRect_width(this : QRect) -> Int = "QRect_width"

///|
#borrow(this)
extern "C" fn _QRect_x(this : QRect) -> Int = "QRect_x"

///|
#borrow(this)
extern "C" fn _QRect_y(this : QRect) -> Int = "QRect_y"

///|
pub fn QRect::new(x : Int, y : Int, width : Int, height : Int) -> Self {
  _QRect_new(x, y, width, height)
}

///|
pub fn QRect::adjusted(
  self : Self,
  dx1 : Int,
  dy1 : Int,
  dx2 : Int,
  dy2 : Int,
) -> Self {
  _QRect_adjusted(self, dx1, dy1, dx2, dy2)
}

///|
pub fn QRect::bottom(self : Self) -> Int {
  _QRect_bottom(self)
}

///|
pub fn QRect::contains(self : Self, x : Int, y : Int) -> Bool {
  _QRect_contains(self, x, y)
}

///|
pub fn QRect::height(self : Self) -> Int {
  _QRect_height(self)
}

///|
pub fn QRect::intersected(self : Self, other : Self) -> Self {
  _QRect_intersected(self, other)
}

///|
pub fn QRect::intersects(self : Self, other : Self) -> Bool {
  _QRect_intersects(self, other)
}

///|
pub fn QRect::isEmpty(self : Self) -> Bool {
  _QRect_isEmpty(self)
}

///|
pub fn QRect::isNull(self : Self) -> Bool {
  _QRect_isNull(self)
}

///|
pub fn QRect::isValid(self : Self) -> Bool {
  _QRect_isValid(self)
}

///|
pub fn QRect::left(self : Self) -> Int {
  _QRect_left(self)
}

///|
pub fn QRect::normalized(self : Self) -> Self {
  _QRect_normalized(self)
}

///|
pub fn QRect::right(self : Self) -> Int {
  _QRect_right(self)
}

///|
pub fn QRect::setBottom(self : Self, value : Int) -> Unit {
  _QRect_setBottom(self, value)
}

///|
pub fn QRect::setHeight(self : Self, value : Int) -> Unit {
  _QRect_setHeight(self, value)
}

///|
pub fn QRect::setLeft(self : Self, value : Int) -> Unit {
  _QRect_setLeft(self, value)
}

///|
pub fn QRect::setRect(
  self : Self,
  x : Int,
  y : Int,
  width : Int,
  height : Int,
) -> Unit {
  _QRect_setRect(self, x, y, width, height)
}

///|
pub fn QRect::setRight(self : Self, value : Int) -> Unit {
  _QRect_setRight(self, value)
}

///|
pub fn QRect::setTop(self : Self, value : Int) -> Unit {
  _QRect_setTop(self, value)
}

///|
pub fn QRect::setWidth(self : Self, value : Int) -> Unit {
  _QRect_setWidth(self, value)
}

///|
pub fn QRect::setX(self : Self, value : Int) -> Unit {
  _QRect_setX(self, value)
}

///|
pub fn QRect::setY(self : Self, value : Int) -> Unit {
  _QRect_setY(self, value)
}

///|
pub fn QRect::top(self : Self) -> Int {
  _QRect_top(self)
}

///|
pub fn QRect::translate(self : Self, dx : Int, dy : Int) -> Unit {
  _QRect_translate(self, dx, dy)
}

///|
pub fn QRect::translated(self : Self, dx : Int, dy : Int) -> Self {
  _QRect_translated(self, dx, dy)
}

///|
pub fn QRect::united(self : Self, other : Self) -> Self {
  _QRect_united(self, other)
}

///|
pub fn QRect::width(self : Self) -> Int {
  _QRect_width(self)
}

///|
pub fn QRect::x(self : Self) -> Int {
  _QRect_x(self)
}

///|
pub fn QRect::y(self : Self) -> Int {
  _QRect_y(self)
}
