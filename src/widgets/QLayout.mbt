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
#external
pub type QLayout

///|
#borrow(layout, widget)
extern "C" fn _QLayout_addWidget(layout : QLayout, widget : QWidget) = "QHLayout_addWidget"

///|
#borrow(layout)
extern "C" fn _QLayout_as_QObject(layout : QLayout) -> QObject = "QLayout_as_QObject"

///|
pub impl AsObject for QLayout with as_object(self) {
  _QLayout_as_QObject(self)
}

///|
pub impl AsLayout for QLayout with as_layout(self) {
  self
}
