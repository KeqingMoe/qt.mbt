///|
pub type Signal[_]

///|
pub type Connection

///|
#borrow(this)
extern "C" fn _Connection_is_valid(this : Connection) -> Bool = "Connection_is_valid"

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
  _Connection_is_valid(self)
}
