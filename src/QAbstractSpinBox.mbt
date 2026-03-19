///|
pub type QAbstractSpinBox

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_buttonSymbols(
  this : QAbstractSpinBox,
) -> ButtonSymbols = "QAbstractSpinBox_buttonSymbols"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_clear(this : QAbstractSpinBox) = "QAbstractSpinBox_clear"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_correctionMode(
  this : QAbstractSpinBox,
) -> CorrectionMode = "QAbstractSpinBox_correctionMode"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_hasAcceptableInput(
  this : QAbstractSpinBox,
) -> Bool = "QAbstractSpinBox_hasAcceptableInput"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_hasFrame(this : QAbstractSpinBox) -> Bool = "QAbstractSpinBox_hasFrame"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_isAccelerated(this : QAbstractSpinBox) -> Bool = "QAbstractSpinBox_isAccelerated"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_isReadOnly(this : QAbstractSpinBox) -> Bool = "QAbstractSpinBox_isReadOnly"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_isWrapping(this : QAbstractSpinBox) -> Bool = "QAbstractSpinBox_isWrapping"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_selectAll(this : QAbstractSpinBox) = "QAbstractSpinBox_selectAll"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setAccelerated(
  this : QAbstractSpinBox,
  value : Bool,
) = "QAbstractSpinBox_setAccelerated"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setButtonSymbols(
  this : QAbstractSpinBox,
  value : ButtonSymbols,
) = "QAbstractSpinBox_setButtonSymbols"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setCorrectionMode(
  this : QAbstractSpinBox,
  value : CorrectionMode,
) = "QAbstractSpinBox_setCorrectionMode"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setFrame(this : QAbstractSpinBox, value : Bool) = "QAbstractSpinBox_setFrame"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setReadOnly(
  this : QAbstractSpinBox,
  value : Bool,
) = "QAbstractSpinBox_setReadOnly"

///|
#borrow(this, text)
extern "C" fn _QAbstractSpinBox_setSpecialValueText(
  this : QAbstractSpinBox,
  text : String,
) = "QAbstractSpinBox_setSpecialValueText"

///|
#borrow(this, value)
extern "C" fn _QAbstractSpinBox_setWrapping(
  this : QAbstractSpinBox,
  value : Bool,
) = "QAbstractSpinBox_setWrapping"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_specialValueText(
  this : QAbstractSpinBox,
) -> String = "QAbstractSpinBox_specialValueText"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_text(this : QAbstractSpinBox) -> String = "QAbstractSpinBox_text"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_editingFinished(
  this : QAbstractSpinBox,
) -> Signal[Unit] = "QAbstractSpinBox_editingFinished"

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_as_QWidget(this : QAbstractSpinBox) -> QWidget = "QAbstractSpinBox_as_QWidget"

///|
pub(open) trait AsAbstractSpinBox: AsWidget {
  as_abstract_spin_box(Self) -> QAbstractSpinBox
  buttonSymbols(Self) -> ButtonSymbols raise NullptrError = _
  clear(Self) -> Unit raise NullptrError = _
  correctionMode(Self) -> CorrectionMode raise NullptrError = _
  hasAcceptableInput(Self) -> Bool raise NullptrError = _
  hasFrame(Self) -> Bool raise NullptrError = _
  isAccelerated(Self) -> Bool raise NullptrError = _
  isReadOnly(Self) -> Bool raise NullptrError = _
  isWrapping(Self) -> Bool raise NullptrError = _
  selectAll(Self) -> Unit raise NullptrError = _
  setAccelerated(Self, value : Bool) -> Unit raise NullptrError = _
  setButtonSymbols(Self, value : ButtonSymbols) -> Unit raise NullptrError = _
  setCorrectionMode(Self, value : CorrectionMode) -> Unit raise NullptrError = _
  setFrame(Self, value : Bool) -> Unit raise NullptrError = _
  setReadOnly(Self, value : Bool) -> Unit raise NullptrError = _
  setSpecialValueText(Self, text : String) -> Unit raise NullptrError = _
  setWrapping(Self, value : Bool) -> Unit raise NullptrError = _
  specialValueText(Self) -> String raise NullptrError = _
  text(Self) -> String raise NullptrError = _
  editingFinished(Self) -> Signal[Unit] raise NullptrError = _
}

///|
impl AsAbstractSpinBox with buttonSymbols(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_buttonSymbols(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with clear(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_clear(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with correctionMode(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_correctionMode(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with editingFinished(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_editingFinished(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with hasAcceptableInput(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_hasAcceptableInput(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with hasFrame(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_hasFrame(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isAccelerated(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_isAccelerated(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isReadOnly(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_isReadOnly(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isWrapping(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_isWrapping(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with selectAll(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_selectAll(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with setAccelerated(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setAccelerated(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setButtonSymbols(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setButtonSymbols(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setCorrectionMode(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setCorrectionMode(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setFrame(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setFrame(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setReadOnly(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setReadOnly(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setSpecialValueText(self, text) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setSpecialValueText(self.as_abstract_spin_box(), text)
}

///|
impl AsAbstractSpinBox with setWrapping(self, value) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_setWrapping(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with specialValueText(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_specialValueText(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with text(self) {
  ensure_not_nullptr(self)
  _QAbstractSpinBox_text(self.as_abstract_spin_box())
}

///|
pub impl AsObject for QAbstractSpinBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QAbstractSpinBox with as_widget(self) {
  _QAbstractSpinBox_as_QWidget(self)
}

///|
pub impl AsAbstractSpinBox for QAbstractSpinBox with as_abstract_spin_box(self) {
  self
}
