#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <qt.hpp>

QSTATIC(QNetworkAccessManager, new)->qt<QNetworkAccessManager>
{
    return qt<QNetworkAccessManager>::make();
}

QMETHOD(QNetworkAccessManager, autoDeleteReplies)->Bool
{
    return Bool::make(self->autoDeleteReplies());
}

QMETHOD(QNetworkAccessManager, clearAccessCache)->void
{
    self->clearAccessCache();
}

QMETHOD(QNetworkAccessManager, clearConnectionCache)->void
{
    self->clearConnectionCache();
}

QMETHOD(QNetworkAccessManager, deleteResource, box<QNetworkRequest> request)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->deleteResource(*request));
}

QMETHOD(QNetworkAccessManager, get, box<QNetworkRequest> request)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->get(*request));
}

QMETHOD(QNetworkAccessManager, head, box<QNetworkRequest> request)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->head(*request));
}

QMETHOD(QNetworkAccessManager, post, box<QNetworkRequest> request, Bytes data)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->post(*request, bytes::mbt_to_qt(data)));
}

QMETHOD(QNetworkAccessManager, put, box<QNetworkRequest> request, Bytes data)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->put(*request, bytes::mbt_to_qt(data)));
}

QMETHOD(QNetworkAccessManager, redirectPolicy)->Enum<QNetworkRequest::RedirectPolicy>
{
    return {self->redirectPolicy()};
}

QMETHOD(QNetworkAccessManager, supportedSchemes)->box<QStringList>
{
    return box<QStringList>::make(self->supportedSchemes());
}

QMETHOD(QNetworkAccessManager, setAutoDeleteReplies, Bool autoDelete)->void
{
    self->setAutoDeleteReplies(autoDelete);
}

QMETHOD(QNetworkAccessManager, setRedirectPolicy, Enum<QNetworkRequest::RedirectPolicy> policy)->void
{
    self->setRedirectPolicy(policy);
}

QMETHOD(QNetworkAccessManager, sendCustomRequest, box<QNetworkRequest> request, Bytes verb, Bytes data)->qt<QNetworkReply>
{
    return qt<QNetworkReply>::from_raw(self->sendCustomRequest(*request, bytes::mbt_to_qt(verb), bytes::mbt_to_qt(data)));
}

QMETHOD(QNetworkAccessManager, transferTimeout)->Int
{
    return self->transferTimeout();
}

QMETHOD(QNetworkAccessManager, setTransferTimeout, Int timeout)->void
{
    self->setTransferTimeout(timeout);
}

SIGNAL_DEF(QNetworkAccessManager, finished, qt<QNetworkReply>, qt<QNetworkReply>::from_raw)

COVARIANT(QNetworkAccessManager, QObject)
