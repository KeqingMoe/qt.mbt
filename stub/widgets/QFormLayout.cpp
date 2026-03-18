#include <QFormLayout>
#include <QLayout>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QFormLayout, new)->qt<QFormLayout>
{
    return qt<QFormLayout>::make();
}

QMETHOD(QFormLayout, addRow, qt<QWidget> label, qt<QWidget> field)->void
{
    self->addRow(label.get(), field.get());
}

QMETHOD(QFormLayout, addRowLayout, qt<QLayout> layout)->void
{
    self->addRow(layout.get());
}

QMETHOD(QFormLayout, addRowWidget, qt<QWidget> widget)->void
{
    self->addRow(widget.get());
}

QMETHOD(QFormLayout, rowCount)->Int
{
    return self->rowCount();
}

QMETHOD(QFormLayout, fieldGrowthPolicy)->Int
{
    return self->fieldGrowthPolicy();
}

QMETHOD(QFormLayout, rowWrapPolicy)->Int
{
    return self->rowWrapPolicy();
}

QMETHOD(QFormLayout, setFieldGrowthPolicy, Int policy)->void
{
    self->setFieldGrowthPolicy(static_cast<QFormLayout::FieldGrowthPolicy>(policy));
}

QMETHOD(QFormLayout, setRowWrapPolicy, Int policy)->void
{
    self->setRowWrapPolicy(static_cast<QFormLayout::RowWrapPolicy>(policy));
}

QMETHOD(QFormLayout, setRowLayout, Int row, Int role, qt<QLayout> layout)->void
{
    self->setLayout(row, static_cast<QFormLayout::ItemRole>(role), layout.get());
}

QMETHOD(QFormLayout, setRowWidget, Int row, Int role, qt<QWidget> widget)->void
{
    self->setWidget(row, static_cast<QFormLayout::ItemRole>(role), widget.get());
}

COVARIANT(QFormLayout, QLayout)
