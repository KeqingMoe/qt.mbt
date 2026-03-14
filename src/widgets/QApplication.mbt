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
#borrow(self)
pub extern "C" fn QApplication::as_QObject(self : Self) -> QObject = "QApplication_as_QObject"

///|
pub impl AsObject for QApplication with as_object(self) {
  self.as_QObject()
}
