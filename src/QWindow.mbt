///|
pub type QWindow

///|
extern "C" fn _QWindow_new() -> QWindow = "QWindow_new"

///|
#borrow(this)
extern "C" fn _QWindow_as_QObject(this : QWindow) -> QObject = "QWindow_as_QObject"

///|
#borrow(this)
extern "C" fn _QWindow_close(this : QWindow) -> Bool = "QWindow_close"

///|
#borrow(this)
extern "C" fn _QWindow_flags(this : QWindow) -> QFlag = "QWindow_flags"

///|
#borrow(this)
extern "C" fn _QWindow_hide(this : QWindow) = "QWindow_hide"

///|
#borrow(this)
extern "C" fn _QWindow_isVisible(this : QWindow) -> Bool = "QWindow_isVisible"

///|
#borrow(this)
extern "C" fn _QWindow_positionX(this : QWindow) -> Int = "QWindow_positionX"

///|
#borrow(this)
extern "C" fn _QWindow_positionY(this : QWindow) -> Int = "QWindow_positionY"

///|
#borrow(this, x, y)
extern "C" fn _QWindow_setPosition(this : QWindow, x : Int, y : Int) = "QWindow_setPosition"

///|
#borrow(this, visible)
extern "C" fn _QWindow_setVisible(this : QWindow, visible : Bool) = "QWindow_setVisible"

///|
#borrow(this, windowFlag, on)
extern "C" fn _QWindow_setFlag(this : QWindow, windowFlag : QFlag, on : Bool) = "QWindow_setFlag"

///|
#borrow(this, flags)
extern "C" fn _QWindow_setFlags(this : QWindow, flags : QFlag) = "QWindow_setFlags"

///|
#borrow(this, height)
extern "C" fn _QWindow_setHeight(this : QWindow, height : Int) = "QWindow_setHeight"

///|
#borrow(this, title)
extern "C" fn _QWindow_setTitle(this : QWindow, title : String) = "QWindow_setTitle"

///|
#borrow(this, width)
extern "C" fn _QWindow_setWidth(this : QWindow, width : Int) = "QWindow_setWidth"

///|
#borrow(this, width, height)
extern "C" fn _QWindow_resize(this : QWindow, width : Int, height : Int) = "QWindow_resize"

///|
#borrow(this)
extern "C" fn _QWindow_show(this : QWindow) = "QWindow_show"

///|
#borrow(this)
extern "C" fn _QWindow_showMaximized(this : QWindow) = "QWindow_showMaximized"

///|
#borrow(this)
extern "C" fn _QWindow_showMinimized(this : QWindow) = "QWindow_showMinimized"

///|
#borrow(this)
extern "C" fn _QWindow_showNormal(this : QWindow) = "QWindow_showNormal"

///|
#borrow(this)
extern "C" fn _QWindow_startSystemMove(this : QWindow) -> Bool = "QWindow_startSystemMove"

///|
#borrow(this)
extern "C" fn _QWindow_title(this : QWindow) -> String = "QWindow_title"

///|
#borrow(this)
extern "C" fn _QWindow_type(this : QWindow) -> WindowType = "QWindow_type"

///|
#borrow(this)
extern "C" fn _QWindow_width(this : QWindow) -> Int = "QWindow_width"

///|
#borrow(this)
extern "C" fn _QWindow_height(this : QWindow) -> Int = "QWindow_height"

///|
pub fn QWindow::new() -> Self {
  _QWindow_new()
}

///|
pub fn QWindow::close(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_close(self)
}

///|
pub fn QWindow::flags(self : Self) -> WindowFlags raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_flags(self).to_flag()
}

///|
pub fn QWindow::height(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_height(self)
}

///|
pub fn QWindow::hide(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_hide(self)
}

///|
pub fn QWindow::isVisible(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_isVisible(self)
}

///|
pub fn QWindow::positionX(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_positionX(self)
}

///|
pub fn QWindow::positionY(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_positionY(self)
}

///|
pub fn QWindow::resize(
  self : Self,
  width : Int,
  height : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_resize(self, width, height)
}

///|
pub fn QWindow::setFlag(
  self : Self,
  flag : WindowFlags,
  on? : Bool = true,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setFlag(self, flag.to_flag(), on)
}

///|
pub fn QWindow::setFlags(
  self : Self,
  flags : WindowFlags,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setFlags(self, flags.to_flag())
}

///|
pub fn QWindow::setHeight(self : Self, height : Int) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setHeight(self, height)
}

///|
pub fn QWindow::setPosition(
  self : Self,
  x : Int,
  y : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setPosition(self, x, y)
}

///|
pub fn QWindow::setTitle(
  self : Self,
  title : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setTitle(self, title)
}

///|
pub fn QWindow::setVisible(
  self : Self,
  visible : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setVisible(self, visible)
}

///|
pub fn QWindow::setWidth(self : Self, width : Int) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_setWidth(self, width)
}

///|
pub fn QWindow::show(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_show(self)
}

///|
pub fn QWindow::showMaximized(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_showMaximized(self)
}

///|
pub fn QWindow::showMinimized(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_showMinimized(self)
}

///|
pub fn QWindow::showNormal(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_showNormal(self)
}

///|
pub fn QWindow::startSystemMove(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_startSystemMove(self)
}

///|
pub fn QWindow::title(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_title(self)
}

///|
pub fn QWindow::windowType(self : Self) -> WindowType raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_type(self)
}

///|
pub fn QWindow::width(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QWindow_width(self)
}

///|
pub impl AsObject for QWindow with as_object(self) {
  _QWindow_as_QObject(self)
}
