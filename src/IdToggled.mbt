///|
pub type IdToggled

///|
extern "C" fn _IdToggled_new(id : Int, checked : Bool) -> IdToggled = "IdToggled_new"

///|
#borrow(this)
extern "C" fn _IdToggled_checked(this : IdToggled) -> Bool = "IdToggled_checked"

///|
#borrow(this)
extern "C" fn _IdToggled_id(this : IdToggled) -> Int = "IdToggled_id"

///|
pub fn IdToggled::new(id : Int, checked : Bool) -> Self {
  _IdToggled_new(id, checked)
}

///|
pub fn IdToggled::checked(self : Self) -> Bool {
  _IdToggled_checked(self)
}

///|
pub fn IdToggled::id(self : Self) -> Int {
  _IdToggled_id(self)
}
