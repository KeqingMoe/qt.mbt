///|
priv trait Any {}

///|
pub struct Itself[T](T)

///|
impl[T] Any for Itself[T]

///|
#external
pub type Signal[_]

///|
pub fn[A] Signal::connect(self : Self[A], slot : (A) -> Unit) -> Connection {
  QObject::connect(self, slot)
}

///|
#external
pub type Connection

///|
pub fn Connection::disconnect(self : Self) -> Bool {
  QObject::disconnect(self)
}

///|
pub extern "C" fn Connection::is_valid(self : Self) -> Bool = "Connection_is_valid"
