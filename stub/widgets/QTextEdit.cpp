#include <QTextEdit>
#include <QTextDocument>
#include <qt.hpp>

QSTATIC(QTextEdit, new)->qt<QTextEdit>
{
    return qt<QTextEdit>::make();
}

QMETHOD(QTextEdit, acceptRichText)->Bool
{
    return Bool::make(self->acceptRichText());
}

QMETHOD(QTextEdit, alignment)->UInt64
{
    return self->alignment().toInt();
}

QMETHOD(QTextEdit, append, String text)->void
{
    self->append(str::mbt_to_qt(text));
}

QMETHOD(QTextEdit, clear)->void
{
    self->clear();
}

QMETHOD(QTextEdit, document)->qt<QTextDocument>
{
    return qt<QTextDocument>::from_raw(self->document());
}

QMETHOD(QTextEdit, documentTitle)->String
{
    return str::qt_to_mbt(self->documentTitle());
}

QMETHOD(QTextEdit, lineWrapMode)->Enum<QTextEdit::LineWrapMode>
{
    return {self->lineWrapMode()};
}

QMETHOD(QTextEdit, isReadOnly)->Bool
{
    return Bool::make(self->isReadOnly());
}

QMETHOD(QTextEdit, placeholderText)->String
{
    return str::qt_to_mbt(self->placeholderText());
}

QMETHOD(QTextEdit, redo)->void
{
    self->redo();
}

QMETHOD(QTextEdit, selectAll)->void
{
    self->selectAll();
}

QMETHOD(QTextEdit, setAcceptRichText, Bool value)->void
{
    self->setAcceptRichText(value);
}

QMETHOD(QTextEdit, setAlignment, UInt64 alignment)->void
{
    self->setAlignment(Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QTextEdit, setDocument, qt<QTextDocument> document)->void
{
    self->setDocument(document.get());
}

QMETHOD(QTextEdit, setDocumentTitle, String title)->void
{
    self->setDocumentTitle(str::mbt_to_qt(title));
}

QMETHOD(QTextEdit, setLineWrapMode, Enum<QTextEdit::LineWrapMode> mode)->void
{
    self->setLineWrapMode(mode);
}

QMETHOD(QTextEdit, setMarkdown, String text)->void
{
    self->setMarkdown(str::mbt_to_qt(text));
}

QMETHOD(QTextEdit, setPlainText, String text)->void
{
    self->setPlainText(str::mbt_to_qt(text));
}

QMETHOD(QTextEdit, setPlaceholderText, String text)->void
{
    self->setPlaceholderText(str::mbt_to_qt(text));
}

QMETHOD(QTextEdit, setReadOnly, Bool value)->void
{
    self->setReadOnly(value);
}

QMETHOD(QTextEdit, toMarkdown)->String
{
    return str::qt_to_mbt(self->toMarkdown());
}

QMETHOD(QTextEdit, toPlainText)->String
{
    return str::qt_to_mbt(self->toPlainText());
}

QMETHOD(QTextEdit, undo)->void
{
    self->undo();
}

SIGNAL_DEF(QTextEdit, textChanged, Unit, Unit::make)

COVARIANT(QTextEdit, QAbstractScrollArea)
