#include <QRect>
#include <qt.hpp>

QSTATIC(QRectF, new, Double x, Double y, Double width, Double height)->box<QRectF>
{
    return box<QRectF>::make(QRectF(x, y, width, height));
}

QMETHOD2(QRectF, adjusted, Double dx1, Double dy1, Double dx2, Double dy2)->box<QRectF>
{
    return box<QRectF>::make(self->adjusted(dx1, dy1, dx2, dy2));
}

QMETHOD2(QRectF, bottom)->Double
{
    return self->bottom();
}

QMETHOD2(QRectF, contains, Double x, Double y)->Bool
{
    return Bool::make(self->contains(x, y));
}

QMETHOD2(QRectF, height)->Double
{
    return self->height();
}

QMETHOD2(QRectF, intersected, box<QRectF> other)->box<QRectF>
{
    return box<QRectF>::make(self->intersected(*other));
}

QMETHOD2(QRectF, intersects, box<QRectF> other)->Bool
{
    return Bool::make(self->intersects(*other));
}

QMETHOD2(QRectF, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD2(QRectF, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QRectF, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QRectF, left)->Double
{
    return self->left();
}

QMETHOD2(QRectF, normalized)->box<QRectF>
{
    return box<QRectF>::make(self->normalized());
}

QMETHOD2(QRectF, right)->Double
{
    return self->right();
}

QMETHOD2(QRectF, setBottom, Double value)->void
{
    self->setBottom(value);
}

QMETHOD2(QRectF, setHeight, Double value)->void
{
    self->setHeight(value);
}

QMETHOD2(QRectF, setLeft, Double value)->void
{
    self->setLeft(value);
}

QMETHOD2(QRectF, setRect, Double x, Double y, Double width, Double height)->void
{
    self->setRect(x, y, width, height);
}

QMETHOD2(QRectF, setRight, Double value)->void
{
    self->setRight(value);
}

QMETHOD2(QRectF, setTop, Double value)->void
{
    self->setTop(value);
}

QMETHOD2(QRectF, setWidth, Double value)->void
{
    self->setWidth(value);
}

QMETHOD2(QRectF, setX, Double value)->void
{
    self->setX(value);
}

QMETHOD2(QRectF, setY, Double value)->void
{
    self->setY(value);
}

QMETHOD2(QRectF, top)->Double
{
    return self->top();
}

QMETHOD2(QRectF, translate, Double dx, Double dy)->void
{
    self->translate(dx, dy);
}

QMETHOD2(QRectF, translated, Double dx, Double dy)->box<QRectF>
{
    return box<QRectF>::make(self->translated(dx, dy));
}

QMETHOD2(QRectF, united, box<QRectF> other)->box<QRectF>
{
    return box<QRectF>::make(self->united(*other));
}

QMETHOD2(QRectF, width)->Double
{
    return self->width();
}

QMETHOD2(QRectF, x)->Double
{
    return self->x();
}

QMETHOD2(QRectF, y)->Double
{
    return self->y();
}
