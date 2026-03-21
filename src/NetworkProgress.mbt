///|
pub type NetworkProgress

///|
extern "C" fn _NetworkProgress_new(
  received : Int64,
  total : Int64,
) -> NetworkProgress = "NetworkProgress_new"

///|
#borrow(this)
extern "C" fn _NetworkProgress_received(this : NetworkProgress) -> Int64 = "NetworkProgress_received"

///|
#borrow(this)
extern "C" fn _NetworkProgress_total(this : NetworkProgress) -> Int64 = "NetworkProgress_total"

///|
pub fn NetworkProgress::new(current : Int64, total : Int64) -> Self {
  _NetworkProgress_new(current, total)
}

///|
pub fn NetworkProgress::received(self : Self) -> Int64 {
  _NetworkProgress_received(self)
}

///|
pub fn NetworkProgress::total(self : Self) -> Int64 {
  _NetworkProgress_total(self)
}
