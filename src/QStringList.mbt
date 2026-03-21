///|
priv type QStringList

///|
#borrow(this)
extern "C" fn _QStringList_get(this : QStringList, index : Int) -> String = "QStringList_get"

///|
#borrow(this)
extern "C" fn _QStringList_length(this : QStringList) -> Int = "QStringList_length"

///|
fn QStringList::get(self : Self, index : Int) -> String {
  _QStringList_get(self, index)
}

///|
fn QStringList::length(self : Self) -> Int {
  _QStringList_length(self)
}

///|
fn QStringList::to_array(self : Self) -> Array[String] {
  let length = self.length()
  let res = Array::new(capacity=length)
  for i in 0..<length {
    res.push(self.get(i))
  }
  res
}
