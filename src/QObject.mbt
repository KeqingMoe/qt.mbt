///|
pub type QObject

///|
extern "C" fn _QObject_new() -> QObject = "QObject_new"

///|
#borrow(signal)
#owned(slot)
extern "C" fn _QObject_connect(
  signal : &@internal.Any,
  slot : &@internal.Any,
) -> Connection = "QObject_connect"

///|
#borrow(this)
extern "C" fn _QObject_disconnect(this : Connection) -> Bool = "QObject_disconnect"

///|
#borrow(this)
extern "C" fn _QObject_is_null(this : QObject) -> Bool = "QObject_is_null"

///|
#borrow(this, block)
extern "C" fn _QObject_blockSignals(this : QObject, block : Bool) -> Bool = "QObject_blockSignals"

///|
#borrow(this)
extern "C" fn _QObject_deleteLater(this : QObject) = "QObject_deleteLater"

///|
#borrow(this)
extern "C" fn _QObject_destroyed(this : QObject) -> Signal[QObject] = "QObject_destroyed"

///|
#borrow(this)
extern "C" fn _QObject_dumpObjectInfo(this : QObject) = "QObject_dumpObjectInfo"

///|
#borrow(this)
extern "C" fn _QObject_dumpObjectTree(this : QObject) = "QObject_dumpObjectTree"

///|
#borrow(this, className)
extern "C" fn _QObject_inherits(this : QObject, className : String) -> Bool = "QObject_inherits"

///|
#borrow(this)
extern "C" fn _QObject_isWidgetType(this : QObject) -> Bool = "QObject_isWidgetType"

///|
#borrow(this)
extern "C" fn _QObject_isWindowType(this : QObject) -> Bool = "QObject_isWindowType"

///|
#borrow(this)
extern "C" fn _QObject_objectName(this : QObject) -> String = "QObject_objectName"

///|
#borrow(this)
extern "C" fn _QObject_objectNameChanged(this : QObject) -> Signal[String] = "QObject_objectNameChanged"

///|
#borrow(this)
extern "C" fn _QObject_parent(this : QObject) -> QObject = "QObject_parent"

///|
#borrow(this, name)
extern "C" fn _QObject_setObjectName(this : QObject, name : String) = "QObject_setObjectName"

///|
#borrow(this, parent)
extern "C" fn _QObject_setParent(this : QObject, parent : QObject) = "QObject_setParent"

///|
#borrow(this)
extern "C" fn _QObject_signalsBlocked(this : QObject) -> Bool = "QObject_signalsBlocked"

///|
pub(open) trait AsObject {
  as_object(Self) -> QObject
  is_null(Self) -> Bool = _
  blockSignals(Self, block : Bool) -> Bool raise NullptrError = _
  deleteLater(Self) -> Unit raise NullptrError = _
  destroyed(Self) -> Signal[QObject] raise NullptrError = _
  dumpObjectInfo(Self) -> Unit raise NullptrError = _
  dumpObjectTree(Self) -> Unit raise NullptrError = _
  inherits(Self, className : String) -> Bool raise NullptrError = _
  isWidgetType(Self) -> Bool raise NullptrError = _
  isWindowType(Self) -> Bool raise NullptrError = _
  objectName(Self) -> String raise NullptrError = _
  objectNameChanged(Self) -> Signal[String] raise NullptrError = _
  parent(Self) -> QObject raise NullptrError = _
  setObjectName(Self, name : String) -> Unit raise NullptrError = _
  setParent(Self, parent : &AsObject) -> Unit raise NullptrError = _
  signalsBlocked(Self) -> Bool raise NullptrError = _
}

///|
impl AsObject with is_null(self) {
  _QObject_is_null(self.as_object())
}

///|
impl AsObject with blockSignals(self, block) {
  ensure_not_nullptr(self)
  _QObject_blockSignals(self.as_object(), block)
}

///|
impl AsObject with deleteLater(self) {
  ensure_not_nullptr(self)
  _QObject_deleteLater(self.as_object())
}

///|
impl AsObject with destroyed(self) {
  ensure_not_nullptr(self)
  _QObject_destroyed(self.as_object())
}

///|
impl AsObject with dumpObjectInfo(self) {
  ensure_not_nullptr(self)
  _QObject_dumpObjectInfo(self.as_object())
}

///|
impl AsObject with dumpObjectTree(self) {
  ensure_not_nullptr(self)
  _QObject_dumpObjectTree(self.as_object())
}

///|
impl AsObject with inherits(self, className) {
  ensure_not_nullptr(self)
  _QObject_inherits(self.as_object(), className)
}

///|
impl AsObject with isWidgetType(self) {
  ensure_not_nullptr(self)
  _QObject_isWidgetType(self.as_object())
}

///|
impl AsObject with isWindowType(self) {
  ensure_not_nullptr(self)
  _QObject_isWindowType(self.as_object())
}

///|
impl AsObject with objectName(self) {
  ensure_not_nullptr(self)
  _QObject_objectName(self.as_object())
}

///|
impl AsObject with objectNameChanged(self) {
  ensure_not_nullptr(self)
  _QObject_objectNameChanged(self.as_object())
}

///|
impl AsObject with parent(self) {
  ensure_not_nullptr(self)
  _QObject_parent(self.as_object())
}

///|
impl AsObject with setObjectName(self, name) {
  ensure_not_nullptr(self)
  _QObject_setObjectName(self.as_object(), name)
}

///|
impl AsObject with setParent(self, parent) {
  ensure_not_nullptr(self)
  _QObject_setParent(self.as_object(), parent.as_object())
}

///|
impl AsObject with signalsBlocked(self) {
  ensure_not_nullptr(self)
  _QObject_signalsBlocked(self.as_object())
}

///|
pub fn[T] QObject::connect(
  signal : Signal[T],
  slot : (T) -> Unit,
) -> Connection {
  _QObject_connect(@internal.Itself(signal), @internal.Itself(slot))
}

///|
pub fn QObject::disconnect(connection : Connection) -> Bool {
  _QObject_disconnect(connection)
}

///|
pub fn QObject::new() -> QObject {
  _QObject_new()
}

///|
pub impl AsObject for QObject with as_object(self) {
  self
}
