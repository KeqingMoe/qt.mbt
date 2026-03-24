#include <QRect>
#include <qt.hpp>

QSTATIC(QRect, new, Int x, Int y, Int width, Int height)->box<QRect>
{
    return box<QRect>::make(QRect(x, y, width, height));
}

QMETHOD2(QRect, adjusted, Int dx1, Int dy1, Int dx2, Int dy2)->box<QRect>
{
    return box<QRect>::make(self->adjusted(dx1, dy1, dx2, dy2));
}

QMETHOD2(QRect, bottom)->Int
{
    return self->bottom();
}

QMETHOD2(QRect, contains, Int x, Int y)->Bool
{
    return Bool::make(self->contains(x, y));
}

QMETHOD2(QRect, height)->Int
{
    return self->height();
}

QMETHOD2(QRect, intersected, box<QRect> other)->box<QRect>
{
    return box<QRect>::make(self->intersected(*other));
}

QMETHOD2(QRect, intersects, box<QRect> other)->Bool
{
    return Bool::make(self->intersects(*other));
}

QMETHOD2(QRect, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD2(QRect, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QRect, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QRect, left)->Int
{
    return self->left();
}

QMETHOD2(QRect, normalized)->box<QRect>
{
    return box<QRect>::make(self->normalized());
}

QMETHOD2(QRect, right)->Int
{
    return self->right();
}

QMETHOD2(QRect, setBottom, Int value)->void
{
    self->setBottom(value);
}

QMETHOD2(QRect, setHeight, Int value)->void
{
    self->setHeight(value);
}

QMETHOD2(QRect, setLeft, Int value)->void
{
    self->setLeft(value);
}

QMETHOD2(QRect, setRect, Int x, Int y, Int width, Int height)->void
{
    self->setRect(x, y, width, height);
}

QMETHOD2(QRect, setRight, Int value)->void
{
    self->setRight(value);
}

QMETHOD2(QRect, setTop, Int value)->void
{
    self->setTop(value);
}

QMETHOD2(QRect, setWidth, Int value)->void
{
    self->setWidth(value);
}

QMETHOD2(QRect, setX, Int value)->void
{
    self->setX(value);
}

QMETHOD2(QRect, setY, Int value)->void
{
    self->setY(value);
}

QMETHOD2(QRect, top)->Int
{
    return self->top();
}

QMETHOD2(QRect, translate, Int dx, Int dy)->void
{
    self->translate(dx, dy);
}

QMETHOD2(QRect, translated, Int dx, Int dy)->box<QRect>
{
    return box<QRect>::make(self->translated(dx, dy));
}

QMETHOD2(QRect, united, box<QRect> other)->box<QRect>
{
    return box<QRect>::make(self->united(*other));
}

QMETHOD2(QRect, width)->Int
{
    return self->width();
}

QMETHOD2(QRect, x)->Int
{
    return self->x();
}

QMETHOD2(QRect, y)->Int
{
    return self->y();
}
