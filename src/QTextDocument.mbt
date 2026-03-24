///|
pub type QTextDocument

///|
extern "C" fn _QTextDocument_new() -> QTextDocument = "QTextDocument_new"

///|
#borrow(parent)
extern "C" fn _QTextDocument_newWithParent(parent : QObject) -> QTextDocument = "QTextDocument_newWithParent"

///|
#borrow(text)
extern "C" fn _QTextDocument_newWithText(text : String) -> QTextDocument = "QTextDocument_newWithText"

///|
#borrow(text, parent)
extern "C" fn _QTextDocument_newWithTextParent(
  text : String,
  parent : QObject,
) -> QTextDocument = "QTextDocument_newWithTextParent"

///|
#borrow(this)
extern "C" fn _QTextDocument_adjustSize(this : QTextDocument) = "QTextDocument_adjustSize"

///|
#borrow(this)
extern "C" fn _QTextDocument_availableRedoSteps(this : QTextDocument) -> Int = "QTextDocument_availableRedoSteps"

///|
#borrow(this)
extern "C" fn _QTextDocument_availableUndoSteps(this : QTextDocument) -> Int = "QTextDocument_availableUndoSteps"

///|
#borrow(this)
extern "C" fn _QTextDocument_begin(this : QTextDocument) -> QTextBlock = "QTextDocument_begin"

///|
#borrow(this)
extern "C" fn _QTextDocument_blockCount(this : QTextDocument) -> Int = "QTextDocument_blockCount"

///|
#borrow(this)
extern "C" fn _QTextDocument_characterCount(this : QTextDocument) -> Int = "QTextDocument_characterCount"

///|
#borrow(this)
extern "C" fn _QTextDocument_clear(this : QTextDocument) = "QTextDocument_clear"

///|
#borrow(this)
extern "C" fn _QTextDocument_clone(this : QTextDocument) -> QTextDocument = "QTextDocument_clone"

///|
#borrow(this, parent)
extern "C" fn _QTextDocument_cloneWithParent(
  this : QTextDocument,
  parent : QObject,
) -> QTextDocument = "QTextDocument_cloneWithParent"

///|
#borrow(this)
extern "C" fn _QTextDocument_documentLayout(
  this : QTextDocument,
) -> QAbstractTextDocumentLayout = "QTextDocument_documentLayout"

///|
#borrow(this)
extern "C" fn _QTextDocument_documentMargin(this : QTextDocument) -> Double = "QTextDocument_documentMargin"

///|
#borrow(this)
extern "C" fn _QTextDocument_end(this : QTextDocument) -> QTextBlock = "QTextDocument_end"

///|
#borrow(this, position)
extern "C" fn _QTextDocument_findBlock(
  this : QTextDocument,
  position : Int,
) -> QTextBlock = "QTextDocument_findBlock"

///|
#borrow(this, lineNumber)
extern "C" fn _QTextDocument_findBlockByLineNumber(
  this : QTextDocument,
  lineNumber : Int,
) -> QTextBlock = "QTextDocument_findBlockByLineNumber"

///|
#borrow(this, blockNumber)
extern "C" fn _QTextDocument_findBlockByNumber(
  this : QTextDocument,
  blockNumber : Int,
) -> QTextBlock = "QTextDocument_findBlockByNumber"

///|
#borrow(this)
extern "C" fn _QTextDocument_firstBlock(this : QTextDocument) -> QTextBlock = "QTextDocument_firstBlock"

///|
#borrow(this)
extern "C" fn _QTextDocument_idealWidth(this : QTextDocument) -> Double = "QTextDocument_idealWidth"

///|
#borrow(this)
extern "C" fn _QTextDocument_indentWidth(this : QTextDocument) -> Double = "QTextDocument_indentWidth"

///|
#borrow(this)
extern "C" fn _QTextDocument_isEmpty(this : QTextDocument) -> Bool = "QTextDocument_isEmpty"

///|
#borrow(this)
extern "C" fn _QTextDocument_isModified(this : QTextDocument) -> Bool = "QTextDocument_isModified"

///|
#borrow(this)
extern "C" fn _QTextDocument_isRedoAvailable(this : QTextDocument) -> Bool = "QTextDocument_isRedoAvailable"

///|
#borrow(this)
extern "C" fn _QTextDocument_isUndoAvailable(this : QTextDocument) -> Bool = "QTextDocument_isUndoAvailable"

///|
#borrow(this)
extern "C" fn _QTextDocument_lineCount(this : QTextDocument) -> Int = "QTextDocument_lineCount"

///|
#borrow(this)
extern "C" fn _QTextDocument_lastBlock(this : QTextDocument) -> QTextBlock = "QTextDocument_lastBlock"

///|
#borrow(this)
extern "C" fn _QTextDocument_maximumBlockCount(this : QTextDocument) -> Int = "QTextDocument_maximumBlockCount"

///|
#borrow(this)
extern "C" fn _QTextDocument_pageCount(this : QTextDocument) -> Int = "QTextDocument_pageCount"

///|
#borrow(this)
extern "C" fn _QTextDocument_pageSize(this : QTextDocument) -> QSizeF = "QTextDocument_pageSize"

///|
#borrow(this)
extern "C" fn _QTextDocument_redo(this : QTextDocument) = "QTextDocument_redo"

///|
#borrow(this)
extern "C" fn _QTextDocument_revision(this : QTextDocument) -> Int = "QTextDocument_revision"

///|
#borrow(this, margin)
extern "C" fn _QTextDocument_setDocumentMargin(
  this : QTextDocument,
  margin : Double,
) = "QTextDocument_setDocumentMargin"

///|
#borrow(this, html)
extern "C" fn _QTextDocument_setHtml(this : QTextDocument, html : String) = "QTextDocument_setHtml"

///|
#borrow(this, width)
extern "C" fn _QTextDocument_setIndentWidth(
  this : QTextDocument,
  width : Double,
) = "QTextDocument_setIndentWidth"

///|
#borrow(this, text)
extern "C" fn _QTextDocument_setMarkdown(this : QTextDocument, text : String) = "QTextDocument_setMarkdown"

///|
#borrow(this, maximum)
extern "C" fn _QTextDocument_setMaximumBlockCount(
  this : QTextDocument,
  maximum : Int,
) = "QTextDocument_setMaximumBlockCount"

///|
#borrow(this, modified)
extern "C" fn _QTextDocument_setModified(this : QTextDocument, modified : Bool) = "QTextDocument_setModified"

///|
#borrow(this, size)
extern "C" fn _QTextDocument_setPageSize(this : QTextDocument, size : QSizeF) = "QTextDocument_setPageSize"

///|
#borrow(this, text)
extern "C" fn _QTextDocument_setPlainText(this : QTextDocument, text : String) = "QTextDocument_setPlainText"

///|
#borrow(this, width)
extern "C" fn _QTextDocument_setTextWidth(this : QTextDocument, width : Double) = "QTextDocument_setTextWidth"

///|
#borrow(this, enable)
extern "C" fn _QTextDocument_setUndoRedoEnabled(
  this : QTextDocument,
  enable : Bool,
) = "QTextDocument_setUndoRedoEnabled"

///|
#borrow(this)
extern "C" fn _QTextDocument_size(this : QTextDocument) -> QSizeF = "QTextDocument_size"

///|
#borrow(this)
extern "C" fn _QTextDocument_textWidth(this : QTextDocument) -> Double = "QTextDocument_textWidth"

///|
#borrow(this)
extern "C" fn _QTextDocument_toHtml(this : QTextDocument) -> String = "QTextDocument_toHtml"

///|
#borrow(this)
extern "C" fn _QTextDocument_toMarkdown(this : QTextDocument) -> String = "QTextDocument_toMarkdown"

///|
#borrow(this)
extern "C" fn _QTextDocument_toPlainText(this : QTextDocument) -> String = "QTextDocument_toPlainText"

///|
#borrow(this)
extern "C" fn _QTextDocument_undo(this : QTextDocument) = "QTextDocument_undo"

///|
#borrow(this)
extern "C" fn _QTextDocument_blockCountChanged(
  this : QTextDocument,
) -> Signal[Int] = "QTextDocument_blockCountChanged"

///|
#borrow(this)
extern "C" fn _QTextDocument_contentsChanged(
  this : QTextDocument,
) -> Signal[Unit] = "QTextDocument_contentsChanged"

///|
#borrow(this)
extern "C" fn _QTextDocument_documentLayoutChanged(
  this : QTextDocument,
) -> Signal[Unit] = "QTextDocument_documentLayoutChanged"

///|
#borrow(this)
extern "C" fn _QTextDocument_modificationChanged(
  this : QTextDocument,
) -> Signal[Bool] = "QTextDocument_modificationChanged"

///|
#borrow(this)
extern "C" fn _QTextDocument_redoAvailable(
  this : QTextDocument,
) -> Signal[Bool] = "QTextDocument_redoAvailable"

///|
#borrow(this)
extern "C" fn _QTextDocument_undoAvailable(
  this : QTextDocument,
) -> Signal[Bool] = "QTextDocument_undoAvailable"

///|
#borrow(this)
extern "C" fn _QTextDocument_undoCommandAdded(
  this : QTextDocument,
) -> Signal[Unit] = "QTextDocument_undoCommandAdded"

///|
#borrow(this)
extern "C" fn _QTextDocument_as_QObject(this : QTextDocument) -> QObject = "QTextDocument_as_QObject"

///|
pub fn QTextDocument::new() -> Self {
  _QTextDocument_new()
}

///|
pub fn QTextDocument::newWithParent(parent : &AsObject) -> Self {
  _QTextDocument_newWithParent(parent.as_object())
}

///|
pub fn QTextDocument::newWithText(text : String) -> Self {
  _QTextDocument_newWithText(text)
}

///|
pub fn QTextDocument::newWithTextParent(
  text : String,
  parent : &AsObject,
) -> Self {
  _QTextDocument_newWithTextParent(text, parent.as_object())
}

///|
pub fn QTextDocument::adjustSize(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_adjustSize(self)
}

///|
pub fn QTextDocument::availableRedoSteps(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_availableRedoSteps(self)
}

///|
pub fn QTextDocument::availableUndoSteps(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_availableUndoSteps(self)
}

///|
pub fn QTextDocument::begin(self : Self) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_begin(self)
}

///|
pub fn QTextDocument::blockCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_blockCount(self)
}

///|
pub fn QTextDocument::blockCountChanged(
  self : Self,
) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_blockCountChanged(self)
}

///|
pub fn QTextDocument::characterCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_characterCount(self)
}

///|
pub fn QTextDocument::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_clear(self)
}

///|
pub fn QTextDocument::clone(self : Self) -> QTextDocument raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_clone(self)
}

///|
pub fn QTextDocument::cloneWithParent(
  self : Self,
  parent : &AsObject,
) -> QTextDocument raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_cloneWithParent(self, parent.as_object())
}

///|
pub fn QTextDocument::contentsChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_contentsChanged(self)
}

///|
pub fn QTextDocument::documentLayout(
  self : Self,
) -> QAbstractTextDocumentLayout raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_documentLayout(self)
}

///|
pub fn QTextDocument::documentLayoutChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_documentLayoutChanged(self)
}

///|
pub fn QTextDocument::documentMargin(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_documentMargin(self)
}

///|
pub fn QTextDocument::end(self : Self) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_end(self)
}

///|
pub fn QTextDocument::findBlock(
  self : Self,
  position : Int,
) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_findBlock(self, position)
}

///|
pub fn QTextDocument::findBlockByLineNumber(
  self : Self,
  lineNumber : Int,
) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_findBlockByLineNumber(self, lineNumber)
}

///|
pub fn QTextDocument::findBlockByNumber(
  self : Self,
  blockNumber : Int,
) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_findBlockByNumber(self, blockNumber)
}

///|
pub fn QTextDocument::firstBlock(self : Self) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_firstBlock(self)
}

///|
pub fn QTextDocument::idealWidth(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_idealWidth(self)
}

///|
pub fn QTextDocument::indentWidth(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_indentWidth(self)
}

///|
pub fn QTextDocument::isEmpty(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_isEmpty(self)
}

///|
pub fn QTextDocument::isModified(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_isModified(self)
}

///|
pub fn QTextDocument::isRedoAvailable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_isRedoAvailable(self)
}

///|
pub fn QTextDocument::isUndoAvailable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_isUndoAvailable(self)
}

///|
pub fn QTextDocument::lineCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_lineCount(self)
}

///|
pub fn QTextDocument::lastBlock(self : Self) -> QTextBlock raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_lastBlock(self)
}

///|
pub fn QTextDocument::maximumBlockCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_maximumBlockCount(self)
}

///|
pub fn QTextDocument::modificationChanged(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_modificationChanged(self)
}

///|
pub fn QTextDocument::pageCount(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_pageCount(self)
}

///|
pub fn QTextDocument::pageSize(self : Self) -> QSizeF raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_pageSize(self)
}

///|
pub fn QTextDocument::redo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_redo(self)
}

///|
pub fn QTextDocument::redoAvailable(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_redoAvailable(self)
}

///|
pub fn QTextDocument::revision(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_revision(self)
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
pub fn QTextDocument::setHtml(
  self : Self,
  html : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setHtml(self, html)
}

///|
pub fn QTextDocument::setIndentWidth(
  self : Self,
  width : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setIndentWidth(self, width)
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
pub fn QTextDocument::setMaximumBlockCount(
  self : Self,
  maximum : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setMaximumBlockCount(self, maximum)
}

///|
pub fn QTextDocument::setModified(
  self : Self,
  modified? : Bool = true,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setModified(self, modified)
}

///|
pub fn QTextDocument::setPageSize(
  self : Self,
  size : QSizeF,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setPageSize(self, size)
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
pub fn QTextDocument::setUndoRedoEnabled(
  self : Self,
  enable : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_setUndoRedoEnabled(self, enable)
}

///|
pub fn QTextDocument::size(self : Self) -> QSizeF raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_size(self)
}

///|
pub fn QTextDocument::textWidth(self : Self) -> Double raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_textWidth(self)
}

///|
pub fn QTextDocument::toHtml(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_toHtml(self)
}

///|
pub fn QTextDocument::toMarkdown(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_toMarkdown(self)
}

///|
pub fn QTextDocument::toPlainText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_toPlainText(self)
}

///|
pub fn QTextDocument::undo(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_undo(self)
}

///|
pub fn QTextDocument::undoAvailable(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_undoAvailable(self)
}

///|
pub fn QTextDocument::undoCommandAdded(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QTextDocument_undoCommandAdded(self)
}

///|
pub impl AsObject for QTextDocument with as_object(self) {
  _QTextDocument_as_QObject(self)
}
