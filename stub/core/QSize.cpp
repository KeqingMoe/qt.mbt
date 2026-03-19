#include <QSize>
#include <qt.hpp>

QSTATIC(QSize, new, Int width, Int height)->box<QSize>
{
    return box<QSize>::make(QSize(width, height));
}

QMETHOD2(QSize, boundedTo, box<QSize> other)->box<QSize>
{
    return box<QSize>::make(self->boundedTo(*other));
}

QMETHOD2(QSize, expandedTo, box<QSize> other)->box<QSize>
{
    return box<QSize>::make(self->expandedTo(*other));
}

QMETHOD2(QSize, height)->Int
{
    return self->height();
}

QMETHOD2(QSize, isEmpty)->Bool
{
    return Bool::make(self->isEmpty());
}

QMETHOD2(QSize, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QSize, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QSize, scaled, Int width, Int height, Enum<Qt::AspectRatioMode> mode)->box<QSize>
{
    return box<QSize>::make(self->scaled(width, height, mode));
}

QMETHOD2(QSize, setHeight, Int value)->void
{
    self->setHeight(value);
}

QMETHOD2(QSize, setWidth, Int value)->void
{
    self->setWidth(value);
}

QMETHOD2(QSize, transposed)->box<QSize>
{
    return box<QSize>::make(self->transposed());
}

QMETHOD2(QSize, width)->Int
{
    return self->width();
}
