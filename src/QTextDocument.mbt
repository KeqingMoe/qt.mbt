///|
pub type QTextDocument

///|
#borrow(this)
extern "C" fn _QTextDocument_as_QObject(this : QTextDocument) -> QObject = "QTextDocument_as_QObject"

///|
#borrow(this)
extern "C" fn _QTextDocument_documentMargin(this : QTextDocument) -> Double = "QTextDocument_documentMargin"

///|
#borrow(this)
extern "C" fn _QTextDocument_idealWidth(this : QTextDocument) -> Double = "QTextDocument_idealWidth"

///|
#borrow(this, margin)
extern "C" fn _QTextDocument_setDocumentMargin(
  this : QTextDocument,
  margin : Double,
) = "QTextDocument_setDocumentMargin"

///|
#borrow(this, text)
extern "C" fn _QTextDocument_setMarkdown(this : QTextDocument, text : String) = "QTextDocument_setMarkdown"

///|
#borrow(this, text)
extern "C" fn _QTextDocument_setPlainText(this : QTextDocument, text : String) = "QTextDocument_setPlainText"

///|
#borrow(this, width)
extern "C" fn _QTextDocument_setTextWidth(this : QTextDocument, width : Double) = "QTextDocument_setTextWidth"

///|
#borrow(this)
extern "C" fn _QTextDocument_size(this : QTextDocument) -> QSizeF = "QTextDocument_size"

///|
pub fn QTextDocument::documentMargin(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_documentMargin(self)
}

///|
pub fn QTextDocument::idealWidth(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_idealWidth(self)
}

///|
pub fn QTextDocument::setDocumentMargin(
  self : Self,
  margin : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setDocumentMargin(self, margin)
}

///|
pub fn QTextDocument::setMarkdown(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setMarkdown(self, text)
}

///|
pub fn QTextDocument::setPlainText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setPlainText(self, text)
}

///|
pub fn QTextDocument::setTextWidth(
  self : Self,
  width : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setTextWidth(self, width)
}

///|
pub fn QTextDocument::size(self : Self) -> QSizeF raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_size(self)
}

///|
pub impl AsObject for QTextDocument with as_object(self) {
  _QTextDocument_as_QObject(self)
}
