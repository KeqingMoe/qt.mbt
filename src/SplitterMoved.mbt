///|
pub type SplitterMoved

///|
extern "C" fn _SplitterMoved_new(position : Int, index : Int) -> SplitterMoved = "SplitterMoved_new"

///|
#borrow(this)
extern "C" fn _SplitterMoved_index(this : SplitterMoved) -> Int = "SplitterMoved_index"

///|
#borrow(this)
extern "C" fn _SplitterMoved_position(this : SplitterMoved) -> Int = "SplitterMoved_position"

///|
pub fn SplitterMoved::new(position : Int, index : Int) -> Self {
  _SplitterMoved_new(position, index)
}

///|
pub fn SplitterMoved::index(self : Self) -> Int {
  _SplitterMoved_index(self)
}

///|
pub fn SplitterMoved::position(self : Self) -> Int {
  _SplitterMoved_position(self)
}
