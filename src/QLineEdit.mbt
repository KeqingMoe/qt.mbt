///|
pub type QLineEdit

///|
extern "C" fn _QLineEdit_new() -> QLineEdit = "QLineEdit_new"

///|
#borrow(this)
extern "C" fn _QLineEdit_clear(this : QLineEdit) = "QLineEdit_clear"

///|
#borrow(this)
extern "C" fn _QLineEdit_copy(this : QLineEdit) = "QLineEdit_copy"

///|
#borrow(this)
extern "C" fn _QLineEdit_cut(this : QLineEdit) = "QLineEdit_cut"

///|
#borrow(this)
extern "C" fn _QLineEdit_hasSelectedText(this : QLineEdit) -> Bool = "QLineEdit_hasSelectedText"

///|
#borrow(this)
extern "C" fn _QLineEdit_echoMode(this : QLineEdit) -> EchoMode = "QLineEdit_echoMode"

///|
#borrow(this)
extern "C" fn _QLineEdit_isModified(this : QLineEdit) -> Bool = "QLineEdit_isModified"

///|
#borrow(this)
extern "C" fn _QLineEdit_isReadOnly(this : QLineEdit) -> Bool = "QLineEdit_isReadOnly"

///|
#borrow(this)
extern "C" fn _QLineEdit_isRedoAvailable(this : QLineEdit) -> Bool = "QLineEdit_isRedoAvailable"

///|
#borrow(this)
extern "C" fn _QLineEdit_isUndoAvailable(this : QLineEdit) -> Bool = "QLineEdit_isUndoAvailable"

///|
#borrow(this)
extern "C" fn _QLineEdit_placeholderText(this : QLineEdit) -> String = "QLineEdit_placeholderText"

///|
#borrow(this)
extern "C" fn _QLineEdit_redo(this : QLineEdit) = "QLineEdit_redo"

///|
#borrow(this)
extern "C" fn _QLineEdit_selectAll(this : QLineEdit) = "QLineEdit_selectAll"

///|
#borrow(this)
extern "C" fn _QLineEdit_selectedText(this : QLineEdit) -> String = "QLineEdit_selectedText"

///|
#borrow(this, mode)
extern "C" fn _QLineEdit_setEchoMode(this : QLineEdit, mode : EchoMode) = "QLineEdit_setEchoMode"

///|
#borrow(this, modified)
extern "C" fn _QLineEdit_setModified(this : QLineEdit, modified : Bool) = "QLineEdit_setModified"

///|
#borrow(this, text)
extern "C" fn _QLineEdit_setPlaceholderText(this : QLineEdit, text : String) = "QLineEdit_setPlaceholderText"

///|
#borrow(this, readOnly)
extern "C" fn _QLineEdit_setReadOnly(this : QLineEdit, readOnly : Bool) = "QLineEdit_setReadOnly"

///|
#borrow(this, text)
extern "C" fn _QLineEdit_setText(this : QLineEdit, text : String) = "QLineEdit_setText"

///|
#borrow(this)
extern "C" fn _QLineEdit_text(this : QLineEdit) -> String = "QLineEdit_text"

///|
#borrow(this)
extern "C" fn _QLineEdit_textChanged(this : QLineEdit) -> Signal[String] = "QLineEdit_textChanged"

///|
#borrow(this)
extern "C" fn _QLineEdit_undo(this : QLineEdit) = "QLineEdit_undo"

///|
#borrow(this)
extern "C" fn _QLineEdit_as_QWidget(this : QLineEdit) -> QWidget = "QLineEdit_as_QWidget"

///|
pub fn QLineEdit::new() -> Self {
  _QLineEdit_new()
}

///|
pub fn QLineEdit::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_clear(self)
}

///|
pub fn QLineEdit::copy(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_copy(self)
}

///|
pub fn QLineEdit::cut(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_cut(self)
}

///|
pub fn QLineEdit::echoMode(self : Self) -> EchoMode raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_echoMode(self)
}

///|
pub fn QLineEdit::hasSelectedText(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_hasSelectedText(self)
}

///|
pub fn QLineEdit::isModified(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_isModified(self)
}

///|
pub fn QLineEdit::isReadOnly(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_isReadOnly(self)
}

///|
pub fn QLineEdit::isRedoAvailable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_isRedoAvailable(self)
}

///|
pub fn QLineEdit::isUndoAvailable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_isUndoAvailable(self)
}

///|
pub fn QLineEdit::placeholderText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_placeholderText(self)
}

///|
pub fn QLineEdit::redo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_redo(self)
}

///|
pub fn QLineEdit::selectAll(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_selectAll(self)
}

///|
pub fn QLineEdit::selectedText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_selectedText(self)
}

///|
pub fn QLineEdit::setEchoMode(
  self : Self,
  mode : EchoMode,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_setEchoMode(self, mode)
}

///|
pub fn QLineEdit::setModified(
  self : Self,
  modified : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_setModified(self, modified)
}

///|
pub fn QLineEdit::setPlaceholderText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_setPlaceholderText(self, text)
}

///|
pub fn QLineEdit::setReadOnly(
  self : Self,
  readOnly : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_setReadOnly(self, readOnly)
}

///|
pub fn QLineEdit::setText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_setText(self, text)
}

///|
pub fn QLineEdit::text(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_text(self)
}

///|
pub fn QLineEdit::undo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_undo(self)
}

///|
pub fn QLineEdit::textChanged(self : Self) -> Signal[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QLineEdit_textChanged(self)
}

///|
pub impl AsObject for QLineEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLineEdit with as_widget(self) {
  _QLineEdit_as_QWidget(self)
}
