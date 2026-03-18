///|
pub type QSlider

///|
extern "C" fn _QSlider_new(orientation : Orientation) -> QSlider = "QSlider_new"

///|
#borrow(this)
extern "C" fn _QSlider_as_QAbstractSlider(this : QSlider) -> QAbstractSlider = "QSlider_as_QAbstractSlider"

///|
pub fn QSlider::new(orientation? : Orientation = Horizontal) -> Self {
  _QSlider_new(orientation)
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
