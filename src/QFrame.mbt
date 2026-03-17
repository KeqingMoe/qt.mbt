///|
pub type QFrame

///|
#borrow(this)
extern "C" fn _QFrame_as_QWidget(this : QFrame) -> QWidget = "QFrame_as_QWidget"

///|
pub(open) trait AsFrame: AsWidget {
  as_frame(Self) -> QFrame
}

///|
pub impl AsObject for QFrame with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QFrame with as_widget(self) {
  _QFrame_as_QWidget(self)
}

///|
pub impl AsFrame for QFrame with as_frame(self) {
  self
}
