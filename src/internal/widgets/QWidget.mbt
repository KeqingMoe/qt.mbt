///|
pub type QWidget

///|
pub extern "C" fn _QWidget_new() -> QWidget = "QWidget_new"

///|
#borrow(this)
pub extern "C" fn _QWidget_show(this : QWidget) = "QWidget_show"

///|
#borrow(this, title)
pub extern "C" fn _QWidget_setWindowTitle(this : QWidget, title : String) = "QWidget_setWindowTitle"

///|
#borrow(this, layout)
pub extern "C" fn _QWidget_setLayout(this : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
#borrow(this)
pub extern "C" fn _QWidget_as_QObject(this : QWidget) -> QObject = "QWidget_as_QObject"
