#include <QAbstractScrollArea>
#include <qt.hpp>

QMETHOD(QAbstractScrollArea, addScrollBarWidget, qt<QWidget> widget, UInt64 alignment)->void
{
    self->addScrollBarWidget(widget.get(), Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QAbstractScrollArea, horizontalScrollBarPolicy)->Enum<Qt::ScrollBarPolicy>
{
    return {self->horizontalScrollBarPolicy()};
}

QMETHOD(QAbstractScrollArea, setHorizontalScrollBarPolicy, Enum<Qt::ScrollBarPolicy> policy)->void
{
    self->setHorizontalScrollBarPolicy(policy);
}

QMETHOD(QAbstractScrollArea, setSizeAdjustPolicy, Enum<QAbstractScrollArea::SizeAdjustPolicy> policy)->void
{
    self->setSizeAdjustPolicy(policy);
}

QMETHOD(QAbstractScrollArea, setVerticalScrollBarPolicy, Enum<Qt::ScrollBarPolicy> policy)->void
{
    self->setVerticalScrollBarPolicy(policy);
}

QMETHOD(QAbstractScrollArea, sizeAdjustPolicy)->Enum<QAbstractScrollArea::SizeAdjustPolicy>
{
    return {self->sizeAdjustPolicy()};
}

QMETHOD(QAbstractScrollArea, verticalScrollBarPolicy)->Enum<Qt::ScrollBarPolicy>
{
    return {self->verticalScrollBarPolicy()};
}

QMETHOD(QAbstractScrollArea, viewport)->qt<QWidget>
{
    return qt<QWidget>::from_raw(self->viewport());
}

COVARIANT(QAbstractScrollArea, QFrame)
