#include <QCheckBox>
#include <qt.hpp>

QSTATIC(QCheckBox, new)->qt<QCheckBox>
{
    return qt<QCheckBox>::make();
}

QMETHOD(QCheckBox, checkState)->Enum<Qt::CheckState>
{
    return {self->checkState()};
}

QMETHOD(QCheckBox, isTristate)->Bool
{
    return Bool::make(self->isTristate());
}

QMETHOD(QCheckBox, setCheckState, Enum<Qt::CheckState> state)->void
{
    self->setCheckState(state);
}

QMETHOD(QCheckBox, setTristate, Bool tristate)->void
{
    self->setTristate(tristate);
}

SIGNAL_DEF(QCheckBox, checkStateChanged, Enum<Qt::CheckState>, Enum<Qt::CheckState>::make)

COVARIANT(QCheckBox, QAbstractButton)
