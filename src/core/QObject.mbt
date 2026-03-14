///|
pub(open) trait AsObject {
  as_object(Self) -> QObject
}

///|
#external
pub type QObject

///|
#borrow(signal)
#owned(slot)
extern "C" fn _QObject_connect(signal : &Any, slot : &Any) -> Connection = "QObject_connect"

///|
pub fn[T] QObject::connect(
  signal : Signal[T],
  slot : (T) -> Unit,
) -> Connection {
  _QObject_connect(Itself(signal), Itself(slot))
}

///|
pub extern "C" fn QObject::disconnect(connection : Connection) -> Bool = "QObject_disconnect"

///|
pub impl AsObject for QObject with as_object(self) {
  self
}
