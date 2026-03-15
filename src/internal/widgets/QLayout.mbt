///|
#external
pub type QLayout

///|
#borrow(this, widget)
pub extern "C" fn _QLayout_addWidget(this : QLayout, widget : QWidget) = "QLayout_addWidget"

///|
#borrow(this)
pub extern "C" fn _QLayout_as_QObject(this : QLayout) -> QObject = "QLayout_as_QObject"
