///|
pub(all) struct QPushButton(@ffi.QPushButton)

///|
pub fn QPushButton::new() -> Self {
  @ffi._QPushButton_new()
}

///|
pub fn QPushButton::setText(self : Self, text : String) -> Unit {
  @ffi._QPushButton_setText(self.0, text)
}

///|
#deprecated("已有新版信号槽 API")
pub fn QPushButton::on_clicked(self : Self, cb : () -> Unit) -> Unit {
  @ffi._QPushButton_on_clicked(self.0, cb)
}

///|
pub fn QPushButton::clicked(self : Self) -> Signal[Bool] {
  @ffi._QPushButton_clicked(self.0)
}

///|
pub impl AsObject for QPushButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QPushButton with as_widget(self) {
  @ffi._QPushButton_as_QWidget(self.0)
}
