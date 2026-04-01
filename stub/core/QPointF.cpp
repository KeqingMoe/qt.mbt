#include <QPointF>
#include <qt.hpp>

QSTATIC(QPointF, new, Double x, Double y)->box<QPointF>
{
    return box<QPointF>::make(QPointF(x, y));
}

QMETHOD2(QPointF, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QPointF, setX, Double value)->void
{
    self->setX(value);
}

QMETHOD2(QPointF, setY, Double value)->void
{
    self->setY(value);
}

QMETHOD2(QPointF, x)->Double
{
    return self->x();
}

QMETHOD2(QPointF, y)->Double
{
    return self->y();
}
