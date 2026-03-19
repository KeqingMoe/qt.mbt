///|
pub type QSizePolicy

///|
extern "C" fn _QSizePolicy_new(
  horizontal : Policy,
  vertical : Policy,
) -> QSizePolicy = "QSizePolicy_new"

///|
#borrow(this)
extern "C" fn _QSizePolicy_controlTypes(this : QSizePolicy) -> QFlag = "QSizePolicy_controlTypes"

///|
#borrow(this)
extern "C" fn _QSizePolicy_hasHeightForWidth(this : QSizePolicy) -> Bool = "QSizePolicy_hasHeightForWidth"

///|
#borrow(this)
extern "C" fn _QSizePolicy_hasWidthForHeight(this : QSizePolicy) -> Bool = "QSizePolicy_hasWidthForHeight"

///|
#borrow(this)
extern "C" fn _QSizePolicy_horizontalPolicy(this : QSizePolicy) -> Policy = "QSizePolicy_horizontalPolicy"

///|
#borrow(this)
extern "C" fn _QSizePolicy_horizontalStretch(this : QSizePolicy) -> Int = "QSizePolicy_horizontalStretch"

///|
#borrow(this)
extern "C" fn _QSizePolicy_retainSizeWhenHidden(this : QSizePolicy) -> Bool = "QSizePolicy_retainSizeWhenHidden"

///|
#borrow(this, controlType)
extern "C" fn _QSizePolicy_setControlTypes(
  this : QSizePolicy,
  controlType : QFlag,
) = "QSizePolicy_setControlTypes"

///|
#borrow(this, value)
extern "C" fn _QSizePolicy_setHeightForWidth(this : QSizePolicy, value : Bool) = "QSizePolicy_setHeightForWidth"

///|
#borrow(this, policy)
extern "C" fn _QSizePolicy_setHorizontalPolicy(
  this : QSizePolicy,
  policy : Policy,
) = "QSizePolicy_setHorizontalPolicy"

///|
#borrow(this, stretch)
extern "C" fn _QSizePolicy_setHorizontalStretch(
  this : QSizePolicy,
  stretch : Int,
) = "QSizePolicy_setHorizontalStretch"

///|
#borrow(this, value)
extern "C" fn _QSizePolicy_setRetainSizeWhenHidden(
  this : QSizePolicy,
  value : Bool,
) = "QSizePolicy_setRetainSizeWhenHidden"

///|
#borrow(this, policy)
extern "C" fn _QSizePolicy_setVerticalPolicy(
  this : QSizePolicy,
  policy : Policy,
) = "QSizePolicy_setVerticalPolicy"

///|
#borrow(this, stretch)
extern "C" fn _QSizePolicy_setVerticalStretch(
  this : QSizePolicy,
  stretch : Int,
) = "QSizePolicy_setVerticalStretch"

///|
#borrow(this)
extern "C" fn _QSizePolicy_transpose(this : QSizePolicy) = "QSizePolicy_transpose"

///|
#borrow(this)
extern "C" fn _QSizePolicy_transposed(this : QSizePolicy) -> QSizePolicy = "QSizePolicy_transposed"

///|
#borrow(this)
extern "C" fn _QSizePolicy_verticalPolicy(this : QSizePolicy) -> Policy = "QSizePolicy_verticalPolicy"

///|
#borrow(this)
extern "C" fn _QSizePolicy_verticalStretch(this : QSizePolicy) -> Int = "QSizePolicy_verticalStretch"

///|
pub fn QSizePolicy::new(horizontal : Policy, vertical : Policy) -> Self {
  _QSizePolicy_new(horizontal, vertical)
}

///|
pub fn QSizePolicy::controlTypes(self : Self) -> ControlTypes {
  _QSizePolicy_controlTypes(self).to_flag()
}

///|
pub fn QSizePolicy::hasHeightForWidth(self : Self) -> Bool {
  _QSizePolicy_hasHeightForWidth(self)
}

///|
pub fn QSizePolicy::hasWidthForHeight(self : Self) -> Bool {
  _QSizePolicy_hasWidthForHeight(self)
}

///|
pub fn QSizePolicy::horizontalPolicy(self : Self) -> Policy {
  _QSizePolicy_horizontalPolicy(self)
}

///|
pub fn QSizePolicy::horizontalStretch(self : Self) -> Int {
  _QSizePolicy_horizontalStretch(self)
}

///|
pub fn QSizePolicy::retainSizeWhenHidden(self : Self) -> Bool {
  _QSizePolicy_retainSizeWhenHidden(self)
}

///|
pub fn QSizePolicy::setControlTypes(
  self : Self,
  controlType : ControlTypes,
) -> Unit {
  _QSizePolicy_setControlTypes(self, controlType.to_flag())
}

///|
pub fn QSizePolicy::setHeightForWidth(self : Self, value : Bool) -> Unit {
  _QSizePolicy_setHeightForWidth(self, value)
}

///|
pub fn QSizePolicy::setHorizontalPolicy(self : Self, policy : Policy) -> Unit {
  _QSizePolicy_setHorizontalPolicy(self, policy)
}

///|
pub fn QSizePolicy::setHorizontalStretch(self : Self, stretch : Int) -> Unit {
  _QSizePolicy_setHorizontalStretch(self, stretch)
}

///|
pub fn QSizePolicy::setRetainSizeWhenHidden(self : Self, value : Bool) -> Unit {
  _QSizePolicy_setRetainSizeWhenHidden(self, value)
}

///|
pub fn QSizePolicy::setVerticalPolicy(self : Self, policy : Policy) -> Unit {
  _QSizePolicy_setVerticalPolicy(self, policy)
}

///|
pub fn QSizePolicy::setVerticalStretch(self : Self, stretch : Int) -> Unit {
  _QSizePolicy_setVerticalStretch(self, stretch)
}

///|
pub fn QSizePolicy::transpose(self : Self) -> Unit {
  _QSizePolicy_transpose(self)
}

///|
pub fn QSizePolicy::transposed(self : Self) -> Self {
  _QSizePolicy_transposed(self)
}

///|
pub fn QSizePolicy::verticalPolicy(self : Self) -> Policy {
  _QSizePolicy_verticalPolicy(self)
}

///|
pub fn QSizePolicy::verticalStretch(self : Self) -> Int {
  _QSizePolicy_verticalStretch(self)
}
