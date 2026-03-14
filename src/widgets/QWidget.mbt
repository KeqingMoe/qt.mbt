///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
}

///|
#external
pub type QWidget

///|
pub extern "C" fn QWidget::new() -> QWidget = "QWidget_new"

///|
#borrow(self)
pub extern "C" fn QWidget::show(self : Self) = "QWidget_show"

///|
#borrow(self, title)
pub extern "C" fn QWidget::setWindowTitle(self : Self, title : String) = "QWidget_setWindowTitle"

///|
#borrow(widget, layout)
extern "C" fn _QWidget_setLayout(widget : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
pub fn[Layout : AsLayout] QWidget::setLayout(
  self : Self,
  layout : Layout,
) -> Unit {
  _QWidget_setLayout(self, layout.as_layout())
}

///|
#borrow(self)
pub extern "C" fn QWidget::as_QObject(self : Self) -> QObject = "QWidget_as_QObject"

///|
pub impl AsObject for QWidget with as_object(self) {
  self.as_QObject()
}

///|
pub impl AsWidget for QWidget with as_widget(self) {
  self
}
