#include <QSlider>
#include <qt.hpp>

QSTATIC(QSlider, new, Enum<Qt::Orientation> orientation)->qt<QSlider>
{
    return qt<QSlider>::make(orientation);
}

QMETHOD(QSlider, setTickPosition, Enum<QSlider::TickPosition> position)->void
{
    self->setTickPosition(position);
}

QMETHOD(QSlider, tickPosition)->Enum<QSlider::TickPosition>
{
    return {self->tickPosition()};
}

COVARIANT(QSlider, QAbstractSlider)
