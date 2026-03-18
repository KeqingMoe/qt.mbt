///|
pub type QAbstractSpinBox

///|
#borrow(this)
extern "C" fn _QAbstractSpinBox_clear(this : QAbstractSpinBox) = "QAbstractSpinBox_clear"

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
  clear(Self) -> Unit = _
  hasAcceptableInput(Self) -> Bool = _
  hasFrame(Self) -> Bool = _
  isAccelerated(Self) -> Bool = _
  isReadOnly(Self) -> Bool = _
  isWrapping(Self) -> Bool = _
  selectAll(Self) -> Unit = _
  setAccelerated(Self, value : Bool) -> Unit = _
  setFrame(Self, value : Bool) -> Unit = _
  setReadOnly(Self, value : Bool) -> Unit = _
  setSpecialValueText(Self, text : String) -> Unit = _
  setWrapping(Self, value : Bool) -> Unit = _
  specialValueText(Self) -> String = _
  text(Self) -> String = _
  editingFinished(Self) -> Signal[Unit] = _
}

///|
impl AsAbstractSpinBox with clear(self) {
  _QAbstractSpinBox_clear(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with editingFinished(self) {
  _QAbstractSpinBox_editingFinished(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with hasAcceptableInput(self) {
  _QAbstractSpinBox_hasAcceptableInput(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with hasFrame(self) {
  _QAbstractSpinBox_hasFrame(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isAccelerated(self) {
  _QAbstractSpinBox_isAccelerated(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isReadOnly(self) {
  _QAbstractSpinBox_isReadOnly(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with isWrapping(self) {
  _QAbstractSpinBox_isWrapping(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with selectAll(self) {
  _QAbstractSpinBox_selectAll(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with setAccelerated(self, value) {
  _QAbstractSpinBox_setAccelerated(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setFrame(self, value) {
  _QAbstractSpinBox_setFrame(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setReadOnly(self, value) {
  _QAbstractSpinBox_setReadOnly(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with setSpecialValueText(self, text) {
  _QAbstractSpinBox_setSpecialValueText(self.as_abstract_spin_box(), text)
}

///|
impl AsAbstractSpinBox with setWrapping(self, value) {
  _QAbstractSpinBox_setWrapping(self.as_abstract_spin_box(), value)
}

///|
impl AsAbstractSpinBox with specialValueText(self) {
  _QAbstractSpinBox_specialValueText(self.as_abstract_spin_box())
}

///|
impl AsAbstractSpinBox with text(self) {
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
