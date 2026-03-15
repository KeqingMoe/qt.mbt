///|
#external
pub type QApplication

///|
#borrow(args)
pub extern "C" fn QApplication::new(args : Array[String]) -> QApplication = "QApplication_new"

///|
#borrow(self)
pub extern "C" fn QApplication::exec(self : Self) -> Int = "QApplication_exec"

///|
#borrow(object)
extern "C" fn _QApplication_as_QObject(object : QApplication) -> QObject = "QApplication_as_QObject"

///|
pub impl AsObject for QApplication with as_object(self) {
  _QApplication_as_QObject(self)
}
