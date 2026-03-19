#include <QAbstractSlider>
#include <qt.hpp>

QMETHOD(QAbstractSlider, hasTracking)->Bool
{
    return Bool::make(self->hasTracking());
}

QMETHOD(QAbstractSlider, invertedAppearance)->Bool
{
    return Bool::make(self->invertedAppearance());
}

QMETHOD(QAbstractSlider, invertedControls)->Bool
{
    return Bool::make(self->invertedControls());
}

QMETHOD(QAbstractSlider, isSliderDown)->Bool
{
    return Bool::make(self->isSliderDown());
}

QMETHOD(QAbstractSlider, maximum)->Int
{
    return self->maximum();
}

QMETHOD(QAbstractSlider, minimum)->Int
{
    return self->minimum();
}

QMETHOD(QAbstractSlider, orientation)->Enum<Qt::Orientation>
{
    return {self->orientation()};
}

QMETHOD(QAbstractSlider, pageStep)->Int
{
    return self->pageStep();
}

QMETHOD(QAbstractSlider, setInvertedAppearance, Bool value)->void
{
    self->setInvertedAppearance(value);
}

QMETHOD(QAbstractSlider, setInvertedControls, Bool value)->void
{
    self->setInvertedControls(value);
}

QMETHOD(QAbstractSlider, setMaximum, Int maximum)->void
{
    self->setMaximum(maximum);
}

QMETHOD(QAbstractSlider, setMinimum, Int minimum)->void
{
    self->setMinimum(minimum);
}

QMETHOD(QAbstractSlider, setOrientation, Enum<Qt::Orientation> orientation)->void
{
    self->setOrientation(orientation);
}

QMETHOD(QAbstractSlider, setPageStep, Int step)->void
{
    self->setPageStep(step);
}

QMETHOD(QAbstractSlider, setRange, Int minimum, Int maximum)->void
{
    self->setRange(minimum, maximum);
}

QMETHOD(QAbstractSlider, setSingleStep, Int value)->void
{
    self->setSingleStep(value);
}

QMETHOD(QAbstractSlider, setSliderDown, Bool value)->void
{
    self->setSliderDown(value);
}

QMETHOD(QAbstractSlider, setSliderPosition, Int position)->void
{
    self->setSliderPosition(position);
}

QMETHOD(QAbstractSlider, setTracking, Bool enable)->void
{
    self->setTracking(enable);
}

QMETHOD(QAbstractSlider, setValue, Int value)->void
{
    self->setValue(value);
}

QMETHOD(QAbstractSlider, singleStep)->Int
{
    return self->singleStep();
}

QMETHOD(QAbstractSlider, sliderPosition)->Int
{
    return self->sliderPosition();
}

QMETHOD(QAbstractSlider, triggerAction, Enum<QAbstractSlider::SliderAction> action)->void
{
    return self->triggerAction(action);
}

QMETHOD(QAbstractSlider, value)->Int
{
    return self->value();
}

SIGNAL_DEF(QAbstractSlider, actionTriggered, Int, std::identity{})

SIGNAL_DEF(QAbstractSlider, sliderMoved, Int, std::identity{})

SIGNAL_DEF(QAbstractSlider, sliderPressed, Unit, Unit::make)

SIGNAL_DEF(QAbstractSlider, sliderReleased, Unit, Unit::make)

SIGNAL_DEF(QAbstractSlider, valueChanged, Int, std::identity{})

COVARIANT(QAbstractSlider, QWidget)
