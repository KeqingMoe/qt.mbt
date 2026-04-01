///|
pub type QGraphicsEffect

///|
#borrow(this)
extern "C" fn _QGraphicsEffect_as_QObject(this : QGraphicsEffect) -> QObject = "QGraphicsEffect_as_QObject"

///|
pub(open) trait AsGraphicsEffect: AsObject {
  as_graphics_effect(Self) -> QGraphicsEffect
}

///|
pub impl AsObject for QGraphicsEffect with as_object(self) {
  _QGraphicsEffect_as_QObject(self)
}

///|
pub impl AsGraphicsEffect for QGraphicsEffect with as_graphics_effect(self) {
  self
}
