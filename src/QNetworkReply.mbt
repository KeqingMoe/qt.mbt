///|
pub type QNetworkReply

///|
#borrow(this)
extern "C" fn _QNetworkReply_abort(this : QNetworkReply) = "QNetworkReply_abort"

///|
#borrow(this)
extern "C" fn _QNetworkReply_contentLength(this : QNetworkReply) -> Int64 = "QNetworkReply_contentLength"

///|
#borrow(this)
extern "C" fn _QNetworkReply_contentType(this : QNetworkReply) -> String = "QNetworkReply_contentType"

///|
#borrow(this)
extern "C" fn _QNetworkReply_error(this : QNetworkReply) -> NetworkError = "QNetworkReply_error"

///|
#borrow(this)
extern "C" fn _QNetworkReply_isFinished(this : QNetworkReply) -> Bool = "QNetworkReply_isFinished"

///|
#borrow(this)
extern "C" fn _QNetworkReply_isConnectionEncrypted(
  this : QNetworkReply,
) -> Bool = "QNetworkReply_isConnectionEncrypted"

///|
#borrow(this)
extern "C" fn _QNetworkReply_isRunning(this : QNetworkReply) -> Bool = "QNetworkReply_isRunning"

///|
#borrow(this)
extern "C" fn _QNetworkReply_manager(
  this : QNetworkReply,
) -> QNetworkAccessManager = "QNetworkReply_manager"

///|
#borrow(this)
extern "C" fn _QNetworkReply_operation(
  this : QNetworkReply,
) -> NetworkOperation = "QNetworkReply_operation"

///|
#borrow(this)
extern "C" fn _QNetworkReply_redirectionTarget(this : QNetworkReply) -> String = "QNetworkReply_redirectionTarget"

///|
#borrow(this)
extern "C" fn _QNetworkReply_readBufferSize(this : QNetworkReply) -> Int64 = "QNetworkReply_readBufferSize"

///|
#borrow(this)
extern "C" fn _QNetworkReply_rawHeaderList(this : QNetworkReply) -> QStringList = "QNetworkReply_rawHeaderList"

///|
#borrow(this, headerName)
extern "C" fn _QNetworkReply_hasRawHeader(
  this : QNetworkReply,
  headerName : String,
) -> Bool = "QNetworkReply_hasRawHeader"

///|
#borrow(this)
extern "C" fn _QNetworkReply_httpReasonPhrase(this : QNetworkReply) -> String = "QNetworkReply_httpReasonPhrase"

///|
#borrow(this)
extern "C" fn _QNetworkReply_httpStatusCode(this : QNetworkReply) -> Int = "QNetworkReply_httpStatusCode"

///|
#borrow(this)
extern "C" fn _QNetworkReply_originalContentLength(
  this : QNetworkReply,
) -> Int64 = "QNetworkReply_originalContentLength"

///|
#borrow(this, headerName)
extern "C" fn _QNetworkReply_rawHeader(
  this : QNetworkReply,
  headerName : String,
) -> Bytes = "QNetworkReply_rawHeader"

///|
#borrow(this)
extern "C" fn _QNetworkReply_request(this : QNetworkReply) -> QNetworkRequest = "QNetworkReply_request"

///|
#borrow(this)
extern "C" fn _QNetworkReply_url(this : QNetworkReply) -> String = "QNetworkReply_url"

///|
#borrow(this)
extern "C" fn _QNetworkReply_finished(this : QNetworkReply) -> Signal[Unit] = "QNetworkReply_finished"

///|
#borrow(this)
extern "C" fn _QNetworkReply_errorOccurred(
  this : QNetworkReply,
) -> Signal[NetworkError] = "QNetworkReply_errorOccurred"

///|
#borrow(this)
extern "C" fn _QNetworkReply_downloadProgress(
  this : QNetworkReply,
) -> Signal[NetworkProgress] = "QNetworkReply_downloadProgress"

///|
#borrow(this)
extern "C" fn _QNetworkReply_metaDataChanged(
  this : QNetworkReply,
) -> Signal[Unit] = "QNetworkReply_metaDataChanged"

///|
#borrow(this)
extern "C" fn _QNetworkReply_redirected(this : QNetworkReply) -> Signal[String] = "QNetworkReply_redirected"

///|
#borrow(this)
extern "C" fn _QNetworkReply_requestSent(this : QNetworkReply) -> Signal[Unit] = "QNetworkReply_requestSent"

///|
#borrow(this)
extern "C" fn _QNetworkReply_sourceIsFromCache(this : QNetworkReply) -> Bool = "QNetworkReply_sourceIsFromCache"

///|
#borrow(this, size)
extern "C" fn _QNetworkReply_setReadBufferSize(
  this : QNetworkReply,
  size : Int64,
) = "QNetworkReply_setReadBufferSize"

///|
#borrow(this)
extern "C" fn _QNetworkReply_socketStartedConnecting(
  this : QNetworkReply,
) -> Signal[Unit] = "QNetworkReply_socketStartedConnecting"

///|
#borrow(this)
extern "C" fn _QNetworkReply_uploadProgress(
  this : QNetworkReply,
) -> Signal[NetworkProgress] = "QNetworkReply_uploadProgress"

///|
#borrow(this)
extern "C" fn _QNetworkReply_wasHttp2Used(this : QNetworkReply) -> Bool = "QNetworkReply_wasHttp2Used"

///|
#borrow(this)
extern "C" fn _QNetworkReply_as_QIODevice(this : QNetworkReply) -> QIODevice = "QNetworkReply_as_QIODevice"

///|
pub fn QNetworkReply::abort(self : Self) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_abort(self)
}

///|
pub fn QNetworkReply::contentLength(self : Self) -> Int64 raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_contentLength(self)
}

///|
pub fn QNetworkReply::contentType(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_contentType(self)
}

///|
pub fn QNetworkReply::error(self : Self) -> NetworkError raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_error(self)
}

///|
pub fn QNetworkReply::finished(self : Self) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_finished(self)
}

///|
pub fn QNetworkReply::errorOccurred(
  self : Self,
) -> Signal[NetworkError] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_errorOccurred(self)
}

///|
pub fn QNetworkReply::downloadProgress(
  self : Self,
) -> Signal[NetworkProgress] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_downloadProgress(self)
}

///|
pub fn QNetworkReply::metaDataChanged(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_metaDataChanged(self)
}

///|
pub fn QNetworkReply::hasRawHeader(
  self : Self,
  headerName : String,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_hasRawHeader(self, headerName)
}

///|
pub fn QNetworkReply::httpReasonPhrase(
  self : Self,
) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_httpReasonPhrase(self)
}

///|
pub fn QNetworkReply::httpStatusCode(self : Self) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_httpStatusCode(self)
}

///|
pub fn QNetworkReply::isConnectionEncrypted(
  self : Self,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_isConnectionEncrypted(self)
}

///|
pub fn QNetworkReply::isFinished(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_isFinished(self)
}

///|
pub fn QNetworkReply::isRunning(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_isRunning(self)
}

///|
pub fn QNetworkReply::manager(
  self : Self,
) -> QNetworkAccessManager raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_manager(self)
}

///|
pub fn QNetworkReply::operation(
  self : Self,
) -> NetworkOperation raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_operation(self)
}

///|
pub fn QNetworkReply::redirectionTarget(
  self : Self,
) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_redirectionTarget(self)
}

///|
pub fn QNetworkReply::readBufferSize(self : Self) -> Int64 raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_readBufferSize(self)
}

///|
pub fn QNetworkReply::originalContentLength(
  self : Self,
) -> Int64 raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_originalContentLength(self)
}

///|
pub fn QNetworkReply::rawHeaderList(
  self : Self,
) -> Array[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_rawHeaderList(self).to_array()
}

///|
pub fn QNetworkReply::rawHeader(
  self : Self,
  headerName : String,
) -> Bytes raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_rawHeader(self, headerName)
}

///|
pub fn QNetworkReply::request(
  self : Self,
) -> QNetworkRequest raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_request(self)
}

///|
pub fn QNetworkReply::requestSent(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_requestSent(self)
}

///|
pub fn QNetworkReply::sourceIsFromCache(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_sourceIsFromCache(self)
}

///|
pub fn QNetworkReply::redirected(
  self : Self,
) -> Signal[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_redirected(self)
}

///|
pub fn QNetworkReply::setReadBufferSize(
  self : Self,
  size : Int64,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_setReadBufferSize(self, size)
}

///|
pub fn QNetworkReply::socketStartedConnecting(
  self : Self,
) -> Signal[Unit] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_socketStartedConnecting(self)
}

///|
pub fn QNetworkReply::uploadProgress(
  self : Self,
) -> Signal[NetworkProgress] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_uploadProgress(self)
}

///|
pub fn QNetworkReply::url(self : Self) -> String raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_url(self)
}

///|
pub fn QNetworkReply::wasHttp2Used(self : Self) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkReply_wasHttp2Used(self)
}

///|
pub impl AsObject for QNetworkReply with as_object(self) {
  _QNetworkReply_as_QIODevice(self).as_object()
}

///|
pub impl AsIODevice for QNetworkReply with as_io_device(self) {
  _QNetworkReply_as_QIODevice(self)
}
