///|
pub type QFormLayout

///|
extern "C" fn _QFormLayout_new() -> QFormLayout = "QFormLayout_new"

///|
#borrow(this, label, field)
extern "C" fn _QFormLayout_addRow(
  this : QFormLayout,
  label : QWidget,
  field : QWidget,
) = "QFormLayout_addRow"

///|
#borrow(this, layout)
extern "C" fn _QFormLayout_addRowLayout(this : QFormLayout, layout : QLayout) = "QFormLayout_addRowLayout"

///|
#borrow(this, widget)
extern "C" fn _QFormLayout_addRowWidget(this : QFormLayout, widget : QWidget) = "QFormLayout_addRowWidget"

///|
#borrow(this)
extern "C" fn _QFormLayout_as_QLayout(this : QFormLayout) -> QLayout = "QFormLayout_as_QLayout"

///|
pub fn QFormLayout::new() -> Self {
  _QFormLayout_new()
}

///|
pub fn QFormLayout::addRow(
  self : Self,
  label : &AsWidget,
  field : &AsWidget,
) -> Unit {
  _QFormLayout_addRow(self, label.as_widget(), field.as_widget())
}

///|
pub fn QFormLayout::addRowLayout(self : Self, layout : &AsLayout) -> Unit {
  _QFormLayout_addRowLayout(self, layout.as_layout())
}

///|
pub fn QFormLayout::addRowWidget(self : Self, widget : &AsWidget) -> Unit {
  _QFormLayout_addRowWidget(self, widget.as_widget())
}

///|
pub impl AsObject for QFormLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QFormLayout with as_layout(self) {
  _QFormLayout_as_QLayout(self)
}
