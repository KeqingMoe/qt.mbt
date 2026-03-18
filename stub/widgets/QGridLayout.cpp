#include <QGridLayout>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QGridLayout, new)->qt<QGridLayout>
{
    return qt<QGridLayout>::make();
}

QMETHOD(QGridLayout, addLayout, qt<QLayout> layout, Int row, Int column, Int rowSpan, Int columnSpan)->void
{
    self->addLayout(layout.get(), row, column, rowSpan, columnSpan);
}

QMETHOD(QGridLayout, addWidget, qt<QWidget> widget, Int row, Int column, Int rowSpan, Int columnSpan)->void
{
    self->addWidget(widget.get(), row, column, rowSpan, columnSpan);
}

QMETHOD(QGridLayout, horizontalSpacing)->Int
{
    return self->horizontalSpacing();
}

QMETHOD(QGridLayout, setColumnMinimumWidth, Int column, Int minSize)->void
{
    self->setColumnMinimumWidth(column, minSize);
}

QMETHOD(QGridLayout, setColumnStretch, Int column, Int stretch)->void
{
    self->setColumnStretch(column, stretch);
}

QMETHOD(QGridLayout, setHorizontalSpacing, Int spacing)->void
{
    self->setHorizontalSpacing(spacing);
}

QMETHOD(QGridLayout, setRowMinimumHeight, Int row, Int minSize)->void
{
    self->setRowMinimumHeight(row, minSize);
}

QMETHOD(QGridLayout, setRowStretch, Int row, Int stretch)->void
{
    self->setRowStretch(row, stretch);
}

QMETHOD(QGridLayout, setVerticalSpacing, Int spacing)->void
{
    self->setVerticalSpacing(spacing);
}

QMETHOD(QGridLayout, verticalSpacing)->Int
{
    return self->verticalSpacing();
}

COVARIANT(QGridLayout, QLayout)
