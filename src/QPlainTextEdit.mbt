///|
pub type QPlainTextEdit

///|
extern "C" fn _QPlainTextEdit_new() -> QPlainTextEdit = "QPlainTextEdit_new"

///|
#borrow(this, text)
extern "C" fn _QPlainTextEdit_appendPlainText(
  this : QPlainTextEdit,
  text : String,
) = "QPlainTextEdit_appendPlainText"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_clear(this : QPlainTextEdit) = "QPlainTextEdit_clear"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_isReadOnly(this : QPlainTextEdit) -> Bool = "QPlainTextEdit_isReadOnly"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_lineWrapMode(
  this : QPlainTextEdit,
) -> LineWrapMode = "QPlainTextEdit_lineWrapMode"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_placeholderText(this : QPlainTextEdit) -> String = "QPlainTextEdit_placeholderText"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_redo(this : QPlainTextEdit) = "QPlainTextEdit_redo"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_setLineWrapMode(
  this : QPlainTextEdit,
  mode : LineWrapMode,
) = "QPlainTextEdit_setLineWrapMode"

///|
#borrow(this, text)
extern "C" fn _QPlainTextEdit_setPlaceholderText(
  this : QPlainTextEdit,
  text : String,
) = "QPlainTextEdit_setPlaceholderText"

///|
#borrow(this, text)
extern "C" fn _QPlainTextEdit_setPlainText(
  this : QPlainTextEdit,
  text : String,
) = "QPlainTextEdit_setPlainText"

///|
#borrow(this, value)
extern "C" fn _QPlainTextEdit_setReadOnly(this : QPlainTextEdit, value : Bool) = "QPlainTextEdit_setReadOnly"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_selectAll(this : QPlainTextEdit) = "QPlainTextEdit_selectAll"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_textChanged(
  this : QPlainTextEdit,
) -> Signal[Unit] = "QPlainTextEdit_textChanged"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_toPlainText(this : QPlainTextEdit) -> String = "QPlainTextEdit_toPlainText"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_undo(this : QPlainTextEdit) = "QPlainTextEdit_undo"

///|
#borrow(this)
extern "C" fn _QPlainTextEdit_as_QAbstractScrollArea(
  this : QPlainTextEdit,
) -> QAbstractScrollArea = "QPlainTextEdit_as_QAbstractScrollArea"

///|
pub fn QPlainTextEdit::new() -> Self {
  _QPlainTextEdit_new()
}

///|
pub fn QPlainTextEdit::appendPlainText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_appendPlainText(self, text)
}

///|
pub fn QPlainTextEdit::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_clear(self)
}

///|
pub fn QPlainTextEdit::isReadOnly(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_isReadOnly(self)
}

///|
pub fn QPlainTextEdit::lineWrapMode(
  self : Self,
) -> LineWrapMode raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_lineWrapMode(self)
}

///|
pub fn QPlainTextEdit::placeholderText(
  self : Self,
) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_placeholderText(self)
}

///|
pub fn QPlainTextEdit::redo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_redo(self)
}

///|
pub fn QPlainTextEdit::selectAll(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_selectAll(self)
}

///|
pub fn QPlainTextEdit::setLineWrapMode(
  self : Self,
  mode : LineWrapMode,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_setLineWrapMode(self, mode)
}

///|
pub fn QPlainTextEdit::setPlaceholderText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_setPlaceholderText(self, text)
}

///|
pub fn QPlainTextEdit::setPlainText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_setPlainText(self, text)
}

///|
pub fn QPlainTextEdit::setReadOnly(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_setReadOnly(self, value)
}

///|
pub fn QPlainTextEdit::textChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_textChanged(self)
}

///|
pub fn QPlainTextEdit::toPlainText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_toPlainText(self)
}

///|
pub fn QPlainTextEdit::undo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QPlainTextEdit_undo(self)
}

///|
pub impl AsObject for QPlainTextEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QPlainTextEdit with as_widget(self) {
  self.as_abstract_scroll_area().as_widget()
}

///|
pub impl AsFrame for QPlainTextEdit with as_frame(self) {
  self.as_abstract_scroll_area().as_frame()
}

///|
pub impl AsAbstractScrollArea for QPlainTextEdit with as_abstract_scroll_area(
  self,
) {
  _QPlainTextEdit_as_QAbstractScrollArea(self)
}
