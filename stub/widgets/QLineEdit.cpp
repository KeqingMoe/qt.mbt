#include "QDebug"
#include <QLineEdit>
#include <qt.hpp>

extern "C"
{
    QSTATIC(QLineEdit, new)->qt<QLineEdit>
    {
        return qt<QLineEdit>::make();
    }

    QMETHOD(QLineEdit, setText, String text)->void
    {
        self->setText(str::mbt_to_qt(text));
    }

    QMETHOD(QLineEdit, text)->String
    {
        return str::qt_to_mbt(self->text());
    }

    SIGNAL_DEF(QLineEdit, textChanged, String, str::qt_to_mbt)

    COVARIANT(QLineEdit, QWidget)
}
