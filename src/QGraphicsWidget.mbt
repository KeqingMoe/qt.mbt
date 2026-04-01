///|
pub type QGraphicsWidget

///|
#borrow(this)
extern "C" fn _QGraphicsWidget_as_QGraphicsObject(
  this : QGraphicsWidget,
) -> QGraphicsObject = "QGraphicsWidget_as_QGraphicsObject"

///|
pub impl AsObject for QGraphicsWidget with as_object(self) {
  self.as_graphics_object().as_object()
}

///|
pub impl AsGraphicsItem for QGraphicsWidget with as_graphics_item(self) {
  self.as_graphics_object().as_graphics_item()
}

///|
pub impl AsGraphicsObject for QGraphicsWidget with as_graphics_object(self) {
  _QGraphicsWidget_as_QGraphicsObject(self)
}
