///|
pub type QWidget

///|
extern "C" fn _QWidget_new() -> QWidget = "QWidget_new"

///|
#borrow(this)
extern "C" fn _QWidget_contextMenuPolicy(this : QWidget) -> ContextMenuPolicy = "QWidget_contextMenuPolicy"

///|
#borrow(this)
extern "C" fn _QWidget_focusPolicy(this : QWidget) -> FocusPolicy = "QWidget_focusPolicy"

///|
#borrow(this)
extern "C" fn _QWidget_hide(this : QWidget) = "QWidget_hide"

///|
#borrow(this)
extern "C" fn _QWidget_inputMethodHints(this : QWidget) -> QFlag = "QWidget_inputMethodHints"

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
#borrow(this, policy)
extern "C" fn _QWidget_setContextMenuPolicy(
  this : QWidget,
  policy : ContextMenuPolicy,
) = "QWidget_setContextMenuPolicy"

///|
#borrow(this, policy)
extern "C" fn _QWidget_setFocusPolicy(this : QWidget, policy : FocusPolicy) = "QWidget_setFocusPolicy"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_setFixedSize(this : QWidget, width : Int, height : Int) = "QWidget_setFixedSize"

///|
#borrow(this, layout)
extern "C" fn _QWidget_setLayout(this : QWidget, layout : QLayout) = "QWidget_setLayout"

///|
#borrow(this, hints)
extern "C" fn _QWidget_setInputMethodHints(this : QWidget, hints : QFlag) = "QWidget_setInputMethodHints"

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
#borrow(this, policy)
extern "C" fn _QWidget_setSizePolicy(this : QWidget, policy : QSizePolicy) = "QWidget_setSizePolicy"

///|
#borrow(this, styleSheet)
extern "C" fn _QWidget_setStyleSheet(this : QWidget, styleSheet : String) = "QWidget_setStyleSheet"

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
extern "C" fn _QWidget_sizePolicy(this : QWidget) -> QSizePolicy = "QWidget_sizePolicy"

///|
#borrow(this)
extern "C" fn _QWidget_styleSheet(this : QWidget) -> String = "QWidget_styleSheet"

///|
#borrow(this)
extern "C" fn _QWidget_windowTitle(this : QWidget) -> String = "QWidget_windowTitle"

///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  contextMenuPolicy(Self) -> ContextMenuPolicy raise NullptrError = _
  focusPolicy(Self) -> FocusPolicy raise NullptrError = _
  hide(Self) -> Unit raise NullptrError = _
  inputMethodHints(Self) -> InputMethodHints raise NullptrError = _
  isEnabled(Self) -> Bool raise NullptrError = _
  isHidden(Self) -> Bool raise NullptrError = _
  isVisible(Self) -> Bool raise NullptrError = _
  moveTo(Self, x : Int, y : Int) -> Unit raise NullptrError = _
  resize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setContextMenuPolicy(Self, policy : ContextMenuPolicy) -> Unit raise NullptrError = _
  setEnabled(Self, value : Bool) -> Unit raise NullptrError = _
  setFixedSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setFocusPolicy(Self, policy : FocusPolicy) -> Unit raise NullptrError = _
  setInputMethodHints(Self, hints : InputMethodHints) -> Unit raise NullptrError = _
  setLayout(Self, layout : &AsLayout) -> Unit raise NullptrError = _
  setMaximumSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setMinimumSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setSizePolicy(Self, policy : QSizePolicy) -> Unit raise NullptrError = _
  setStyleSheet(Self, styleSheet : String) -> Unit raise NullptrError = _
  setVisible(Self, value : Bool) -> Unit raise NullptrError = _
  setWindowTitle(Self, title : String) -> Unit raise NullptrError = _
  show(Self) -> Unit raise NullptrError = _
  sizePolicy(Self) -> QSizePolicy raise NullptrError = _
  styleSheet(Self) -> String raise NullptrError = _
  windowTitle(Self) -> String raise NullptrError = _
}

///|
impl AsWidget with hide(self) {
  ensure_not_nullptr(self)
  _QWidget_hide(self.as_widget())
}

///|
impl AsWidget with contextMenuPolicy(self) {
  ensure_not_nullptr(self)
  _QWidget_contextMenuPolicy(self.as_widget())
}

///|
impl AsWidget with focusPolicy(self) {
  ensure_not_nullptr(self)
  _QWidget_focusPolicy(self.as_widget())
}

///|
impl AsWidget with inputMethodHints(self) {
  ensure_not_nullptr(self)
  _QWidget_inputMethodHints(self.as_widget()).to_flag()
}

///|
impl AsWidget with isEnabled(self) {
  ensure_not_nullptr(self)
  _QWidget_isEnabled(self.as_widget())
}

///|
impl AsWidget with isHidden(self) {
  ensure_not_nullptr(self)
  _QWidget_isHidden(self.as_widget())
}

///|
impl AsWidget with isVisible(self) {
  ensure_not_nullptr(self)
  _QWidget_isVisible(self.as_widget())
}

///|
impl AsWidget with moveTo(self, x, y) {
  ensure_not_nullptr(self)
  _QWidget_move(self.as_widget(), x, y)
}

///|
impl AsWidget with resize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_resize(self.as_widget(), width, height)
}

///|
impl AsWidget with setContextMenuPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QWidget_setContextMenuPolicy(self.as_widget(), policy)
}

///|
impl AsWidget with setEnabled(self, value) {
  ensure_not_nullptr(self)
  _QWidget_setEnabled(self.as_widget(), value)
}

///|
impl AsWidget with setFixedSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setFixedSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setFocusPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QWidget_setFocusPolicy(self.as_widget(), policy)
}

///|
impl AsWidget with setInputMethodHints(self, hints) {
  ensure_not_nullptr(self)
  _QWidget_setInputMethodHints(self.as_widget(), hints.to_flag())
}

///|
impl AsWidget with setLayout(self, layout) {
  ensure_not_nullptr(self)
  _QWidget_setLayout(self.as_widget(), layout.as_layout())
}

///|
impl AsWidget with setMaximumSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setMaximumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setMinimumSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setMinimumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setSizePolicy(self, policy) {
  ensure_not_nullptr(self)
  _QWidget_setSizePolicy(self.as_widget(), policy)
}

///|
impl AsWidget with setStyleSheet(self, styleSheet) {
  ensure_not_nullptr(self)
  _QWidget_setStyleSheet(self.as_widget(), styleSheet)
}

///|
impl AsWidget with setVisible(self, value) {
  ensure_not_nullptr(self)
  _QWidget_setVisible(self.as_widget(), value)
}

///|
impl AsWidget with setWindowTitle(self, title) {
  ensure_not_nullptr(self)
  _QWidget_setWindowTitle(self.as_widget(), title)
}

///|
impl AsWidget with show(self) {
  ensure_not_nullptr(self)
  _QWidget_show(self.as_widget())
}

///|
impl AsWidget with sizePolicy(self) {
  ensure_not_nullptr(self)
  _QWidget_sizePolicy(self.as_widget())
}

///|
impl AsWidget with styleSheet(self) {
  ensure_not_nullptr(self)
  _QWidget_styleSheet(self.as_widget())
}

///|
impl AsWidget with windowTitle(self) {
  ensure_not_nullptr(self)
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
