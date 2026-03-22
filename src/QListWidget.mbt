///|
pub type QListWidget

///|
extern "C" fn _QListWidget_new() -> QListWidget = "QListWidget_new"

///|
#borrow(this, label)
extern "C" fn _QListWidget_addTextItem(this : QListWidget, label : String) = "QListWidget_addTextItem"

///|
#borrow(this, labels)
extern "C" fn _QListWidget_addTextItems(
  this : QListWidget,
  labels : Array[String],
) = "QListWidget_addTextItems"

///|
#borrow(this)
extern "C" fn _QListWidget_clear(this : QListWidget) = "QListWidget_clear"

///|
#borrow(this)
extern "C" fn _QListWidget_count(this : QListWidget) -> Int = "QListWidget_count"

///|
#borrow(this)
extern "C" fn _QListWidget_currentRow(this : QListWidget) -> Int = "QListWidget_currentRow"

///|
#borrow(this)
extern "C" fn _QListWidget_isSortingEnabled(this : QListWidget) -> Bool = "QListWidget_isSortingEnabled"

///|
#borrow(this, row, label)
extern "C" fn _QListWidget_insertTextItem(
  this : QListWidget,
  row : Int,
  label : String,
) = "QListWidget_insertTextItem"

///|
#borrow(this, row, labels)
extern "C" fn _QListWidget_insertTextItems(
  this : QListWidget,
  row : Int,
  labels : Array[String],
) = "QListWidget_insertTextItems"

///|
#borrow(this, row)
extern "C" fn _QListWidget_setCurrentRow(this : QListWidget, row : Int) = "QListWidget_setCurrentRow"

///|
#borrow(this, enable)
extern "C" fn _QListWidget_setSortingEnabled(this : QListWidget, enable : Bool) = "QListWidget_setSortingEnabled"

///|
#borrow(this)
extern "C" fn _QListWidget_currentRowChanged(this : QListWidget) -> Signal[Int] = "QListWidget_currentRowChanged"

///|
#borrow(this)
extern "C" fn _QListWidget_currentTextChanged(
  this : QListWidget,
) -> Signal[String] = "QListWidget_currentTextChanged"

///|
#borrow(this)
extern "C" fn _QListWidget_itemSelectionChanged(
  this : QListWidget,
) -> Signal[Unit] = "QListWidget_itemSelectionChanged"

///|
#borrow(this)
extern "C" fn _QListWidget_as_QListView(this : QListWidget) -> QListView = "QListWidget_as_QListView"

///|
pub fn QListWidget::new() -> Self {
  _QListWidget_new()
}

///|
pub fn QListWidget::addTextItem(
  self : Self,
  label : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_addTextItem(self, label)
}

///|
pub fn QListWidget::addTextItems(
  self : Self,
  labels : Array[String],
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_addTextItems(self, labels)
}

///|
pub fn QListWidget::insertTextItem(
  self : Self,
  row : Int,
  label : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_insertTextItem(self, row, label)
}

///|
pub fn QListWidget::insertTextItems(
  self : Self,
  row : Int,
  labels : Array[String],
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_insertTextItems(self, row, labels)
}

///|
pub fn QListWidget::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_clear(self)
}

///|
pub fn QListWidget::count(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_count(self)
}

///|
pub fn QListWidget::currentRow(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_currentRow(self)
}

///|
pub fn QListWidget::currentRowChanged(
  self : Self,
) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_currentRowChanged(self)
}

///|
pub fn QListWidget::currentTextChanged(
  self : Self,
) -> Signal[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_currentTextChanged(self)
}

///|
pub fn QListWidget::isSortingEnabled(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_isSortingEnabled(self)
}

///|
pub fn QListWidget::itemSelectionChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_itemSelectionChanged(self)
}

///|
pub fn QListWidget::setCurrentRow(
  self : Self,
  row : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_setCurrentRow(self, row)
}

///|
pub fn QListWidget::setSortingEnabled(
  self : Self,
  enable : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QListWidget_setSortingEnabled(self, enable)
}

///|
pub impl AsObject for QListWidget with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QListWidget with as_widget(self) {
  self.as_list_view().as_widget()
}

///|
pub impl AsFrame for QListWidget with as_frame(self) {
  self.as_list_view().as_frame()
}

///|
pub impl AsAbstractScrollArea for QListWidget with as_abstract_scroll_area(self) {
  self.as_list_view().as_abstract_scroll_area()
}

///|
pub impl AsAbstractItemView for QListWidget with as_abstract_item_view(self) {
  self.as_list_view().as_abstract_item_view()
}

///|
pub impl AsListView for QListWidget with as_list_view(self) {
  _QListWidget_as_QListView(self)
}
