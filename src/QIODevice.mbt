///|
pub type QIODevice

///|
#borrow(this)
extern "C" fn _QIODevice_as_QObject(this : QIODevice) -> QObject = "QIODevice_as_QObject"

///|
#borrow(this)
extern "C" fn _QIODevice_aboutToClose(this : QIODevice) -> Signal[Unit] = "QIODevice_aboutToClose"

///|
#borrow(this)
extern "C" fn _QIODevice_atEnd(this : QIODevice) -> Bool = "QIODevice_atEnd"

///|
#borrow(this)
extern "C" fn _QIODevice_bytesAvailable(this : QIODevice) -> Int64 = "QIODevice_bytesAvailable"

///|
#borrow(this)
extern "C" fn _QIODevice_canReadLine(this : QIODevice) -> Bool = "QIODevice_canReadLine"

///|
#borrow(this)
extern "C" fn _QIODevice_close(this : QIODevice) = "QIODevice_close"

///|
#borrow(this)
extern "C" fn _QIODevice_errorString(this : QIODevice) -> String = "QIODevice_errorString"

///|
#borrow(this)
extern "C" fn _QIODevice_isSequential(this : QIODevice) -> Bool = "QIODevice_isSequential"

///|
#borrow(this)
extern "C" fn _QIODevice_readAll(this : QIODevice) -> Bytes = "QIODevice_readAll"

///|
#borrow(this, maxlen)
extern "C" fn _QIODevice_readLine(this : QIODevice, maxlen : Int64) -> Bytes = "QIODevice_readLine"

///|
#borrow(this)
extern "C" fn _QIODevice_readyRead(this : QIODevice) -> Signal[Unit] = "QIODevice_readyRead"

///|
#borrow(this)
extern "C" fn _QIODevice_readChannelFinished(this : QIODevice) -> Signal[Unit] = "QIODevice_readChannelFinished"

///|
#borrow(this, msecs)
extern "C" fn _QIODevice_waitForReadyRead(
  this : QIODevice,
  msecs : Int,
) -> Bool = "QIODevice_waitForReadyRead"

///|
pub(open) trait AsIODevice: AsObject {
  as_io_device(Self) -> QIODevice
  aboutToClose(Self) -> Signal[Unit] raise NullptrError = _
  atEnd(Self) -> Bool raise NullptrError = _
  bytesAvailable(Self) -> Int64 raise NullptrError = _
  canReadLine(Self) -> Bool raise NullptrError = _
  close(Self) -> Unit raise NullptrError = _
  errorString(Self) -> String raise NullptrError = _
  isSequential(Self) -> Bool raise NullptrError = _
  readAll(Self) -> Bytes raise NullptrError = _
  readChannelFinished(Self) -> Signal[Unit] raise NullptrError = _
  readLine(Self, maxlen? : Int64) -> Bytes raise NullptrError = _
  readyRead(Self) -> Signal[Unit] raise NullptrError = _
  waitForReadyRead(Self, msecs : Int) -> Bool raise NullptrError = _
}

///|
impl AsIODevice with aboutToClose(self) {
  ensure_not_nullptr(self)
  _QIODevice_aboutToClose(self.as_io_device())
}

///|
impl AsIODevice with atEnd(self) {
  ensure_not_nullptr(self)
  _QIODevice_atEnd(self.as_io_device())
}

///|
impl AsIODevice with bytesAvailable(self) {
  ensure_not_nullptr(self)
  _QIODevice_bytesAvailable(self.as_io_device())
}

///|
impl AsIODevice with canReadLine(self) {
  ensure_not_nullptr(self)
  _QIODevice_canReadLine(self.as_io_device())
}

///|
impl AsIODevice with close(self) {
  ensure_not_nullptr(self)
  _QIODevice_close(self.as_io_device())
}

///|
impl AsIODevice with errorString(self) {
  ensure_not_nullptr(self)
  _QIODevice_errorString(self.as_io_device())
}

///|
impl AsIODevice with isSequential(self) {
  ensure_not_nullptr(self)
  _QIODevice_isSequential(self.as_io_device())
}

///|
impl AsIODevice with readAll(self) {
  ensure_not_nullptr(self)
  _QIODevice_readAll(self.as_io_device())
}

///|
impl AsIODevice with readChannelFinished(self) {
  ensure_not_nullptr(self)
  _QIODevice_readChannelFinished(self.as_io_device())
}

///|
impl AsIODevice with readLine(self, maxlen? = 0L) {
  ensure_not_nullptr(self)
  _QIODevice_readLine(self.as_io_device(), maxlen)
}

///|
impl AsIODevice with readyRead(self) {
  ensure_not_nullptr(self)
  _QIODevice_readyRead(self.as_io_device())
}

///|
impl AsIODevice with waitForReadyRead(self, msecs) {
  ensure_not_nullptr(self)
  _QIODevice_waitForReadyRead(self.as_io_device(), msecs)
}

///|
pub impl AsObject for QIODevice with as_object(self) {
  _QIODevice_as_QObject(self)
}

///|
pub impl AsIODevice for QIODevice with as_io_device(self) {
  self
}
