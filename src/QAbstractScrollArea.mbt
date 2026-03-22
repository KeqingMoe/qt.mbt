///|
pub type QAbstractScrollArea

///|
#borrow(this, widget, alignment)
extern "C" fn _QAbstractScrollArea_addScrollBarWidget(
  this : QAbstractScrollArea,
  widget : QWidget,
  alignment : QFlag,
) = "QAbstractScrollArea_addScrollBarWidget"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_horizontalScrollBarPolicy(
  this : QAbstractScrollArea,
) -> ScrollBarPolicy = "QAbstractScrollArea_horizontalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_horizontalScrollBar(
  this : QAbstractScrollArea,
) -> QScrollBar = "QAbstractScrollArea_horizontalScrollBar"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_setHorizontalScrollBarPolicy(
  this : QAbstractScrollArea,
  policy : ScrollBarPolicy,
) = "QAbstractScrollArea_setHorizontalScrollBarPolicy"

///|
#borrow(this, scrollbar)
extern "C" fn _QAbstractScrollArea_setHorizontalScrollBar(
  this : QAbstractScrollArea,
  scrollbar : QScrollBar,
) = "QAbstractScrollArea_setHorizontalScrollBar"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_setSizeAdjustPolicy(
  this : QAbstractScrollArea,
  policy : SizeAdjustPolicy,
) = "QAbstractScrollArea_setSizeAdjustPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_sizeAdjustPolicy(
  this : QAbstractScrollArea,
) -> SizeAdjustPolicy = "QAbstractScrollArea_sizeAdjustPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_verticalScrollBarPolicy(
  this : QAbstractScrollArea,
) -> ScrollBarPolicy = "QAbstractScrollArea_verticalScrollBarPolicy"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_setVerticalScrollBarPolicy(
  this : QAbstractScrollArea,
  policy : ScrollBarPolicy,
) = "QAbstractScrollArea_setVerticalScrollBarPolicy"

///|
#borrow(this, scrollbar)
extern "C" fn _QAbstractScrollArea_setVerticalScrollBar(
  this : QAbstractScrollArea,
  scrollbar : QScrollBar,
) = "QAbstractScrollArea_setVerticalScrollBar"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_viewport(
  this : QAbstractScrollArea,
) -> QWidget = "QAbstractScrollArea_viewport"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_verticalScrollBar(
  this : QAbstractScrollArea,
) -> QScrollBar = "QAbstractScrollArea_verticalScrollBar"

///|
#borrow(this)
extern "C" fn _QAbstractScrollArea_as_QFrame(
  this : QAbstractScrollArea,
) -> QFrame = "QAbstractScrollArea_as_QFrame"

///|
pub(open) trait AsAbstractScrollArea: AsFrame {
  as_abstract_scroll_area(Self) -> QAbstractScrollArea
  addScrollBarWidget(Self, widget : &AsWidget, alignment : Alignment) -> Unit raise NullptrError = _
  horizontalScrollBar(Self) -> QScrollBar raise NullptrError = _
  horizontalScrollBarPolicy(Self) -> ScrollBarPolicy raise NullptrError = _
  setHorizontalScrollBar(Self, scrollbar : QScrollBar) -> Unit raise NullptrError = _
  setHorizontalScrollBarPolicy(Self, policy : ScrollBarPolicy) -> Unit raise NullptrError = _
  setSizeAdjustPolicy(Self, policy : SizeAdjustPolicy) -> Unit raise NullptrError = _
  setVerticalScrollBar(Self, scrollbar : QScrollBar) -> Unit raise NullptrError = _
  setVerticalScrollBarPolicy(Self, policy : ScrollBarPolicy) -> Unit raise NullptrError = _
  sizeAdjustPolicy(Self) -> SizeAdjustPolicy raise NullptrError = _
  verticalScrollBar(Self) -> QScrollBar raise NullptrError = _
  verticalScrollBarPolicy(Self) -> ScrollBarPolicy raise NullptrError = _
  viewport(Self) -> QWidget raise NullptrError = _
}

///|
impl AsAbstractScrollArea with horizontalScrollBar(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_horizontalScrollBar(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with horizontalScrollBarPolicy(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_horizontalScrollBarPolicy(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with addScrollBarWidget(self, widget, alignment) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_addScrollBarWidget(
    self.as_abstract_scroll_area(),
    widget.as_widget(),
    alignment.to_flag(),
  )
}

///|
impl AsAbstractScrollArea with setHorizontalScrollBarPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setHorizontalScrollBarPolicy(
    self.as_abstract_scroll_area(),
    policy,
  )
}

///|
impl AsAbstractScrollArea with setHorizontalScrollBar(self, scrollbar) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setHorizontalScrollBar(
    self.as_abstract_scroll_area(),
    scrollbar,
  )
}

///|
impl AsAbstractScrollArea with setSizeAdjustPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setSizeAdjustPolicy(
    self.as_abstract_scroll_area(),
    policy,
  )
}

///|
impl AsAbstractScrollArea with sizeAdjustPolicy(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_sizeAdjustPolicy(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with verticalScrollBarPolicy(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_verticalScrollBarPolicy(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with setVerticalScrollBar(self, scrollbar) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setVerticalScrollBar(
    self.as_abstract_scroll_area(),
    scrollbar,
  )
}

///|
impl AsAbstractScrollArea with setVerticalScrollBarPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_setVerticalScrollBarPolicy(
    self.as_abstract_scroll_area(),
    policy,
  )
}

///|
impl AsAbstractScrollArea with verticalScrollBar(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_verticalScrollBar(self.as_abstract_scroll_area())
}

///|
impl AsAbstractScrollArea with viewport(self) {
  ensure_not_nullptr(self)
  _QAbstractScrollArea_viewport(self.as_abstract_scroll_area())
}

///|
pub impl AsObject for QAbstractScrollArea with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractScrollArea with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QAbstractScrollArea with as_frame(self) {
  _QAbstractScrollArea_as_QFrame(self)
}

///|
pub impl AsAbstractScrollArea for QAbstractScrollArea with as_abstract_scroll_area(
  self,
) {
  self
}
