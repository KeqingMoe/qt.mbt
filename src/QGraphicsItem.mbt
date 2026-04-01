///|
#external
pub type QGraphicsItem

///|
#borrow(this)
extern "C" fn _QGraphicsItem_isNull(this : QGraphicsItem) -> Bool = "QGraphicsItem_isNull"

///|
#borrow(this, x, y)
extern "C" fn _QGraphicsItem_setPos(
  this : QGraphicsItem,
  x : Double,
  y : Double,
) = "QGraphicsItem_setPos"

///|
#borrow(this, mode)
extern "C" fn _QGraphicsItem_setCacheMode(
  this : QGraphicsItem,
  mode : CacheMode,
) = "QGraphicsItem_setCacheMode"

///|
#borrow(this, value)
extern "C" fn _QGraphicsItem_setVisible(this : QGraphicsItem, value : Bool) = "QGraphicsItem_setVisible"

///|
#borrow(this, value)
extern "C" fn _QGraphicsItem_setZValue(this : QGraphicsItem, value : Double) = "QGraphicsItem_setZValue"

///|
#internal(unsafe, "QGraphicsItem handles are raw pointers: they may dangle after scene.clear(), scene destruction, or item-tree destruction.")
pub(open) trait AsGraphicsItem {
  as_graphics_item(Self) -> QGraphicsItem
  is_null(Self) -> Bool = _
  setCacheMode(Self, mode : CacheMode) -> Unit = _
  setPos(Self, x : Double, y : Double) -> Unit = _
  setVisible(Self, value : Bool) -> Unit = _
  setZValue(Self, value : Double) -> Unit = _
}

///|
impl AsGraphicsItem with is_null(self) {
  _QGraphicsItem_isNull(self.as_graphics_item())
}

///|
impl AsGraphicsItem with setCacheMode(self, mode) {
  _QGraphicsItem_setCacheMode(self.as_graphics_item(), mode)
}

///|
impl AsGraphicsItem with setPos(self, x, y) {
  _QGraphicsItem_setPos(self.as_graphics_item(), x, y)
}

///|
impl AsGraphicsItem with setVisible(self, value) {
  _QGraphicsItem_setVisible(self.as_graphics_item(), value)
}

///|
impl AsGraphicsItem with setZValue(self, value) {
  _QGraphicsItem_setZValue(self.as_graphics_item(), value)
}

///|
pub impl AsGraphicsItem for QGraphicsItem with as_graphics_item(self) {
  self
}
