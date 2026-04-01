///|
pub type QPainterPath

///|
extern "C" fn _QPainterPath_new() -> QPainterPath = "QPainterPath_new"

///|
#borrow(this, rect)
extern "C" fn _QPainterPath_addRect(this : QPainterPath, rect : QRectF) = "QPainterPath_addRect"

///|
#borrow(this)
extern "C" fn _QPainterPath_boundingRect(this : QPainterPath) -> QRectF = "QPainterPath_boundingRect"

///|
#borrow(this)
extern "C" fn _QPainterPath_isEmpty(this : QPainterPath) -> Bool = "QPainterPath_isEmpty"

///|
#borrow(this, c1, c2, end)
extern "C" fn _QPainterPath_cubicTo(
  this : QPainterPath,
  c1 : QPointF,
  c2 : QPointF,
  end : QPointF,
) = "QPainterPath_cubicTo"

///|
#borrow(this, point)
extern "C" fn _QPainterPath_lineTo(this : QPainterPath, point : QPointF) = "QPainterPath_lineTo"

///|
#borrow(this, point)
extern "C" fn _QPainterPath_moveTo(this : QPainterPath, point : QPointF) = "QPainterPath_moveTo"

///|
pub fn QPainterPath::new() -> Self {
  _QPainterPath_new()
}

///|
pub fn QPainterPath::addRect(self : Self, rect : QRectF) -> Unit {
  _QPainterPath_addRect(self, rect)
}

///|
pub fn QPainterPath::boundingRect(self : Self) -> QRectF {
  _QPainterPath_boundingRect(self)
}

///|
pub fn QPainterPath::isEmpty(self : Self) -> Bool {
  _QPainterPath_isEmpty(self)
}

///|
pub fn QPainterPath::cubicTo(
  self : Self,
  c1 : QPointF,
  c2 : QPointF,
  end : QPointF,
) -> Unit {
  _QPainterPath_cubicTo(self, c1, c2, end)
}

///|
pub fn QPainterPath::lineTo(self : Self, point : QPointF) -> Unit {
  _QPainterPath_lineTo(self, point)
}

///|
pub fn QPainterPath::moveTo(self : Self, point : QPointF) -> Unit {
  _QPainterPath_moveTo(self, point)
}
