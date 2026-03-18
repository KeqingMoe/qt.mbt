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
extern "C" fn _QFormLayout_rowCount(this : QFormLayout) -> Int = "QFormLayout_rowCount"

///|
#borrow(this)
extern "C" fn _QFormLayout_fieldGrowthPolicy(
  this : QFormLayout,
) -> FieldGrowthPolicy = "QFormLayout_fieldGrowthPolicy"

///|
#borrow(this)
extern "C" fn _QFormLayout_rowWrapPolicy(this : QFormLayout) -> RowWrapPolicy = "QFormLayout_rowWrapPolicy"

///|
#borrow(this, policy)
extern "C" fn _QFormLayout_setFieldGrowthPolicy(
  this : QFormLayout,
  policy : FieldGrowthPolicy,
) = "QFormLayout_setFieldGrowthPolicy"

///|
#borrow(this, policy)
extern "C" fn _QFormLayout_setRowWrapPolicy(
  this : QFormLayout,
  policy : RowWrapPolicy,
) = "QFormLayout_setRowWrapPolicy"

///|
#borrow(this, row, role, layout)
extern "C" fn _QFormLayout_setRowLayout(
  this : QFormLayout,
  row : Int,
  role : ItemRole,
  layout : QLayout,
) = "QFormLayout_setRowLayout"

///|
#borrow(this, row, role, widget)
extern "C" fn _QFormLayout_setRowWidget(
  this : QFormLayout,
  row : Int,
  role : ItemRole,
  widget : QWidget,
) = "QFormLayout_setRowWidget"

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
pub fn QFormLayout::fieldGrowthPolicy(self : Self) -> FieldGrowthPolicy {
  _QFormLayout_fieldGrowthPolicy(self)
}

///|
pub fn QFormLayout::rowCount(self : Self) -> Int {
  _QFormLayout_rowCount(self)
}

///|
pub fn QFormLayout::rowWrapPolicy(self : Self) -> RowWrapPolicy {
  _QFormLayout_rowWrapPolicy(self)
}

///|
pub fn QFormLayout::setFieldGrowthPolicy(
  self : Self,
  policy : FieldGrowthPolicy,
) -> Unit {
  _QFormLayout_setFieldGrowthPolicy(self, policy)
}

///|
pub fn QFormLayout::setRowLayout(
  self : Self,
  row : Int,
  role : ItemRole,
  layout : &AsLayout,
) -> Unit {
  _QFormLayout_setRowLayout(self, row, role, layout.as_layout())
}

///|
pub fn QFormLayout::setRowWrapPolicy(
  self : Self,
  policy : RowWrapPolicy,
) -> Unit {
  _QFormLayout_setRowWrapPolicy(self, policy)
}

///|
pub fn QFormLayout::setRowWidget(
  self : Self,
  row : Int,
  role : ItemRole,
  widget : &AsWidget,
) -> Unit {
  _QFormLayout_setRowWidget(self, row, role, widget.as_widget())
}

///|
pub impl AsObject for QFormLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QFormLayout with as_layout(self) {
  _QFormLayout_as_QLayout(self)
}
