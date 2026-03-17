///|
pub(open) trait AsObject {
  as_object(Self) -> QObject
  is_null(Self) -> Bool = _
}

///|
impl AsObject with is_null(self) {
  @ffi._QObject_is_null(self.as_object().0)
}

///|
pub(all) struct QObject(@ffi.QObject)

///|
pub fn[T] QObject::connect(
  signal : Signal[T],
  slot : (T) -> Unit,
) -> Connection {
  @ffi._QObject_connect(@ffi.Itself(signal.0), @ffi.Itself(slot))
}

///|
pub fn QObject::disconnect(connection : Connection) -> Bool {
  @ffi._QObject_disconnect(connection.0)
}

///|
pub impl AsObject for QObject with as_object(self) {
  self
}
