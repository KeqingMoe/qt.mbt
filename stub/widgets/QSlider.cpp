#include <QSlider>
#include <qt.hpp>

QSTATIC(QSlider, new, Int orientation)->qt<QSlider>
{
    return qt<QSlider>::make(static_cast<Qt::Orientation>(orientation));
}

QMETHOD(QSlider, setTickPosition, Int position)->void
{
    self->setTickPosition(static_cast<QSlider::TickPosition>(position));
}

QMETHOD(QSlider, tickPosition)->Int
{
    return self->tickPosition();
}

COVARIANT(QSlider, QAbstractSlider)
