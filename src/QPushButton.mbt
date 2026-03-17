///|
pub type QPushButton

///|
extern "C" fn _QPushButton_new() -> QPushButton = "QPushButton_new"

///|
#borrow(this)
#owned(cb)
extern "C" fn _QPushButton_on_clicked(this : QPushButton, cb : () -> Unit) = "QPushButton_on_clicked"

///|
#borrow(this)
extern "C" fn _QPushButton_as_QAbstractButton(
  this : QPushButton,
) -> QAbstractButton = "QPushButton_as_QAbstractButton"

///|
pub fn QPushButton::new() -> Self {
  _QPushButton_new()
}

///|
#deprecated("已有新版信号槽 API")
pub fn QPushButton::on_clicked(self : Self, cb : () -> Unit) -> Unit {
  _QPushButton_on_clicked(self, cb)
}

///|
pub impl AsObject for QPushButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QPushButton with as_widget(self) {
  self.as_abstract_button().as_widget()
}

///|
pub impl AsAbstractButton for QPushButton with as_abstract_button(self) {
  _QPushButton_as_QAbstractButton(self)
}
