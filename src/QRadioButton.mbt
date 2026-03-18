///|
pub type QRadioButton

///|
extern "C" fn _QRadioButton_new() -> QRadioButton = "QRadioButton_new"

///|
#borrow(this)
extern "C" fn _QRadioButton_as_QAbstractButton(
  this : QRadioButton,
) -> QAbstractButton = "QRadioButton_as_QAbstractButton"

///|
pub fn QRadioButton::new() -> Self {
  _QRadioButton_new()
}

///|
pub impl AsObject for QRadioButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QRadioButton with as_widget(self) {
  self.as_abstract_button().as_widget()
}

///|
pub impl AsAbstractButton for QRadioButton with as_abstract_button(self) {
  _QRadioButton_as_QAbstractButton(self)
}
