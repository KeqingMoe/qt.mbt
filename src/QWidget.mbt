///|
pub type QWidget

///|
extern "C" fn _QWidget_new() -> QWidget = "QWidget_new"

///|
#borrow(this)
extern "C" fn _QWidget_close(this : QWidget) -> Bool = "QWidget_close"

///|
#borrow(this)
extern "C" fn _QWidget_contextMenuPolicy(this : QWidget) -> ContextMenuPolicy = "QWidget_contextMenuPolicy"

///|
#borrow(this)
extern "C" fn _QWidget_contentsMargins(this : QWidget) -> QMargins = "QWidget_contentsMargins"

///|
#borrow(this)
extern "C" fn _QWidget_focusPolicy(this : QWidget) -> FocusPolicy = "QWidget_focusPolicy"

///|
#borrow(this)
extern "C" fn _QWidget_height(this : QWidget) -> Int = "QWidget_height"

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
extern "C" fn _QWidget_isMaximized(this : QWidget) -> Bool = "QWidget_isMaximized"

///|
#borrow(this)
extern "C" fn _QWidget_isVisible(this : QWidget) -> Bool = "QWidget_isVisible"

///|
#borrow(this)
extern "C" fn _QWidget_maximumHeight(this : QWidget) -> Int = "QWidget_maximumHeight"

///|
#borrow(this)
extern "C" fn _QWidget_maximumSize(this : QWidget) -> QSize = "QWidget_maximumSize"

///|
#borrow(this)
extern "C" fn _QWidget_maximumWidth(this : QWidget) -> Int = "QWidget_maximumWidth"

///|
#borrow(this)
extern "C" fn _QWidget_minimumHeight(this : QWidget) -> Int = "QWidget_minimumHeight"

///|
#borrow(this)
extern "C" fn _QWidget_minimumSize(this : QWidget) -> QSize = "QWidget_minimumSize"

///|
#borrow(this)
extern "C" fn _QWidget_minimumSizeHint(this : QWidget) -> QSize = "QWidget_minimumSizeHint"

///|
#borrow(this)
extern "C" fn _QWidget_minimumWidth(this : QWidget) -> Int = "QWidget_minimumWidth"

///|
#borrow(this, attribute)
extern "C" fn _QWidget_testAttribute(
  this : QWidget,
  attribute : WidgetAttribute,
) -> Bool = "QWidget_testAttribute"

///|
#borrow(this)
extern "C" fn _QWidget_toolTip(this : QWidget) -> String = "QWidget_toolTip"

///|
#borrow(this)
extern "C" fn _QWidget_windowIcon(this : QWidget) -> QIcon = "QWidget_windowIcon"

///|
#borrow(this)
extern "C" fn _QWidget_windowFlags(this : QWidget) -> QFlag = "QWidget_windowFlags"

///|
#borrow(this)
extern "C" fn _QWidget_windowHandle(this : QWidget) -> QWindow = "QWidget_windowHandle"

///|
#borrow(this)
extern "C" fn _QWidget_windowType(this : QWidget) -> WindowType = "QWidget_windowType"

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
#borrow(this, height)
extern "C" fn _QWidget_setFixedHeight(this : QWidget, height : Int) = "QWidget_setFixedHeight"

///|
#borrow(this, width)
extern "C" fn _QWidget_setFixedWidth(this : QWidget, width : Int) = "QWidget_setFixedWidth"

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
#borrow(this, height)
extern "C" fn _QWidget_setMaximumHeight(this : QWidget, height : Int) = "QWidget_setMaximumHeight"

///|
#borrow(this, width)
extern "C" fn _QWidget_setMaximumWidth(this : QWidget, width : Int) = "QWidget_setMaximumWidth"

///|
#borrow(this, width, height)
extern "C" fn _QWidget_setMinimumSize(
  this : QWidget,
  width : Int,
  height : Int,
) = "QWidget_setMinimumSize"

///|
#borrow(this, height)
extern "C" fn _QWidget_setMinimumHeight(this : QWidget, height : Int) = "QWidget_setMinimumHeight"

///|
#borrow(this, width)
extern "C" fn _QWidget_setMinimumWidth(this : QWidget, width : Int) = "QWidget_setMinimumWidth"

///|
#borrow(this, policy)
extern "C" fn _QWidget_setSizePolicy(this : QWidget, policy : QSizePolicy) = "QWidget_setSizePolicy"

///|
#borrow(this, styleSheet)
extern "C" fn _QWidget_setStyleSheet(this : QWidget, styleSheet : String) = "QWidget_setStyleSheet"

///|
#borrow(this, toolTip)
extern "C" fn _QWidget_setToolTip(this : QWidget, toolTip : String) = "QWidget_setToolTip"

///|
#borrow(this, value)
extern "C" fn _QWidget_setVisible(this : QWidget, value : Bool) = "QWidget_setVisible"

///|
#borrow(this, attribute, on)
extern "C" fn _QWidget_setAttribute(
  this : QWidget,
  attribute : WidgetAttribute,
  on : Bool,
) = "QWidget_setAttribute"

///|
#borrow(this, flags)
extern "C" fn _QWidget_setWindowFlags(this : QWidget, flags : QFlag) = "QWidget_setWindowFlags"

///|
#borrow(this, windowFlag, on)
extern "C" fn _QWidget_setWindowFlag(
  this : QWidget,
  windowFlag : QFlag,
  on : Bool,
) = "QWidget_setWindowFlag"

///|
#borrow(this, icon)
extern "C" fn _QWidget_setWindowIcon(this : QWidget, icon : QIcon) = "QWidget_setWindowIcon"

///|
#borrow(this, title)
extern "C" fn _QWidget_setWindowTitle(this : QWidget, title : String) = "QWidget_setWindowTitle"

///|
#borrow(this, flags)
extern "C" fn _QWidget_overrideWindowFlags(this : QWidget, flags : QFlag) = "QWidget_overrideWindowFlags"

///|
#borrow(this)
extern "C" fn _QWidget_as_QObject(this : QWidget) -> QObject = "QWidget_as_QObject"

///|
#borrow(this)
extern "C" fn _QWidget_show(this : QWidget) = "QWidget_show"

///|
#borrow(this)
extern "C" fn _QWidget_showMaximized(this : QWidget) = "QWidget_showMaximized"

///|
#borrow(this)
extern "C" fn _QWidget_showMinimized(this : QWidget) = "QWidget_showMinimized"

///|
#borrow(this)
extern "C" fn _QWidget_showNormal(this : QWidget) = "QWidget_showNormal"

///|
#borrow(this)
extern "C" fn _QWidget_sizePolicy(this : QWidget) -> QSizePolicy = "QWidget_sizePolicy"

///|
#borrow(this)
extern "C" fn _QWidget_sizeHint(this : QWidget) -> QSize = "QWidget_sizeHint"

///|
#borrow(this)
extern "C" fn _QWidget_size(this : QWidget) -> QSize = "QWidget_size"

///|
#borrow(this)
extern "C" fn _QWidget_styleSheet(this : QWidget) -> String = "QWidget_styleSheet"

///|
#borrow(this)
extern "C" fn _QWidget_updateGeometry(this : QWidget) = "QWidget_updateGeometry"

///|
#borrow(this)
extern "C" fn _QWidget_windowTitle(this : QWidget) -> String = "QWidget_windowTitle"

///|
#borrow(this)
extern "C" fn _QWidget_width(this : QWidget) -> Int = "QWidget_width"

///|
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  close(Self) -> Bool raise NullptrError = _
  contextMenuPolicy(Self) -> ContextMenuPolicy raise NullptrError = _
  contentsMargins(Self) -> QMargins raise NullptrError = _
  focusPolicy(Self) -> FocusPolicy raise NullptrError = _
  height(Self) -> Int raise NullptrError = _
  hide(Self) -> Unit raise NullptrError = _
  inputMethodHints(Self) -> InputMethodHints raise NullptrError = _
  isEnabled(Self) -> Bool raise NullptrError = _
  isHidden(Self) -> Bool raise NullptrError = _
  isMaximized(Self) -> Bool raise NullptrError = _
  isVisible(Self) -> Bool raise NullptrError = _
  maximumHeight(Self) -> Int raise NullptrError = _
  maximumSize(Self) -> QSize raise NullptrError = _
  maximumWidth(Self) -> Int raise NullptrError = _
  minimumHeight(Self) -> Int raise NullptrError = _
  minimumSize(Self) -> QSize raise NullptrError = _
  minimumSizeHint(Self) -> QSize raise NullptrError = _
  minimumWidth(Self) -> Int raise NullptrError = _
  moveTo(Self, x : Int, y : Int) -> Unit raise NullptrError = _
  resize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  size(Self) -> QSize raise NullptrError = _
  sizeHint(Self) -> QSize raise NullptrError = _
  setAttribute(Self, attribute : WidgetAttribute, on? : Bool) -> Unit raise NullptrError = _
  setContextMenuPolicy(Self, policy : ContextMenuPolicy) -> Unit raise NullptrError = _
  setEnabled(Self, value : Bool) -> Unit raise NullptrError = _
  setFixedHeight(Self, height : Int) -> Unit raise NullptrError = _
  setFixedSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setFixedWidth(Self, width : Int) -> Unit raise NullptrError = _
  setFocusPolicy(Self, policy : FocusPolicy) -> Unit raise NullptrError = _
  setInputMethodHints(Self, hints : InputMethodHints) -> Unit raise NullptrError = _
  setLayout(Self, layout : &AsLayout) -> Unit raise NullptrError = _
  setMaximumHeight(Self, height : Int) -> Unit raise NullptrError = _
  setMaximumSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setMaximumWidth(Self, width : Int) -> Unit raise NullptrError = _
  setMinimumHeight(Self, height : Int) -> Unit raise NullptrError = _
  setMinimumSize(Self, width : Int, height : Int) -> Unit raise NullptrError = _
  setMinimumWidth(Self, width : Int) -> Unit raise NullptrError = _
  setSizePolicy(Self, policy : QSizePolicy) -> Unit raise NullptrError = _
  setStyleSheet(Self, styleSheet : String) -> Unit raise NullptrError = _
  setVisible(Self, value : Bool) -> Unit raise NullptrError = _
  setWindowFlag(Self, flag : WindowFlags, on? : Bool) -> Unit raise NullptrError = _
  setWindowFlags(Self, flags : WindowFlags) -> Unit raise NullptrError = _
  setWindowIcon(Self, icon : QIcon) -> Unit raise NullptrError = _
  setWindowTitle(Self, title : String) -> Unit raise NullptrError = _
  show(Self) -> Unit raise NullptrError = _
  showMaximized(Self) -> Unit raise NullptrError = _
  showMinimized(Self) -> Unit raise NullptrError = _
  showNormal(Self) -> Unit raise NullptrError = _
  sizePolicy(Self) -> QSizePolicy raise NullptrError = _
  styleSheet(Self) -> String raise NullptrError = _
  setToolTip(Self, toolTip : String) -> Unit raise NullptrError = _
  testAttribute(Self, attribute : WidgetAttribute) -> Bool raise NullptrError = _
  toolTip(Self) -> String raise NullptrError = _
  updateGeometry(Self) -> Unit raise NullptrError = _
  overrideWindowFlags(Self, flags : WindowFlags) -> Unit raise NullptrError = _
  windowFlags(Self) -> WindowFlags raise NullptrError = _
  windowHandle(Self) -> QWindow raise NullptrError = _
  windowIcon(Self) -> QIcon raise NullptrError = _
  windowTitle(Self) -> String raise NullptrError = _
  windowType(Self) -> WindowType raise NullptrError = _
  width(Self) -> Int raise NullptrError = _
}

///|
impl AsWidget with close(self) {
  ensure_not_nullptr(self)
  _QWidget_close(self.as_widget())
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
impl AsWidget with contentsMargins(self) {
  ensure_not_nullptr(self)
  _QWidget_contentsMargins(self.as_widget())
}

///|
impl AsWidget with focusPolicy(self) {
  ensure_not_nullptr(self)
  _QWidget_focusPolicy(self.as_widget())
}

///|
impl AsWidget with height(self) {
  ensure_not_nullptr(self)
  _QWidget_height(self.as_widget())
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
impl AsWidget with isMaximized(self) {
  ensure_not_nullptr(self)
  _QWidget_isMaximized(self.as_widget())
}

///|
impl AsWidget with isVisible(self) {
  ensure_not_nullptr(self)
  _QWidget_isVisible(self.as_widget())
}

///|
impl AsWidget with maximumHeight(self) {
  ensure_not_nullptr(self)
  _QWidget_maximumHeight(self.as_widget())
}

///|
impl AsWidget with maximumSize(self) {
  ensure_not_nullptr(self)
  _QWidget_maximumSize(self.as_widget())
}

///|
impl AsWidget with maximumWidth(self) {
  ensure_not_nullptr(self)
  _QWidget_maximumWidth(self.as_widget())
}

///|
impl AsWidget with minimumHeight(self) {
  ensure_not_nullptr(self)
  _QWidget_minimumHeight(self.as_widget())
}

///|
impl AsWidget with minimumSize(self) {
  ensure_not_nullptr(self)
  _QWidget_minimumSize(self.as_widget())
}

///|
impl AsWidget with minimumSizeHint(self) {
  ensure_not_nullptr(self)
  _QWidget_minimumSizeHint(self.as_widget())
}

///|
impl AsWidget with minimumWidth(self) {
  ensure_not_nullptr(self)
  _QWidget_minimumWidth(self.as_widget())
}

///|
impl AsWidget with windowIcon(self) {
  ensure_not_nullptr(self)
  _QWidget_windowIcon(self.as_widget())
}

///|
impl AsWidget with windowFlags(self) {
  ensure_not_nullptr(self)
  _QWidget_windowFlags(self.as_widget()).to_flag()
}

///|
impl AsWidget with windowHandle(self) {
  ensure_not_nullptr(self)
  _QWidget_windowHandle(self.as_widget())
}

///|
impl AsWidget with windowType(self) {
  ensure_not_nullptr(self)
  _QWidget_windowType(self.as_widget())
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
impl AsWidget with size(self) {
  ensure_not_nullptr(self)
  _QWidget_size(self.as_widget())
}

///|
impl AsWidget with setContextMenuPolicy(self, policy) {
  ensure_not_nullptr(self)
  _QWidget_setContextMenuPolicy(self.as_widget(), policy)
}

///|
impl AsWidget with setAttribute(self, attribute, on? = true) {
  ensure_not_nullptr(self)
  _QWidget_setAttribute(self.as_widget(), attribute, on)
}

///|
impl AsWidget with setEnabled(self, value) {
  ensure_not_nullptr(self)
  _QWidget_setEnabled(self.as_widget(), value)
}

///|
impl AsWidget with setFixedHeight(self, height) {
  ensure_not_nullptr(self)
  _QWidget_setFixedHeight(self.as_widget(), height)
}

///|
impl AsWidget with setFixedSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setFixedSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setFixedWidth(self, width) {
  ensure_not_nullptr(self)
  _QWidget_setFixedWidth(self.as_widget(), width)
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
impl AsWidget with setMaximumHeight(self, height) {
  ensure_not_nullptr(self)
  _QWidget_setMaximumHeight(self.as_widget(), height)
}

///|
impl AsWidget with setMaximumSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setMaximumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setMaximumWidth(self, width) {
  ensure_not_nullptr(self)
  _QWidget_setMaximumWidth(self.as_widget(), width)
}

///|
impl AsWidget with setMinimumHeight(self, height) {
  ensure_not_nullptr(self)
  _QWidget_setMinimumHeight(self.as_widget(), height)
}

///|
impl AsWidget with setMinimumSize(self, width, height) {
  ensure_not_nullptr(self)
  _QWidget_setMinimumSize(self.as_widget(), width, height)
}

///|
impl AsWidget with setMinimumWidth(self, width) {
  ensure_not_nullptr(self)
  _QWidget_setMinimumWidth(self.as_widget(), width)
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
impl AsWidget with setToolTip(self, toolTip) {
  ensure_not_nullptr(self)
  _QWidget_setToolTip(self.as_widget(), toolTip)
}

///|
impl AsWidget with setVisible(self, value) {
  ensure_not_nullptr(self)
  _QWidget_setVisible(self.as_widget(), value)
}

///|
impl AsWidget with setWindowFlag(self, flag, on? = true) {
  ensure_not_nullptr(self)
  _QWidget_setWindowFlag(self.as_widget(), flag.to_flag(), on)
}

///|
impl AsWidget with setWindowFlags(self, flags) {
  ensure_not_nullptr(self)
  _QWidget_setWindowFlags(self.as_widget(), flags.to_flag())
}

///|
impl AsWidget with setWindowIcon(self, icon) {
  ensure_not_nullptr(self)
  _QWidget_setWindowIcon(self.as_widget(), icon)
}

///|
impl AsWidget with setWindowTitle(self, title) {
  ensure_not_nullptr(self)
  _QWidget_setWindowTitle(self.as_widget(), title)
}

///|
impl AsWidget with overrideWindowFlags(self, flags) {
  ensure_not_nullptr(self)
  _QWidget_overrideWindowFlags(self.as_widget(), flags.to_flag())
}

///|
impl AsWidget with show(self) {
  ensure_not_nullptr(self)
  _QWidget_show(self.as_widget())
}

///|
impl AsWidget with showMaximized(self) {
  ensure_not_nullptr(self)
  _QWidget_showMaximized(self.as_widget())
}

///|
impl AsWidget with showMinimized(self) {
  ensure_not_nullptr(self)
  _QWidget_showMinimized(self.as_widget())
}

///|
impl AsWidget with showNormal(self) {
  ensure_not_nullptr(self)
  _QWidget_showNormal(self.as_widget())
}

///|
impl AsWidget with sizeHint(self) {
  ensure_not_nullptr(self)
  _QWidget_sizeHint(self.as_widget())
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
impl AsWidget with testAttribute(self, attribute) {
  ensure_not_nullptr(self)
  _QWidget_testAttribute(self.as_widget(), attribute)
}

///|
impl AsWidget with toolTip(self) {
  ensure_not_nullptr(self)
  _QWidget_toolTip(self.as_widget())
}

///|
impl AsWidget with updateGeometry(self) {
  ensure_not_nullptr(self)
  _QWidget_updateGeometry(self.as_widget())
}

///|
impl AsWidget with windowTitle(self) {
  ensure_not_nullptr(self)
  _QWidget_windowTitle(self.as_widget())
}

///|
impl AsWidget with width(self) {
  ensure_not_nullptr(self)
  _QWidget_width(self.as_widget())
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
