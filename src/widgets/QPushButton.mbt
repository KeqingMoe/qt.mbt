///|
pub(all) struct QPushButton(@ffi.QPushButton)

///|
pub fn QPushButton::new() -> Self {
  @ffi._QPushButton_new()
}

///|
#deprecated("已有新版信号槽 API")
pub fn QPushButton::on_clicked(self : Self, cb : () -> Unit) -> Unit {
  @ffi._QPushButton_on_clicked(self.0, cb)
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
  @ffi._QPushButton_as_QAbstractButton(self.0)
}
