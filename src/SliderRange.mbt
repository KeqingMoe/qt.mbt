///|
pub type SliderRange

///|
extern "C" fn _SliderRange_new(min : Int, max : Int) -> SliderRange = "SliderRange_new"

///|
#borrow(this)
extern "C" fn _SliderRange_max(this : SliderRange) -> Int = "SliderRange_max"

///|
#borrow(this)
extern "C" fn _SliderRange_min(this : SliderRange) -> Int = "SliderRange_min"

///|
pub fn SliderRange::new(min : Int, max : Int) -> Self {
  _SliderRange_new(min, max)
}

///|
pub fn SliderRange::max(self : Self) -> Int {
  _SliderRange_max(self)
}

///|
pub fn SliderRange::min(self : Self) -> Int {
  _SliderRange_min(self)
}
