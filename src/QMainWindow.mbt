///|
pub type QMainWindow

///|
#borrow(flags)
extern "C" fn _QMainWindow_new(flags : QFlag) -> QMainWindow = "QMainWindow_new"

///|
#borrow(this, toolbar)
extern "C" fn _QMainWindow_addToolBar(this : QMainWindow, toolbar : QToolBar) = "QMainWindow_addToolBar"

///|
#borrow(this, area, toolbar)
extern "C" fn _QMainWindow_addToolBarAt(
  this : QMainWindow,
  area : QFlag,
  toolbar : QToolBar,
) = "QMainWindow_addToolBarAt"

///|
#borrow(this, title)
extern "C" fn _QMainWindow_addToolBarWithTitle(
  this : QMainWindow,
  title : String,
) -> QToolBar = "QMainWindow_addToolBarWithTitle"

///|
#borrow(this)
extern "C" fn _QMainWindow_as_QWidget(this : QMainWindow) -> QWidget = "QMainWindow_as_QWidget"

///|
#borrow(this)
extern "C" fn _QMainWindow_centralWidget(this : QMainWindow) -> QWidget = "QMainWindow_centralWidget"

///|
#borrow(this)
extern "C" fn _QMainWindow_iconSize(this : QMainWindow) -> QSize = "QMainWindow_iconSize"

///|
#borrow(this)
extern "C" fn _QMainWindow_iconSizeChanged(this : QMainWindow) -> Signal[QSize] = "QMainWindow_iconSizeChanged"

///|
#borrow(this, toolbar)
extern "C" fn _QMainWindow_removeToolBar(
  this : QMainWindow,
  toolbar : QToolBar,
) = "QMainWindow_removeToolBar"

///|
#borrow(this, widget)
extern "C" fn _QMainWindow_setCentralWidget(
  this : QMainWindow,
  widget : QWidget,
) = "QMainWindow_setCentralWidget"

///|
#borrow(this, iconSize)
extern "C" fn _QMainWindow_setIconSize(this : QMainWindow, iconSize : QSize) = "QMainWindow_setIconSize"

///|
#borrow(this, style)
extern "C" fn _QMainWindow_setToolButtonStyle(
  this : QMainWindow,
  style : ToolButtonStyle,
) = "QMainWindow_setToolButtonStyle"

///|
#borrow(this, enabled)
extern "C" fn _QMainWindow_setUnifiedTitleAndToolBarOnMac(
  this : QMainWindow,
  enabled : Bool,
) = "QMainWindow_setUnifiedTitleAndToolBarOnMac"

///|
#borrow(this)
extern "C" fn _QMainWindow_takeCentralWidget(this : QMainWindow) -> QWidget = "QMainWindow_takeCentralWidget"

///|
#borrow(this, toolbar)
extern "C" fn _QMainWindow_toolBarArea(
  this : QMainWindow,
  toolbar : QToolBar,
) -> QFlag = "QMainWindow_toolBarArea"

///|
#borrow(this)
extern "C" fn _QMainWindow_toolButtonStyle(
  this : QMainWindow,
) -> ToolButtonStyle = "QMainWindow_toolButtonStyle"

///|
#borrow(this)
extern "C" fn _QMainWindow_toolButtonStyleChanged(
  this : QMainWindow,
) -> Signal[ToolButtonStyle] = "QMainWindow_toolButtonStyleChanged"

///|
#borrow(this)
extern "C" fn _QMainWindow_unifiedTitleAndToolBarOnMac(
  this : QMainWindow,
) -> Bool = "QMainWindow_unifiedTitleAndToolBarOnMac"

///|
pub fn QMainWindow::new(flags? : WindowFlags = WindowFlags::new()) -> Self {
  _QMainWindow_new(flags.to_flag())
}

///|
pub fn QMainWindow::addToolBar(
  self : Self,
  toolbar : QToolBar,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_addToolBar(self, toolbar)
}

///|
pub fn QMainWindow::addToolBarAt(
  self : Self,
  area : ToolBarAreas,
  toolbar : QToolBar,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_addToolBarAt(self, area.to_flag(), toolbar)
}

///|
pub fn QMainWindow::addToolBarWithTitle(
  self : Self,
  title : String,
) -> QToolBar raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_addToolBarWithTitle(self, title)
}

///|
pub fn QMainWindow::centralWidget(self : Self) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_centralWidget(self)
}

///|
pub fn QMainWindow::iconSize(self : Self) -> QSize raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_iconSize(self)
}

///|
pub fn QMainWindow::iconSizeChanged(
  self : Self,
) -> Signal[QSize] raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_iconSizeChanged(self)
}

///|
pub fn QMainWindow::removeToolBar(
  self : Self,
  toolbar : QToolBar,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_removeToolBar(self, toolbar)
}

///|
pub fn QMainWindow::setCentralWidget(
  self : Self,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_setCentralWidget(self, widget.as_widget())
}

///|
pub fn QMainWindow::setIconSize(
  self : Self,
  iconSize : QSize,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_setIconSize(self, iconSize)
}

///|
pub fn QMainWindow::setToolButtonStyle(
  self : Self,
  style : ToolButtonStyle,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_setToolButtonStyle(self, style)
}

///|
pub fn QMainWindow::setUnifiedTitleAndToolBarOnMac(
  self : Self,
  enabled : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_setUnifiedTitleAndToolBarOnMac(self, enabled)
}

///|
pub fn QMainWindow::takeCentralWidget(
  self : Self,
) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_takeCentralWidget(self)
}

///|
pub fn QMainWindow::toolBarArea(
  self : Self,
  toolbar : QToolBar,
) -> ToolBarAreas raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_toolBarArea(self, toolbar).to_flag()
}

///|
pub fn QMainWindow::toolButtonStyle(
  self : Self,
) -> ToolButtonStyle raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_toolButtonStyle(self)
}

///|
pub fn QMainWindow::toolButtonStyleChanged(
  self : Self,
) -> Signal[ToolButtonStyle] raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_toolButtonStyleChanged(self)
}

///|
pub fn QMainWindow::unifiedTitleAndToolBarOnMac(
  self : Self,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QMainWindow_unifiedTitleAndToolBarOnMac(self)
}

///|
pub impl AsObject for QMainWindow with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QMainWindow with as_widget(self) {
  _QMainWindow_as_QWidget(self)
}
