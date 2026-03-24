#include <QAbstractTextDocumentLayout>
#include <QRect>
#include <QSizeF>
#include <QTextBlock>
#include <QTextDocument>
#include <qt.hpp>

QMETHOD(QAbstractTextDocumentLayout, blockBoundingRect, box<QTextBlock> block)->box<QRectF>
{
    return box<QRectF>::make(self->blockBoundingRect(*block));
}

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
