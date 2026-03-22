///|
priv type IntList

///|
#borrow(this)
extern "C" fn _IntList_get(this : IntList, index : Int) -> Int = "IntList_get"

///|
#borrow(this)
extern "C" fn _IntList_length(this : IntList) -> Int = "IntList_length"

///|
fn IntList::get(self : Self, index : Int) -> Int {
  _IntList_get(self, index)
}

///|
fn IntList::length(self : Self) -> Int {
  _IntList_length(self)
}

///|
fn IntList::to_array(self : Self) -> Array[Int] {
  let length = self.length()
  let res = Array::new(capacity=length)
  for i in 0..<length {
    res.push(self.get(i))
  }
  res
}
