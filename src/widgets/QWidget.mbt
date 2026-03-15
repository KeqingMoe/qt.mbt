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
#external
pub type QWidget

///|
pub extern "C" fn QWidget::new() -> QWidget = "QWidget_new"

///|
#borrow(widget)
extern "C" fn _QWidget_show(widget : QWidget) = "QWidget_show"

///|
#borrow(widget, title)
extern "C" fn _QWidget_setWindowTitle(widget : QWidget, title : String) = "QWidget_setWindowTitle"

///|
#borrow(widget, layout)
extern "C" fn _QWidget_setLayout(widget : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
#borrow(widget)
extern "C" fn _QWidget_as_QObject(widget : QWidget) -> QObject = "QWidget_as_QObject"

///|
pub impl AsObject for QWidget with as_object(self) {
  _QWidget_as_QObject(self)
}

///|
pub impl AsWidget for QWidget with as_widget(self) {
  self
}
