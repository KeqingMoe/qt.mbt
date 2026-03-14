///|
pub(open) trait AsLayout: AsObject {
  as_layout(Self) -> QLayout
}

///|
#external
pub type QLayout

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
