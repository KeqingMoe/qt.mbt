///|
pub type QObject

///|
#borrow(signal)
#owned(slot)
pub extern "C" fn _QObject_connect(signal : &Any, slot : &Any) -> Connection = "QObject_connect"

///|
#borrow(this)
pub extern "C" fn _QObject_disconnect(this : Connection) -> Bool = "QObject_disconnect"
