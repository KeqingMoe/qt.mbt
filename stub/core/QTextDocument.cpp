#include <QTextDocument>
#include <qt.hpp>

QMETHOD(QTextDocument, idealWidth)->Double
{
    return self->idealWidth();
}

QMETHOD(QTextDocument, setMarkdown, String text)->void
{
    self->setMarkdown(str::mbt_to_qt(text));
}

QMETHOD(QTextDocument, setPlainText, String text)->void
{
    self->setPlainText(str::mbt_to_qt(text));
}

QMETHOD(QTextDocument, setTextWidth, Double width)->void
{
    self->setTextWidth(width);
}

QMETHOD(QTextDocument, size)->box<QSizeF>
{
    return box<QSizeF>::make(self->size());
}

COVARIANT(QTextDocument, QObject)
