#include <QProgressBar>
#include <qt.hpp>

QSTATIC(QProgressBar, new)->qt<QProgressBar>
{
    return qt<QProgressBar>::make();
}

QMETHOD(QProgressBar, format)->String
{
    return str::qt_to_mbt(self->format());
}

QMETHOD(QProgressBar, isTextVisible)->Bool
{
    return Bool::make(self->isTextVisible());
}

QMETHOD(QProgressBar, maximum)->Int
{
    return self->maximum();
}

QMETHOD(QProgressBar, minimum)->Int
{
    return self->minimum();
}

QMETHOD(QProgressBar, reset)->void
{
    self->reset();
}

QMETHOD(QProgressBar, setFormat, String format)->void
{
    self->setFormat(str::mbt_to_qt(format));
}

QMETHOD(QProgressBar, setMaximum, Int maximum)->void
{
    self->setMaximum(maximum);
}

QMETHOD(QProgressBar, setMinimum, Int minimum)->void
{
    self->setMinimum(minimum);
}

QMETHOD(QProgressBar, setRange, Int minimum, Int maximum)->void
{
    self->setRange(minimum, maximum);
}

QMETHOD(QProgressBar, setTextVisible, Bool visible)->void
{
    self->setTextVisible(visible);
}

QMETHOD(QProgressBar, setValue, Int value)->void
{
    self->setValue(value);
}

QMETHOD(QProgressBar, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD(QProgressBar, value)->Int
{
    return self->value();
}

SIGNAL_DEF(QProgressBar, valueChanged, Int, std::identity{})

COVARIANT(QProgressBar, QWidget)
