///|
pub type QToolButton

///|
extern "C" fn _QToolButton_new() -> QToolButton = "QToolButton_new"

///|
#borrow(this)
extern "C" fn _QToolButton_autoRaise(this : QToolButton) -> Bool = "QToolButton_autoRaise"

///|
#borrow(this)
extern "C" fn _QToolButton_popupMode(this : QToolButton) -> ToolButtonPopupMode = "QToolButton_popupMode"

///|
#borrow(this, autoRaise)
extern "C" fn _QToolButton_setAutoRaise(this : QToolButton, autoRaise : Bool) = "QToolButton_setAutoRaise"

///|
#borrow(this, popupMode)
extern "C" fn _QToolButton_setPopupMode(
  this : QToolButton,
  popupMode : ToolButtonPopupMode,
) = "QToolButton_setPopupMode"

///|
#borrow(this, style)
extern "C" fn _QToolButton_setToolButtonStyle(
  this : QToolButton,
  style : ToolButtonStyle,
) = "QToolButton_setToolButtonStyle"

///|
#borrow(this)
extern "C" fn _QToolButton_toolButtonStyle(
  this : QToolButton,
) -> ToolButtonStyle = "QToolButton_toolButtonStyle"

///|
#borrow(this)
extern "C" fn _QToolButton_as_QAbstractButton(
  this : QToolButton,
) -> QAbstractButton = "QToolButton_as_QAbstractButton"

///|
pub fn QToolButton::new() -> Self {
  _QToolButton_new()
}

///|
pub fn QToolButton::autoRaise(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_autoRaise(self)
}

///|
pub fn QToolButton::popupMode(
  self : Self,
) -> ToolButtonPopupMode raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_popupMode(self)
}

///|
pub fn QToolButton::setAutoRaise(
  self : Self,
  autoRaise : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_setAutoRaise(self, autoRaise)
}

///|
pub fn QToolButton::setPopupMode(
  self : Self,
  popupMode : ToolButtonPopupMode,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_setPopupMode(self, popupMode)
}

///|
pub fn QToolButton::setToolButtonStyle(
  self : Self,
  style : ToolButtonStyle,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_setToolButtonStyle(self, style)
}

///|
pub fn QToolButton::toolButtonStyle(
  self : Self,
) -> ToolButtonStyle raise NullptrError {
  ensure_not_nullptr(self)
  _QToolButton_toolButtonStyle(self)
}

///|
pub impl AsObject for QToolButton with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QToolButton with as_widget(self) {
  self.as_abstract_button().as_widget()
}

///|
pub impl AsAbstractButton for QToolButton with as_abstract_button(self) {
  _QToolButton_as_QAbstractButton(self)
}
