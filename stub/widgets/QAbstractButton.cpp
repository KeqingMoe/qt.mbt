#include <QAbstractButton>
#include <qt.hpp>

extern "C"
{
    auto QAbstractButton_setText(qt<QAbstractButton> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    SIGNAL_DEF(QAbstractButton, clicked, Bool, Bool::make)

    SIGNAL_DEF(QAbstractButton, pressed, Unit, Unit::make)

    SIGNAL_DEF(QAbstractButton, released, Unit, Unit::make)

    SIGNAL_DEF(QAbstractButton, toggled, Bool, Bool::make)

    COVARIANT(QAbstractButton, QWidget)
}
