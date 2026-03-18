///|
pub type QScrollArea

///|
extern "C" fn _QScrollArea_new() -> QScrollArea = "QScrollArea_new"

///|
#borrow(this, x, y, xMargin, yMargin)
extern "C" fn _QScrollArea_ensureVisible(
  this : QScrollArea,
  x : Int,
  y : Int,
  xMargin : Int,
  yMargin : Int,
) = "QScrollArea_ensureVisible"

///|
#borrow(this, widget, xMargin, yMargin)
extern "C" fn _QScrollArea_ensureWidgetVisible(
  this : QScrollArea,
  widget : QWidget,
  xMargin : Int,
  yMargin : Int,
) = "QScrollArea_ensureWidgetVisible"

///|
#borrow(this, widget)
extern "C" fn _QScrollArea_setWidget(this : QScrollArea, widget : QWidget) = "QScrollArea_setWidget"

///|
#borrow(this, resizable)
extern "C" fn _QScrollArea_setWidgetResizable(
  this : QScrollArea,
  resizable : Bool,
) = "QScrollArea_setWidgetResizable"

///|
#borrow(this)
extern "C" fn _QScrollArea_widget(this : QScrollArea) -> QWidget = "QScrollArea_widget"

///|
#borrow(this)
extern "C" fn _QScrollArea_widgetResizable(this : QScrollArea) -> Bool = "QScrollArea_widgetResizable"

///|
#borrow(this)
extern "C" fn _QScrollArea_as_QAbstractScrollArea(
  this : QScrollArea,
) -> QAbstractScrollArea = "QScrollArea_as_QAbstractScrollArea"

///|
pub fn QScrollArea::new() -> Self {
  _QScrollArea_new()
}

///|
pub fn QScrollArea::ensureVisible(
  self : Self,
  x : Int,
  y : Int,
  xMargin? : Int = 50,
  yMargin? : Int = 50,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_ensureVisible(self, x, y, xMargin, yMargin)
}

///|
pub fn QScrollArea::ensureWidgetVisible(
  self : Self,
  widget : &AsWidget,
  xMargin? : Int = 50,
  yMargin? : Int = 50,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_ensureWidgetVisible(self, widget.as_widget(), xMargin, yMargin)
}

///|
pub fn QScrollArea::setWidget(
  self : Self,
  widget : &AsWidget,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_setWidget(self, widget.as_widget())
}

///|
pub fn QScrollArea::setWidgetResizable(
  self : Self,
  resizable : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_setWidgetResizable(self, resizable)
}

///|
pub fn QScrollArea::widget(self : Self) -> QWidget raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_widget(self)
}

///|
pub fn QScrollArea::widgetResizable(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QScrollArea_widgetResizable(self)
}

///|
pub impl AsObject for QScrollArea with as_object(self) {
  self.as_widget().as_object()
}

///|
pub impl AsWidget for QScrollArea with as_widget(self) {
  self.as_abstract_scroll_area().as_widget()
}

///|
pub impl AsFrame for QScrollArea with as_frame(self) {
  self.as_abstract_scroll_area().as_frame()
}

///|
pub impl AsAbstractScrollArea for QScrollArea with as_abstract_scroll_area(self) {
  _QScrollArea_as_QAbstractScrollArea(self)
}
