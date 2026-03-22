///|
pub type QListView

///|
extern "C" fn _QListView_new() -> QListView = "QListView_new"

///|
#borrow(this)
extern "C" fn _QListView_batchSize(this : QListView) -> Int = "QListView_batchSize"

///|
#borrow(this)
extern "C" fn _QListView_clearPropertyFlags(this : QListView) = "QListView_clearPropertyFlags"

///|
#borrow(this)
extern "C" fn _QListView_flow(this : QListView) -> Flow = "QListView_flow"

///|
#borrow(this)
extern "C" fn _QListView_gridSize(this : QListView) -> QSize = "QListView_gridSize"

///|
#borrow(this, row)
extern "C" fn _QListView_isRowHidden(this : QListView, row : Int) -> Bool = "QListView_isRowHidden"

///|
#borrow(this)
extern "C" fn _QListView_isSelectionRectVisible(this : QListView) -> Bool = "QListView_isSelectionRectVisible"

///|
#borrow(this)
extern "C" fn _QListView_isWrapping(this : QListView) -> Bool = "QListView_isWrapping"

///|
#borrow(this)
extern "C" fn _QListView_itemAlignment(this : QListView) -> QFlag = "QListView_itemAlignment"

///|
#borrow(this)
extern "C" fn _QListView_layoutMode(this : QListView) -> LayoutMode = "QListView_layoutMode"

///|
#borrow(this)
extern "C" fn _QListView_modelColumn(this : QListView) -> Int = "QListView_modelColumn"

///|
#borrow(this)
extern "C" fn _QListView_movement(this : QListView) -> Movement = "QListView_movement"

///|
#borrow(this)
extern "C" fn _QListView_resizeMode(this : QListView) -> ResizeMode = "QListView_resizeMode"

///|
#borrow(this, batchSize)
extern "C" fn _QListView_setBatchSize(this : QListView, batchSize : Int) = "QListView_setBatchSize"

///|
#borrow(this, flow)
extern "C" fn _QListView_setFlow(this : QListView, flow : Flow) = "QListView_setFlow"

///|
#borrow(this, size)
extern "C" fn _QListView_setGridSize(this : QListView, size : QSize) = "QListView_setGridSize"

///|
#borrow(this, alignment)
extern "C" fn _QListView_setItemAlignment(this : QListView, alignment : QFlag) = "QListView_setItemAlignment"

///|
#borrow(this, mode)
extern "C" fn _QListView_setLayoutMode(this : QListView, mode : LayoutMode) = "QListView_setLayoutMode"

///|
#borrow(this, column)
extern "C" fn _QListView_setModelColumn(this : QListView, column : Int) = "QListView_setModelColumn"

///|
#borrow(this, movement)
extern "C" fn _QListView_setMovement(this : QListView, movement : Movement) = "QListView_setMovement"

///|
#borrow(this, mode)
extern "C" fn _QListView_setResizeMode(this : QListView, mode : ResizeMode) = "QListView_setResizeMode"

///|
#borrow(this, row, hide)
extern "C" fn _QListView_setRowHidden(this : QListView, row : Int, hide : Bool) = "QListView_setRowHidden"

///|
#borrow(this, show)
extern "C" fn _QListView_setSelectionRectVisible(this : QListView, show : Bool) = "QListView_setSelectionRectVisible"

///|
#borrow(this, space)
extern "C" fn _QListView_setSpacing(this : QListView, space : Int) = "QListView_setSpacing"

///|
#borrow(this, enable)
extern "C" fn _QListView_setUniformItemSizes(this : QListView, enable : Bool) = "QListView_setUniformItemSizes"

///|
#borrow(this, mode)
extern "C" fn _QListView_setViewMode(this : QListView, mode : ViewMode) = "QListView_setViewMode"

///|
#borrow(this, on)
extern "C" fn _QListView_setWordWrap(this : QListView, on : Bool) = "QListView_setWordWrap"

///|
#borrow(this, enable)
extern "C" fn _QListView_setWrapping(this : QListView, enable : Bool) = "QListView_setWrapping"

///|
#borrow(this)
extern "C" fn _QListView_spacing(this : QListView) -> Int = "QListView_spacing"

///|
#borrow(this)
extern "C" fn _QListView_uniformItemSizes(this : QListView) -> Bool = "QListView_uniformItemSizes"

///|
#borrow(this)
extern "C" fn _QListView_viewMode(this : QListView) -> ViewMode = "QListView_viewMode"

///|
#borrow(this)
extern "C" fn _QListView_wordWrap(this : QListView) -> Bool = "QListView_wordWrap"

///|
#borrow(this)
extern "C" fn _QListView_as_QAbstractItemView(
  this : QListView,
) -> QAbstractItemView = "QListView_as_QAbstractItemView"

///|
pub(open) trait AsListView: AsAbstractItemView {
  as_list_view(Self) -> QListView
  batchSize(Self) -> Int raise NullptrError = _
  clearPropertyFlags(Self) -> Unit raise NullptrError = _
  flow(Self) -> Flow raise NullptrError = _
  gridSize(Self) -> QSize raise NullptrError = _
  isRowHidden(Self, row : Int) -> Bool raise NullptrError = _
  isSelectionRectVisible(Self) -> Bool raise NullptrError = _
  isWrapping(Self) -> Bool raise NullptrError = _
  itemAlignment(Self) -> Alignment raise NullptrError = _
  layoutMode(Self) -> LayoutMode raise NullptrError = _
  modelColumn(Self) -> Int raise NullptrError = _
  movement(Self) -> Movement raise NullptrError = _
  resizeMode(Self) -> ResizeMode raise NullptrError = _
  setBatchSize(Self, batchSize : Int) -> Unit raise NullptrError = _
  setFlow(Self, flow : Flow) -> Unit raise NullptrError = _
  setGridSize(Self, size : QSize) -> Unit raise NullptrError = _
  setItemAlignment(Self, alignment : Alignment) -> Unit raise NullptrError = _
  setLayoutMode(Self, mode : LayoutMode) -> Unit raise NullptrError = _
  setModelColumn(Self, column : Int) -> Unit raise NullptrError = _
  setMovement(Self, movement : Movement) -> Unit raise NullptrError = _
  setResizeMode(Self, mode : ResizeMode) -> Unit raise NullptrError = _
  setRowHidden(Self, row : Int, hide : Bool) -> Unit raise NullptrError = _
  setSelectionRectVisible(Self, show : Bool) -> Unit raise NullptrError = _
  setSpacing(Self, space : Int) -> Unit raise NullptrError = _
  setUniformItemSizes(Self, enable : Bool) -> Unit raise NullptrError = _
  setViewMode(Self, mode : ViewMode) -> Unit raise NullptrError = _
  setWordWrap(Self, on : Bool) -> Unit raise NullptrError = _
  setWrapping(Self, enable : Bool) -> Unit raise NullptrError = _
  spacing(Self) -> Int raise NullptrError = _
  uniformItemSizes(Self) -> Bool raise NullptrError = _
  viewMode(Self) -> ViewMode raise NullptrError = _
  wordWrap(Self) -> Bool raise NullptrError = _
}

///|
pub fn QListView::new() -> Self {
  _QListView_new()
}

///|
impl AsListView with batchSize(self) {
  ensure_not_nullptr(self)
  _QListView_batchSize(self.as_list_view())
}

///|
impl AsListView with clearPropertyFlags(self) {
  ensure_not_nullptr(self)
  _QListView_clearPropertyFlags(self.as_list_view())
}

///|
impl AsListView with flow(self) {
  ensure_not_nullptr(self)
  _QListView_flow(self.as_list_view())
}

///|
impl AsListView with gridSize(self) {
  ensure_not_nullptr(self)
  _QListView_gridSize(self.as_list_view())
}

///|
impl AsListView with isRowHidden(self, row) {
  ensure_not_nullptr(self)
  _QListView_isRowHidden(self.as_list_view(), row)
}

///|
impl AsListView with isSelectionRectVisible(self) {
  ensure_not_nullptr(self)
  _QListView_isSelectionRectVisible(self.as_list_view())
}

///|
impl AsListView with isWrapping(self) {
  ensure_not_nullptr(self)
  _QListView_isWrapping(self.as_list_view())
}

///|
impl AsListView with itemAlignment(self) {
  ensure_not_nullptr(self)
  _QListView_itemAlignment(self.as_list_view()).to_flag()
}

///|
impl AsListView with layoutMode(self) {
  ensure_not_nullptr(self)
  _QListView_layoutMode(self.as_list_view())
}

///|
impl AsListView with modelColumn(self) {
  ensure_not_nullptr(self)
  _QListView_modelColumn(self.as_list_view())
}

///|
impl AsListView with movement(self) {
  ensure_not_nullptr(self)
  _QListView_movement(self.as_list_view())
}

///|
impl AsListView with resizeMode(self) {
  ensure_not_nullptr(self)
  _QListView_resizeMode(self.as_list_view())
}

///|
impl AsListView with setBatchSize(self, batchSize) {
  ensure_not_nullptr(self)
  _QListView_setBatchSize(self.as_list_view(), batchSize)
}

///|
impl AsListView with setFlow(self, flow) {
  ensure_not_nullptr(self)
  _QListView_setFlow(self.as_list_view(), flow)
}

///|
impl AsListView with setGridSize(self, size) {
  ensure_not_nullptr(self)
  _QListView_setGridSize(self.as_list_view(), size)
}

///|
impl AsListView with setItemAlignment(self, alignment) {
  ensure_not_nullptr(self)
  _QListView_setItemAlignment(self.as_list_view(), alignment.to_flag())
}

///|
impl AsListView with setLayoutMode(self, mode) {
  ensure_not_nullptr(self)
  _QListView_setLayoutMode(self.as_list_view(), mode)
}

///|
impl AsListView with setModelColumn(self, column) {
  ensure_not_nullptr(self)
  _QListView_setModelColumn(self.as_list_view(), column)
}

///|
impl AsListView with setMovement(self, movement) {
  ensure_not_nullptr(self)
  _QListView_setMovement(self.as_list_view(), movement)
}

///|
impl AsListView with setResizeMode(self, mode) {
  ensure_not_nullptr(self)
  _QListView_setResizeMode(self.as_list_view(), mode)
}

///|
impl AsListView with setRowHidden(self, row, hide) {
  ensure_not_nullptr(self)
  _QListView_setRowHidden(self.as_list_view(), row, hide)
}

///|
impl AsListView with setSelectionRectVisible(self, show) {
  ensure_not_nullptr(self)
  _QListView_setSelectionRectVisible(self.as_list_view(), show)
}

///|
impl AsListView with setSpacing(self, space) {
  ensure_not_nullptr(self)
  _QListView_setSpacing(self.as_list_view(), space)
}

///|
impl AsListView with setUniformItemSizes(self, enable) {
  ensure_not_nullptr(self)
  _QListView_setUniformItemSizes(self.as_list_view(), enable)
}

///|
impl AsListView with setViewMode(self, mode) {
  ensure_not_nullptr(self)
  _QListView_setViewMode(self.as_list_view(), mode)
}

///|
impl AsListView with setWordWrap(self, on) {
  ensure_not_nullptr(self)
  _QListView_setWordWrap(self.as_list_view(), on)
}

///|
impl AsListView with setWrapping(self, enable) {
  ensure_not_nullptr(self)
  _QListView_setWrapping(self.as_list_view(), enable)
}

///|
impl AsListView with spacing(self) {
  ensure_not_nullptr(self)
  _QListView_spacing(self.as_list_view())
}

///|
impl AsListView with uniformItemSizes(self) {
  ensure_not_nullptr(self)
  _QListView_uniformItemSizes(self.as_list_view())
}

///|
impl AsListView with viewMode(self) {
  ensure_not_nullptr(self)
  _QListView_viewMode(self.as_list_view())
}

///|
impl AsListView with wordWrap(self) {
  ensure_not_nullptr(self)
  _QListView_wordWrap(self.as_list_view())
}

///|
pub impl AsObject for QListView with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QListView with as_widget(self) {
  self.as_abstract_item_view().as_widget()
}

///|
pub impl AsFrame for QListView with as_frame(self) {
  self.as_abstract_item_view().as_frame()
}

///|
pub impl AsAbstractScrollArea for QListView with as_abstract_scroll_area(self) {
  self.as_abstract_item_view().as_abstract_scroll_area()
}

///|
pub impl AsAbstractItemView for QListView with as_abstract_item_view(self) {
  _QListView_as_QAbstractItemView(self)
}

///|
pub impl AsListView for QListView with as_list_view(self) {
  self
}
