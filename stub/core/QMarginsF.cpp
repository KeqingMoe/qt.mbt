#include <QMargins>
#include <qt.hpp>

QSTATIC(QMarginsF, new, Double left, Double top, Double right, Double bottom)->box<QMarginsF>
{
    return box<QMarginsF>::make(QMarginsF(left, top, right, bottom));
}

QMETHOD2(QMarginsF, bottom)->Double
{
    return self->bottom();
}

QMETHOD2(QMarginsF, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QMarginsF, left)->Double
{
    return self->left();
}

QMETHOD2(QMarginsF, right)->Double
{
    return self->right();
}

QMETHOD2(QMarginsF, setBottom, Double value)->void
{
    self->setBottom(value);
}

QMETHOD2(QMarginsF, setLeft, Double value)->void
{
    self->setLeft(value);
}

QMETHOD2(QMarginsF, setRight, Double value)->void
{
    self->setRight(value);
}

QMETHOD2(QMarginsF, setTop, Double value)->void
{
    self->setTop(value);
}

QMETHOD2(QMarginsF, top)->Double
{
    return self->top();
}
