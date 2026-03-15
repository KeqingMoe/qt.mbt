///|
#external
pub type QLabel

///|
pub extern "C" fn QLabel::new() -> Self = "QLabel_new"

///|
#borrow(self, text)
pub extern "C" fn QLabel::setText(self : Self, text : String) = "QLabel_setText"

///|
#borrow(widget)
extern "C" fn _QLabel_as_QWidget(widget : QLabel) -> QWidget = "QLabel_as_QWidget"

///|
pub impl AsObject for QLabel with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QLabel with as_widget(self) {
  _QLabel_as_QWidget(self)
}
