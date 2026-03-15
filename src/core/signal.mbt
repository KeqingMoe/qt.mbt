///|
pub(all) struct Signal[A](@ffi.Signal[A])

///|
pub struct Connection(@ffi.Connection)

///|
pub fn[A] Signal::connect(self : Self[A], slot : (A) -> Unit) -> Connection {
  QObject::connect(self, slot)
}

///|
pub fn Connection::disconnect(self : Self) -> Bool {
  QObject::disconnect(self)
}

///|
pub fn Connection::is_valid(self : Self) -> Bool {
  @ffi._Connection_is_valid(self.0)
}
