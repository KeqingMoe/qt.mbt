///|
pub type QSize

///|
extern "C" fn _QSize_new(width : Int, height : Int) -> QSize = "QSize_new"

///|
#borrow(this, other)
extern "C" fn _QSize_boundedTo(this : QSize, other : QSize) -> QSize = "QSize_boundedTo"

///|
#borrow(this, other)
extern "C" fn _QSize_expandedTo(this : QSize, other : QSize) -> QSize = "QSize_expandedTo"

///|
#borrow(this)
extern "C" fn _QSize_height(this : QSize) -> Int = "QSize_height"

///|
#borrow(this)
extern "C" fn _QSize_isEmpty(this : QSize) -> Bool = "QSize_isEmpty"

///|
#borrow(this)
extern "C" fn _QSize_isNull(this : QSize) -> Bool = "QSize_isNull"

///|
#borrow(this)
extern "C" fn _QSize_isValid(this : QSize) -> Bool = "QSize_isValid"

///|
#borrow(this, width, height, mode)
extern "C" fn _QSize_scaled(
  this : QSize,
  width : Int,
  height : Int,
  mode : AspectRatioMode,
) -> QSize = "QSize_scaled"

///|
#borrow(this, value)
extern "C" fn _QSize_setHeight(this : QSize, value : Int) = "QSize_setHeight"

///|
#borrow(this, value)
extern "C" fn _QSize_setWidth(this : QSize, value : Int) = "QSize_setWidth"

///|
#borrow(this)
extern "C" fn _QSize_transposed(this : QSize) -> QSize = "QSize_transposed"

///|
#borrow(this)
extern "C" fn _QSize_width(this : QSize) -> Int = "QSize_width"

///|
pub fn QSize::new(width : Int, height : Int) -> Self {
  _QSize_new(width, height)
}

///|
pub fn QSize::boundedTo(self : Self, other : Self) -> Self {
  _QSize_boundedTo(self, other)
}

///|
pub fn QSize::expandedTo(self : Self, other : Self) -> Self {
  _QSize_expandedTo(self, other)
}

///|
pub fn QSize::height(self : Self) -> Int {
  _QSize_height(self)
}

///|
pub fn QSize::isEmpty(self : Self) -> Bool {
  _QSize_isEmpty(self)
}

///|
pub fn QSize::isNull(self : Self) -> Bool {
  _QSize_isNull(self)
}

///|
pub fn QSize::isValid(self : Self) -> Bool {
  _QSize_isValid(self)
}

///|
pub fn QSize::scaled(
  self : Self,
  width : Int,
  height : Int,
  mode : AspectRatioMode,
) -> Self {
  _QSize_scaled(self, width, height, mode)
}

///|
pub fn QSize::setHeight(self : Self, value : Int) -> Unit {
  _QSize_setHeight(self, value)
}

///|
pub fn QSize::setWidth(self : Self, value : Int) -> Unit {
  _QSize_setWidth(self, value)
}

///|
pub fn QSize::transposed(self : Self) -> Self {
  _QSize_transposed(self)
}

///|
pub fn QSize::width(self : Self) -> Int {
  _QSize_width(self)
}
