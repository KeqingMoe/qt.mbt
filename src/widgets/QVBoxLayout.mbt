///|
#external
pub type QVBoxLayout

///|
pub extern "C" fn QVBoxLayout::new() -> Self = "QVBoxLayout_new"

///|
#borrow(layout, widget)
extern "C" fn _QVBoxLayout_addWidget(layout : QVBoxLayout, widget : QWidget) = "QVBoxLayout_addWidget"

///|
pub fn[Widget : AsWidget] QVBoxLayout::addWidget(
  self : Self,
  widget : Widget,
) -> Unit {
  _QVBoxLayout_addWidget(self, widget.as_widget())
}

///|
#borrow(self)
pub extern "C" fn QVBoxLayout::as_QLayout(self : Self) -> QLayout = "QVBoxLayout_as_QLayout"

///|
pub impl AsObject for QVBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QVBoxLayout with as_layout(self) {
  self.as_QLayout()
}
