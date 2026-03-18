///|
pub type QComboBox

///|
extern "C" fn _QComboBox_new() -> QComboBox = "QComboBox_new"

///|
#borrow(this, text)
extern "C" fn _QComboBox_addItem(this : QComboBox, text : String) = "QComboBox_addItem"

///|
#borrow(this)
extern "C" fn _QComboBox_clear(this : QComboBox) = "QComboBox_clear"

///|
#borrow(this)
extern "C" fn _QComboBox_count(this : QComboBox) -> Int = "QComboBox_count"

///|
#borrow(this)
extern "C" fn _QComboBox_currentIndex(this : QComboBox) -> Int = "QComboBox_currentIndex"

///|
#borrow(this)
extern "C" fn _QComboBox_currentText(this : QComboBox) -> String = "QComboBox_currentText"

///|
#borrow(this)
extern "C" fn _QComboBox_isEditable(this : QComboBox) -> Bool = "QComboBox_isEditable"

///|
#borrow(this)
extern "C" fn _QComboBox_placeholderText(this : QComboBox) -> String = "QComboBox_placeholderText"

///|
#borrow(this, index)
extern "C" fn _QComboBox_setCurrentIndex(this : QComboBox, index : Int) = "QComboBox_setCurrentIndex"

///|
#borrow(this, text)
extern "C" fn _QComboBox_setCurrentText(this : QComboBox, text : String) = "QComboBox_setCurrentText"

///|
#borrow(this, editable)
extern "C" fn _QComboBox_setEditable(this : QComboBox, editable : Bool) = "QComboBox_setEditable"

///|
#borrow(this, text)
extern "C" fn _QComboBox_setPlaceholderText(this : QComboBox, text : String) = "QComboBox_setPlaceholderText"

///|
#borrow(this)
extern "C" fn _QComboBox_activated(this : QComboBox) -> Signal[Int] = "QComboBox_activated"

///|
#borrow(this)
extern "C" fn _QComboBox_currentIndexChanged(this : QComboBox) -> Signal[Int] = "QComboBox_currentIndexChanged"

///|
#borrow(this)
extern "C" fn _QComboBox_currentTextChanged(this : QComboBox) -> Signal[String] = "QComboBox_currentTextChanged"

///|
#borrow(this)
extern "C" fn _QComboBox_as_QWidget(this : QComboBox) -> QWidget = "QComboBox_as_QWidget"

///|
pub fn QComboBox::new() -> Self {
  _QComboBox_new()
}

///|
pub fn QComboBox::activated(self : Self) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_activated(self)
}

///|
pub fn QComboBox::addItem(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_addItem(self, text)
}

///|
pub fn QComboBox::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_clear(self)
}

///|
pub fn QComboBox::count(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_count(self)
}

///|
pub fn QComboBox::currentIndex(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_currentIndex(self)
}

///|
pub fn QComboBox::currentIndexChanged(
  self : Self,
) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_currentIndexChanged(self)
}

///|
pub fn QComboBox::currentText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_currentText(self)
}

///|
pub fn QComboBox::currentTextChanged(
  self : Self,
) -> Signal[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_currentTextChanged(self)
}

///|
pub fn QComboBox::isEditable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_isEditable(self)
}

///|
pub fn QComboBox::placeholderText(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_placeholderText(self)
}

///|
pub fn QComboBox::setCurrentIndex(
  self : Self,
  index : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_setCurrentIndex(self, index)
}

///|
pub fn QComboBox::setCurrentText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_setCurrentText(self, text)
}

///|
pub fn QComboBox::setEditable(
  self : Self,
  editable : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_setEditable(self, editable)
}

///|
pub fn QComboBox::setPlaceholderText(
  self : Self,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QComboBox_setPlaceholderText(self, text)
}

///|
pub impl AsObject for QComboBox with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QComboBox with as_widget(self) {
  _QComboBox_as_QWidget(self)
}
