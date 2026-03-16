///|
pub type QBoxLayout

///|
#borrow(this, layout)
pub extern "C" fn _QBoxLayout_addLayout(this : QBoxLayout, layout : QLayout) = "QBoxLayout_addLayout"

///|
#borrow(this)
pub extern "C" fn _QBoxLayout_as_QLayout(this : QBoxLayout) -> QLayout = "QBoxLayout_as_QLayout"
