///|
pub type QSplitter

///|
extern "C" fn _QSplitter_new(orientation : Orientation) -> QSplitter = "QSplitter_new"

///|
#borrow(this, widget)
extern "C" fn _QSplitter_addWidget(this : QSplitter, widget : QWidget) = "QSplitter_addWidget"

///|
#borrow(this)
extern "C" fn _QSplitter_count(this : QSplitter) -> Int = "QSplitter_count"

///|
#borrow(this, widget)
extern "C" fn _QSplitter_indexOf(this : QSplitter, widget : QWidget) -> Int = "QSplitter_indexOf"

///|
#borrow(this, index, widget)
extern "C" fn _QSplitter_insertWidget(
  this : QSplitter,
  index : Int,
  widget : QWidget,
) = "QSplitter_insertWidget"

///|
#borrow(this, index)
extern "C" fn _QSplitter_isCollapsible(this : QSplitter, index : Int) -> Bool = "QSplitter_isCollapsible"

///|
#borrow(this)
extern "C" fn _QSplitter_orientation(this : QSplitter) -> Orientation = "QSplitter_orientation"

///|
#borrow(this)
extern "C" fn _QSplitter_setHandleWidth(this : QSplitter, width : Int) = "QSplitter_setHandleWidth"

///|
#borrow(this, value)
extern "C" fn _QSplitter_setChildrenCollapsible(this : QSplitter, value : Bool) = "QSplitter_setChildrenCollapsible"

///|
#borrow(this, index, value)
extern "C" fn _QSplitter_setCollapsible(
  this : QSplitter,
  index : Int,
  value : Bool,
) = "QSplitter_setCollapsible"

///|
#borrow(this, orientation)
extern "C" fn _QSplitter_setOrientation(
  this : QSplitter,
  orientation : Orientation,
) = "QSplitter_setOrientation"

///|
#borrow(this, sizes)
extern "C" fn _QSplitter_setSizes(this : QSplitter, sizes : Array[Int]) = "QSplitter_setSizes"

///|
#borrow(this, index, stretch)
extern "C" fn _QSplitter_setStretchFactor(
  this : QSplitter,
  index : Int,
  stretch : Int,
) = "QSplitter_setStretchFactor"

///|
#borrow(this)
extern "C" fn _QSplitter_sizes(this : QSplitter) -> IntList = "QSplitter_sizes"

///|
#borrow(this)
extern "C" fn _QSplitter_splitterMoved(
  this : QSplitter,
) -> Signal[SplitterMoved] = "QSplitter_splitterMoved"

///|
#borrow(this, index)
extern "C" fn _QSplitter_widget(this : QSplitter, index : Int) -> QWidget = "QSplitter_widget"

///|
#borrow(this)
extern "C" fn _QSplitter_as_QFrame(this : QSplitter) -> QFrame = "QSplitter_as_QFrame"

///|
pub fn QSplitter::new(orientation? : Orientation = Horizontal) -> Self {
  _QSplitter_new(orientation)
}

///|
pub fn QSplitter::addWidget(
  self : Self,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_addWidget(self, widget.as_widget())
}

///|
pub fn QSplitter::count(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_count(self)
}

///|
pub fn QSplitter::indexOf(
  self : Self,
  widget : &AsWidget,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_indexOf(self, widget.as_widget())
}

///|
pub fn QSplitter::insertWidget(
  self : Self,
  index : Int,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_insertWidget(self, index, widget.as_widget())
}

///|
pub fn QSplitter::isCollapsible(
  self : Self,
  index : Int,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_isCollapsible(self, index)
}

///|
pub fn QSplitter::orientation(self : Self) -> Orientation raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_orientation(self)
}

///|
pub fn QSplitter::setHandleWidth(
  self : Self,
  width : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setHandleWidth(self, width)
}

///|
pub fn QSplitter::setChildrenCollapsible(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setChildrenCollapsible(self, value)
}

///|
pub fn QSplitter::setCollapsible(
  self : Self,
  index : Int,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setCollapsible(self, index, value)
}

///|
pub fn QSplitter::setOrientation(
  self : Self,
  orientation : Orientation,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setOrientation(self, orientation)
}

///|
pub fn QSplitter::setSizes(
  self : Self,
  sizes : Array[Int],
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setSizes(self, sizes)
}

///|
pub fn QSplitter::setStretchFactor(
  self : Self,
  index : Int,
  stretch : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_setStretchFactor(self, index, stretch)
}

///|
pub fn QSplitter::sizes(self : Self) -> Array[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_sizes(self).to_array()
}

///|
pub fn QSplitter::splitterMoved(
  self : Self,
) -> Signal[SplitterMoved] raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_splitterMoved(self)
}

///|
pub fn QSplitter::widget(
  self : Self,
  index : Int,
) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QSplitter_widget(self, index)
}

///|
pub impl AsObject for QSplitter with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QSplitter with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QSplitter with as_frame(self) {
  _QSplitter_as_QFrame(self)
}
