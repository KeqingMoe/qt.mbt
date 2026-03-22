///|
pub type QToolBar

///|
extern "C" fn _QToolBar_new() -> QToolBar = "QToolBar_new"

///|
#borrow(parent)
extern "C" fn _QToolBar_newWithParent(parent : QWidget) -> QToolBar = "QToolBar_newWithParent"

///|
#borrow(title)
extern "C" fn _QToolBar_newWithTitle(title : String) -> QToolBar = "QToolBar_newWithTitle"

///|
#borrow(title, parent)
extern "C" fn _QToolBar_newWithTitleParent(
  title : String,
  parent : QWidget,
) -> QToolBar = "QToolBar_newWithTitleParent"

///|
#borrow(this, action)
extern "C" fn _QToolBar_addAction(this : QToolBar, action : QAction) -> QAction = "QToolBar_addAction"

///|
#borrow(this, icon, text)
extern "C" fn _QToolBar_addActionWithIconText(
  this : QToolBar,
  icon : QIcon,
  text : String,
) -> QAction = "QToolBar_addActionWithIconText"

///|
#borrow(this, text)
extern "C" fn _QToolBar_addActionWithText(
  this : QToolBar,
  text : String,
) -> QAction = "QToolBar_addActionWithText"

///|
#borrow(this)
extern "C" fn _QToolBar_addSeparator(this : QToolBar) -> QAction = "QToolBar_addSeparator"

///|
#borrow(this, widget)
extern "C" fn _QToolBar_addWidget(this : QToolBar, widget : QWidget) -> QAction = "QToolBar_addWidget"

///|
#borrow(this)
extern "C" fn _QToolBar_allowedAreas(this : QToolBar) -> QFlag = "QToolBar_allowedAreas"

///|
#borrow(this)
extern "C" fn _QToolBar_allowedAreasChanged(this : QToolBar) -> Signal[QFlag] = "QToolBar_allowedAreasChanged"

///|
#borrow(this)
extern "C" fn _QToolBar_as_QWidget(this : QToolBar) -> QWidget = "QToolBar_as_QWidget"

///|
#borrow(this)
extern "C" fn _QToolBar_clear(this : QToolBar) = "QToolBar_clear"

///|
#borrow(this)
extern "C" fn _QToolBar_iconSize(this : QToolBar) -> QSize = "QToolBar_iconSize"

///|
#borrow(this)
extern "C" fn _QToolBar_iconSizeChanged(this : QToolBar) -> Signal[QSize] = "QToolBar_iconSizeChanged"

///|
#borrow(this, before)
extern "C" fn _QToolBar_insertSeparator(
  this : QToolBar,
  before : QAction,
) -> QAction = "QToolBar_insertSeparator"

///|
#borrow(this, before, widget)
extern "C" fn _QToolBar_insertWidget(
  this : QToolBar,
  before : QAction,
  widget : QWidget,
) -> QAction = "QToolBar_insertWidget"

///|
#borrow(this, area)
extern "C" fn _QToolBar_isAreaAllowed(this : QToolBar, area : QFlag) -> Bool = "QToolBar_isAreaAllowed"

///|
#borrow(this)
extern "C" fn _QToolBar_isFloatable(this : QToolBar) -> Bool = "QToolBar_isFloatable"

///|
#borrow(this)
extern "C" fn _QToolBar_isFloating(this : QToolBar) -> Bool = "QToolBar_isFloating"

///|
#borrow(this)
extern "C" fn _QToolBar_isMovable(this : QToolBar) -> Bool = "QToolBar_isMovable"

///|
#borrow(this)
extern "C" fn _QToolBar_movableChanged(this : QToolBar) -> Signal[Bool] = "QToolBar_movableChanged"

///|
#borrow(this)
extern "C" fn _QToolBar_orientation(this : QToolBar) -> Orientation = "QToolBar_orientation"

///|
#borrow(this)
extern "C" fn _QToolBar_orientationChanged(
  this : QToolBar,
) -> Signal[Orientation] = "QToolBar_orientationChanged"

///|
#borrow(this, action)
extern "C" fn _QToolBar_removeAction(this : QToolBar, action : QAction) = "QToolBar_removeAction"

///|
#borrow(this, areas)
extern "C" fn _QToolBar_setAllowedAreas(this : QToolBar, areas : QFlag) = "QToolBar_setAllowedAreas"

///|
#borrow(this, value)
extern "C" fn _QToolBar_setFloatable(this : QToolBar, value : Bool) = "QToolBar_setFloatable"

///|
#borrow(this, iconSize)
extern "C" fn _QToolBar_setIconSize(this : QToolBar, iconSize : QSize) = "QToolBar_setIconSize"

///|
#borrow(this, value)
extern "C" fn _QToolBar_setMovable(this : QToolBar, value : Bool) = "QToolBar_setMovable"

///|
#borrow(this, orientation)
extern "C" fn _QToolBar_setOrientation(
  this : QToolBar,
  orientation : Orientation,
) = "QToolBar_setOrientation"

///|
#borrow(this, style)
extern "C" fn _QToolBar_setToolButtonStyle(
  this : QToolBar,
  style : ToolButtonStyle,
) = "QToolBar_setToolButtonStyle"

///|
#borrow(this)
extern "C" fn _QToolBar_toggleViewAction(this : QToolBar) -> QAction = "QToolBar_toggleViewAction"

///|
#borrow(this)
extern "C" fn _QToolBar_toolButtonStyle(this : QToolBar) -> ToolButtonStyle = "QToolBar_toolButtonStyle"

///|
#borrow(this)
extern "C" fn _QToolBar_toolButtonStyleChanged(
  this : QToolBar,
) -> Signal[ToolButtonStyle] = "QToolBar_toolButtonStyleChanged"

///|
#borrow(this)
extern "C" fn _QToolBar_topLevelChanged(this : QToolBar) -> Signal[Bool] = "QToolBar_topLevelChanged"

///|
#borrow(this)
extern "C" fn _QToolBar_visibilityChanged(this : QToolBar) -> Signal[Bool] = "QToolBar_visibilityChanged"

///|
#borrow(this, action)
extern "C" fn _QToolBar_widgetForAction(
  this : QToolBar,
  action : QAction,
) -> QWidget = "QToolBar_widgetForAction"

///|
pub fn QToolBar::new() -> Self {
  _QToolBar_new()
}

///|
pub fn QToolBar::newWithParent(parent : &AsWidget) -> Self {
  _QToolBar_newWithParent(parent.as_widget())
}

///|
pub fn QToolBar::newWithTitle(title : String) -> Self {
  _QToolBar_newWithTitle(title)
}

///|
pub fn QToolBar::newWithTitleParent(title : String, parent : &AsWidget) -> Self {
  _QToolBar_newWithTitleParent(title, parent.as_widget())
}

///|
pub fn QToolBar::addAction(
  self : Self,
  action : QAction,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_addAction(self, action)
}

///|
pub fn QToolBar::addActionWithIconText(
  self : Self,
  icon : QIcon,
  text : String,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_addActionWithIconText(self, icon, text)
}

///|
pub fn QToolBar::addActionWithText(
  self : Self,
  text : String,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_addActionWithText(self, text)
}

///|
pub fn QToolBar::addSeparator(self : Self) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_addSeparator(self)
}

///|
pub fn QToolBar::addWidget(
  self : Self,
  widget : &AsWidget,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_addWidget(self, widget.as_widget())
}

///|
pub fn QToolBar::allowedAreas(self : Self) -> ToolBarAreas raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_allowedAreas(self).to_flag()
}

///|
pub fn QToolBar::allowedAreasChanged(
  self : Self,
) -> Signal[QFlag] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_allowedAreasChanged(self)
}

///|
pub fn QToolBar::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_clear(self)
}

///|
pub fn QToolBar::iconSize(self : Self) -> QSize raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_iconSize(self)
}

///|
pub fn QToolBar::iconSizeChanged(
  self : Self,
) -> Signal[QSize] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_iconSizeChanged(self)
}

///|
pub fn QToolBar::insertSeparator(
  self : Self,
  before : QAction,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_insertSeparator(self, before)
}

///|
pub fn QToolBar::insertWidget(
  self : Self,
  before : QAction,
  widget : &AsWidget,
) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_insertWidget(self, before, widget.as_widget())
}

///|
pub fn QToolBar::isAreaAllowed(
  self : Self,
  area : ToolBarAreas,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_isAreaAllowed(self, area.to_flag())
}

///|
pub fn QToolBar::isFloatable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_isFloatable(self)
}

///|
pub fn QToolBar::isFloating(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_isFloating(self)
}

///|
pub fn QToolBar::isMovable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_isMovable(self)
}

///|
pub fn QToolBar::movableChanged(self : Self) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_movableChanged(self)
}

///|
pub fn QToolBar::orientation(self : Self) -> Orientation raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_orientation(self)
}

///|
pub fn QToolBar::orientationChanged(
  self : Self,
) -> Signal[Orientation] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_orientationChanged(self)
}

///|
pub fn QToolBar::removeAction(
  self : Self,
  action : QAction,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_removeAction(self, action)
}

///|
pub fn QToolBar::setAllowedAreas(
  self : Self,
  areas : ToolBarAreas,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setAllowedAreas(self, areas.to_flag())
}

///|
pub fn QToolBar::setFloatable(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setFloatable(self, value)
}

///|
pub fn QToolBar::setIconSize(
  self : Self,
  iconSize : QSize,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setIconSize(self, iconSize)
}

///|
pub fn QToolBar::setMovable(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setMovable(self, value)
}

///|
pub fn QToolBar::setOrientation(
  self : Self,
  orientation : Orientation,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setOrientation(self, orientation)
}

///|
pub fn QToolBar::setToolButtonStyle(
  self : Self,
  style : ToolButtonStyle,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_setToolButtonStyle(self, style)
}

///|
pub fn QToolBar::toggleViewAction(self : Self) -> QAction raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_toggleViewAction(self)
}

///|
pub fn QToolBar::toolButtonStyle(
  self : Self,
) -> ToolButtonStyle raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_toolButtonStyle(self)
}

///|
pub fn QToolBar::toolButtonStyleChanged(
  self : Self,
) -> Signal[ToolButtonStyle] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_toolButtonStyleChanged(self)
}

///|
pub fn QToolBar::topLevelChanged(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_topLevelChanged(self)
}

///|
pub fn QToolBar::visibilityChanged(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_visibilityChanged(self)
}

///|
pub fn QToolBar::widgetForAction(
  self : Self,
  action : QAction,
) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QToolBar_widgetForAction(self, action)
}

///|
pub impl AsObject for QToolBar with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QToolBar with as_widget(self) {
  _QToolBar_as_QWidget(self)
}
