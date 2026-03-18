///|
pub type QLayout

///|
pub enum SizeConstraint {
  SetDefaultConstraint = 0
  SetNoConstraint = 1
  SetMinimumSize = 2
  SetFixedSize = 3
  SetMaximumSize = 4
  SetMinAndMaxSize = 5
}

///|
#borrow(this, widget)
extern "C" fn _QLayout_addWidget(this : QLayout, widget : QWidget) = "QLayout_addWidget"

///|
#borrow(this)
extern "C" fn _QLayout_count(this : QLayout) -> Int = "QLayout_count"

///|
#borrow(this, widget)
extern "C" fn _QLayout_indexOf(this : QLayout, widget : QWidget) -> Int = "QLayout_indexOf"

///|
#borrow(this)
extern "C" fn _QLayout_isEnabled(this : QLayout) -> Bool = "QLayout_isEnabled"

///|
#borrow(this, widget)
extern "C" fn _QLayout_removeWidget(this : QLayout, widget : QWidget) = "QLayout_removeWidget"

///|
#borrow(this, left, top, right, bottom)
extern "C" fn _QLayout_setContentsMargins(
  this : QLayout,
  left : Int,
  top : Int,
  right : Int,
  bottom : Int,
) = "QLayout_setContentsMargins"

///|
#borrow(this, value)
extern "C" fn _QLayout_setEnabled(this : QLayout, value : Bool) = "QLayout_setEnabled"

///|
#borrow(this, spacing)
extern "C" fn _QLayout_setSpacing(this : QLayout, spacing : Int) = "QLayout_setSpacing"

///|
#borrow(this, constraint)
extern "C" fn _QLayout_setSizeConstraint(
  this : QLayout,
  constraint : SizeConstraint,
) = "QLayout_setSizeConstraint"

///|
#borrow(this)
extern "C" fn _QLayout_sizeConstraint(this : QLayout) -> SizeConstraint = "QLayout_sizeConstraint"

///|
#borrow(this)
extern "C" fn _QLayout_spacing(this : QLayout) -> Int = "QLayout_spacing"

///|
#borrow(this)
extern "C" fn _QLayout_unsetContentsMargins(this : QLayout) = "QLayout_unsetContentsMargins"

///|
#borrow(this)
extern "C" fn _QLayout_update(this : QLayout) = "QLayout_update"

///|
#borrow(this)
extern "C" fn _QLayout_as_QObject(this : QLayout) -> QObject = "QLayout_as_QObject"

///|
pub(open) trait AsLayout: AsObject {
  as_layout(Self) -> QLayout
  addWidget(Self, widget : &AsWidget) -> Unit = _
  count(Self) -> Int = _
  indexOf(Self, widget : &AsWidget) -> Int = _
  isEnabled(Self) -> Bool = _
  removeWidget(Self, widget : &AsWidget) -> Unit = _
  setContentsMargins(Self, left : Int, top : Int, right : Int, bottom : Int) -> Unit = _
  setEnabled(Self, value : Bool) -> Unit = _
  setSizeConstraint(Self, constraint : SizeConstraint) -> Unit = _
  setSpacing(Self, spacing : Int) -> Unit = _
  sizeConstraint(Self) -> SizeConstraint = _
  spacing(Self) -> Int = _
  unsetContentsMargins(Self) -> Unit = _
  update(Self) -> Unit = _
}

///|
impl AsLayout with addWidget(self, widget) {
  _QLayout_addWidget(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with count(self) {
  _QLayout_count(self.as_layout())
}

///|
impl AsLayout with indexOf(self, widget) {
  _QLayout_indexOf(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with isEnabled(self) {
  _QLayout_isEnabled(self.as_layout())
}

///|
impl AsLayout with removeWidget(self, widget) {
  _QLayout_removeWidget(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with setContentsMargins(self, left, top, right, bottom) {
  _QLayout_setContentsMargins(self.as_layout(), left, top, right, bottom)
}

///|
impl AsLayout with setEnabled(self, value) {
  _QLayout_setEnabled(self.as_layout(), value)
}

///|
impl AsLayout with setSizeConstraint(self, constraint) {
  _QLayout_setSizeConstraint(self.as_layout(), constraint)
}

///|
impl AsLayout with setSpacing(self, spacing) {
  _QLayout_setSpacing(self.as_layout(), spacing)
}

///|
impl AsLayout with sizeConstraint(self) {
  _QLayout_sizeConstraint(self.as_layout())
}

///|
impl AsLayout with spacing(self) {
  _QLayout_spacing(self.as_layout())
}

///|
impl AsLayout with unsetContentsMargins(self) {
  _QLayout_unsetContentsMargins(self.as_layout())
}

///|
impl AsLayout with update(self) {
  _QLayout_update(self.as_layout())
}

///|
pub impl AsObject for QLayout with as_object(self) {
  _QLayout_as_QObject(self)
}

///|
pub impl AsLayout for QLayout with as_layout(self) {
  self
}
