///|
pub type QSpinBox

///|
extern "C" fn _QSpinBox_new() -> QSpinBox = "QSpinBox_new"

///|
#borrow(this)
extern "C" fn _QSpinBox_cleanText(this : QSpinBox) -> String = "QSpinBox_cleanText"

///|
#borrow(this)
extern "C" fn _QSpinBox_displayIntegerBase(this : QSpinBox) -> Int = "QSpinBox_displayIntegerBase"

///|
#borrow(this)
extern "C" fn _QSpinBox_maximum(this : QSpinBox) -> Int = "QSpinBox_maximum"

///|
#borrow(this)
extern "C" fn _QSpinBox_minimum(this : QSpinBox) -> Int = "QSpinBox_minimum"

///|
#borrow(this)
extern "C" fn _QSpinBox_prefix(this : QSpinBox) -> String = "QSpinBox_prefix"

///|
#borrow(this, base)
extern "C" fn _QSpinBox_setDisplayIntegerBase(this : QSpinBox, base : Int) = "QSpinBox_setDisplayIntegerBase"

///|
#borrow(this, maximum)
extern "C" fn _QSpinBox_setMaximum(this : QSpinBox, maximum : Int) = "QSpinBox_setMaximum"

///|
#borrow(this, minimum)
extern "C" fn _QSpinBox_setMinimum(this : QSpinBox, minimum : Int) = "QSpinBox_setMinimum"

///|
#borrow(this, prefix)
extern "C" fn _QSpinBox_setPrefix(this : QSpinBox, prefix : String) = "QSpinBox_setPrefix"

///|
#borrow(this, minimum, maximum)
extern "C" fn _QSpinBox_setRange(this : QSpinBox, minimum : Int, maximum : Int) = "QSpinBox_setRange"

///|
#borrow(this, step)
extern "C" fn _QSpinBox_setSingleStep(this : QSpinBox, step : Int) = "QSpinBox_setSingleStep"

///|
#borrow(this, suffix)
extern "C" fn _QSpinBox_setSuffix(this : QSpinBox, suffix : String) = "QSpinBox_setSuffix"

///|
#borrow(this, value)
extern "C" fn _QSpinBox_setValue(this : QSpinBox, value : Int) = "QSpinBox_setValue"

///|
#borrow(this)
extern "C" fn _QSpinBox_singleStep(this : QSpinBox) -> Int = "QSpinBox_singleStep"

///|
#borrow(this)
extern "C" fn _QSpinBox_suffix(this : QSpinBox) -> String = "QSpinBox_suffix"

///|
#borrow(this)
extern "C" fn _QSpinBox_value(this : QSpinBox) -> Int = "QSpinBox_value"

///|
#borrow(this)
extern "C" fn _QSpinBox_textChanged(this : QSpinBox) -> Signal[String] = "QSpinBox_textChanged"

///|
#borrow(this)
extern "C" fn _QSpinBox_valueChanged(this : QSpinBox) -> Signal[Int] = "QSpinBox_valueChanged"

///|
#borrow(this)
extern "C" fn _QSpinBox_as_QAbstractSpinBox(
  this : QSpinBox,
) -> QAbstractSpinBox = "QSpinBox_as_QAbstractSpinBox"

///|
pub fn QSpinBox::new() -> Self {
  _QSpinBox_new()
}

///|
pub fn QSpinBox::cleanText(self : Self) -> String {
  _QSpinBox_cleanText(self)
}

///|
pub fn QSpinBox::displayIntegerBase(self : Self) -> Int {
  _QSpinBox_displayIntegerBase(self)
}

///|
pub fn QSpinBox::maximum(self : Self) -> Int {
  _QSpinBox_maximum(self)
}

///|
pub fn QSpinBox::minimum(self : Self) -> Int {
  _QSpinBox_minimum(self)
}

///|
pub fn QSpinBox::prefix(self : Self) -> String {
  _QSpinBox_prefix(self)
}

///|
pub fn QSpinBox::setDisplayIntegerBase(self : Self, base : Int) -> Unit {
  _QSpinBox_setDisplayIntegerBase(self, base)
}

///|
pub fn QSpinBox::setMaximum(self : Self, maximum : Int) -> Unit {
  _QSpinBox_setMaximum(self, maximum)
}

///|
pub fn QSpinBox::setMinimum(self : Self, minimum : Int) -> Unit {
  _QSpinBox_setMinimum(self, minimum)
}

///|
pub fn QSpinBox::setPrefix(self : Self, prefix : String) -> Unit {
  _QSpinBox_setPrefix(self, prefix)
}

///|
pub fn QSpinBox::setRange(self : Self, minimum : Int, maximum : Int) -> Unit {
  _QSpinBox_setRange(self, minimum, maximum)
}

///|
pub fn QSpinBox::setSingleStep(self : Self, step : Int) -> Unit {
  _QSpinBox_setSingleStep(self, step)
}

///|
pub fn QSpinBox::setSuffix(self : Self, suffix : String) -> Unit {
  _QSpinBox_setSuffix(self, suffix)
}

///|
pub fn QSpinBox::setValue(self : Self, value : Int) -> Unit {
  _QSpinBox_setValue(self, value)
}

///|
pub fn QSpinBox::singleStep(self : Self) -> Int {
  _QSpinBox_singleStep(self)
}

///|
pub fn QSpinBox::suffix(self : Self) -> String {
  _QSpinBox_suffix(self)
}

///|
pub fn QSpinBox::textChanged(self : Self) -> Signal[String] {
  _QSpinBox_textChanged(self)
}

///|
pub fn QSpinBox::value(self : Self) -> Int {
  _QSpinBox_value(self)
}

///|
pub fn QSpinBox::valueChanged(self : Self) -> Signal[Int] {
  _QSpinBox_valueChanged(self)
}

///|
pub impl AsObject for QSpinBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QSpinBox with as_widget(self) {
  self.as_abstract_spin_box().as_widget()
}

///|
pub impl AsAbstractSpinBox for QSpinBox with as_abstract_spin_box(self) {
  _QSpinBox_as_QAbstractSpinBox(self)
}
