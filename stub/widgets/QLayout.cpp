#include <QLayout>
#include <QWidget>
#include <qt.hpp>

QMETHOD(QLayout, addWidget, qt<QWidget> widget)->void
{
    self->addWidget(widget.get());
}

QMETHOD(QLayout, count)->Int
{
    return self->count();
}

QMETHOD(QLayout, indexOf, qt<QWidget> widget)->Int
{
    return self->indexOf(widget.get());
}

QMETHOD(QLayout, isEnabled)->Bool
{
    return Bool::make(self->isEnabled());
}

QMETHOD(QLayout, removeWidget, qt<QWidget> widget)->void
{
    self->removeWidget(widget.get());
}

QMETHOD(QLayout, setAlignment, qt<QWidget> widget, UInt64 alignment)->Bool
{
    return Bool::make(self->setAlignment(widget.get(), Qt::Alignment(std::in_place, alignment)));
}

QMETHOD(QLayout, setContentsMargins, Int left, Int top, Int right, Int bottom)->void
{
    self->setContentsMargins(left, top, right, bottom);
}

QMETHOD(QLayout, setEnabled, Bool value)->void
{
    self->setEnabled(value);
}

QMETHOD(QLayout, setLayoutAlignment, qt<QLayout> layout, UInt64 alignment)->Bool
{
    return Bool::make(self->setAlignment(layout.get(), Qt::Alignment(std::in_place, alignment)));
}

QMETHOD(QLayout, setSizeConstraint, Enum<QLayout::SizeConstraint> constraint)->void
{
    self->setSizeConstraint(constraint);
}

QMETHOD(QLayout, setSpacing, Int spacing)->void
{
    self->setSpacing(spacing);
}

QMETHOD(QLayout, sizeConstraint)->Enum<QLayout::SizeConstraint>
{
    return {self->sizeConstraint()};
}

QMETHOD(QLayout, spacing)->Int
{
    return self->spacing();
}

QMETHOD(QLayout, unsetContentsMargins)->void
{
    self->unsetContentsMargins();
}

QMETHOD(QLayout, update)->void
{
    self->update();
}

COVARIANT(QLayout, QObject)
