///|
pub(open) trait Any {}

///|
pub struct Itself[T](T)

///|
pub impl[T] Any for Itself[T]
