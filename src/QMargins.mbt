///|
pub type QMargins

///|
extern "C" fn _QMargins_new(
  left : Int,
  top : Int,
  right : Int,
  bottom : Int,
) -> QMargins = "QMargins_new"

///|
#borrow(this)
extern "C" fn _QMargins_bottom(this : QMargins) -> Int = "QMargins_bottom"

///|
#borrow(this)
extern "C" fn _QMargins_isNull(this : QMargins) -> Bool = "QMargins_isNull"

///|
#borrow(this)
extern "C" fn _QMargins_left(this : QMargins) -> Int = "QMargins_left"

///|
#borrow(this)
extern "C" fn _QMargins_right(this : QMargins) -> Int = "QMargins_right"

///|
#borrow(this, value)
extern "C" fn _QMargins_setBottom(this : QMargins, value : Int) = "QMargins_setBottom"

///|
#borrow(this, value)
extern "C" fn _QMargins_setLeft(this : QMargins, value : Int) = "QMargins_setLeft"

///|
#borrow(this, value)
extern "C" fn _QMargins_setRight(this : QMargins, value : Int) = "QMargins_setRight"

///|
#borrow(this, value)
extern "C" fn _QMargins_setTop(this : QMargins, value : Int) = "QMargins_setTop"

///|
#borrow(this)
extern "C" fn _QMargins_top(this : QMargins) -> Int = "QMargins_top"

///|
pub fn QMargins::new(left : Int, top : Int, right : Int, bottom : Int) -> Self {
  _QMargins_new(left, top, right, bottom)
}

///|
pub fn QMargins::bottom(self : Self) -> Int {
  _QMargins_bottom(self)
}

///|
pub fn QMargins::isNull(self : Self) -> Bool {
  _QMargins_isNull(self)
}

///|
pub fn QMargins::left(self : Self) -> Int {
  _QMargins_left(self)
}

///|
pub fn QMargins::right(self : Self) -> Int {
  _QMargins_right(self)
}

///|
pub fn QMargins::setBottom(self : Self, value : Int) -> Unit {
  _QMargins_setBottom(self, value)
}

///|
pub fn QMargins::setLeft(self : Self, value : Int) -> Unit {
  _QMargins_setLeft(self, value)
}

///|
pub fn QMargins::setRight(self : Self, value : Int) -> Unit {
  _QMargins_setRight(self, value)
}

///|
pub fn QMargins::setTop(self : Self, value : Int) -> Unit {
  _QMargins_setTop(self, value)
}

///|
pub fn QMargins::top(self : Self) -> Int {
  _QMargins_top(self)
}
