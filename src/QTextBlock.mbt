///|
pub type QTextBlock

///|
#borrow(this)
extern "C" fn _QTextBlock_blockNumber(this : QTextBlock) -> Int = "QTextBlock_blockNumber"

///|
#borrow(this, position)
extern "C" fn _QTextBlock_contains(this : QTextBlock, position : Int) -> Bool = "QTextBlock_contains"

///|
#borrow(this)
extern "C" fn _QTextBlock_document(this : QTextBlock) -> QTextDocument = "QTextBlock_document"

///|
#borrow(this)
extern "C" fn _QTextBlock_firstLineNumber(this : QTextBlock) -> Int = "QTextBlock_firstLineNumber"

///|
#borrow(this)
extern "C" fn _QTextBlock_isValid(this : QTextBlock) -> Bool = "QTextBlock_isValid"

///|
#borrow(this)
extern "C" fn _QTextBlock_isVisible(this : QTextBlock) -> Bool = "QTextBlock_isVisible"

///|
#borrow(this)
extern "C" fn _QTextBlock_length(this : QTextBlock) -> Int = "QTextBlock_length"

///|
#borrow(this)
extern "C" fn _QTextBlock_lineCount(this : QTextBlock) -> Int = "QTextBlock_lineCount"

///|
#borrow(this)
extern "C" fn _QTextBlock_next(this : QTextBlock) -> QTextBlock = "QTextBlock_next"

///|
#borrow(this)
extern "C" fn _QTextBlock_position(this : QTextBlock) -> Int = "QTextBlock_position"

///|
#borrow(this)
extern "C" fn _QTextBlock_previous(this : QTextBlock) -> QTextBlock = "QTextBlock_previous"

///|
#borrow(this)
extern "C" fn _QTextBlock_revision(this : QTextBlock) -> Int = "QTextBlock_revision"

///|
#borrow(this, count)
extern "C" fn _QTextBlock_setLineCount(this : QTextBlock, count : Int) = "QTextBlock_setLineCount"

///|
#borrow(this, rev)
extern "C" fn _QTextBlock_setRevision(this : QTextBlock, rev : Int) = "QTextBlock_setRevision"

///|
#borrow(this, state)
extern "C" fn _QTextBlock_setUserState(this : QTextBlock, state : Int) = "QTextBlock_setUserState"

///|
#borrow(this, visible)
extern "C" fn _QTextBlock_setVisible(this : QTextBlock, visible : Bool) = "QTextBlock_setVisible"

///|
#borrow(this)
extern "C" fn _QTextBlock_text(this : QTextBlock) -> String = "QTextBlock_text"

///|
#borrow(this)
extern "C" fn _QTextBlock_userState(this : QTextBlock) -> Int = "QTextBlock_userState"

///|
pub fn QTextBlock::blockNumber(self : Self) -> Int {
  _QTextBlock_blockNumber(self)
}

///|
pub fn QTextBlock::contains(self : Self, position : Int) -> Bool {
  _QTextBlock_contains(self, position)
}

///|
pub fn QTextBlock::document(self : Self) -> QTextDocument {
  _QTextBlock_document(self)
}

///|
pub fn QTextBlock::firstLineNumber(self : Self) -> Int {
  _QTextBlock_firstLineNumber(self)
}

///|
pub fn QTextBlock::isValid(self : Self) -> Bool {
  _QTextBlock_isValid(self)
}

///|
pub fn QTextBlock::isVisible(self : Self) -> Bool {
  _QTextBlock_isVisible(self)
}

///|
pub fn QTextBlock::length(self : Self) -> Int {
  _QTextBlock_length(self)
}

///|
pub fn QTextBlock::lineCount(self : Self) -> Int {
  _QTextBlock_lineCount(self)
}

///|
pub fn QTextBlock::next(self : Self) -> Self {
  _QTextBlock_next(self)
}

///|
pub fn QTextBlock::position(self : Self) -> Int {
  _QTextBlock_position(self)
}

///|
pub fn QTextBlock::previous(self : Self) -> Self {
  _QTextBlock_previous(self)
}

///|
pub fn QTextBlock::revision(self : Self) -> Int {
  _QTextBlock_revision(self)
}

///|
pub fn QTextBlock::setLineCount(self : Self, count : Int) -> Unit {
  _QTextBlock_setLineCount(self, count)
}

///|
pub fn QTextBlock::setRevision(self : Self, rev : Int) -> Unit {
  _QTextBlock_setRevision(self, rev)
}

///|
pub fn QTextBlock::setUserState(self : Self, state : Int) -> Unit {
  _QTextBlock_setUserState(self, state)
}

///|
pub fn QTextBlock::setVisible(self : Self, visible : Bool) -> Unit {
  _QTextBlock_setVisible(self, visible)
}

///|
pub fn QTextBlock::text(self : Self) -> String {
  _QTextBlock_text(self)
}

///|
pub fn QTextBlock::userState(self : Self) -> Int {
  _QTextBlock_userState(self)
}
