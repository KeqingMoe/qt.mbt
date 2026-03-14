///|
pub(open) trait AsObject {
  as_object(Self) -> QObject
}

///|
#external
pub type QObject

///|
pub impl AsObject for QObject with as_object(self) {
  self
}
