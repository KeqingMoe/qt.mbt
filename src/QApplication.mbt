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
extern "C" fn _QApplication_windowIcon(this : QApplication) -> QIcon = "QApplication_windowIcon"

///|
#borrow(this)
extern "C" fn _QApplication_quit(this : QApplication) = "QApplication_quit"

///|
#borrow(this, styleSheet)
extern "C" fn _QApplication_setStyleSheet(
  this : QApplication,
  styleSheet : String,
) = "QApplication_setStyleSheet"

///|
#borrow(this, icon)
extern "C" fn _QApplication_setWindowIcon(this : QApplication, icon : QIcon) = "QApplication_setWindowIcon"

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
pub fn QApplication::windowIcon(self : Self) -> QIcon raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_windowIcon(self)
}

///|
pub fn QApplication::quit(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_quit(self)
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
pub fn QApplication::setWindowIcon(
  self : Self,
  icon : QIcon,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QApplication_setWindowIcon(self, icon)
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
