///|
pub type QGraphicsScene

///|
extern "C" fn _QGraphicsScene_new() -> QGraphicsScene = "QGraphicsScene_new"

///|
#borrow(parent)
extern "C" fn _QGraphicsScene_newWithParent(parent : QObject) -> QGraphicsScene = "QGraphicsScene_newWithParent"

///|
#borrow(this)
extern "C" fn _QGraphicsScene_clear(this : QGraphicsScene) = "QGraphicsScene_clear"

///|
#borrow(this, widget)
extern "C" fn _QGraphicsScene_addWidget(
  this : QGraphicsScene,
  widget : QWidget,
) -> QGraphicsProxyWidget = "QGraphicsScene_addWidget"

///|
#borrow(this, path, pen)
extern "C" fn _QGraphicsScene_addPath(
  this : QGraphicsScene,
  path : QPainterPath,
  pen : QPen,
) -> QGraphicsPathItem = "QGraphicsScene_addPath"

///|
#borrow(this)
extern "C" fn _QGraphicsScene_itemsBoundingRect(
  this : QGraphicsScene,
) -> QRectF = "QGraphicsScene_itemsBoundingRect"

///|
#borrow(this)
extern "C" fn _QGraphicsScene_selectionChanged(
  this : QGraphicsScene,
) -> Signal[Unit] = "QGraphicsScene_selectionChanged"

///|
#borrow(this, rect)
extern "C" fn _QGraphicsScene_setSceneRect(
  this : QGraphicsScene,
  rect : QRectF,
) = "QGraphicsScene_setSceneRect"

///|
#borrow(this, brush)
extern "C" fn _QGraphicsScene_setBackgroundBrush(
  this : QGraphicsScene,
  brush : QBrush,
) = "QGraphicsScene_setBackgroundBrush"

///|
#borrow(this)
extern "C" fn _QGraphicsScene_as_QObject(this : QGraphicsScene) -> QObject = "QGraphicsScene_as_QObject"

///|
pub fn QGraphicsScene::new() -> Self {
  _QGraphicsScene_new()
}

///|
pub fn QGraphicsScene::newWithParent(parent : &AsObject) -> Self {
  _QGraphicsScene_newWithParent(parent.as_object())
}

///|
pub fn QGraphicsScene::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_clear(self)
}

///|
pub fn QGraphicsScene::addWidget(
  self : Self,
  widget : &AsWidget,
) -> QGraphicsProxyWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_addWidget(self, widget.as_widget())
}

///|
pub fn QGraphicsScene::addPath(
  self : Self,
  path : QPainterPath,
  pen : QPen,
) -> QGraphicsPathItem raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_addPath(self, path, pen)
}

///|
pub fn QGraphicsScene::itemsBoundingRect(
  self : Self,
) -> QRectF raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_itemsBoundingRect(self)
}

///|
pub fn QGraphicsScene::selectionChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_selectionChanged(self)
}

///|
pub fn QGraphicsScene::setSceneRect(
  self : Self,
  rect : QRectF,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_setSceneRect(self, rect)
}

///|
pub fn QGraphicsScene::setBackgroundBrush(
  self : Self,
  brush : QBrush,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsScene_setBackgroundBrush(self, brush)
}

///|
pub impl AsObject for QGraphicsScene with as_object(self) {
  _QGraphicsScene_as_QObject(self)
}
