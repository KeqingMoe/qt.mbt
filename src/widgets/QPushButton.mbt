///|
#external
pub type QPushButton

///|
pub extern "C" fn QPushButton::new() -> Self = "QPushButton_new"

///|
#borrow(self, text)
pub extern "C" fn QPushButton::setText(self : Self, text : String) = "QPushButton_setText"

///|
#deprecated("已有新版信号槽 API")
#borrow(self)
#owned(cb)
pub extern "C" fn QPushButton::on_clicked(self : Self, cb : () -> Unit) = "QPushButton_on_clicked"

///|
#borrow(self)
pub extern "C" fn QPushButton::clicked(self : Self) -> Signal[Bool] = "QPushButton_clicked"

///|
#borrow(self)
pub extern "C" fn QPushButton::as_QWidget(self : Self) -> QWidget = "QPushButton_as_QWidget"

///|
pub impl AsObject for QPushButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QPushButton with as_widget(self) {
  self.as_QWidget()
}
