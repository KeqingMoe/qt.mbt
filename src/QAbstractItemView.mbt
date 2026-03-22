///|
pub type QAbstractItemView

///|
#borrow(this)
extern "C" fn _QAbstractItemView_alternatingRowColors(
  this : QAbstractItemView,
) -> Bool = "QAbstractItemView_alternatingRowColors"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_autoScrollMargin(
  this : QAbstractItemView,
) -> Int = "QAbstractItemView_autoScrollMargin"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_clearSelection(this : QAbstractItemView) = "QAbstractItemView_clearSelection"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_doItemsLayout(this : QAbstractItemView) = "QAbstractItemView_doItemsLayout"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_hasAutoScroll(
  this : QAbstractItemView,
) -> Bool = "QAbstractItemView_hasAutoScroll"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_horizontalScrollMode(
  this : QAbstractItemView,
) -> ScrollMode = "QAbstractItemView_horizontalScrollMode"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_iconSize(this : QAbstractItemView) -> QSize = "QAbstractItemView_iconSize"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_reset(this : QAbstractItemView) = "QAbstractItemView_reset"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_scrollToBottom(this : QAbstractItemView) = "QAbstractItemView_scrollToBottom"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_scrollToTop(this : QAbstractItemView) = "QAbstractItemView_scrollToTop"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_selectAll(this : QAbstractItemView) = "QAbstractItemView_selectAll"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_selectionBehavior(
  this : QAbstractItemView,
) -> SelectionBehavior = "QAbstractItemView_selectionBehavior"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_selectionMode(
  this : QAbstractItemView,
) -> SelectionMode = "QAbstractItemView_selectionMode"

///|
#borrow(this, value)
extern "C" fn _QAbstractItemView_setAlternatingRowColors(
  this : QAbstractItemView,
  value : Bool,
) = "QAbstractItemView_setAlternatingRowColors"

///|
#borrow(this, enable)
extern "C" fn _QAbstractItemView_setAutoScroll(
  this : QAbstractItemView,
  enable : Bool,
) = "QAbstractItemView_setAutoScroll"

///|
#borrow(this, margin)
extern "C" fn _QAbstractItemView_setAutoScrollMargin(
  this : QAbstractItemView,
  margin : Int,
) = "QAbstractItemView_setAutoScrollMargin"

///|
#borrow(this, mode)
extern "C" fn _QAbstractItemView_setHorizontalScrollMode(
  this : QAbstractItemView,
  mode : ScrollMode,
) = "QAbstractItemView_setHorizontalScrollMode"

///|
#borrow(this, size)
extern "C" fn _QAbstractItemView_setIconSize(
  this : QAbstractItemView,
  size : QSize,
) = "QAbstractItemView_setIconSize"

///|
#borrow(this, behavior)
extern "C" fn _QAbstractItemView_setSelectionBehavior(
  this : QAbstractItemView,
  behavior : SelectionBehavior,
) = "QAbstractItemView_setSelectionBehavior"

///|
#borrow(this, mode)
extern "C" fn _QAbstractItemView_setSelectionMode(
  this : QAbstractItemView,
  mode : SelectionMode,
) = "QAbstractItemView_setSelectionMode"

///|
#borrow(this, enable)
extern "C" fn _QAbstractItemView_setTabKeyNavigation(
  this : QAbstractItemView,
  enable : Bool,
) = "QAbstractItemView_setTabKeyNavigation"

///|
#borrow(this, threshold)
extern "C" fn _QAbstractItemView_setUpdateThreshold(
  this : QAbstractItemView,
  threshold : Int,
) = "QAbstractItemView_setUpdateThreshold"

///|
#borrow(this, mode)
extern "C" fn _QAbstractItemView_setVerticalScrollMode(
  this : QAbstractItemView,
  mode : ScrollMode,
) = "QAbstractItemView_setVerticalScrollMode"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_tabKeyNavigation(
  this : QAbstractItemView,
) -> Bool = "QAbstractItemView_tabKeyNavigation"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_updateThreshold(
  this : QAbstractItemView,
) -> Int = "QAbstractItemView_updateThreshold"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_verticalScrollMode(
  this : QAbstractItemView,
) -> ScrollMode = "QAbstractItemView_verticalScrollMode"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_iconSizeChanged(
  this : QAbstractItemView,
) -> Signal[QSize] = "QAbstractItemView_iconSizeChanged"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_viewportEntered(
  this : QAbstractItemView,
) -> Signal[Unit] = "QAbstractItemView_viewportEntered"

///|
#borrow(this)
extern "C" fn _QAbstractItemView_as_QAbstractScrollArea(
  this : QAbstractItemView,
) -> QAbstractScrollArea = "QAbstractItemView_as_QAbstractScrollArea"

///|
pub(open) trait AsAbstractItemView: AsAbstractScrollArea {
  as_abstract_item_view(Self) -> QAbstractItemView
  alternatingRowColors(Self) -> Bool raise NullptrError = _
  autoScrollMargin(Self) -> Int raise NullptrError = _
  clearSelection(Self) -> Unit raise NullptrError = _
  doItemsLayout(Self) -> Unit raise NullptrError = _
  hasAutoScroll(Self) -> Bool raise NullptrError = _
  horizontalScrollMode(Self) -> ScrollMode raise NullptrError = _
  iconSize(Self) -> QSize raise NullptrError = _
  reset(Self) -> Unit raise NullptrError = _
  scrollToBottom(Self) -> Unit raise NullptrError = _
  scrollToTop(Self) -> Unit raise NullptrError = _
  selectAll(Self) -> Unit raise NullptrError = _
  selectionBehavior(Self) -> SelectionBehavior raise NullptrError = _
  selectionMode(Self) -> SelectionMode raise NullptrError = _
  setAlternatingRowColors(Self, value : Bool) -> Unit raise NullptrError = _
  setAutoScroll(Self, enable : Bool) -> Unit raise NullptrError = _
  setAutoScrollMargin(Self, margin : Int) -> Unit raise NullptrError = _
  setHorizontalScrollMode(Self, mode : ScrollMode) -> Unit raise NullptrError = _
  setIconSize(Self, size : QSize) -> Unit raise NullptrError = _
  setSelectionBehavior(Self, behavior : SelectionBehavior) -> Unit raise NullptrError = _
  setSelectionMode(Self, mode : SelectionMode) -> Unit raise NullptrError = _
  setTabKeyNavigation(Self, enable : Bool) -> Unit raise NullptrError = _
  setUpdateThreshold(Self, threshold : Int) -> Unit raise NullptrError = _
  setVerticalScrollMode(Self, mode : ScrollMode) -> Unit raise NullptrError = _
  tabKeyNavigation(Self) -> Bool raise NullptrError = _
  updateThreshold(Self) -> Int raise NullptrError = _
  verticalScrollMode(Self) -> ScrollMode raise NullptrError = _
  iconSizeChanged(Self) -> Signal[QSize] raise NullptrError = _
  viewportEntered(Self) -> Signal[Unit] raise NullptrError = _
}

///|
impl AsAbstractItemView with alternatingRowColors(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_alternatingRowColors(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with autoScrollMargin(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_autoScrollMargin(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with clearSelection(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_clearSelection(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with doItemsLayout(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_doItemsLayout(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with hasAutoScroll(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_hasAutoScroll(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with horizontalScrollMode(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_horizontalScrollMode(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with iconSize(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_iconSize(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with reset(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_reset(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with scrollToBottom(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_scrollToBottom(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with scrollToTop(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_scrollToTop(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with selectAll(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_selectAll(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with selectionBehavior(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_selectionBehavior(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with selectionMode(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_selectionMode(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with setAlternatingRowColors(self, value) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setAlternatingRowColors(
    self.as_abstract_item_view(),
    value,
  )
}

///|
impl AsAbstractItemView with setAutoScroll(self, enable) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setAutoScroll(self.as_abstract_item_view(), enable)
}

///|
impl AsAbstractItemView with setAutoScrollMargin(self, margin) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setAutoScrollMargin(self.as_abstract_item_view(), margin)
}

///|
impl AsAbstractItemView with setHorizontalScrollMode(self, mode) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setHorizontalScrollMode(self.as_abstract_item_view(), mode)
}

///|
impl AsAbstractItemView with setIconSize(self, size) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setIconSize(self.as_abstract_item_view(), size)
}

///|
impl AsAbstractItemView with setSelectionBehavior(self, behavior) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setSelectionBehavior(
    self.as_abstract_item_view(),
    behavior,
  )
}

///|
impl AsAbstractItemView with setSelectionMode(self, mode) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setSelectionMode(self.as_abstract_item_view(), mode)
}

///|
impl AsAbstractItemView with setTabKeyNavigation(self, enable) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setTabKeyNavigation(self.as_abstract_item_view(), enable)
}

///|
impl AsAbstractItemView with setUpdateThreshold(self, threshold) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setUpdateThreshold(self.as_abstract_item_view(), threshold)
}

///|
impl AsAbstractItemView with setVerticalScrollMode(self, mode) {
  ensure_not_nullptr(self)
  _QAbstractItemView_setVerticalScrollMode(self.as_abstract_item_view(), mode)
}

///|
impl AsAbstractItemView with tabKeyNavigation(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_tabKeyNavigation(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with updateThreshold(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_updateThreshold(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with verticalScrollMode(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_verticalScrollMode(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with iconSizeChanged(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_iconSizeChanged(self.as_abstract_item_view())
}

///|
impl AsAbstractItemView with viewportEntered(self) {
  ensure_not_nullptr(self)
  _QAbstractItemView_viewportEntered(self.as_abstract_item_view())
}

///|
pub impl AsObject for QAbstractItemView with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractItemView with as_widget(self) {
  self.as_abstract_scroll_area().as_widget()
}

///|
pub impl AsFrame for QAbstractItemView with as_frame(self) {
  self.as_abstract_scroll_area().as_frame()
}

///|
pub impl AsAbstractScrollArea for QAbstractItemView with as_abstract_scroll_area(
  self,
) {
  _QAbstractItemView_as_QAbstractScrollArea(self)
}

///|
pub impl AsAbstractItemView for QAbstractItemView with as_abstract_item_view(
  self,
) {
  self
}
