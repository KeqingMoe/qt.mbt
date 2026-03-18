///|
pub type QLabel

///|
extern "C" fn _QLabel_new() -> QLabel = "QLabel_new"

///|
#borrow(this, text)
extern "C" fn _QLabel_setText(this : QLabel, text : String) = "QLabel_setText"

///|
#borrow(this, format)
extern "C" fn _QLabel_setTextFormat(this : QLabel, format : TextFormat) = "QLabel_setTextFormat"

///|
#borrow(this, wordWrap)
extern "C" fn _QLabel_setWordWrap(this : QLabel, wordWrap : Bool) = "QLabel_setWordWrap"

///|
#borrow(this)
extern "C" fn _QLabel_text(this : QLabel) -> String = "QLabel_text"

///|
#borrow(this)
extern "C" fn _QLabel_textFormat(this : QLabel) -> TextFormat = "QLabel_textFormat"

///|
#borrow(this)
extern "C" fn _QLabel_wordWrap(this : QLabel) -> Bool = "QLabel_wordWrap"

///|
#borrow(this)
extern "C" fn _QLabel_as_QFrame(this : QLabel) -> QFrame = "QLabel_as_QFrame"

///|
pub fn QLabel::new() -> Self {
  _QLabel_new()
}

///|
pub fn QLabel::setText(self : Self, text : String) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_setText(self, text)
}

///|
pub fn QLabel::setTextFormat(
  self : Self,
  format : TextFormat,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_setTextFormat(self, format)
}

///|
pub fn QLabel::setWordWrap(
  self : Self,
  wordWrap : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_setWordWrap(self, wordWrap)
}

///|
pub fn QLabel::text(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_text(self)
}

///|
pub fn QLabel::textFormat(self : Self) -> TextFormat raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_textFormat(self)
}

///|
pub fn QLabel::wordWrap(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QLabel_wordWrap(self)
}

///|
pub impl AsObject for QLabel with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLabel with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QLabel with as_frame(self) {
  _QLabel_as_QFrame(self)
}
