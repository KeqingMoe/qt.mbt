///|
pub type QBoxLayout

///|
pub enum Direction {
  LeftToRight = 0
  RightToLeft = 1
  TopToBottom = 2
  BottomToTop = 3
}

///|
#borrow(this, layout)
extern "C" fn _QBoxLayout_addLayout(
  this : QBoxLayout,
  layout : QLayout,
  stretch : Int,
) = "QBoxLayout_addLayout"

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
#borrow(this, index, widget)
extern "C" fn _QBoxLayout_insertWidget(
  this : QBoxLayout,
  index : Int,
  widget : QWidget,
  stretch : Int,
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
pub(open) trait AsBoxLayout: AsLayout {
  as_box_layout(Self) -> QBoxLayout
  addLayout(Self, layout : &AsLayout, stretch? : Int) -> Unit = _
  addSpacing(Self, spacing : Int) -> Unit = _
  addStretch(Self, stretch? : Int) -> Unit = _
  direction(Self) -> Direction = _
  insertLayout(Self, index : Int, layout : &AsLayout, stretch? : Int) -> Unit = _
  insertSpacing(Self, index : Int, spacing : Int) -> Unit = _
  insertStretch(Self, index : Int, stretch? : Int) -> Unit = _
  insertWidget(Self, index : Int, widget : &AsWidget, stretch? : Int) -> Unit = _
  setDirection(Self, direction : Direction) -> Unit = _
}

///|
impl AsBoxLayout with addLayout(self, layout, stretch? = 0) {
  _QBoxLayout_addLayout(self.as_box_layout(), layout.as_layout(), stretch)
}

///|
impl AsBoxLayout with addSpacing(self, spacing) {
  _QBoxLayout_addSpacing(self.as_box_layout(), spacing)
}

///|
impl AsBoxLayout with addStretch(self, stretch? = 0) {
  _QBoxLayout_addStretch(self.as_box_layout(), stretch)
}

///|
impl AsBoxLayout with direction(self) {
  _QBoxLayout_direction(self.as_box_layout())
}

///|
impl AsBoxLayout with insertLayout(self, index, layout, stretch? = 0) {
  _QBoxLayout_insertLayout(
    self.as_box_layout(),
    index,
    layout.as_layout(),
    stretch,
  )
}

///|
impl AsBoxLayout with insertSpacing(self, index, spacing) {
  _QBoxLayout_insertSpacing(self.as_box_layout(), index, spacing)
}

///|
impl AsBoxLayout with insertStretch(self, index, stretch? = 0) {
  _QBoxLayout_insertStretch(self.as_box_layout(), index, stretch)
}

///|
impl AsBoxLayout with insertWidget(self, index, widget, stretch? = 0) {
  _QBoxLayout_insertWidget(
    self.as_box_layout(),
    index,
    widget.as_widget(),
    stretch,
  )
}

///|
impl AsBoxLayout with setDirection(self, direction) {
  _QBoxLayout_setDirection(self.as_box_layout(), direction)
}

///|
impl AsObject for QBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
impl AsLayout for QBoxLayout with as_layout(self) {
  _QBoxLayout_as_QLayout(self)
}
