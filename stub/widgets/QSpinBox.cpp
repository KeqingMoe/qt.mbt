#include <QSpinBox>
#include <qt.hpp>

QSTATIC(QSpinBox, new)->qt<QSpinBox>
{
    return qt<QSpinBox>::make();
}

QMETHOD(QSpinBox, cleanText)->String
{
    return str::qt_to_mbt(self->cleanText());
}

QMETHOD(QSpinBox, displayIntegerBase)->Int
{
    return self->displayIntegerBase();
}

QMETHOD(QSpinBox, maximum)->Int
{
    return self->maximum();
}

QMETHOD(QSpinBox, minimum)->Int
{
    return self->minimum();
}

QMETHOD(QSpinBox, prefix)->String
{
    return str::qt_to_mbt(self->prefix());
}

QMETHOD(QSpinBox, setDisplayIntegerBase, Int base)->void
{
    self->setDisplayIntegerBase(base);
}

QMETHOD(QSpinBox, setMaximum, Int maximum)->void
{
    self->setMaximum(maximum);
}

QMETHOD(QSpinBox, setMinimum, Int minimum)->void
{
    self->setMinimum(minimum);
}

QMETHOD(QSpinBox, setPrefix, String prefix)->void
{
    self->setPrefix(str::mbt_to_qt(prefix));
}

QMETHOD(QSpinBox, setRange, Int minimum, Int maximum)->void
{
    self->setRange(minimum, maximum);
}

QMETHOD(QSpinBox, setSingleStep, Int step)->void
{
    self->setSingleStep(step);
}

QMETHOD(QSpinBox, setStepType, Int stepType)->void
{
    self->setStepType(static_cast<QAbstractSpinBox::StepType>(stepType));
}

QMETHOD(QSpinBox, setSuffix, String suffix)->void
{
    self->setSuffix(str::mbt_to_qt(suffix));
}

QMETHOD(QSpinBox, setValue, Int value)->void
{
    self->setValue(value);
}

QMETHOD(QSpinBox, singleStep)->Int
{
    return self->singleStep();
}

QMETHOD(QSpinBox, stepType)->Int
{
    return self->stepType();
}

QMETHOD(QSpinBox, suffix)->String
{
    return str::qt_to_mbt(self->suffix());
}

QMETHOD(QSpinBox, value)->Int
{
    return self->value();
}

SIGNAL_DEF(QSpinBox, textChanged, String, str::qt_to_mbt)

SIGNAL_DEF(QSpinBox, valueChanged, Int, [](auto value) { return value; })

COVARIANT(QSpinBox, QAbstractSpinBox)
