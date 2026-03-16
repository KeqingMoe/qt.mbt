///|
pub(open) trait AsFrame: AsWidget {
  as_frame(Self) -> QFrame
}

///|
pub struct QFrame(@ffi.QFrame)

///|
pub impl AsObject for QFrame with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QFrame with as_widget(self) {
  @ffi._QFrame_as_QWidget(self.0)
}

///|
pub impl AsFrame for QFrame with as_frame(self) {
  self
}
