///|
pub type QGraphicsObject

///|
#borrow(this)
extern "C" fn _QGraphicsObject_as_QObject(this : QGraphicsObject) -> QObject = "QGraphicsObject_as_QObject"

///|
#borrow(this)
extern "C" fn _QGraphicsObject_as_QGraphicsItem(
  this : QGraphicsObject,
) -> QGraphicsItem = "QGraphicsObject_as_QGraphicsItem"

///|
pub(open) trait AsGraphicsObject: AsObject {
  as_graphics_object(Self) -> QGraphicsObject
}

///|
pub impl AsObject for QGraphicsObject with as_object(self) {
  _QGraphicsObject_as_QObject(self)
}

///|
#internal(unsafe, "Crossing from QGraphicsObject to raw QGraphicsItem yields a non-owning item pointer that may dangle after graphics-item destruction.")
pub impl AsGraphicsItem for QGraphicsObject with as_graphics_item(self) {
  _QGraphicsObject_as_QGraphicsItem(self)
}

///|
pub impl AsGraphicsObject for QGraphicsObject with as_graphics_object(self) {
  self
}
