///|
pub type QTabWidget

///|
extern "C" fn _QTabWidget_new() -> QTabWidget = "QTabWidget_new"

///|
#borrow(this, widget, icon, text)
extern "C" fn _QTabWidget_addTabWithIcon(
  this : QTabWidget,
  widget : QWidget,
  icon : QIcon,
  text : String,
) -> Int = "QTabWidget_addTabWithIcon"

///|
#borrow(this, widget, text)
extern "C" fn _QTabWidget_addTab(
  this : QTabWidget,
  widget : QWidget,
  text : String,
) -> Int = "QTabWidget_addTab"

///|
#borrow(this)
extern "C" fn _QTabWidget_clear(this : QTabWidget) = "QTabWidget_clear"

///|
#borrow(this)
extern "C" fn _QTabWidget_count(this : QTabWidget) -> Int = "QTabWidget_count"

///|
#borrow(this)
extern "C" fn _QTabWidget_currentIndex(this : QTabWidget) -> Int = "QTabWidget_currentIndex"

///|
#borrow(this)
extern "C" fn _QTabWidget_currentChanged(this : QTabWidget) -> Signal[Int] = "QTabWidget_currentChanged"

///|
#borrow(this)
extern "C" fn _QTabWidget_currentWidget(this : QTabWidget) -> QWidget = "QTabWidget_currentWidget"

///|
#borrow(this, index)
extern "C" fn _QTabWidget_tabIcon(this : QTabWidget, index : Int) -> QIcon = "QTabWidget_tabIcon"

///|
#borrow(this, index)
extern "C" fn _QTabWidget_removeTab(this : QTabWidget, index : Int) = "QTabWidget_removeTab"

///|
#borrow(this, index)
extern "C" fn _QTabWidget_setCurrentIndex(this : QTabWidget, index : Int) = "QTabWidget_setCurrentIndex"

///|
#borrow(this, index, icon)
extern "C" fn _QTabWidget_setTabIcon(
  this : QTabWidget,
  index : Int,
  icon : QIcon,
) = "QTabWidget_setTabIcon"

///|
#borrow(this, index, text)
extern "C" fn _QTabWidget_setTabText(
  this : QTabWidget,
  index : Int,
  text : String,
) = "QTabWidget_setTabText"

///|
#borrow(this, index, text)
extern "C" fn _QTabWidget_setTabToolTip(
  this : QTabWidget,
  index : Int,
  text : String,
) = "QTabWidget_setTabToolTip"

///|
#borrow(this, index)
extern "C" fn _QTabWidget_tabText(this : QTabWidget, index : Int) -> String = "QTabWidget_tabText"

///|
#borrow(this)
extern "C" fn _QTabWidget_as_QWidget(this : QTabWidget) -> QWidget = "QTabWidget_as_QWidget"

///|
pub fn QTabWidget::new() -> Self {
  _QTabWidget_new()
}

///|
pub fn QTabWidget::addTabWithIcon(
  self : Self,
  widget : &AsWidget,
  icon : QIcon,
  text : String,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_addTabWithIcon(self, widget.as_widget(), icon, text)
}

///|
pub fn QTabWidget::addTab(
  self : Self,
  widget : &AsWidget,
  text : String,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_addTab(self, widget.as_widget(), text)
}

///|
pub fn QTabWidget::clear(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_clear(self)
}

///|
pub fn QTabWidget::count(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_count(self)
}

///|
pub fn QTabWidget::currentChanged(
  self : Self,
) -> Signal[Int] raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_currentChanged(self)
}

///|
pub fn QTabWidget::currentIndex(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_currentIndex(self)
}

///|
pub fn QTabWidget::currentWidget(self : Self) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_currentWidget(self)
}

///|
pub fn QTabWidget::tabIcon(
  self : Self,
  index : Int,
) -> QIcon raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_tabIcon(self, index)
}

///|
pub fn QTabWidget::removeTab(
  self : Self,
  index : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_removeTab(self, index)
}

///|
pub fn QTabWidget::setCurrentIndex(
  self : Self,
  index : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_setCurrentIndex(self, index)
}

///|
pub fn QTabWidget::setTabIcon(
  self : Self,
  index : Int,
  icon : QIcon,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_setTabIcon(self, index, icon)
}

///|
pub fn QTabWidget::setTabText(
  self : Self,
  index : Int,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_setTabText(self, index, text)
}

///|
pub fn QTabWidget::setTabToolTip(
  self : Self,
  index : Int,
  text : String,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_setTabToolTip(self, index, text)
}

///|
pub fn QTabWidget::tabText(
  self : Self,
  index : Int,
) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QTabWidget_tabText(self, index)
}

///|
pub impl AsObject for QTabWidget with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QTabWidget with as_widget(self) {
  _QTabWidget_as_QWidget(self)
}
