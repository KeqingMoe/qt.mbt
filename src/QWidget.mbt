///|
pub type QWidget

///|
extern "C" fn _QWidget_new() -> QWidget = "QWidget_new"

///|
#borrow(this)
extern "C" fn _QWidget_show(this : QWidget) = "QWidget_show"

///|
#borrow(this, title)
extern "C" fn _QWidget_setWindowTitle(this : QWidget, title : String) = "QWidget_setWindowTitle"

///|
#borrow(this, layout)
extern "C" fn _QWidget_setLayout(this : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
#borrow(this)
extern "C" fn _QWidget_as_QObject(this : QWidget) -> QObject = "QWidget_as_QObject"

///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  show(Self) -> Unit = _
  setWindowTitle(Self, title : String) -> Unit = _
  setLayout(Self, layout : &AsLayout) -> Unit = _
}

///|
impl AsWidget with show(self) {
  _QWidget_show(self.as_widget())
}

///|
impl AsWidget with setWindowTitle(self, title) {
  _QWidget_setWindowTitle(self.as_widget(), title)
}

///|
impl AsWidget with setLayout(self, layout) {
  _QWidget_setLayout(self.as_widget(), layout.as_layout())
}

///|
pub fn QWidget::new() -> QWidget {
  _QWidget_new()
}

///|
pub impl AsObject for QWidget with as_object(self) {
  _QWidget_as_QObject(self)
}

///|
pub impl AsWidget for QWidget with as_widget(self) {
  self
}
