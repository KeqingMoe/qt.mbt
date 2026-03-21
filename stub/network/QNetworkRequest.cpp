#include <QNetworkRequest>
#include <QObject>
#include <QStringList>
#include <QUrl>
#include <qt.hpp>

QSTATIC(QNetworkRequest, new, String url)->box<QNetworkRequest>
{
    return box<QNetworkRequest>::make(QNetworkRequest(QUrl(str::mbt_to_qt(url))));
}

QMETHOD2(QNetworkRequest, contentLength)->Int64
{
    return self->header(QNetworkRequest::ContentLengthHeader).toLongLong();
}

QMETHOD2(QNetworkRequest, contentType)->String
{
    return str::qt_to_mbt(self->header(QNetworkRequest::ContentTypeHeader).toString());
}

QMETHOD2(QNetworkRequest, setUrl, String url)->void
{
    self->setUrl(QUrl(str::mbt_to_qt(url)));
}

QMETHOD2(QNetworkRequest, hasRawHeader, String headerName)->Bool
{
    return Bool::make(self->hasRawHeader(str::mbt_to_qt(headerName).toUtf8()));
}

QMETHOD2(QNetworkRequest, maximumRedirectsAllowed)->Int
{
    return self->maximumRedirectsAllowed();
}

QMETHOD2(QNetworkRequest, peerVerifyName)->String
{
    return str::qt_to_mbt(self->peerVerifyName());
}

QMETHOD2(QNetworkRequest, priority)->Enum<QNetworkRequest::Priority>
{
    return {self->priority()};
}

QMETHOD2(QNetworkRequest, rawHeaderList)->box<QStringList>
{
    auto headers = self->rawHeaderList();
    auto list    = box<QStringList>::make();
    list->reserve(headers.size());
    for (auto&& header : headers) {
        list->push_back(QString::fromUtf8(header));
    }
    return list;
}

QMETHOD2(QNetworkRequest, rawHeader, String headerName)->Bytes
{
    return bytes::qt_to_mbt(self->rawHeader(str::mbt_to_qt(headerName).toUtf8()));
}

QMETHOD2(QNetworkRequest, originatingObject)->qt<QObject>
{
    return qt<QObject>::from_raw(self->originatingObject());
}

QMETHOD2(QNetworkRequest, setRawHeader, String headerName, Bytes value)->void
{
    self->setRawHeader(str::mbt_to_qt(headerName).toUtf8(), bytes::mbt_to_qt(value));
}

QMETHOD2(QNetworkRequest, setContentLength, Int64 contentLength)->void
{
    self->setHeader(QNetworkRequest::ContentLengthHeader, contentLength);
}

QMETHOD2(QNetworkRequest, setContentType, String contentType)->void
{
    self->setHeader(QNetworkRequest::ContentTypeHeader, str::mbt_to_qt(contentType));
}

QMETHOD2(QNetworkRequest, setMaximumRedirectsAllowed, Int maximumRedirectsAllowed)->void
{
    self->setMaximumRedirectsAllowed(maximumRedirectsAllowed);
}

QMETHOD2(QNetworkRequest, setPeerVerifyName, String peerVerifyName)->void
{
    self->setPeerVerifyName(str::mbt_to_qt(peerVerifyName));
}

QMETHOD2(QNetworkRequest, setOriginatingObject, qt<QObject> object)->void
{
    self->setOriginatingObject(object.get());
}

QMETHOD2(QNetworkRequest, setPriority, Enum<QNetworkRequest::Priority> priority)->void
{
    self->setPriority(priority);
}

QMETHOD2(QNetworkRequest, transferTimeout)->Int
{
    return self->transferTimeout();
}

QMETHOD2(QNetworkRequest, setTransferTimeout, Int timeout)->void
{
    self->setTransferTimeout(timeout);
}

QMETHOD2(QNetworkRequest, url)->String
{
    return str::qt_to_mbt(self->url().toString());
}
