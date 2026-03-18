#include <QLabel>
#include <qt.hpp>

QSTATIC(QLabel, new)->qt<QLabel>
{
    return qt<QLabel>::make();
}

QMETHOD(QLabel, setText, String text)->void
{
    self->setText(str::mbt_to_qt(text));
}

QMETHOD(QLabel, setTextFormat, Int format)->void
{
    self->setTextFormat(static_cast<Qt::TextFormat>(format));
}

QMETHOD(QLabel, setWordWrap, Bool wordWrap)->void
{
    self->setWordWrap(wordWrap);
}

QMETHOD(QLabel, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD(QLabel, textFormat)->Int
{
    return self->textFormat();
}

QMETHOD(QLabel, wordWrap)->Bool
{
    return Bool::make(self->wordWrap());
}

COVARIANT(QLabel, QFrame)
