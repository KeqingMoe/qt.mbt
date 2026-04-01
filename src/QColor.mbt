///|
pub type QColor

///|
extern "C" fn _QColor_new(
  red : Int,
  green : Int,
  blue : Int,
  alpha : Int,
) -> QColor = "QColor_new"

///|
#borrow(name)
extern "C" fn _QColor_newWithName(name : String) -> QColor = "QColor_newWithName"

///|
#borrow(this)
extern "C" fn _QColor_alpha(this : QColor) -> Int = "QColor_alpha"

///|
#borrow(this)
extern "C" fn _QColor_blue(this : QColor) -> Int = "QColor_blue"

///|
#borrow(this)
extern "C" fn _QColor_green(this : QColor) -> Int = "QColor_green"

///|
#borrow(this)
extern "C" fn _QColor_red(this : QColor) -> Int = "QColor_red"

///|
#borrow(this)
extern "C" fn _QColor_isValid(this : QColor) -> Bool = "QColor_isValid"

///|
#borrow(this, value)
extern "C" fn _QColor_setAlpha(this : QColor, value : Int) = "QColor_setAlpha"

///|
#borrow(this, value)
extern "C" fn _QColor_setBlue(this : QColor, value : Int) = "QColor_setBlue"

///|
#borrow(this, value)
extern "C" fn _QColor_setGreen(this : QColor, value : Int) = "QColor_setGreen"

///|
#borrow(this, value)
extern "C" fn _QColor_setRed(this : QColor, value : Int) = "QColor_setRed"

///|
pub fn QColor::new(
  red : Int,
  green : Int,
  blue : Int,
  alpha? : Int = 255,
) -> Self {
  _QColor_new(red, green, blue, alpha)
}

///|
pub fn QColor::newWithName(name : String) -> Self {
  _QColor_newWithName(name)
}

///|
pub fn QColor::alpha(self : Self) -> Int {
  _QColor_alpha(self)
}

///|
pub fn QColor::blue(self : Self) -> Int {
  _QColor_blue(self)
}

///|
pub fn QColor::green(self : Self) -> Int {
  _QColor_green(self)
}

///|
pub fn QColor::red(self : Self) -> Int {
  _QColor_red(self)
}

///|
pub fn QColor::isValid(self : Self) -> Bool {
  _QColor_isValid(self)
}

///|
pub fn QColor::setAlpha(self : Self, value : Int) -> Unit {
  _QColor_setAlpha(self, value)
}

///|
pub fn QColor::setBlue(self : Self, value : Int) -> Unit {
  _QColor_setBlue(self, value)
}

///|
pub fn QColor::setGreen(self : Self, value : Int) -> Unit {
  _QColor_setGreen(self, value)
}

///|
pub fn QColor::setRed(self : Self, value : Int) -> Unit {
  _QColor_setRed(self, value)
}
