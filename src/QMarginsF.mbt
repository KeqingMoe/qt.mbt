///|
pub type QMarginsF

///|
extern "C" fn _QMarginsF_new(
  left : Double,
  top : Double,
  right : Double,
  bottom : Double,
) -> QMarginsF = "QMarginsF_new"

///|
#borrow(this)
extern "C" fn _QMarginsF_bottom(this : QMarginsF) -> Double = "QMarginsF_bottom"

///|
#borrow(this)
extern "C" fn _QMarginsF_isNull(this : QMarginsF) -> Bool = "QMarginsF_isNull"

///|
#borrow(this)
extern "C" fn _QMarginsF_left(this : QMarginsF) -> Double = "QMarginsF_left"

///|
#borrow(this)
extern "C" fn _QMarginsF_right(this : QMarginsF) -> Double = "QMarginsF_right"

///|
#borrow(this, value)
extern "C" fn _QMarginsF_setBottom(this : QMarginsF, value : Double) = "QMarginsF_setBottom"

///|
#borrow(this, value)
extern "C" fn _QMarginsF_setLeft(this : QMarginsF, value : Double) = "QMarginsF_setLeft"

///|
#borrow(this, value)
extern "C" fn _QMarginsF_setRight(this : QMarginsF, value : Double) = "QMarginsF_setRight"

///|
#borrow(this, value)
extern "C" fn _QMarginsF_setTop(this : QMarginsF, value : Double) = "QMarginsF_setTop"

///|
#borrow(this)
extern "C" fn _QMarginsF_top(this : QMarginsF) -> Double = "QMarginsF_top"

///|
pub fn QMarginsF::new(
  left : Double,
  top : Double,
  right : Double,
  bottom : Double,
) -> Self {
  _QMarginsF_new(left, top, right, bottom)
}

///|
pub fn QMarginsF::bottom(self : Self) -> Double {
  _QMarginsF_bottom(self)
}

///|
pub fn QMarginsF::isNull(self : Self) -> Bool {
  _QMarginsF_isNull(self)
}

///|
pub fn QMarginsF::left(self : Self) -> Double {
  _QMarginsF_left(self)
}

///|
pub fn QMarginsF::right(self : Self) -> Double {
  _QMarginsF_right(self)
}

///|
pub fn QMarginsF::setBottom(self : Self, value : Double) -> Unit {
  _QMarginsF_setBottom(self, value)
}

///|
pub fn QMarginsF::setLeft(self : Self, value : Double) -> Unit {
  _QMarginsF_setLeft(self, value)
}

///|
pub fn QMarginsF::setRight(self : Self, value : Double) -> Unit {
  _QMarginsF_setRight(self, value)
}

///|
pub fn QMarginsF::setTop(self : Self, value : Double) -> Unit {
  _QMarginsF_setTop(self, value)
}

///|
pub fn QMarginsF::top(self : Self) -> Double {
  _QMarginsF_top(self)
}
