#include <QGroupBox>
#include <qt.hpp>

QSTATIC(QGroupBox, new)->qt<QGroupBox>
{
    return qt<QGroupBox>::make();
}

QMETHOD(QGroupBox, isCheckable)->Bool
{
    return Bool::make(self->isCheckable());
}

QMETHOD(QGroupBox, isChecked)->Bool
{
    return Bool::make(self->isChecked());
}

QMETHOD(QGroupBox, isFlat)->Bool
{
    return Bool::make(self->isFlat());
}

QMETHOD(QGroupBox, alignment)->UInt64
{
    return self->alignment().toInt();
}

QMETHOD(QGroupBox, setCheckable, Bool checkable)->void
{
    self->setCheckable(checkable);
}

QMETHOD(QGroupBox, setChecked, Bool checked)->void
{
    self->setChecked(checked);
}

QMETHOD(QGroupBox, setFlat, Bool flat)->void
{
    self->setFlat(flat);
}

QMETHOD(QGroupBox, setAlignment, UInt64 alignment)->void
{
    self->setAlignment(Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QGroupBox, setTitle, String title)->void
{
    self->setTitle(str::mbt_to_qt(title));
}

QMETHOD(QGroupBox, title)->String
{
    return str::qt_to_mbt(self->title());
}

SIGNAL_DEF(QGroupBox, toggled, Bool, Bool::make)

COVARIANT(QGroupBox, QWidget)
