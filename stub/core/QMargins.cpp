#include <QMargins>
#include <qt.hpp>

QSTATIC(QMargins, new, Int left, Int top, Int right, Int bottom)->box<QMargins>
{
    return box<QMargins>::make(QMargins(left, top, right, bottom));
}

QMETHOD2(QMargins, bottom)->Int
{
    return self->bottom();
}

QMETHOD2(QMargins, isNull)->Bool
{
    return Bool::make(self->isNull());
}

QMETHOD2(QMargins, left)->Int
{
    return self->left();
}

QMETHOD2(QMargins, right)->Int
{
    return self->right();
}

QMETHOD2(QMargins, setBottom, Int value)->void
{
    self->setBottom(value);
}

QMETHOD2(QMargins, setLeft, Int value)->void
{
    self->setLeft(value);
}

QMETHOD2(QMargins, setRight, Int value)->void
{
    self->setRight(value);
}

QMETHOD2(QMargins, setTop, Int value)->void
{
    self->setTop(value);
}

QMETHOD2(QMargins, top)->Int
{
    return self->top();
}
