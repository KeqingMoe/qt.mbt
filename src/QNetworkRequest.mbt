///|
pub type QNetworkRequest

///|
#borrow(url)
extern "C" fn _QNetworkRequest_new(url : String) -> QNetworkRequest = "QNetworkRequest_new"

///|
#borrow(this, url)
extern "C" fn _QNetworkRequest_setUrl(this : QNetworkRequest, url : String) = "QNetworkRequest_setUrl"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_contentLength(this : QNetworkRequest) -> Int64 = "QNetworkRequest_contentLength"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_contentType(this : QNetworkRequest) -> String = "QNetworkRequest_contentType"

///|
#borrow(this, headerName)
extern "C" fn _QNetworkRequest_hasRawHeader(
  this : QNetworkRequest,
  headerName : String,
) -> Bool = "QNetworkRequest_hasRawHeader"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_maximumRedirectsAllowed(
  this : QNetworkRequest,
) -> Int = "QNetworkRequest_maximumRedirectsAllowed"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_peerVerifyName(this : QNetworkRequest) -> String = "QNetworkRequest_peerVerifyName"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_priority(this : QNetworkRequest) -> Priority = "QNetworkRequest_priority"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_rawHeaderList(
  this : QNetworkRequest,
) -> QStringList = "QNetworkRequest_rawHeaderList"

///|
#borrow(this, headerName)
extern "C" fn _QNetworkRequest_rawHeader(
  this : QNetworkRequest,
  headerName : String,
) -> Bytes = "QNetworkRequest_rawHeader"

///|
#borrow(this, headerName, value)
extern "C" fn _QNetworkRequest_setRawHeader(
  this : QNetworkRequest,
  headerName : String,
  value : Bytes,
) = "QNetworkRequest_setRawHeader"

///|
#borrow(this, contentLength)
extern "C" fn _QNetworkRequest_setContentLength(
  this : QNetworkRequest,
  contentLength : Int64,
) = "QNetworkRequest_setContentLength"

///|
#borrow(this, contentType)
extern "C" fn _QNetworkRequest_setContentType(
  this : QNetworkRequest,
  contentType : String,
) = "QNetworkRequest_setContentType"

///|
#borrow(this, maximumRedirectsAllowed)
extern "C" fn _QNetworkRequest_setMaximumRedirectsAllowed(
  this : QNetworkRequest,
  maximumRedirectsAllowed : Int,
) = "QNetworkRequest_setMaximumRedirectsAllowed"

///|
#borrow(this, peerVerifyName)
extern "C" fn _QNetworkRequest_setPeerVerifyName(
  this : QNetworkRequest,
  peerVerifyName : String,
) = "QNetworkRequest_setPeerVerifyName"

///|
#borrow(this, object)
extern "C" fn _QNetworkRequest_setOriginatingObject(
  this : QNetworkRequest,
  object : QObject,
) = "QNetworkRequest_setOriginatingObject"

///|
#borrow(this, priority)
extern "C" fn _QNetworkRequest_setPriority(
  this : QNetworkRequest,
  priority : Priority,
) = "QNetworkRequest_setPriority"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_transferTimeout(this : QNetworkRequest) -> Int = "QNetworkRequest_transferTimeout"

///|
#borrow(this, timeout)
extern "C" fn _QNetworkRequest_setTransferTimeout(
  this : QNetworkRequest,
  timeout : Int,
) = "QNetworkRequest_setTransferTimeout"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_url(this : QNetworkRequest) -> String = "QNetworkRequest_url"

///|
#borrow(this)
extern "C" fn _QNetworkRequest_originatingObject(
  this : QNetworkRequest,
) -> QObject = "QNetworkRequest_originatingObject"

///|
pub fn QNetworkRequest::new(url : String) -> Self {
  _QNetworkRequest_new(url)
}

///|
pub fn QNetworkRequest::contentLength(self : Self) -> Int64 {
  _QNetworkRequest_contentLength(self)
}

///|
pub fn QNetworkRequest::contentType(self : Self) -> String {
  _QNetworkRequest_contentType(self)
}

///|
pub fn QNetworkRequest::setUrl(self : Self, url : String) -> Unit {
  _QNetworkRequest_setUrl(self, url)
}

///|
pub fn QNetworkRequest::hasRawHeader(self : Self, headerName : String) -> Bool {
  _QNetworkRequest_hasRawHeader(self, headerName)
}

///|
pub fn QNetworkRequest::maximumRedirectsAllowed(self : Self) -> Int {
  _QNetworkRequest_maximumRedirectsAllowed(self)
}

///|
pub fn QNetworkRequest::peerVerifyName(self : Self) -> String {
  _QNetworkRequest_peerVerifyName(self)
}

///|
pub fn QNetworkRequest::priority(self : Self) -> Priority {
  _QNetworkRequest_priority(self)
}

///|
pub fn QNetworkRequest::rawHeaderList(self : Self) -> Array[String] {
  _QNetworkRequest_rawHeaderList(self).to_array()
}

///|
pub fn QNetworkRequest::rawHeader(self : Self, headerName : String) -> Bytes {
  _QNetworkRequest_rawHeader(self, headerName)
}

///|
pub fn QNetworkRequest::originatingObject(self : Self) -> QObject {
  _QNetworkRequest_originatingObject(self)
}

///|
pub fn QNetworkRequest::setContentLength(
  self : Self,
  contentLength : Int64,
) -> Unit {
  _QNetworkRequest_setContentLength(self, contentLength)
}

///|
pub fn QNetworkRequest::setContentType(
  self : Self,
  contentType : String,
) -> Unit {
  _QNetworkRequest_setContentType(self, contentType)
}

///|
pub fn QNetworkRequest::setMaximumRedirectsAllowed(
  self : Self,
  maximumRedirectsAllowed : Int,
) -> Unit {
  _QNetworkRequest_setMaximumRedirectsAllowed(self, maximumRedirectsAllowed)
}

///|
pub fn QNetworkRequest::setPeerVerifyName(
  self : Self,
  peerVerifyName : String,
) -> Unit {
  _QNetworkRequest_setPeerVerifyName(self, peerVerifyName)
}

///|
pub fn QNetworkRequest::setOriginatingObject(
  self : Self,
  object : &AsObject,
) -> Unit {
  _QNetworkRequest_setOriginatingObject(self, object.as_object())
}

///|
pub fn QNetworkRequest::setPriority(self : Self, priority : Priority) -> Unit {
  _QNetworkRequest_setPriority(self, priority)
}

///|
pub fn QNetworkRequest::setRawHeader(
  self : Self,
  headerName : String,
  value : Bytes,
) -> Unit {
  _QNetworkRequest_setRawHeader(self, headerName, value)
}

///|
pub fn QNetworkRequest::setTransferTimeout(self : Self, timeout : Int) -> Unit {
  _QNetworkRequest_setTransferTimeout(self, timeout)
}

///|
pub fn QNetworkRequest::transferTimeout(self : Self) -> Int {
  _QNetworkRequest_transferTimeout(self)
}

///|
pub fn QNetworkRequest::url(self : Self) -> String {
  _QNetworkRequest_url(self)
}
