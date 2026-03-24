#include <QAbstractTextDocumentLayout>
#include <QSizeF>
#include <QTextDocument>
#include <qt.hpp>

QMETHOD(QAbstractTextDocumentLayout, document)->qt<QTextDocument>
{
    return qt<QTextDocument>::from_raw(self->document());
}

QMETHOD(QAbstractTextDocumentLayout, documentSize)->box<QSizeF>
{
    return box<QSizeF>::make(self->documentSize());
}

QMETHOD(QAbstractTextDocumentLayout, pageCount)->Int
{
    return self->pageCount();
}

SIGNAL_DEF(QAbstractTextDocumentLayout, documentSizeChanged, box<QSizeF>, [](const QSizeF& newSize, auto&&...) -> box<QSizeF> {
    return box<QSizeF>::make(newSize);
})

SIGNAL_DEF(QAbstractTextDocumentLayout, pageCountChanged, Int, std::identity{})

COVARIANT(QAbstractTextDocumentLayout, QObject)
