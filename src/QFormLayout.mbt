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
extern "C" fn _QFormLayout_setLayout(
  this : QFormLayout,
  row : Int,
  role : ItemRole,
  layout : QLayout,
) = "QFormLayout_setLayout"

///|
#borrow(this, row, role, widget)
extern "C" fn _QFormLayout_setWidget(
  this : QFormLayout,
  row : Int,
  role : ItemRole,
  widget : QWidget,
) = "QFormLayout_setWidget"

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
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_addRow(self, label.as_widget(), field.as_widget())
}

///|
pub fn QFormLayout::addRowLayout(
  self : Self,
  layout : &AsLayout,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_addRowLayout(self, layout.as_layout())
}

///|
pub fn QFormLayout::addRowWidget(
  self : Self,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_addRowWidget(self, widget.as_widget())
}

///|
pub fn QFormLayout::fieldGrowthPolicy(
  self : Self,
) -> FieldGrowthPolicy raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_fieldGrowthPolicy(self)
}

///|
pub fn QFormLayout::rowCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_rowCount(self)
}

///|
pub fn QFormLayout::rowWrapPolicy(
  self : Self,
) -> RowWrapPolicy raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_rowWrapPolicy(self)
}

///|
pub fn QFormLayout::setFieldGrowthPolicy(
  self : Self,
  policy : FieldGrowthPolicy,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_setFieldGrowthPolicy(self, policy)
}

///|
pub fn QFormLayout::setLayout(
  self : Self,
  row : Int,
  role : ItemRole,
  layout : &AsLayout,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_setLayout(self, row, role, layout.as_layout())
}

///|
pub fn QFormLayout::setRowWrapPolicy(
  self : Self,
  policy : RowWrapPolicy,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_setRowWrapPolicy(self, policy)
}

///|
pub fn QFormLayout::setWidget(
  self : Self,
  row : Int,
  role : ItemRole,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QFormLayout_setWidget(self, row, role, widget.as_widget())
}

///|
pub impl AsObject for QFormLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QFormLayout with as_layout(self) {
  _QFormLayout_as_QLayout(self)
}
