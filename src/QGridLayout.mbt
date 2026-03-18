///|
pub type QGridLayout

///|
extern "C" fn _QGridLayout_new() -> QGridLayout = "QGridLayout_new"

///|
#borrow(this, layout, row, column)
extern "C" fn _QGridLayout_addLayout(
  this : QGridLayout,
  layout : QLayout,
  row : Int,
  column : Int,
  rowSpan : Int,
  columnSpan : Int,
) = "QGridLayout_addLayout"

///|
#borrow(this, widget, row, column)
extern "C" fn _QGridLayout_addWidget(
  this : QGridLayout,
  widget : QWidget,
  row : Int,
  column : Int,
  rowSpan : Int,
  columnSpan : Int,
) = "QGridLayout_addWidget"

///|
#borrow(this)
extern "C" fn _QGridLayout_horizontalSpacing(this : QGridLayout) -> Int = "QGridLayout_horizontalSpacing"

///|
#borrow(this)
extern "C" fn _QGridLayout_originCorner(this : QGridLayout) -> Corner = "QGridLayout_originCorner"

///|
#borrow(this)
extern "C" fn _QGridLayout_verticalSpacing(this : QGridLayout) -> Int = "QGridLayout_verticalSpacing"

///|
#borrow(this, column, minSize)
extern "C" fn _QGridLayout_setColumnMinimumWidth(
  this : QGridLayout,
  column : Int,
  minSize : Int,
) = "QGridLayout_setColumnMinimumWidth"

///|
#borrow(this, column, stretch)
extern "C" fn _QGridLayout_setColumnStretch(
  this : QGridLayout,
  column : Int,
  stretch : Int,
) = "QGridLayout_setColumnStretch"

///|
#borrow(this, row, minSize)
extern "C" fn _QGridLayout_setRowMinimumHeight(
  this : QGridLayout,
  row : Int,
  minSize : Int,
) = "QGridLayout_setRowMinimumHeight"

///|
#borrow(this, row, stretch)
extern "C" fn _QGridLayout_setRowStretch(
  this : QGridLayout,
  row : Int,
  stretch : Int,
) = "QGridLayout_setRowStretch"

///|
#borrow(this, spacing)
extern "C" fn _QGridLayout_setHorizontalSpacing(
  this : QGridLayout,
  spacing : Int,
) = "QGridLayout_setHorizontalSpacing"

///|
#borrow(this, corner)
extern "C" fn _QGridLayout_setOriginCorner(this : QGridLayout, corner : Corner) = "QGridLayout_setOriginCorner"

///|
#borrow(this, spacing)
extern "C" fn _QGridLayout_setVerticalSpacing(
  this : QGridLayout,
  spacing : Int,
) = "QGridLayout_setVerticalSpacing"

///|
#borrow(this)
extern "C" fn _QGridLayout_as_QLayout(this : QGridLayout) -> QLayout = "QGridLayout_as_QLayout"

///|
pub fn QGridLayout::new() -> Self {
  _QGridLayout_new()
}

///|
pub fn QGridLayout::addLayout(
  self : Self,
  layout : &AsLayout,
  row : Int,
  column : Int,
  rowSpan? : Int = 1,
  columnSpan? : Int = 1,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_addLayout(
    self,
    layout.as_layout(),
    row,
    column,
    rowSpan,
    columnSpan,
  )
}

///|
pub fn QGridLayout::addWidget(
  self : Self,
  widget : &AsWidget,
  row : Int,
  column : Int,
  rowSpan? : Int = 1,
  columnSpan? : Int = 1,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_addWidget(
    self,
    widget.as_widget(),
    row,
    column,
    rowSpan,
    columnSpan,
  )
}

///|
pub fn QGridLayout::horizontalSpacing(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_horizontalSpacing(self)
}

///|
pub fn QGridLayout::originCorner(self : Self) -> Corner raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_originCorner(self)
}

///|
pub fn QGridLayout::setColumnMinimumWidth(
  self : Self,
  column : Int,
  minSize : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setColumnMinimumWidth(self, column, minSize)
}

///|
pub fn QGridLayout::setColumnStretch(
  self : Self,
  column : Int,
  stretch : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setColumnStretch(self, column, stretch)
}

///|
pub fn QGridLayout::setRowMinimumHeight(
  self : Self,
  row : Int,
  minSize : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setRowMinimumHeight(self, row, minSize)
}

///|
pub fn QGridLayout::setRowStretch(
  self : Self,
  row : Int,
  stretch : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setRowStretch(self, row, stretch)
}

///|
pub fn QGridLayout::setHorizontalSpacing(
  self : Self,
  spacing : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setHorizontalSpacing(self, spacing)
}

///|
pub fn QGridLayout::setOriginCorner(
  self : Self,
  corner : Corner,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setOriginCorner(self, corner)
}

///|
pub fn QGridLayout::setVerticalSpacing(
  self : Self,
  spacing : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_setVerticalSpacing(self, spacing)
}

///|
pub fn QGridLayout::verticalSpacing(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QGridLayout_verticalSpacing(self)
}

///|
pub impl AsObject for QGridLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QGridLayout with as_layout(self) {
  _QGridLayout_as_QLayout(self)
}
