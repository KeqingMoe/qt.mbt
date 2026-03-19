#include <QPlainTextEdit>
#include <qt.hpp>

QSTATIC(QPlainTextEdit, new)->qt<QPlainTextEdit>
{
    return qt<QPlainTextEdit>::make();
}

QMETHOD(QPlainTextEdit, appendPlainText, String text)->void
{
    self->appendPlainText(str::mbt_to_qt(text));
}

QMETHOD(QPlainTextEdit, clear)->void
{
    self->clear();
}

QMETHOD(QPlainTextEdit, isReadOnly)->Bool
{
    return Bool::make(self->isReadOnly());
}

QMETHOD(QPlainTextEdit, lineWrapMode)->Enum<QPlainTextEdit::LineWrapMode>
{
    return {self->lineWrapMode()};
}

QMETHOD(QPlainTextEdit, placeholderText)->String
{
    return str::qt_to_mbt(self->placeholderText());
}

QMETHOD(QPlainTextEdit, redo)->void
{
    self->redo();
}

QMETHOD(QPlainTextEdit, selectAll)->void
{
    self->selectAll();
}

QMETHOD(QPlainTextEdit, setLineWrapMode, Enum<QPlainTextEdit::LineWrapMode> mode)->void
{
    self->setLineWrapMode(mode);
}

QMETHOD(QPlainTextEdit, setPlaceholderText, String text)->void
{
    self->setPlaceholderText(str::mbt_to_qt(text));
}

QMETHOD(QPlainTextEdit, setPlainText, String text)->void
{
    self->setPlainText(str::mbt_to_qt(text));
}

QMETHOD(QPlainTextEdit, setReadOnly, Bool value)->void
{
    self->setReadOnly(value);
}

QMETHOD(QPlainTextEdit, toPlainText)->String
{
    return str::qt_to_mbt(self->toPlainText());
}

QMETHOD(QPlainTextEdit, undo)->void
{
    self->undo();
}

SIGNAL_DEF(QPlainTextEdit, textChanged, Unit, Unit::make)

COVARIANT(QPlainTextEdit, QAbstractScrollArea)
