#include <QCheckBox>
#include <qt.hpp>

QSTATIC(QCheckBox, new)->qt<QCheckBox>
{
    return qt<QCheckBox>::make();
}

QMETHOD(QCheckBox, checkState)->Int
{
    return self->checkState();
}

QMETHOD(QCheckBox, isTristate)->Bool
{
    return Bool::make(self->isTristate());
}

QMETHOD(QCheckBox, setCheckState, Int state)->void
{
    self->setCheckState(static_cast<Qt::CheckState>(state));
}

QMETHOD(QCheckBox, setTristate, Bool tristate)->void
{
    self->setTristate(tristate);
}

SIGNAL_DEF(QCheckBox, checkStateChanged, Int, [](auto state) { return state; })

COVARIANT(QCheckBox, QAbstractButton)
