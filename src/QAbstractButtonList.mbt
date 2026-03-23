///|
priv type QAbstractButtonList

///|
#borrow(this)
extern "C" fn _QAbstractButtonList_get(
  this : QAbstractButtonList,
  index : Int,
) -> QAbstractButton = "QAbstractButtonList_get"

///|
#borrow(this)
extern "C" fn _QAbstractButtonList_length(this : QAbstractButtonList) -> Int = "QAbstractButtonList_length"

///|
fn QAbstractButtonList::get(self : Self, index : Int) -> QAbstractButton {
  _QAbstractButtonList_get(self, index)
}

///|
fn QAbstractButtonList::length(self : Self) -> Int {
  _QAbstractButtonList_length(self)
}

///|
fn QAbstractButtonList::to_array(self : Self) -> Array[QAbstractButton] {
  let length = self.length()
  let res = Array::new(capacity=length)
  for i in 0..<length {
    res.push(self.get(i))
  }
  res
}
