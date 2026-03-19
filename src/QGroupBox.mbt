///|
pub type QGroupBox

///|
extern "C" fn _QGroupBox_new() -> QGroupBox = "QGroupBox_new"

///|
#borrow(this)
extern "C" fn _QGroupBox_alignment(this : QGroupBox) -> QFlag = "QGroupBox_alignment"

///|
#borrow(this)
extern "C" fn _QGroupBox_isCheckable(this : QGroupBox) -> Bool = "QGroupBox_isCheckable"

///|
#borrow(this)
extern "C" fn _QGroupBox_isChecked(this : QGroupBox) -> Bool = "QGroupBox_isChecked"

///|
#borrow(this)
extern "C" fn _QGroupBox_isFlat(this : QGroupBox) -> Bool = "QGroupBox_isFlat"

///|
#borrow(this, checkable)
extern "C" fn _QGroupBox_setCheckable(this : QGroupBox, checkable : Bool) = "QGroupBox_setCheckable"

///|
#borrow(this, checked)
extern "C" fn _QGroupBox_setChecked(this : QGroupBox, checked : Bool) = "QGroupBox_setChecked"

///|
#borrow(this, flat)
extern "C" fn _QGroupBox_setFlat(this : QGroupBox, flat : Bool) = "QGroupBox_setFlat"

///|
#borrow(this, alignment)
extern "C" fn _QGroupBox_setAlignment(this : QGroupBox, alignment : QFlag) = "QGroupBox_setAlignment"

///|
#borrow(this, title)
extern "C" fn _QGroupBox_setTitle(this : QGroupBox, title : String) = "QGroupBox_setTitle"

///|
#borrow(this)
extern "C" fn _QGroupBox_title(this : QGroupBox) -> String = "QGroupBox_title"

///|
#borrow(this)
extern "C" fn _QGroupBox_toggled(this : QGroupBox) -> Signal[Bool] = "QGroupBox_toggled"

///|
#borrow(this)
extern "C" fn _QGroupBox_as_QWidget(this : QGroupBox) -> QWidget = "QGroupBox_as_QWidget"

///|
pub fn QGroupBox::new() -> Self {
  _QGroupBox_new()
}

///|
pub fn QGroupBox::alignment(self : Self) -> Alignment raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_alignment(self).to_flag()
}

///|
pub fn QGroupBox::isCheckable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_isCheckable(self)
}

///|
pub fn QGroupBox::isChecked(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_isChecked(self)
}

///|
pub fn QGroupBox::isFlat(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_isFlat(self)
}

///|
pub fn QGroupBox::setCheckable(
  self : Self,
  checkable : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_setCheckable(self, checkable)
}

///|
pub fn QGroupBox::setAlignment(
  self : Self,
  alignment : Alignment,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_setAlignment(self, alignment.to_flag())
}

///|
pub fn QGroupBox::setChecked(
  self : Self,
  checked : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_setChecked(self, checked)
}

///|
pub fn QGroupBox::setFlat(self : Self, flat : Bool) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_setFlat(self, flat)
}

///|
pub fn QGroupBox::setTitle(
  self : Self,
  title : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_setTitle(self, title)
}

///|
pub fn QGroupBox::title(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_title(self)
}

///|
pub fn QGroupBox::toggled(self : Self) -> Signal[Bool] raise NullptrError {
  ensure_not_nullptr(self)
  _QGroupBox_toggled(self)
}

///|
pub impl AsObject for QGroupBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QGroupBox with as_widget(self) {
  _QGroupBox_as_QWidget(self)
}
