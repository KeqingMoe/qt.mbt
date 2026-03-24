///|
pub type QAbstractTextDocumentLayout

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_document(
  this : QAbstractTextDocumentLayout,
) -> QTextDocument = "QAbstractTextDocumentLayout_document"

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_documentSize(
  this : QAbstractTextDocumentLayout,
) -> QSizeF = "QAbstractTextDocumentLayout_documentSize"

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_pageCount(
  this : QAbstractTextDocumentLayout,
) -> Int = "QAbstractTextDocumentLayout_pageCount"

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_documentSizeChanged(
  this : QAbstractTextDocumentLayout,
) -> Signal[QSizeF] = "QAbstractTextDocumentLayout_documentSizeChanged"

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_pageCountChanged(
  this : QAbstractTextDocumentLayout,
) -> Signal[Int] = "QAbstractTextDocumentLayout_pageCountChanged"

///|
#borrow(this)
extern "C" fn _QAbstractTextDocumentLayout_as_QObject(
  this : QAbstractTextDocumentLayout,
) -> QObject = "QAbstractTextDocumentLayout_as_QObject"

///|
pub fn QAbstractTextDocumentLayout::document(
  self : Self,
) -> QTextDocument raise NullptrError {
  ensure_not_nullptr(self)
  _QAbstractTextDocumentLayout_document(self)
}

///|
pub fn QAbstractTextDocumentLayout::documentSize(
  self : Self,
) -> QSizeF raise NullptrError {
  ensure_not_nullptr(self)
  _QAbstractTextDocumentLayout_documentSize(self)
}

///|
pub fn QAbstractTextDocumentLayout::documentSizeChanged(
  self : Self,
) -> Signal[QSizeF] raise NullptrError {
  ensure_not_nullptr(self)
  _QAbstractTextDocumentLayout_documentSizeChanged(self)
}

///|
pub fn QAbstractTextDocumentLayout::pageCount(
  self : Self,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QAbstractTextDocumentLayout_pageCount(self)
}

///|
pub fn QAbstractTextDocumentLayout::pageCountChanged(
  self : Self,
) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QAbstractTextDocumentLayout_pageCountChanged(self)
}

///|
pub impl AsObject for QAbstractTextDocumentLayout with as_object(self) {
  _QAbstractTextDocumentLayout_as_QObject(self)
}
