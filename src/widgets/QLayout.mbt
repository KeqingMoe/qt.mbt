///|
pub type QLayout

///|
#borrow(this, widget)
extern "C" fn _QLayout_addWidget(this : QLayout, widget : QWidget) = "QLayout_addWidget"

///|
#borrow(this)
extern "C" fn _QLayout_as_QObject(this : QLayout) -> QObject = "QLayout_as_QObject"

///|
pub(open) trait AsLayout: AsObject {
  as_layout(Self) -> QLayout
  addWidget(Self, widget : &AsWidget) -> Unit = _
}

///|
impl AsLayout with addWidget(self, widget) {
  _QLayout_addWidget(self.as_layout(), widget.as_widget())
}

///|
pub impl AsObject for QLayout with as_object(self) {
  _QLayout_as_QObject(self)
}

///|
pub impl AsLayout for QLayout with as_layout(self) {
  self
}
