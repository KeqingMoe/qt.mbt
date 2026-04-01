///|
#external
pub type QAbstractGraphicsShapeItem

///|
#borrow(this, pen)
extern "C" fn _QAbstractGraphicsShapeItem_setPen(
  this : QAbstractGraphicsShapeItem,
  pen : QPen,
) = "QAbstractGraphicsShapeItem_setPen"

///|
#borrow(this)
extern "C" fn _QAbstractGraphicsShapeItem_as_QGraphicsItem(
  this : QAbstractGraphicsShapeItem,
) -> QGraphicsItem = "QAbstractGraphicsShapeItem_as_QGraphicsItem"

///|
#internal(unsafe, "QAbstractGraphicsShapeItem handles are raw pointers: they may dangle after scene.clear(), scene destruction, or item-tree destruction.")
pub(open) trait AsAbstractGraphicsShapeItem: AsGraphicsItem {
  as_abstract_graphics_shape_item(Self) -> QAbstractGraphicsShapeItem
  setPen(Self, pen : QPen) -> Unit = _
}

///|
impl AsAbstractGraphicsShapeItem with setPen(self, pen) {
  _QAbstractGraphicsShapeItem_setPen(
    self.as_abstract_graphics_shape_item(),
    pen,
  )
}

///|
pub impl AsGraphicsItem for QAbstractGraphicsShapeItem with as_graphics_item(
  self,
) {
  _QAbstractGraphicsShapeItem_as_QGraphicsItem(self)
}

///|
pub impl AsAbstractGraphicsShapeItem for QAbstractGraphicsShapeItem with as_abstract_graphics_shape_item(
  self,
) {
  self
}
