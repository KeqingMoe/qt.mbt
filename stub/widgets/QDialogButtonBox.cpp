#include <QAbstractButton>
#include <QDialogButtonBox>
#include <QPushButton>
#include <qt.hpp>

QSTATIC(QDialogButtonBox, new)->qt<QDialogButtonBox>
{
    return qt<QDialogButtonBox>::make();
}

QMETHOD(QDialogButtonBox, addButton, qt<QAbstractButton> button, Int role)->void
{
    self->addButton(button.get(), static_cast<QDialogButtonBox::ButtonRole>(role));
}

QMETHOD(QDialogButtonBox, centerButtons)->Bool
{
    return Bool::make(self->centerButtons());
}

QMETHOD(QDialogButtonBox, clear)->void
{
    self->clear();
}

QMETHOD(QDialogButtonBox, setCenterButtons, Bool value)->void
{
    self->setCenterButtons(value);
}

SIGNAL_DEF(QDialogButtonBox, accepted, Unit, Unit::make)

SIGNAL_DEF(QDialogButtonBox, rejected, Unit, Unit::make)

COVARIANT(QDialogButtonBox, QWidget)
