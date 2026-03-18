///|
pub type QProgressBar

///|
extern "C" fn _QProgressBar_new() -> QProgressBar = "QProgressBar_new"

///|
#borrow(this)
extern "C" fn _QProgressBar_format(this : QProgressBar) -> String = "QProgressBar_format"

///|
#borrow(this)
extern "C" fn _QProgressBar_isTextVisible(this : QProgressBar) -> Bool = "QProgressBar_isTextVisible"

///|
#borrow(this)
extern "C" fn _QProgressBar_maximum(this : QProgressBar) -> Int = "QProgressBar_maximum"

///|
#borrow(this)
extern "C" fn _QProgressBar_minimum(this : QProgressBar) -> Int = "QProgressBar_minimum"

///|
#borrow(this)
extern "C" fn _QProgressBar_reset(this : QProgressBar) = "QProgressBar_reset"

///|
#borrow(this, format)
extern "C" fn _QProgressBar_setFormat(this : QProgressBar, format : String) = "QProgressBar_setFormat"

///|
#borrow(this, maximum)
extern "C" fn _QProgressBar_setMaximum(this : QProgressBar, maximum : Int) = "QProgressBar_setMaximum"

///|
#borrow(this, minimum)
extern "C" fn _QProgressBar_setMinimum(this : QProgressBar, minimum : Int) = "QProgressBar_setMinimum"

///|
#borrow(this, minimum, maximum)
extern "C" fn _QProgressBar_setRange(
  this : QProgressBar,
  minimum : Int,
  maximum : Int,
) = "QProgressBar_setRange"

///|
#borrow(this, visible)
extern "C" fn _QProgressBar_setTextVisible(this : QProgressBar, visible : Bool) = "QProgressBar_setTextVisible"

///|
#borrow(this, value)
extern "C" fn _QProgressBar_setValue(this : QProgressBar, value : Int) = "QProgressBar_setValue"

///|
#borrow(this)
extern "C" fn _QProgressBar_text(this : QProgressBar) -> String = "QProgressBar_text"

///|
#borrow(this)
extern "C" fn _QProgressBar_value(this : QProgressBar) -> Int = "QProgressBar_value"

///|
#borrow(this)
extern "C" fn _QProgressBar_valueChanged(this : QProgressBar) -> Signal[Int] = "QProgressBar_valueChanged"

///|
#borrow(this)
extern "C" fn _QProgressBar_as_QWidget(this : QProgressBar) -> QWidget = "QProgressBar_as_QWidget"

///|
pub fn QProgressBar::new() -> Self {
  _QProgressBar_new()
}

///|
pub fn QProgressBar::format(self : Self) -> String {
  _QProgressBar_format(self)
}

///|
pub fn QProgressBar::isTextVisible(self : Self) -> Bool {
  _QProgressBar_isTextVisible(self)
}

///|
pub fn QProgressBar::maximum(self : Self) -> Int {
  _QProgressBar_maximum(self)
}

///|
pub fn QProgressBar::minimum(self : Self) -> Int {
  _QProgressBar_minimum(self)
}

///|
pub fn QProgressBar::reset(self : Self) -> Unit {
  _QProgressBar_reset(self)
}

///|
pub fn QProgressBar::setFormat(self : Self, format : String) -> Unit {
  _QProgressBar_setFormat(self, format)
}

///|
pub fn QProgressBar::setMaximum(self : Self, maximum : Int) -> Unit {
  _QProgressBar_setMaximum(self, maximum)
}

///|
pub fn QProgressBar::setMinimum(self : Self, minimum : Int) -> Unit {
  _QProgressBar_setMinimum(self, minimum)
}

///|
pub fn QProgressBar::setRange(
  self : Self,
  minimum : Int,
  maximum : Int,
) -> Unit {
  _QProgressBar_setRange(self, minimum, maximum)
}

///|
pub fn QProgressBar::setTextVisible(self : Self, visible : Bool) -> Unit {
  _QProgressBar_setTextVisible(self, visible)
}

///|
pub fn QProgressBar::setValue(self : Self, value : Int) -> Unit {
  _QProgressBar_setValue(self, value)
}

///|
pub fn QProgressBar::text(self : Self) -> String {
  _QProgressBar_text(self)
}

///|
pub fn QProgressBar::value(self : Self) -> Int {
  _QProgressBar_value(self)
}

///|
pub fn QProgressBar::valueChanged(self : Self) -> Signal[Int] {
  _QProgressBar_valueChanged(self)
}

///|
pub impl AsObject for QProgressBar with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QProgressBar with as_widget(self) {
  _QProgressBar_as_QWidget(self)
}
