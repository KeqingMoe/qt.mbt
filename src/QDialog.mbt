///|
pub type QDialog

///|
extern "C" fn _QDialog_new() -> QDialog = "QDialog_new"

///|
#borrow(this)
extern "C" fn _QDialog_accept(this : QDialog) = "QDialog_accept"

///|
#borrow(this, result)
extern "C" fn _QDialog_done(this : QDialog, result : Int) = "QDialog_done"

///|
#borrow(this)
extern "C" fn _QDialog_isModal(this : QDialog) -> Bool = "QDialog_isModal"

///|
#borrow(this)
extern "C" fn _QDialog_reject(this : QDialog) = "QDialog_reject"

///|
#borrow(this)
extern "C" fn _QDialog_result(this : QDialog) -> Int = "QDialog_result"

///|
#borrow(this, modal)
extern "C" fn _QDialog_setModal(this : QDialog, modal : Bool) = "QDialog_setModal"

///|
#borrow(this)
extern "C" fn _QDialog_accepted(this : QDialog) -> Signal[Unit] = "QDialog_accepted"

///|
#borrow(this)
extern "C" fn _QDialog_finished(this : QDialog) -> Signal[Int] = "QDialog_finished"

///|
#borrow(this)
extern "C" fn _QDialog_rejected(this : QDialog) -> Signal[Unit] = "QDialog_rejected"

///|
#borrow(this)
extern "C" fn _QDialog_as_QWidget(this : QDialog) -> QWidget = "QDialog_as_QWidget"

///|
pub fn QDialog::new() -> Self {
  _QDialog_new()
}

///|
pub fn QDialog::accept(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_accept(self)
}

///|
pub fn QDialog::accepted(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_accepted(self)
}

///|
pub fn QDialog::done(self : Self, result : Int) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_done(self, result)
}

///|
pub fn QDialog::finished(self : Self) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_finished(self)
}

///|
pub fn QDialog::isModal(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_isModal(self)
}

///|
pub fn QDialog::reject(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_reject(self)
}

///|
pub fn QDialog::rejected(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_rejected(self)
}

///|
pub fn QDialog::result(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_result(self)
}

///|
pub fn QDialog::setModal(self : Self, modal : Bool) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QDialog_setModal(self, modal)
}

///|
pub impl AsObject for QDialog with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QDialog with as_widget(self) {
  _QDialog_as_QWidget(self)
}
