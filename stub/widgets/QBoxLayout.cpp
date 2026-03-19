#include <QBoxLayout>
#include <QWidget>
#include <qt.hpp>

QMETHOD(QBoxLayout, addLayout, qt<QLayout> layout, Int stretch)->void
{
    self->addLayout(layout.get(), stretch);
}

QMETHOD(QBoxLayout, addWidget, qt<QWidget> widget, Int stretch, UInt64 alignment)->void
{
    self->addWidget(widget.get(), stretch, Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QBoxLayout, addSpacing, Int spacing)->void
{
    self->addSpacing(spacing);
}

QMETHOD(QBoxLayout, addStretch, Int stretch)->void
{
    self->addStretch(stretch);
}

QMETHOD(QBoxLayout, direction)->Enum<QBoxLayout::Direction>
{
    return {self->direction()};
}

QMETHOD(QBoxLayout, insertLayout, Int index, qt<QLayout> layout, Int stretch)->void
{
    self->insertLayout(index, layout.get(), stretch);
}

QMETHOD(QBoxLayout, insertSpacing, Int index, Int spacing)->void
{
    self->insertSpacing(index, spacing);
}

QMETHOD(QBoxLayout, insertStretch, Int index, Int stretch)->void
{
    self->insertStretch(index, stretch);
}

QMETHOD(QBoxLayout, insertWidget, Int index, qt<QWidget> widget, Int stretch, UInt64 alignment)->void
{
    self->insertWidget(index, widget.get(), stretch, Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QBoxLayout, setDirection, Enum<QBoxLayout::Direction> direction)->void
{
    self->setDirection(direction);
}

COVARIANT(QBoxLayout, QLayout)
