#include <QLineEdit>
#include <qt.hpp>

QSTATIC(QLineEdit, new)->qt<QLineEdit>
{
    return qt<QLineEdit>::make();
}

QMETHOD(QLineEdit, clear)->void
{
    self->clear();
}

QMETHOD(QLineEdit, copy)->void
{
    self->copy();
}

QMETHOD(QLineEdit, cut)->void
{
    self->cut();
}

QMETHOD(QLineEdit, echoMode)->Enum<QLineEdit::EchoMode>
{
    return {self->echoMode()};
}

QMETHOD(QLineEdit, hasSelectedText)->Bool
{
    return Bool::make(self->hasSelectedText());
}

QMETHOD(QLineEdit, isModified)->Bool
{
    return Bool::make(self->isModified());
}

QMETHOD(QLineEdit, isReadOnly)->Bool
{
    return Bool::make(self->isReadOnly());
}

QMETHOD(QLineEdit, isRedoAvailable)->Bool
{
    return Bool::make(self->isRedoAvailable());
}

QMETHOD(QLineEdit, isUndoAvailable)->Bool
{
    return Bool::make(self->isUndoAvailable());
}

QMETHOD(QLineEdit, placeholderText)->String
{
    return str::qt_to_mbt(self->placeholderText());
}

QMETHOD(QLineEdit, redo)->void
{
    self->redo();
}

QMETHOD(QLineEdit, selectAll)->void
{
    self->selectAll();
}

QMETHOD(QLineEdit, selectedText)->String
{
    return str::qt_to_mbt(self->selectedText());
}

QMETHOD(QLineEdit, setEchoMode, Enum<QLineEdit::EchoMode> mode)->void
{
    self->setEchoMode(mode);
}

QMETHOD(QLineEdit, setModified, Bool modified)->void
{
    self->setModified(modified);
}

QMETHOD(QLineEdit, setPlaceholderText, String text)->void
{
    self->setPlaceholderText(str::mbt_to_qt(text));
}

QMETHOD(QLineEdit, setReadOnly, Bool readOnly)->void
{
    self->setReadOnly(readOnly);
}

QMETHOD(QLineEdit, setText, String text)->void
{
    self->setText(str::mbt_to_qt(text));
}

QMETHOD(QLineEdit, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD(QLineEdit, undo)->void
{
    self->undo();
}

SIGNAL_DEF(QLineEdit, textChanged, String, str::qt_to_mbt)

COVARIANT(QLineEdit, QWidget)
