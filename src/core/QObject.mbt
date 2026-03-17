///|
pub type QObject

///|
#borrow(signal)
#owned(slot)
extern "C" fn _QObject_connect(signal : &Any, slot : &Any) -> Connection = "QObject_connect"

///|
#borrow(this)
extern "C" fn _QObject_disconnect(this : Connection) -> Bool = "QObject_disconnect"

///|
#borrow(this)
extern "C" fn _QObject_is_null(this : QObject) -> Bool = "QObject_is_null"

///|
pub(open) trait AsObject {
  as_object(Self) -> QObject
  is_null(Self) -> Bool = _
}

///|
impl AsObject with is_null(self) {
  _QObject_is_null(self.as_object())
}

///|
pub fn[T] QObject::connect(
  signal : Signal[T],
  slot : (T) -> Unit,
) -> Connection {
  _QObject_connect(Itself(signal), Itself(slot))
}

///|
pub fn QObject::disconnect(connection : Connection) -> Bool {
  _QObject_disconnect(connection)
}

///|
pub impl AsObject for QObject with as_object(self) {
  self
}
