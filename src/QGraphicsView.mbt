///|
pub type QGraphicsView

///|
extern "C" fn _QGraphicsView_new() -> QGraphicsView = "QGraphicsView_new"

///|
#borrow(parent)
extern "C" fn _QGraphicsView_newWithParent(parent : QWidget) -> QGraphicsView = "QGraphicsView_newWithParent"

///|
#borrow(this, point)
extern "C" fn _QGraphicsView_centerOn(this : QGraphicsView, point : QPointF) = "QGraphicsView_centerOn"

///|
#borrow(this, rect, mode)
extern "C" fn _QGraphicsView_fitInView(
  this : QGraphicsView,
  rect : QRectF,
  mode : AspectRatioMode,
) = "QGraphicsView_fitInView"

///|
#borrow(this)
extern "C" fn _QGraphicsView_resetTransform(this : QGraphicsView) = "QGraphicsView_resetTransform"

///|
#borrow(this, sx, sy)
extern "C" fn _QGraphicsView_scale(
  this : QGraphicsView,
  sx : Double,
  sy : Double,
) = "QGraphicsView_scale"

///|
#borrow(this, mode)
extern "C" fn _QGraphicsView_setDragMode(this : QGraphicsView, mode : DragMode) = "QGraphicsView_setDragMode"

///|
#borrow(this, hint, on)
extern "C" fn _QGraphicsView_setRenderHint(
  this : QGraphicsView,
  hint : RenderHint,
  on : Bool,
) = "QGraphicsView_setRenderHint"

///|
#borrow(this, scene)
extern "C" fn _QGraphicsView_setScene(
  this : QGraphicsView,
  scene : QGraphicsScene,
) = "QGraphicsView_setScene"

///|
#borrow(this, rect)
extern "C" fn _QGraphicsView_setSceneRect(this : QGraphicsView, rect : QRectF) = "QGraphicsView_setSceneRect"

///|
#borrow(this, anchor)
extern "C" fn _QGraphicsView_setTransformationAnchor(
  this : QGraphicsView,
  anchor : ViewportAnchor,
) = "QGraphicsView_setTransformationAnchor"

///|
#borrow(this, anchor)
extern "C" fn _QGraphicsView_setResizeAnchor(
  this : QGraphicsView,
  anchor : ViewportAnchor,
) = "QGraphicsView_setResizeAnchor"

///|
#borrow(this, mode)
extern "C" fn _QGraphicsView_setViewportUpdateMode(
  this : QGraphicsView,
  mode : ViewportUpdateMode,
) = "QGraphicsView_setViewportUpdateMode"

///|
#borrow(this)
extern "C" fn _QGraphicsView_as_QAbstractScrollArea(
  this : QGraphicsView,
) -> QAbstractScrollArea = "QGraphicsView_as_QAbstractScrollArea"

///|
pub fn QGraphicsView::new() -> Self {
  _QGraphicsView_new()
}

///|
pub fn QGraphicsView::newWithParent(parent : &AsWidget) -> Self {
  _QGraphicsView_newWithParent(parent.as_widget())
}

///|
pub fn QGraphicsView::centerOn(
  self : Self,
  point : QPointF,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_centerOn(self, point)
}

///|
pub fn QGraphicsView::fitInView(
  self : Self,
  rect : QRectF,
  mode? : AspectRatioMode = Ignore,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_fitInView(self, rect, mode)
}

///|
pub fn QGraphicsView::resetTransform(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_resetTransform(self)
}

///|
pub fn QGraphicsView::scale(
  self : Self,
  sx : Double,
  sy : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_scale(self, sx, sy)
}

///|
pub fn QGraphicsView::setDragMode(
  self : Self,
  mode : DragMode,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setDragMode(self, mode)
}

///|
pub fn QGraphicsView::setRenderHint(
  self : Self,
  hint : RenderHint,
  on? : Bool = true,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setRenderHint(self, hint, on)
}

///|
pub fn QGraphicsView::setScene(
  self : Self,
  scene : QGraphicsScene,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setScene(self, scene)
}

///|
pub fn QGraphicsView::setSceneRect(
  self : Self,
  rect : QRectF,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setSceneRect(self, rect)
}

///|
pub fn QGraphicsView::setTransformationAnchor(
  self : Self,
  anchor : ViewportAnchor,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setTransformationAnchor(self, anchor)
}

///|
pub fn QGraphicsView::setResizeAnchor(
  self : Self,
  anchor : ViewportAnchor,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setResizeAnchor(self, anchor)
}

///|
pub fn QGraphicsView::setViewportUpdateMode(
  self : Self,
  mode : ViewportUpdateMode,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsView_setViewportUpdateMode(self, mode)
}

///|
pub impl AsObject for QGraphicsView with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QGraphicsView with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QGraphicsView with as_frame(self) {
  self.as_abstract_scroll_area().as_frame()
}

///|
pub impl AsAbstractScrollArea for QGraphicsView with as_abstract_scroll_area(
  self,
) {
  _QGraphicsView_as_QAbstractScrollArea(self)
}
