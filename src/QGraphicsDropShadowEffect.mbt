///|
pub type QGraphicsDropShadowEffect

///|
extern "C" fn _QGraphicsDropShadowEffect_new() -> QGraphicsDropShadowEffect = "QGraphicsDropShadowEffect_new"

///|
#borrow(parent)
extern "C" fn _QGraphicsDropShadowEffect_newWithParent(
  parent : QObject,
) -> QGraphicsDropShadowEffect = "QGraphicsDropShadowEffect_newWithParent"

///|
#borrow(this, radius)
extern "C" fn _QGraphicsDropShadowEffect_setBlurRadius(
  this : QGraphicsDropShadowEffect,
  radius : Double,
) = "QGraphicsDropShadowEffect_setBlurRadius"

///|
#borrow(this, color)
extern "C" fn _QGraphicsDropShadowEffect_setColor(
  this : QGraphicsDropShadowEffect,
  color : QColor,
) = "QGraphicsDropShadowEffect_setColor"

///|
#borrow(this, dx, dy)
extern "C" fn _QGraphicsDropShadowEffect_setOffset(
  this : QGraphicsDropShadowEffect,
  dx : Double,
  dy : Double,
) = "QGraphicsDropShadowEffect_setOffset"

///|
#borrow(this)
extern "C" fn _QGraphicsDropShadowEffect_as_QGraphicsEffect(
  this : QGraphicsDropShadowEffect,
) -> QGraphicsEffect = "QGraphicsDropShadowEffect_as_QGraphicsEffect"

///|
pub fn QGraphicsDropShadowEffect::new() -> Self {
  _QGraphicsDropShadowEffect_new()
}

///|
pub fn QGraphicsDropShadowEffect::newWithParent(parent : &AsObject) -> Self {
  _QGraphicsDropShadowEffect_newWithParent(parent.as_object())
}

///|
pub fn QGraphicsDropShadowEffect::setBlurRadius(
  self : Self,
  radius : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsDropShadowEffect_setBlurRadius(self, radius)
}

///|
pub fn QGraphicsDropShadowEffect::setColor(
  self : Self,
  color : QColor,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsDropShadowEffect_setColor(self, color)
}

///|
pub fn QGraphicsDropShadowEffect::setOffset(
  self : Self,
  dx : Double,
  dy : Double,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGraphicsDropShadowEffect_setOffset(self, dx, dy)
}

///|
pub impl AsObject for QGraphicsDropShadowEffect with as_object(self) {
  self.as_graphics_effect().as_object()
}

///|
pub impl AsGraphicsEffect for QGraphicsDropShadowEffect with as_graphics_effect(
  self,
) {
  _QGraphicsDropShadowEffect_as_QGraphicsEffect(self)
}
