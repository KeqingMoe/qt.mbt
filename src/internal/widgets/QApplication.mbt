///|
pub type QApplication

///|
#borrow(args)
pub extern "C" fn _QApplication_new(args : Array[String]) -> QApplication = "QApplication_new"

///|
#borrow(this)
pub extern "C" fn _QApplication_exec(this : QApplication) -> Int = "QApplication_exec"

///|
#borrow(this)
pub extern "C" fn _QApplication_as_QObject(this : QApplication) -> QObject = "QApplication_as_QObject"
