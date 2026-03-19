///|
pub type QLayout

///|
#borrow(this, widget)
extern "C" fn _QLayout_addWidget(this : QLayout, widget : QWidget) = "QLayout_addWidget"

///|
#borrow(this)
extern "C" fn _QLayout_controlTypes(this : QLayout) -> QFlag = "QLayout_controlTypes"

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
#borrow(this, layout, alignment)
extern "C" fn _QLayout_setLayoutAlignment(
  this : QLayout,
  layout : QLayout,
  alignment : QFlag,
) -> Bool = "QLayout_setLayoutAlignment"

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
#borrow(this, widget, alignment)
extern "C" fn _QLayout_setAlignment(
  this : QLayout,
  widget : QWidget,
  alignment : QFlag,
) -> Bool = "QLayout_setAlignment"

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
  addWidget(Self, widget : &AsWidget) -> Unit raise NullptrError = _
  controlTypes(Self) -> ControlTypes raise NullptrError = _
  count(Self) -> Int raise NullptrError = _
  indexOf(Self, widget : &AsWidget) -> Int raise NullptrError = _
  isEnabled(Self) -> Bool raise NullptrError = _
  removeWidget(Self, widget : &AsWidget) -> Unit raise NullptrError = _
  setAlignment(Self, widget : &AsWidget, alignment : Alignment) -> Bool raise NullptrError = _
  setContentsMargins(Self, left : Int, top : Int, right : Int, bottom : Int) -> Unit raise NullptrError = _
  setEnabled(Self, value : Bool) -> Unit raise NullptrError = _
  setLayoutAlignment(Self, layout : &AsLayout, alignment : Alignment) -> Bool raise NullptrError = _
  setSizeConstraint(Self, constraint : SizeConstraint) -> Unit raise NullptrError = _
  setSpacing(Self, spacing : Int) -> Unit raise NullptrError = _
  sizeConstraint(Self) -> SizeConstraint raise NullptrError = _
  spacing(Self) -> Int raise NullptrError = _
  unsetContentsMargins(Self) -> Unit raise NullptrError = _
  update(Self) -> Unit raise NullptrError = _
}

///|
impl AsLayout with addWidget(self, widget) {
  ensure_not_nullptr(self)
  _QLayout_addWidget(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with controlTypes(self) {
  ensure_not_nullptr(self)
  _QLayout_controlTypes(self.as_layout()).to_flag()
}

///|
impl AsLayout with count(self) {
  ensure_not_nullptr(self)
  _QLayout_count(self.as_layout())
}

///|
impl AsLayout with indexOf(self, widget) {
  ensure_not_nullptr(self)
  _QLayout_indexOf(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with isEnabled(self) {
  ensure_not_nullptr(self)
  _QLayout_isEnabled(self.as_layout())
}

///|
impl AsLayout with removeWidget(self, widget) {
  ensure_not_nullptr(self)
  _QLayout_removeWidget(self.as_layout(), widget.as_widget())
}

///|
impl AsLayout with setAlignment(self, widget, alignment) {
  ensure_not_nullptr(self)
  _QLayout_setAlignment(
    self.as_layout(),
    widget.as_widget(),
    alignment.to_flag(),
  )
}

///|
impl AsLayout with setContentsMargins(self, left, top, right, bottom) {
  ensure_not_nullptr(self)
  _QLayout_setContentsMargins(self.as_layout(), left, top, right, bottom)
}

///|
impl AsLayout with setEnabled(self, value) {
  ensure_not_nullptr(self)
  _QLayout_setEnabled(self.as_layout(), value)
}

///|
impl AsLayout with setLayoutAlignment(self, layout, alignment) {
  ensure_not_nullptr(self)
  _QLayout_setLayoutAlignment(
    self.as_layout(),
    layout.as_layout(),
    alignment.to_flag(),
  )
}

///|
impl AsLayout with setSizeConstraint(self, constraint) {
  ensure_not_nullptr(self)
  _QLayout_setSizeConstraint(self.as_layout(), constraint)
}

///|
impl AsLayout with setSpacing(self, spacing) {
  ensure_not_nullptr(self)
  _QLayout_setSpacing(self.as_layout(), spacing)
}

///|
impl AsLayout with sizeConstraint(self) {
  ensure_not_nullptr(self)
  _QLayout_sizeConstraint(self.as_layout())
}

///|
impl AsLayout with spacing(self) {
  ensure_not_nullptr(self)
  _QLayout_spacing(self.as_layout())
}

///|
impl AsLayout with unsetContentsMargins(self) {
  ensure_not_nullptr(self)
  _QLayout_unsetContentsMargins(self.as_layout())
}

///|
impl AsLayout with update(self) {
  ensure_not_nullptr(self)
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
