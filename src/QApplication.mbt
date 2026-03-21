///|
pub type QApplication

///|
#borrow(args)
extern "C" fn _QApplication_new(args : Array[String]) -> QApplication = "QApplication_new"

///|
#borrow(this)
extern "C" fn _QApplication_exec(this : QApplication) -> Int = "QApplication_exec"

///|
#borrow(this, styleSheet)
extern "C" fn _QApplication_setStyleSheet(
  this : QApplication,
  styleSheet : String,
) = "QApplication_setStyleSheet"

///|
#borrow(this)
extern "C" fn _QApplication_styleSheet(this : QApplication) -> String = "QApplication_styleSheet"

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
pub fn QApplication::setStyleSheet(
  self : Self,
  styleSheet : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_setStyleSheet(self, styleSheet)
}

///|
pub fn QApplication::styleSheet(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_styleSheet(self)
}

///|
pub impl AsObject for QApplication with as_object(self) {
  _QApplication_as_QObject(self)
}
