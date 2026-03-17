///|
pub type QBoxLayout

///|
#borrow(this, layout)
extern "C" fn _QBoxLayout_addLayout(this : QBoxLayout, layout : QLayout) = "QBoxLayout_addLayout"

///|
#borrow(this)
extern "C" fn _QBoxLayout_as_QLayout(this : QBoxLayout) -> QLayout = "QBoxLayout_as_QLayout"

///|
pub(open) trait AsBoxLayout: AsLayout {
  as_box_layout(Self) -> QBoxLayout
  addLayout(Self, layout : &AsLayout) -> Unit = _
}

///|
impl AsBoxLayout with addLayout(self, layout) {
  _QBoxLayout_addLayout(self.as_box_layout(), layout.as_layout())
}

///|
impl AsObject for QBoxLayout with as_object(self) {
  self.as_layout().as_object()
}

///|
impl AsLayout for QBoxLayout with as_layout(self) {
  _QBoxLayout_as_QLayout(self)
}
