///|
pub type QFrame

///|
#borrow(this)
extern "C" fn _QFrame_frameShadow(this : QFrame) -> FrameShadow = "QFrame_frameShadow"

///|
#borrow(this)
extern "C" fn _QFrame_frameShape(this : QFrame) -> FrameShape = "QFrame_frameShape"

///|
#borrow(this, shadow)
extern "C" fn _QFrame_setFrameShadow(this : QFrame, shadow : FrameShadow) = "QFrame_setFrameShadow"

///|
#borrow(this, shape)
extern "C" fn _QFrame_setFrameShape(this : QFrame, shape : FrameShape) = "QFrame_setFrameShape"

///|
#borrow(this)
extern "C" fn _QFrame_as_QWidget(this : QFrame) -> QWidget = "QFrame_as_QWidget"

///|
pub(open) trait AsFrame: AsWidget {
  as_frame(Self) -> QFrame
  frameShadow(Self) -> FrameShadow raise NullptrError = _
  frameShape(Self) -> FrameShape raise NullptrError = _
  setFrameShadow(Self, shadow : FrameShadow) -> Unit raise NullptrError = _
  setFrameShape(Self, shape : FrameShape) -> Unit raise NullptrError = _
}

///|
impl AsFrame with frameShadow(self) {
  ensure_not_nullptr(self)
  _QFrame_frameShadow(self.as_frame())
}

///|
impl AsFrame with frameShape(self) {
  ensure_not_nullptr(self)
  _QFrame_frameShape(self.as_frame())
}

///|
impl AsFrame with setFrameShadow(self, shadow) {
  ensure_not_nullptr(self)
  _QFrame_setFrameShadow(self.as_frame(), shadow)
}

///|
impl AsFrame with setFrameShape(self, shape) {
  ensure_not_nullptr(self)
  _QFrame_setFrameShape(self.as_frame(), shape)
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
