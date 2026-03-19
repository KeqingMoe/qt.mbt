#include <QAbstractSpinBox>
#include <qt.hpp>

QMETHOD(QAbstractSpinBox, buttonSymbols)->Int
{
    return self->buttonSymbols();
}

QMETHOD(QAbstractSpinBox, clear)->void
{
    self->clear();
}

QMETHOD(QAbstractSpinBox, correctionMode)->Int
{
    return self->correctionMode();
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

QMETHOD(QAbstractSpinBox, setButtonSymbols, Int value)->void
{
    self->setButtonSymbols(static_cast<QAbstractSpinBox::ButtonSymbols>(value));
}

QMETHOD(QAbstractSpinBox, setCorrectionMode, Int value)->void
{
    self->setCorrectionMode(static_cast<QAbstractSpinBox::CorrectionMode>(value));
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
