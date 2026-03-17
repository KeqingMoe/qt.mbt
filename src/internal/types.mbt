///|
pub(open) trait Any {}

///|
pub(all) struct Itself[T](T)

///|
pub impl[T] Any for Itself[T]
