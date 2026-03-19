#include <QSize>
#include <qt.hpp>

QSTATIC(QSizeF, new, Double width, Double height)->box<QSizeF>
{
    return box<QSizeF>::make(QSizeF(width, height));
}

QMETHOD2(QSizeF, boundedTo, box<QSizeF> other)->box<QSizeF>
{
    return box<QSizeF>::make(self->boundedTo(*other));
}

QMETHOD2(QSizeF, expandedTo, box<QSizeF> other)->box<QSizeF>
{
    return box<QSizeF>::make(self->expandedTo(*other));
}

QMETHOD2(QSizeF, height)->Double
{
    return self->height();
}

QMETHOD2(QSizeF, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD2(QSizeF, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QSizeF, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QSizeF, scaled, Double width, Double height, Enum<Qt::AspectRatioMode> mode)->box<QSizeF>
{
    return box<QSizeF>::make(self->scaled(width, height, mode));
}

QMETHOD2(QSizeF, setHeight, Double value)->void
{
    self->setHeight(value);
}

QMETHOD2(QSizeF, setWidth, Double value)->void
{
    self->setWidth(value);
}

QMETHOD2(QSizeF, transposed)->box<QSizeF>
{
    return box<QSizeF>::make(self->transposed());
}

QMETHOD2(QSizeF, width)->Double
{
    return self->width();
}
