///|
pub type QSlider

///|
extern "C" fn _QSlider_new(orientation : Orientation) -> QSlider = "QSlider_new"

///|
#borrow(this, position)
extern "C" fn _QSlider_setTickPosition(this : QSlider, position : TickPosition) = "QSlider_setTickPosition"

///|
#borrow(this)
extern "C" fn _QSlider_tickPosition(this : QSlider) -> TickPosition = "QSlider_tickPosition"

///|
#borrow(this)
extern "C" fn _QSlider_as_QAbstractSlider(this : QSlider) -> QAbstractSlider = "QSlider_as_QAbstractSlider"

///|
pub fn QSlider::new(orientation? : Orientation = Horizontal) -> Self {
  _QSlider_new(orientation)
}

///|
pub fn QSlider::setTickPosition(
  self : Self,
  position : TickPosition,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QSlider_setTickPosition(self, position)
}

///|
pub fn QSlider::tickPosition(self : Self) -> TickPosition raise NullptrError {
  ensure_not_nullptr(self)
  _QSlider_tickPosition(self)
}

///|
pub impl AsObject for QSlider with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QSlider with as_widget(self) {
  self.as_abstract_slider().as_widget()
}

///|
pub impl AsAbstractSlider for QSlider with as_abstract_slider(self) {
  _QSlider_as_QAbstractSlider(self)
}
