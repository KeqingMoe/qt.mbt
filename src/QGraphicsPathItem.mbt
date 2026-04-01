///|
#external
pub type QGraphicsPathItem

///|
#borrow(this, path)
extern "C" fn _QGraphicsPathItem_setPath(
  this : QGraphicsPathItem,
  path : QPainterPath,
) = "QGraphicsPathItem_setPath"

///|
#borrow(this)
extern "C" fn _QGraphicsPathItem_as_QAbstractGraphicsShapeItem(
  this : QGraphicsPathItem,
) -> QAbstractGraphicsShapeItem = "QGraphicsPathItem_as_QAbstractGraphicsShapeItem"

///|
pub fn QGraphicsPathItem::setPath(self : Self, path : QPainterPath) -> Unit {
  _QGraphicsPathItem_setPath(self, path)
}

///|
pub impl AsGraphicsItem for QGraphicsPathItem with as_graphics_item(self) {
  self.as_abstract_graphics_shape_item().as_graphics_item()
}

///|
pub impl AsAbstractGraphicsShapeItem for QGraphicsPathItem with as_abstract_graphics_shape_item(
  self,
) {
  _QGraphicsPathItem_as_QAbstractGraphicsShapeItem(self)
}
