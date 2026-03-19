///|
pub type QTextEdit

///|
extern "C" fn _QTextEdit_new() -> QTextEdit = "QTextEdit_new"

///|
#borrow(this)
extern "C" fn _QTextEdit_alignment(this : QTextEdit) -> QFlag = "QTextEdit_alignment"

///|
#borrow(this)
extern "C" fn _QTextEdit_acceptRichText(this : QTextEdit) -> Bool = "QTextEdit_acceptRichText"

///|
#borrow(this, text)
extern "C" fn _QTextEdit_append(this : QTextEdit, text : String) = "QTextEdit_append"

///|
#borrow(this)
extern "C" fn _QTextEdit_clear(this : QTextEdit) = "QTextEdit_clear"

///|
#borrow(this)
extern "C" fn _QTextEdit_isReadOnly(this : QTextEdit) -> Bool = "QTextEdit_isReadOnly"

///|
#borrow(this)
extern "C" fn _QTextEdit_placeholderText(this : QTextEdit) -> String = "QTextEdit_placeholderText"

///|
#borrow(this)
extern "C" fn _QTextEdit_redo(this : QTextEdit) = "QTextEdit_redo"

///|
#borrow(this, value)
extern "C" fn _QTextEdit_setAcceptRichText(this : QTextEdit, value : Bool) = "QTextEdit_setAcceptRichText"

///|
#borrow(this, alignment)
extern "C" fn _QTextEdit_setAlignment(this : QTextEdit, alignment : QFlag) = "QTextEdit_setAlignment"

///|
#borrow(this, text)
extern "C" fn _QTextEdit_setMarkdown(this : QTextEdit, text : String) = "QTextEdit_setMarkdown"

///|
#borrow(this, text)
extern "C" fn _QTextEdit_setPlainText(this : QTextEdit, text : String) = "QTextEdit_setPlainText"

///|
#borrow(this, text)
extern "C" fn _QTextEdit_setPlaceholderText(this : QTextEdit, text : String) = "QTextEdit_setPlaceholderText"

///|
#borrow(this, value)
extern "C" fn _QTextEdit_setReadOnly(this : QTextEdit, value : Bool) = "QTextEdit_setReadOnly"

///|
#borrow(this)
extern "C" fn _QTextEdit_selectAll(this : QTextEdit) = "QTextEdit_selectAll"

///|
#borrow(this)
extern "C" fn _QTextEdit_textChanged(this : QTextEdit) -> Signal[Unit] = "QTextEdit_textChanged"

///|
#borrow(this)
extern "C" fn _QTextEdit_toMarkdown(this : QTextEdit) -> String = "QTextEdit_toMarkdown"

///|
#borrow(this)
extern "C" fn _QTextEdit_toPlainText(this : QTextEdit) -> String = "QTextEdit_toPlainText"

///|
#borrow(this)
extern "C" fn _QTextEdit_undo(this : QTextEdit) = "QTextEdit_undo"

///|
#borrow(this)
extern "C" fn _QTextEdit_as_QAbstractScrollArea(
  this : QTextEdit,
) -> QAbstractScrollArea = "QTextEdit_as_QAbstractScrollArea"

///|
pub fn QTextEdit::new() -> Self {
  _QTextEdit_new()
}

///|
pub fn QTextEdit::alignment(self : Self) -> Alignment raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_alignment(self).to_flag()
}

///|
pub fn QTextEdit::acceptRichText(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_acceptRichText(self)
}

///|
pub fn QTextEdit::append(self : Self, text : String) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_append(self, text)
}

///|
pub fn QTextEdit::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_clear(self)
}

///|
pub fn QTextEdit::isReadOnly(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_isReadOnly(self)
}

///|
pub fn QTextEdit::placeholderText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_placeholderText(self)
}

///|
pub fn QTextEdit::redo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_redo(self)
}

///|
pub fn QTextEdit::selectAll(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_selectAll(self)
}

///|
pub fn QTextEdit::setAcceptRichText(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setAcceptRichText(self, value)
}

///|
pub fn QTextEdit::setAlignment(
  self : Self,
  alignment : Alignment,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setAlignment(self, alignment.to_flag())
}

///|
pub fn QTextEdit::setMarkdown(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setMarkdown(self, text)
}

///|
pub fn QTextEdit::setPlainText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setPlainText(self, text)
}

///|
pub fn QTextEdit::setPlaceholderText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setPlaceholderText(self, text)
}

///|
pub fn QTextEdit::setReadOnly(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_setReadOnly(self, value)
}

///|
pub fn QTextEdit::textChanged(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_textChanged(self)
}

///|
pub fn QTextEdit::toMarkdown(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_toMarkdown(self)
}

///|
pub fn QTextEdit::toPlainText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_toPlainText(self)
}

///|
pub fn QTextEdit::undo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextEdit_undo(self)
}

///|
pub impl AsObject for QTextEdit with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QTextEdit with as_widget(self) {
  self.as_abstract_scroll_area().as_widget()
}

///|
pub impl AsFrame for QTextEdit with as_frame(self) {
  self.as_abstract_scroll_area().as_frame()
}

///|
pub impl AsAbstractScrollArea for QTextEdit with as_abstract_scroll_area(self) {
  _QTextEdit_as_QAbstractScrollArea(self)
}
