///|
pub type QScrollBar

///|
extern "C" fn _QScrollBar_new(orientation : Orientation) -> QScrollBar = "QScrollBar_new"

///|
#borrow(this)
extern "C" fn _QScrollBar_as_QAbstractSlider(
  this : QScrollBar,
) -> QAbstractSlider = "QScrollBar_as_QAbstractSlider"

///|
pub fn QScrollBar::new(orientation? : Orientation = Vertical) -> Self {
  _QScrollBar_new(orientation)
}

///|
pub impl AsObject for QScrollBar with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QScrollBar with as_widget(self) {
  self.as_abstract_slider().as_widget()
}

///|
pub impl AsAbstractSlider for QScrollBar with as_abstract_slider(self) {
  _QScrollBar_as_QAbstractSlider(self)
}
