///|
pub type QAction

///|
extern "C" fn _QAction_new() -> QAction = "QAction_new"

///|
#borrow(parent)
extern "C" fn _QAction_newWithParent(parent : QObject) -> QAction = "QAction_newWithParent"

///|
#borrow(text, parent)
extern "C" fn _QAction_newWithText(text : String, parent : QObject) -> QAction = "QAction_newWithText"

///|
#borrow(icon, text, parent)
extern "C" fn _QAction_newWithIconText(
  icon : QIcon,
  text : String,
  parent : QObject,
) -> QAction = "QAction_newWithIconText"

///|
#borrow(this)
extern "C" fn _QAction_as_QObject(this : QAction) -> QObject = "QAction_as_QObject"

///|
#borrow(this)
extern "C" fn _QAction_autoRepeat(this : QAction) -> Bool = "QAction_autoRepeat"

///|
#borrow(this)
extern "C" fn _QAction_checkableChanged(this : QAction) -> Signal[Bool] = "QAction_checkableChanged"

///|
#borrow(this)
extern "C" fn _QAction_changed(this : QAction) -> Signal[Unit] = "QAction_changed"

///|
#borrow(this)
extern "C" fn _QAction_hover(this : QAction) = "QAction_hover"

///|
#borrow(this)
extern "C" fn _QAction_hovered(this : QAction) -> Signal[Unit] = "QAction_hovered"

///|
#borrow(this)
extern "C" fn _QAction_enabledChanged(this : QAction) -> Signal[Bool] = "QAction_enabledChanged"

///|
#borrow(this)
extern "C" fn _QAction_icon(this : QAction) -> QIcon = "QAction_icon"

///|
#borrow(this)
extern "C" fn _QAction_iconText(this : QAction) -> String = "QAction_iconText"

///|
#borrow(this)
extern "C" fn _QAction_isCheckable(this : QAction) -> Bool = "QAction_isCheckable"

///|
#borrow(this)
extern "C" fn _QAction_isChecked(this : QAction) -> Bool = "QAction_isChecked"

///|
#borrow(this)
extern "C" fn _QAction_isEnabled(this : QAction) -> Bool = "QAction_isEnabled"

///|
#borrow(this)
extern "C" fn _QAction_isIconVisibleInMenu(this : QAction) -> Bool = "QAction_isIconVisibleInMenu"

///|
#borrow(this)
extern "C" fn _QAction_isSeparator(this : QAction) -> Bool = "QAction_isSeparator"

///|
#borrow(this)
extern "C" fn _QAction_isVisible(this : QAction) -> Bool = "QAction_isVisible"

///|
#borrow(this)
extern "C" fn _QAction_menuRole(this : QAction) -> ActionMenuRole = "QAction_menuRole"

///|
#borrow(this)
extern "C" fn _QAction_priority(this : QAction) -> ActionPriority = "QAction_priority"

///|
#borrow(this, value)
extern "C" fn _QAction_setAutoRepeat(this : QAction, value : Bool) = "QAction_setAutoRepeat"

///|
#borrow(this, value)
extern "C" fn _QAction_setCheckable(this : QAction, value : Bool) = "QAction_setCheckable"

///|
#borrow(this, value)
extern "C" fn _QAction_setChecked(this : QAction, value : Bool) = "QAction_setChecked"

///|
#borrow(this, value)
extern "C" fn _QAction_setEnabled(this : QAction, value : Bool) = "QAction_setEnabled"

///|
#borrow(this, icon)
extern "C" fn _QAction_setIcon(this : QAction, icon : QIcon) = "QAction_setIcon"

///|
#borrow(this, text)
extern "C" fn _QAction_setIconText(this : QAction, text : String) = "QAction_setIconText"

///|
#borrow(this, value)
extern "C" fn _QAction_setIconVisibleInMenu(this : QAction, value : Bool) = "QAction_setIconVisibleInMenu"

///|
#borrow(this, role)
extern "C" fn _QAction_setMenuRole(this : QAction, role : ActionMenuRole) = "QAction_setMenuRole"

///|
#borrow(this, priority)
extern "C" fn _QAction_setPriority(this : QAction, priority : ActionPriority) = "QAction_setPriority"

///|
#borrow(this, value)
extern "C" fn _QAction_setSeparator(this : QAction, value : Bool) = "QAction_setSeparator"

///|
#borrow(this, statusTip)
extern "C" fn _QAction_setStatusTip(this : QAction, statusTip : String) = "QAction_setStatusTip"

///|
#borrow(this, text)
extern "C" fn _QAction_setText(this : QAction, text : String) = "QAction_setText"

///|
#borrow(this, toolTip)
extern "C" fn _QAction_setToolTip(this : QAction, toolTip : String) = "QAction_setToolTip"

///|
#borrow(this, value)
extern "C" fn _QAction_setVisible(this : QAction, value : Bool) = "QAction_setVisible"

///|
#borrow(this, whatsThis)
extern "C" fn _QAction_setWhatsThis(this : QAction, whatsThis : String) = "QAction_setWhatsThis"

///|
#borrow(this)
extern "C" fn _QAction_statusTip(this : QAction) -> String = "QAction_statusTip"

///|
#borrow(this)
extern "C" fn _QAction_text(this : QAction) -> String = "QAction_text"

///|
#borrow(this)
extern "C" fn _QAction_toggle(this : QAction) = "QAction_toggle"

///|
#borrow(this)
extern "C" fn _QAction_toggled(this : QAction) -> Signal[Bool] = "QAction_toggled"

///|
#borrow(this)
extern "C" fn _QAction_toolTip(this : QAction) -> String = "QAction_toolTip"

///|
#borrow(this)
extern "C" fn _QAction_trigger(this : QAction) = "QAction_trigger"

///|
#borrow(this)
extern "C" fn _QAction_triggered(this : QAction) -> Signal[Bool] = "QAction_triggered"

///|
#borrow(this)
extern "C" fn _QAction_visibleChanged(this : QAction) -> Signal[Unit] = "QAction_visibleChanged"

///|
#borrow(this)
extern "C" fn _QAction_whatsThis(this : QAction) -> String = "QAction_whatsThis"

///|
pub fn QAction::new() -> Self {
  _QAction_new()
}

///|
pub fn QAction::newWithIconText(
  icon : QIcon,
  text : String,
  parent : &AsObject,
) -> Self {
  _QAction_newWithIconText(icon, text, parent.as_object())
}

///|
pub fn QAction::newWithParent(parent : &AsObject) -> Self {
  _QAction_newWithParent(parent.as_object())
}

///|
pub fn QAction::newWithText(text : String, parent : &AsObject) -> Self {
  _QAction_newWithText(text, parent.as_object())
}

///|
pub fn QAction::autoRepeat(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_autoRepeat(self)
}

///|
pub fn QAction::changed(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_changed(self)
}

///|
pub fn QAction::checkableChanged(
  self : Self,
) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_checkableChanged(self)
}

///|
pub fn QAction::enabledChanged(self : Self) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_enabledChanged(self)
}

///|
pub fn QAction::hover(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_hover(self)
}

///|
pub fn QAction::hovered(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_hovered(self)
}

///|
pub fn QAction::icon(self : Self) -> QIcon raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_icon(self)
}

///|
pub fn QAction::iconText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_iconText(self)
}

///|
pub fn QAction::isCheckable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isCheckable(self)
}

///|
pub fn QAction::isChecked(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isChecked(self)
}

///|
pub fn QAction::isEnabled(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isEnabled(self)
}

///|
pub fn QAction::isIconVisibleInMenu(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isIconVisibleInMenu(self)
}

///|
pub fn QAction::isSeparator(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isSeparator(self)
}

///|
pub fn QAction::isVisible(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_isVisible(self)
}

///|
pub fn QAction::menuRole(self : Self) -> ActionMenuRole raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_menuRole(self)
}

///|
pub fn QAction::priority(self : Self) -> ActionPriority raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_priority(self)
}

///|
pub fn QAction::setAutoRepeat(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setAutoRepeat(self, value)
}

///|
pub fn QAction::setCheckable(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setCheckable(self, value)
}

///|
pub fn QAction::setChecked(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setChecked(self, value)
}

///|
pub fn QAction::setEnabled(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setEnabled(self, value)
}

///|
pub fn QAction::setIcon(self : Self, icon : QIcon) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setIcon(self, icon)
}

///|
pub fn QAction::setIconText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setIconText(self, text)
}

///|
pub fn QAction::setIconVisibleInMenu(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setIconVisibleInMenu(self, value)
}

///|
pub fn QAction::setMenuRole(
  self : Self,
  role : ActionMenuRole,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setMenuRole(self, role)
}

///|
pub fn QAction::setPriority(
  self : Self,
  priority : ActionPriority,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setPriority(self, priority)
}

///|
pub fn QAction::setSeparator(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setSeparator(self, value)
}

///|
pub fn QAction::setStatusTip(
  self : Self,
  statusTip : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setStatusTip(self, statusTip)
}

///|
pub fn QAction::setText(self : Self, text : String) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setText(self, text)
}

///|
pub fn QAction::setToolTip(
  self : Self,
  toolTip : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setToolTip(self, toolTip)
}

///|
pub fn QAction::setVisible(
  self : Self,
  value : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setVisible(self, value)
}

///|
pub fn QAction::setWhatsThis(
  self : Self,
  whatsThis : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_setWhatsThis(self, whatsThis)
}

///|
pub fn QAction::statusTip(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_statusTip(self)
}

///|
pub fn QAction::text(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_text(self)
}

///|
pub fn QAction::toggle(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_toggle(self)
}

///|
pub fn QAction::toggled(self : Self) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_toggled(self)
}

///|
pub fn QAction::toolTip(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_toolTip(self)
}

///|
pub fn QAction::trigger(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_trigger(self)
}

///|
pub fn QAction::triggered(self : Self) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_triggered(self)
}

///|
pub fn QAction::visibleChanged(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_visibleChanged(self)
}

///|
pub fn QAction::whatsThis(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QAction_whatsThis(self)
}

///|
pub impl AsObject for QAction with as_object(self) {
  _QAction_as_QObject(self)
}
