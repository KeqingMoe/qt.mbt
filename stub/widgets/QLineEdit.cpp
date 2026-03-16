#include "QDebug"
#include <QLineEdit>
#include <qt.hpp>

extern "C"
{
    auto QLineEdit_new() -> qt<QLineEdit>
    {
        return qt<QLineEdit>::make();
    }

    auto QLineEdit_setText(qt<QLineEdit> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QLineEdit_text(qt<QLineEdit> self) -> String
    {
        return str::qt_to_mbt(self->text());
    }

    SIGNAL_DEF(QLineEdit, textChanged, String, str::qt_to_mbt)

    COVARIANT(QLineEdit, QWidget)
}
