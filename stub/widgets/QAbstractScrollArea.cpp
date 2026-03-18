#include <QAbstractScrollArea>
#include <qt.hpp>

QMETHOD(QAbstractScrollArea, horizontalScrollBarPolicy)->Int
{
    return self->horizontalScrollBarPolicy();
}

QMETHOD(QAbstractScrollArea, setHorizontalScrollBarPolicy, Int policy)->void
{
    self->setHorizontalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(policy));
}

QMETHOD(QAbstractScrollArea, setVerticalScrollBarPolicy, Int policy)->void
{
    self->setVerticalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(policy));
}

QMETHOD(QAbstractScrollArea, verticalScrollBarPolicy)->Int
{
    return self->verticalScrollBarPolicy();
}

QMETHOD(QAbstractScrollArea, viewport)->qt<QWidget>
{
    return qt<QWidget>::make(self->viewport());
}

COVARIANT(QAbstractScrollArea, QFrame)
