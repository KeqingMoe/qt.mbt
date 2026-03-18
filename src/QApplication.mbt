///|
pub type QApplication

///|
#borrow(args)
extern "C" fn _QApplication_new(args : Array[String]) -> QApplication = "QApplication_new"

///|
#borrow(this)
extern "C" fn _QApplication_exec(this : QApplication) -> Int = "QApplication_exec"

///|
#borrow(this)
extern "C" fn _QApplication_as_QObject(this : QApplication) -> QObject = "QApplication_as_QObject"

///|
pub fn QApplication::new(args : Array[String]) -> QApplication {
  _QApplication_new(args)
}

///|
pub fn QApplication::exec(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_exec(self)
}

///|
pub impl AsObject for QApplication with as_object(self) {
  _QApplication_as_QObject(self)
}
