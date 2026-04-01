///|
pub type QGraphicsProxyWidget

///|
#borrow(this)
extern "C" fn _QGraphicsProxyWidget_as_QGraphicsWidget(
  this : QGraphicsProxyWidget,
) -> QGraphicsWidget = "QGraphicsProxyWidget_as_QGraphicsWidget"

///|
pub impl AsObject for QGraphicsProxyWidget with as_object(self) {
  self.as_graphics_object().as_object()
}

///|
pub impl AsGraphicsItem for QGraphicsProxyWidget with as_graphics_item(self) {
  self.as_graphics_object().as_graphics_item()
}

///|
pub impl AsGraphicsObject for QGraphicsProxyWidget with as_graphics_object(self) {
  self.as_graphics_widget().as_graphics_object()
}

///|
pub fn QGraphicsProxyWidget::as_graphics_widget(self : Self) -> QGraphicsWidget {
  _QGraphicsProxyWidget_as_QGraphicsWidget(self)
}
