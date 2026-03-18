///|
pub type QStackedWidget

///|
extern "C" fn _QStackedWidget_new() -> QStackedWidget = "QStackedWidget_new"

///|
#borrow(this, widget)
extern "C" fn _QStackedWidget_addWidget(
  this : QStackedWidget,
  widget : QWidget,
) -> Int = "QStackedWidget_addWidget"

///|
#borrow(this)
extern "C" fn _QStackedWidget_count(this : QStackedWidget) -> Int = "QStackedWidget_count"

///|
#borrow(this)
extern "C" fn _QStackedWidget_currentChanged(
  this : QStackedWidget,
) -> Signal[Int] = "QStackedWidget_currentChanged"

///|
#borrow(this)
extern "C" fn _QStackedWidget_currentIndex(this : QStackedWidget) -> Int = "QStackedWidget_currentIndex"

///|
#borrow(this)
extern "C" fn _QStackedWidget_currentWidget(this : QStackedWidget) -> QWidget = "QStackedWidget_currentWidget"

///|
#borrow(this, index)
extern "C" fn _QStackedWidget_setCurrentIndex(
  this : QStackedWidget,
  index : Int,
) = "QStackedWidget_setCurrentIndex"

///|
#borrow(this, widget)
extern "C" fn _QStackedWidget_setCurrentWidget(
  this : QStackedWidget,
  widget : QWidget,
) = "QStackedWidget_setCurrentWidget"

///|
#borrow(this)
extern "C" fn _QStackedWidget_as_QFrame(this : QStackedWidget) -> QFrame = "QStackedWidget_as_QFrame"

///|
pub fn QStackedWidget::new() -> Self {
  _QStackedWidget_new()
}

///|
pub fn QStackedWidget::addWidget(self : Self, widget : &AsWidget) -> Int {
  _QStackedWidget_addWidget(self, widget.as_widget())
}

///|
pub fn QStackedWidget::count(self : Self) -> Int {
  _QStackedWidget_count(self)
}

///|
pub fn QStackedWidget::currentChanged(self : Self) -> Signal[Int] {
  _QStackedWidget_currentChanged(self)
}

///|
pub fn QStackedWidget::currentIndex(self : Self) -> Int {
  _QStackedWidget_currentIndex(self)
}

///|
pub fn QStackedWidget::currentWidget(self : Self) -> QWidget {
  _QStackedWidget_currentWidget(self)
}

///|
pub fn QStackedWidget::setCurrentIndex(self : Self, index : Int) -> Unit {
  _QStackedWidget_setCurrentIndex(self, index)
}

///|
pub fn QStackedWidget::setCurrentWidget(
  self : Self,
  widget : &AsWidget,
) -> Unit {
  _QStackedWidget_setCurrentWidget(self, widget.as_widget())
}

///|
pub impl AsObject for QStackedWidget with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QStackedWidget with as_widget(self) {
  self.as_frame().as_widget()
}

///|
pub impl AsFrame for QStackedWidget with as_frame(self) {
  _QStackedWidget_as_QFrame(self)
}
