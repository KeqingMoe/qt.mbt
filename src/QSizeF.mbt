///|
pub type QSizeF

///|
extern "C" fn _QSizeF_new(width : Double, height : Double) -> QSizeF = "QSizeF_new"

///|
#borrow(this, other)
extern "C" fn _QSizeF_boundedTo(this : QSizeF, other : QSizeF) -> QSizeF = "QSizeF_boundedTo"

///|
#borrow(this, other)
extern "C" fn _QSizeF_expandedTo(this : QSizeF, other : QSizeF) -> QSizeF = "QSizeF_expandedTo"

///|
#borrow(this)
extern "C" fn _QSizeF_height(this : QSizeF) -> Double = "QSizeF_height"

///|
#borrow(this)
extern "C" fn _QSizeF_isEmpty(this : QSizeF) -> Bool = "QSizeF_isEmpty"

///|
#borrow(this)
extern "C" fn _QSizeF_isNull(this : QSizeF) -> Bool = "QSizeF_isNull"

///|
#borrow(this)
extern "C" fn _QSizeF_isValid(this : QSizeF) -> Bool = "QSizeF_isValid"

///|
#borrow(this, width, height, mode)
extern "C" fn _QSizeF_scaled(
  this : QSizeF,
  width : Double,
  height : Double,
  mode : AspectRatioMode,
) -> QSizeF = "QSizeF_scaled"

///|
#borrow(this, value)
extern "C" fn _QSizeF_setHeight(this : QSizeF, value : Double) = "QSizeF_setHeight"

///|
#borrow(this, value)
extern "C" fn _QSizeF_setWidth(this : QSizeF, value : Double) = "QSizeF_setWidth"

///|
#borrow(this)
extern "C" fn _QSizeF_transposed(this : QSizeF) -> QSizeF = "QSizeF_transposed"

///|
#borrow(this)
extern "C" fn _QSizeF_width(this : QSizeF) -> Double = "QSizeF_width"

///|
pub fn QSizeF::new(width : Double, height : Double) -> Self {
  _QSizeF_new(width, height)
}

///|
pub fn QSizeF::boundedTo(self : Self, other : Self) -> Self {
  _QSizeF_boundedTo(self, other)
}

///|
pub fn QSizeF::expandedTo(self : Self, other : Self) -> Self {
  _QSizeF_expandedTo(self, other)
}

///|
pub fn QSizeF::height(self : Self) -> Double {
  _QSizeF_height(self)
}

///|
pub fn QSizeF::isEmpty(self : Self) -> Bool {
  _QSizeF_isEmpty(self)
}

///|
pub fn QSizeF::isNull(self : Self) -> Bool {
  _QSizeF_isNull(self)
}

///|
pub fn QSizeF::isValid(self : Self) -> Bool {
  _QSizeF_isValid(self)
}

///|
pub fn QSizeF::scaled(
  self : Self,
  width : Double,
  height : Double,
  mode : AspectRatioMode,
) -> Self {
  _QSizeF_scaled(self, width, height, mode)
}

///|
pub fn QSizeF::setHeight(self : Self, value : Double) -> Unit {
  _QSizeF_setHeight(self, value)
}

///|
pub fn QSizeF::setWidth(self : Self, value : Double) -> Unit {
  _QSizeF_setWidth(self, value)
}

///|
pub fn QSizeF::transposed(self : Self) -> Self {
  _QSizeF_transposed(self)
}

///|
pub fn QSizeF::width(self : Self) -> Double {
  _QSizeF_width(self)
}
