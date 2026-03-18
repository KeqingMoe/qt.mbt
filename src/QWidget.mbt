///|
pub type QWidget

///|
extern "C" fn _QWidget_new() -> QWidget = "QWidget_new"

///|
#borrow(this)
extern "C" fn _QWidget_hide(this : QWidget) = "QWidget_hide"

///|
#borrow(this)
extern "C" fn _QWidget_isEnabled(this : QWidget) -> Bool = "QWidget_isEnabled"

///|
#borrow(this)
extern "C" fn _QWidget_isHidden(this : QWidget) -> Bool = "QWidget_isHidden"

///|
#borrow(this)
extern "C" fn _QWidget_isVisible(this : QWidget) -> Bool = "QWidget_isVisible"

///|
#borrow(this, x, y)
extern "C" fn _QWidget_move(this : QWidget, x : Int, y : Int) = "QWidget_move"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_resize(this : QWidget, width : Int, height : Int) = "QWidget_resize"

///|
#borrow(this, value)
extern "C" fn _QWidget_setEnabled(this : QWidget, value : Bool) = "QWidget_setEnabled"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_setFixedSize(this : QWidget, width : Int, height : Int) = "QWidget_setFixedSize"

///|
#borrow(this, layout)
extern "C" fn _QWidget_setLayout(this : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_setMaximumSize(
  this : QWidget,
  width : Int,
  height : Int,
) = "QWidget_setMaximumSize"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_setMinimumSize(
  this : QWidget,
  width : Int,
  height : Int,
) = "QWidget_setMinimumSize"

///|
#borrow(this, value)
extern "C" fn _QWidget_setVisible(this : QWidget, value : Bool) = "QWidget_setVisible"

///|
#borrow(this, title)
extern "C" fn _QWidget_setWindowTitle(this : QWidget, title : String) = "QWidget_setWindowTitle"

///|
#borrow(this)
extern "C" fn _QWidget_as_QObject(this : QWidget) -> QObject = "QWidget_as_QObject"

///|
#borrow(this)
extern "C" fn _QWidget_show(this : QWidget) = "QWidget_show"

///|
#borrow(this)
extern "C" fn _QWidget_windowTitle(this : QWidget) -> String = "QWidget_windowTitle"

///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  hide(Self) -> Unit = _
  isEnabled(Self) -> Bool = _
  isHidden(Self) -> Bool = _
  isVisible(Self) -> Bool = _
  moveTo(Self, x : Int, y : Int) -> Unit = _
  resize(Self, width : Int, height : Int) -> Unit = _
  setEnabled(Self, value : Bool) -> Unit = _
  setFixedSize(Self, width : Int, height : Int) -> Unit = _
  setLayout(Self, layout : &AsLayout) -> Unit = _
  setMaximumSize(Self, width : Int, height : Int) -> Unit = _
  setMinimumSize(Self, width : Int, height : Int) -> Unit = _
  setVisible(Self, value : Bool) -> Unit = _
  setWindowTitle(Self, title : String) -> Unit = _
  show(Self) -> Unit = _
  windowTitle(Self) -> String = _
}

///|
impl AsWidget with hide(self) {
  _QWidget_hide(self.as_widget())
}

///|
impl AsWidget with isEnabled(self) {
  _QWidget_isEnabled(self.as_widget())
}

///|
impl AsWidget with isHidden(self) {
  _QWidget_isHidden(self.as_widget())
}

///|
impl AsWidget with isVisible(self) {
  _QWidget_isVisible(self.as_widget())
}

///|
impl AsWidget with moveTo(self, x, y) {
  _QWidget_move(self.as_widget(), x, y)
}

///|
impl AsWidget with resize(self, width, height) {
  _QWidget_resize(self.as_widget(), width, height)
}

///|
impl AsWidget with setEnabled(self, value) {
  _QWidget_setEnabled(self.as_widget(), value)
}

///|
impl AsWidget with setFixedSize(self, width, height) {
  _QWidget_setFixedSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setLayout(self, layout) {
  _QWidget_setLayout(self.as_widget(), layout.as_layout())
}

///|
impl AsWidget with setMaximumSize(self, width, height) {
  _QWidget_setMaximumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setMinimumSize(self, width, height) {
  _QWidget_setMinimumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setVisible(self, value) {
  _QWidget_setVisible(self.as_widget(), value)
}

///|
impl AsWidget with setWindowTitle(self, title) {
  _QWidget_setWindowTitle(self.as_widget(), title)
}

///|
impl AsWidget with show(self) {
  _QWidget_show(self.as_widget())
}

///|
impl AsWidget with windowTitle(self) {
  _QWidget_windowTitle(self.as_widget())
}

///|
pub fn QWidget::new() -> QWidget {
  _QWidget_new()
}

///|
pub impl AsObject for QWidget with as_object(self) {
  _QWidget_as_QObject(self)
}

///|
pub impl AsWidget for QWidget with as_widget(self) {
  self
}
