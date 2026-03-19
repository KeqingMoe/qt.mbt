///|
pub type QBoxLayout

///|
extern "C" fn _QBoxLayout_new(direction : Direction) -> QBoxLayout = "QBoxLayout_new"

///|
#borrow(this, layout)
extern "C" fn _QBoxLayout_addLayout(
  this : QBoxLayout,
  layout : QLayout,
  stretch : Int,
) = "QBoxLayout_addLayout"

///|
#borrow(this, widget, stretch, alignment)
extern "C" fn _QBoxLayout_addWidget(
  this : QBoxLayout,
  widget : QWidget,
  stretch : Int,
  alignment : QFlag,
) = "QBoxLayout_addWidget"

///|
#borrow(this, spacing)
extern "C" fn _QBoxLayout_addSpacing(this : QBoxLayout, spacing : Int) = "QBoxLayout_addSpacing"

///|
#borrow(this, stretch)
extern "C" fn _QBoxLayout_addStretch(this : QBoxLayout, stretch : Int) = "QBoxLayout_addStretch"

///|
#borrow(this)
extern "C" fn _QBoxLayout_direction(this : QBoxLayout) -> Direction = "QBoxLayout_direction"

///|
#borrow(this, index, layout)
extern "C" fn _QBoxLayout_insertLayout(
  this : QBoxLayout,
  index : Int,
  layout : QLayout,
  stretch : Int,
) = "QBoxLayout_insertLayout"

///|
#borrow(this, index, spacing)
extern "C" fn _QBoxLayout_insertSpacing(
  this : QBoxLayout,
  index : Int,
  spacing : Int,
) = "QBoxLayout_insertSpacing"

///|
#borrow(this, index, stretch)
extern "C" fn _QBoxLayout_insertStretch(
  this : QBoxLayout,
  index : Int,
  stretch : Int,
) = "QBoxLayout_insertStretch"

///|
#borrow(this, index, widget, stretch, alignment)
extern "C" fn _QBoxLayout_insertWidget(
  this : QBoxLayout,
  index : Int,
  widget : QWidget,
  stretch : Int,
  alignment : QFlag,
) = "QBoxLayout_insertWidget"

///|
#borrow(this, direction)
extern "C" fn _QBoxLayout_setDirection(
  this : QBoxLayout,
  direction : Direction,
) = "QBoxLayout_setDirection"

///|
#borrow(this)
extern "C" fn _QBoxLayout_as_QLayout(this : QBoxLayout) -> QLayout = "QBoxLayout_as_QLayout"

///|
pub fn QBoxLayout::new(direction : Direction) -> Self {
  _QBoxLayout_new(direction)
}

///|
pub fn QBoxLayout::horizontal() -> Self {
  _QBoxLayout_new(LeftToRight)
}

///|
pub fn QBoxLayout::vertical() -> Self {
  _QBoxLayout_new(TopToBottom)
}

///|
pub fn QBoxLayout::addLayout(
  self : Self,
  layout : &AsLayout,
  stretch? : Int = 0,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_addLayout(self, layout.as_layout(), stretch)
}

///|
pub fn QBoxLayout::addWidget(
  self : Self,
  widget : &AsWidget,
  stretch? : Int = 0,
  alignment? : Alignment = Alignment::default(),
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_addWidget(self, widget.as_widget(), stretch, alignment.to_flag())
}

///|
pub fn QBoxLayout::addSpacing(
  self : Self,
  spacing : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_addSpacing(self, spacing)
}

///|
pub fn QBoxLayout::addStretch(
  self : Self,
  stretch? : Int = 0,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_addStretch(self, stretch)
}

///|
pub fn QBoxLayout::direction(self : Self) -> Direction raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_direction(self)
}

///|
pub fn QBoxLayout::insertLayout(
  self : Self,
  index : Int,
  layout : &AsLayout,
  stretch? : Int = 0,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_insertLayout(self, index, layout.as_layout(), stretch)
}

///|
pub fn QBoxLayout::insertSpacing(
  self : Self,
  index : Int,
  spacing : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_insertSpacing(self, index, spacing)
}

///|
pub fn QBoxLayout::insertStretch(
  self : Self,
  index : Int,
  stretch? : Int = 0,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_insertStretch(self, index, stretch)
}

///|
pub fn QBoxLayout::insertWidget(
  self : Self,
  index : Int,
  widget : &AsWidget,
  stretch? : Int = 0,
  alignment? : Alignment = Alignment::default(),
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_insertWidget(
    self,
    index,
    widget.as_widget(),
    stretch,
    alignment.to_flag(),
  )
}

///|
pub fn QBoxLayout::setDirection(
  self : Self,
  direction : Direction,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QBoxLayout_setDirection(self, direction)
}

///|
pub impl AsObject for QBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
pub impl AsLayout for QBoxLayout with as_layout(self) {
  _QBoxLayout_as_QLayout(self)
}
