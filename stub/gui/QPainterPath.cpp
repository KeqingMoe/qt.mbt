#include <QPainterPath>
#include <QPointF>
#include <QRectF>
#include <qt.hpp>

QSTATIC(QPainterPath, new)->box<QPainterPath>
{
    return box<QPainterPath>::make(QPainterPath());
}

QMETHOD2(QPainterPath, addRect, box<QRectF> rect)->void
{
    self->addRect(*rect);
}

QMETHOD2(QPainterPath, boundingRect)->box<QRectF>
{
    return box<QRectF>::make(self->boundingRect());
}

QMETHOD2(QPainterPath, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD2(QPainterPath, cubicTo, box<QPointF> c1, box<QPointF> c2, box<QPointF> end)->void
{
    self->cubicTo(*c1, *c2, *end);
}

QMETHOD2(QPainterPath, lineTo, box<QPointF> point)->void
{
    self->lineTo(*point);
}

QMETHOD2(QPainterPath, moveTo, box<QPointF> point)->void
{
    self->moveTo(*point);
}
