///|
pub type QNetworkAccessManager

///|
extern "C" fn _QNetworkAccessManager_new() -> QNetworkAccessManager = "QNetworkAccessManager_new"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_autoDeleteReplies(
  this : QNetworkAccessManager,
) -> Bool = "QNetworkAccessManager_autoDeleteReplies"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_clearAccessCache(
  this : QNetworkAccessManager,
) = "QNetworkAccessManager_clearAccessCache"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_clearConnectionCache(
  this : QNetworkAccessManager,
) = "QNetworkAccessManager_clearConnectionCache"

///|
#borrow(this, request)
extern "C" fn _QNetworkAccessManager_deleteResource(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
) -> QNetworkReply = "QNetworkAccessManager_deleteResource"

///|
#borrow(this, request)
extern "C" fn _QNetworkAccessManager_get(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
) -> QNetworkReply = "QNetworkAccessManager_get"

///|
#borrow(this, request)
extern "C" fn _QNetworkAccessManager_head(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
) -> QNetworkReply = "QNetworkAccessManager_head"

///|
#borrow(this, request, data)
extern "C" fn _QNetworkAccessManager_post(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
  data : Bytes,
) -> QNetworkReply = "QNetworkAccessManager_post"

///|
#borrow(this, request, data)
extern "C" fn _QNetworkAccessManager_put(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
  data : Bytes,
) -> QNetworkReply = "QNetworkAccessManager_put"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_redirectPolicy(
  this : QNetworkAccessManager,
) -> RedirectPolicy = "QNetworkAccessManager_redirectPolicy"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_supportedSchemes(
  this : QNetworkAccessManager,
) -> QStringList = "QNetworkAccessManager_supportedSchemes"

///|
#borrow(this, autoDelete)
extern "C" fn _QNetworkAccessManager_setAutoDeleteReplies(
  this : QNetworkAccessManager,
  autoDelete : Bool,
) = "QNetworkAccessManager_setAutoDeleteReplies"

///|
#borrow(this, policy)
extern "C" fn _QNetworkAccessManager_setRedirectPolicy(
  this : QNetworkAccessManager,
  policy : RedirectPolicy,
) = "QNetworkAccessManager_setRedirectPolicy"

///|
#borrow(this, request, verb, data)
extern "C" fn _QNetworkAccessManager_sendCustomRequest(
  this : QNetworkAccessManager,
  request : QNetworkRequest,
  verb : Bytes,
  data : Bytes,
) -> QNetworkReply = "QNetworkAccessManager_sendCustomRequest"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_transferTimeout(
  this : QNetworkAccessManager,
) -> Int = "QNetworkAccessManager_transferTimeout"

///|
#borrow(this, timeout)
extern "C" fn _QNetworkAccessManager_setTransferTimeout(
  this : QNetworkAccessManager,
  timeout : Int,
) = "QNetworkAccessManager_setTransferTimeout"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_finished(
  this : QNetworkAccessManager,
) -> Signal[QNetworkReply] = "QNetworkAccessManager_finished"

///|
#borrow(this)
extern "C" fn _QNetworkAccessManager_as_QObject(
  this : QNetworkAccessManager,
) -> QObject = "QNetworkAccessManager_as_QObject"

///|
pub fn QNetworkAccessManager::autoDeleteReplies(
  self : Self,
) -> Bool raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_autoDeleteReplies(self)
}

///|
pub fn QNetworkAccessManager::clearAccessCache(
  self : Self,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_clearAccessCache(self)
}

///|
pub fn QNetworkAccessManager::clearConnectionCache(
  self : Self,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_clearConnectionCache(self)
}

///|
pub fn QNetworkAccessManager::deleteResource(
  self : Self,
  request : QNetworkRequest,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_deleteResource(self, request)
}

///|
pub fn QNetworkAccessManager::get(
  self : Self,
  request : QNetworkRequest,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_get(self, request)
}

///|
pub fn QNetworkAccessManager::head(
  self : Self,
  request : QNetworkRequest,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_head(self, request)
}

///|
pub fn QNetworkAccessManager::post(
  self : Self,
  request : QNetworkRequest,
  data : Bytes,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_post(self, request, data)
}

///|
pub fn QNetworkAccessManager::put(
  self : Self,
  request : QNetworkRequest,
  data : Bytes,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_put(self, request, data)
}

///|
pub fn QNetworkAccessManager::redirectPolicy(
  self : Self,
) -> RedirectPolicy raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_redirectPolicy(self)
}

///|
pub fn QNetworkAccessManager::supportedSchemes(
  self : Self,
) -> Array[String] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_supportedSchemes(self).to_array()
}

///|
pub fn QNetworkAccessManager::setAutoDeleteReplies(
  self : Self,
  autoDelete : Bool,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_setAutoDeleteReplies(self, autoDelete)
}

///|
pub fn QNetworkAccessManager::setRedirectPolicy(
  self : Self,
  policy : RedirectPolicy,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_setRedirectPolicy(self, policy)
}

///|
pub fn QNetworkAccessManager::sendCustomRequest(
  self : Self,
  request : QNetworkRequest,
  verb : Bytes,
  data : Bytes,
) -> QNetworkReply raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_sendCustomRequest(self, request, verb, data)
}

///|
pub fn QNetworkAccessManager::setTransferTimeout(
  self : Self,
  timeout : Int,
) -> Unit raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_setTransferTimeout(self, timeout)
}

///|
pub fn QNetworkAccessManager::transferTimeout(
  self : Self,
) -> Int raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_transferTimeout(self)
}

///|
pub fn QNetworkAccessManager::finished(
  self : Self,
) -> Signal[QNetworkReply] raise NullptrError {
  ensure_not_nullptr(self)
  _QNetworkAccessManager_finished(self)
}

///|
pub fn QNetworkAccessManager::new() -> Self {
  _QNetworkAccessManager_new()
}

///|
pub impl AsObject for QNetworkAccessManager with as_object(self) {
  _QNetworkAccessManager_as_QObject(self)
}
