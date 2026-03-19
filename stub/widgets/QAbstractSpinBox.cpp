#include <QAbstractSpinBox>
#include <qt.hpp>

QMETHOD(QAbstractSpinBox, buttonSymbols)->Enum<QAbstractSpinBox::ButtonSymbols>
{
    return {self->buttonSymbols()};
}

QMETHOD(QAbstractSpinBox, alignment)->UInt64
{
    return self->alignment().toInt();
}

QMETHOD(QAbstractSpinBox, clear)->void
{
    self->clear();
}

QMETHOD(QAbstractSpinBox, correctionMode)->Enum<QAbstractSpinBox::CorrectionMode>
{
    return {self->correctionMode()};
}

QMETHOD(QAbstractSpinBox, hasAcceptableInput)->Bool
{
    return Bool::make(self->hasAcceptableInput());
}

QMETHOD(QAbstractSpinBox, hasFrame)->Bool
{
    return Bool::make(self->hasFrame());
}

QMETHOD(QAbstractSpinBox, isAccelerated)->Bool
{
    return Bool::make(self->isAccelerated());
}

QMETHOD(QAbstractSpinBox, isReadOnly)->Bool
{
    return Bool::make(self->isReadOnly());
}

QMETHOD(QAbstractSpinBox, isWrapping)->Bool
{
    return Bool::make(self->wrapping());
}

QMETHOD(QAbstractSpinBox, selectAll)->void
{
    self->selectAll();
}

QMETHOD(QAbstractSpinBox, setAccelerated, Bool value)->void
{
    self->setAccelerated(value);
}

QMETHOD(QAbstractSpinBox, setAlignment, UInt64 value)->void
{
    self->setAlignment(Qt::Alignment(std::in_place, value));
}

QMETHOD(QAbstractSpinBox, setButtonSymbols, Enum<QAbstractSpinBox::ButtonSymbols> value)->void
{
    self->setButtonSymbols(value);
}

QMETHOD(QAbstractSpinBox, setCorrectionMode, Enum<QAbstractSpinBox::CorrectionMode> value)->void
{
    self->setCorrectionMode(value);
}

QMETHOD(QAbstractSpinBox, setFrame, Bool value)->void
{
    self->setFrame(value);
}

QMETHOD(QAbstractSpinBox, setReadOnly, Bool value)->void
{
    self->setReadOnly(value);
}

QMETHOD(QAbstractSpinBox, setSpecialValueText, String text)->void
{
    self->setSpecialValueText(str::mbt_to_qt(text));
}

QMETHOD(QAbstractSpinBox, setWrapping, Bool value)->void
{
    self->setWrapping(value);
}

QMETHOD(QAbstractSpinBox, specialValueText)->String
{
    return str::qt_to_mbt(self->specialValueText());
}

QMETHOD(QAbstractSpinBox, text)->String
{
    return str::qt_to_mbt(self->text());
}

SIGNAL_DEF(QAbstractSpinBox, editingFinished, Unit, Unit::make)

COVARIANT(QAbstractSpinBox, QWidget)
