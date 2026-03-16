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

COVARIANT(QLabel, QFrame)
