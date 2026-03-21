#include <QNetworkReply>
#include <QStringList>
#include <qt.hpp>

QMETHOD(QNetworkReply, abort)->void
{
    self->abort();
}

QMETHOD(QNetworkReply, contentLength)->Int64
{
    return self->header(QNetworkRequest::ContentLengthHeader).toLongLong();
}

QMETHOD(QNetworkReply, contentType)->String
{
    return str::qt_to_mbt(self->header(QNetworkRequest::ContentTypeHeader).toString());
}

QMETHOD(QNetworkReply, error)->Enum<QNetworkReply::NetworkError>
{
    return {self->error()};
}

QMETHOD(QNetworkReply, isFinished)->Bool
{
    return Bool::make(self->isFinished());
}

QMETHOD(QNetworkReply, isConnectionEncrypted)->Bool
{
    return Bool::make(self->attribute(QNetworkRequest::ConnectionEncryptedAttribute).toBool());
}

QMETHOD(QNetworkReply, isRunning)->Bool
{
    return Bool::make(self->isRunning());
}

QMETHOD(QNetworkReply, manager)->qt<QNetworkAccessManager>
{
    return qt<QNetworkAccessManager>::from_raw(self->manager());
}

QMETHOD(QNetworkReply, operation)->Enum<QNetworkAccessManager::Operation>
{
    return {self->operation()};
}

QMETHOD(QNetworkReply, hasRawHeader, String headerName)->Bool
{
    return Bool::make(self->hasRawHeader(str::mbt_to_qt(headerName).toUtf8()));
}

QMETHOD(QNetworkReply, httpReasonPhrase)->String
{
    return str::qt_to_mbt(self->attribute(QNetworkRequest::HttpReasonPhraseAttribute).toString());
}

QMETHOD(QNetworkReply, httpStatusCode)->Int
{
    return self->attribute(QNetworkRequest::HttpStatusCodeAttribute).toInt();
}

QMETHOD(QNetworkReply, rawHeader, String headerName)->Bytes
{
    return bytes::qt_to_mbt(self->rawHeader(str::mbt_to_qt(headerName).toUtf8()));
}

QMETHOD(QNetworkReply, redirectionTarget)->String
{
    return str::qt_to_mbt(self->attribute(QNetworkRequest::RedirectionTargetAttribute).toUrl().toString());
}

QMETHOD(QNetworkReply, readBufferSize)->Int64
{
    return self->readBufferSize();
}

QMETHOD(QNetworkReply, originalContentLength)->Int64
{
    return self->attribute(QNetworkRequest::OriginalContentLengthAttribute).toLongLong();
}

QMETHOD(QNetworkReply, rawHeaderList)->box<QStringList>
{
    auto headers = self->rawHeaderList();
    auto list    = box<QStringList>::make();
    list->reserve(headers.size());
    for (auto&& header : headers) {
        list->push_back(QString::fromUtf8(header));
    }
    return list;
}

QMETHOD(QNetworkReply, request)->box<QNetworkRequest>
{
    return box<QNetworkRequest>::make(self->request());
}

QMETHOD(QNetworkReply, setReadBufferSize, Int64 size)->void
{
    self->setReadBufferSize(size);
}

QMETHOD(QNetworkReply, sourceIsFromCache)->Bool
{
    return Bool::make(self->attribute(QNetworkRequest::SourceIsFromCacheAttribute).toBool());
}

QMETHOD(QNetworkReply, url)->String
{
    return str::qt_to_mbt(self->url().toString());
}

QMETHOD(QNetworkReply, wasHttp2Used)->Bool
{
    return Bool::make(self->attribute(QNetworkRequest::Http2WasUsedAttribute).toBool());
}

SIGNAL_DEF(QNetworkReply, errorOccurred, Enum<QNetworkReply::NetworkError>, Enum<QNetworkReply::NetworkError>::make)

SIGNAL_DEF(QNetworkReply,
           downloadProgress,
           box<NetworkProgress>,
           [](Int64 received, Int64 total, auto&&...) -> box<NetworkProgress> {
               return box<NetworkProgress>::make(NetworkProgress{received, total});
           })

SIGNAL_DEF(QNetworkReply, finished, Unit, Unit::make)

SIGNAL_DEF(QNetworkReply, metaDataChanged, Unit, Unit::make)

SIGNAL_DEF(QNetworkReply, redirected, String, [](const QUrl& url, auto&&...) -> String {
    return str::qt_to_mbt(url.toString());
})

SIGNAL_DEF(QNetworkReply, requestSent, Unit, Unit::make)

SIGNAL_DEF(QNetworkReply, socketStartedConnecting, Unit, Unit::make)

SIGNAL_DEF(QNetworkReply,
           uploadProgress,
           box<NetworkProgress>,
           [](Int64 sent, Int64 total, auto&&...) -> box<NetworkProgress> {
               return box<NetworkProgress>::make(NetworkProgress{sent, total});
           })

COVARIANT(QNetworkReply, QIODevice)
