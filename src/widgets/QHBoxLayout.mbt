///|
#external
pub type QHBoxLayout

///|
pub extern "C" fn QHBoxLayout::new() -> Self = "QHBoxLayout_new"

///|
#borrow(layout, widget)
extern "C" fn _QHBoxLayout_addWidget(layout : QHBoxLayout, widget : QWidget) = "QHBoxLayout_addWidget"

///|
pub fn[Widget : AsWidget] QHBoxLayout::addWidget(
  self : Self,
  widget : Widget,
) -> Unit {
  _QHBoxLayout_addWidget(self, widget.as_widget())
}

///|
#borrow(self)
pub extern "C" fn QHBoxLayout::as_QLayout(self : Self) -> QLayout = "QHBoxLayout_as_QLayout"

///|
pub impl AsObject for QHBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QHBoxLayout with as_layout(self) {
  self.as_QLayout()
}
