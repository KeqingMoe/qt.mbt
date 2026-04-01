///|
pub type QPointF

///|
extern "C" fn _QPointF_new(x : Double, y : Double) -> QPointF = "QPointF_new"

///|
#borrow(this)
extern "C" fn _QPointF_isNull(this : QPointF) -> Bool = "QPointF_isNull"

///|
#borrow(this, value)
extern "C" fn _QPointF_setX(this : QPointF, value : Double) = "QPointF_setX"

///|
#borrow(this, value)
extern "C" fn _QPointF_setY(this : QPointF, value : Double) = "QPointF_setY"

///|
#borrow(this)
extern "C" fn _QPointF_x(this : QPointF) -> Double = "QPointF_x"

///|
#borrow(this)
extern "C" fn _QPointF_y(this : QPointF) -> Double = "QPointF_y"

///|
pub fn QPointF::new(x : Double, y : Double) -> Self {
  _QPointF_new(x, y)
}

///|
pub fn QPointF::isNull(self : Self) -> Bool {
  _QPointF_isNull(self)
}

///|
pub fn QPointF::setX(self : Self, value : Double) -> Unit {
  _QPointF_setX(self, value)
}

///|
pub fn QPointF::setY(self : Self, value : Double) -> Unit {
  _QPointF_setY(self, value)
}

///|
pub fn QPointF::x(self : Self) -> Double {
  _QPointF_x(self)
}

///|
pub fn QPointF::y(self : Self) -> Double {
  _QPointF_y(self)
}
