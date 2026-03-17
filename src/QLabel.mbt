///|
pub type QLabel

///|
extern "C" fn _QLabel_new() -> QLabel = "QLabel_new"

///|
#borrow(this, text)
extern "C" fn _QLabel_setText(this : QLabel, text : String) = "QLabel_setText"

///|
#borrow(this)
extern "C" fn _QLabel_as_QFrame(this : QLabel) -> QFrame = "QLabel_as_QFrame"

///|
pub fn QLabel::new() -> Self {
  _QLabel_new()
}

///|
pub fn QLabel::setText(self : Self, text : String) -> Unit {
  _QLabel_setText(self, text)
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
