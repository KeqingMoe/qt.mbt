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

QMETHOD(QFormLayout, fieldGrowthPolicy)->Enum<QFormLayout::FieldGrowthPolicy>
{
    return {self->fieldGrowthPolicy()};
}

QMETHOD(QFormLayout, formAlignment)->UInt64
{
    return self->formAlignment().toInt();
}

QMETHOD(QFormLayout, labelAlignment)->UInt64
{
    return self->labelAlignment().toInt();
}

QMETHOD(QFormLayout, rowWrapPolicy)->Enum<QFormLayout::RowWrapPolicy>
{
    return {self->rowWrapPolicy()};
}

QMETHOD(QFormLayout, setFieldGrowthPolicy, Enum<QFormLayout::FieldGrowthPolicy> policy)->void
{
    self->setFieldGrowthPolicy(policy);
}

QMETHOD(QFormLayout, setFormAlignment, UInt64 alignment)->void
{
    self->setFormAlignment(Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QFormLayout, setLabelAlignment, UInt64 alignment)->void
{
    self->setLabelAlignment(Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QFormLayout, setLayout, Int row, Enum<QFormLayout::ItemRole> role, qt<QLayout> layout)->void
{
    self->setLayout(row, role, layout.get());
}

QMETHOD(QFormLayout, setRowWrapPolicy, Enum<QFormLayout::RowWrapPolicy> policy)->void
{
    self->setRowWrapPolicy(policy);
}

QMETHOD(QFormLayout, setWidget, Int row, Enum<QFormLayout::ItemRole> role, qt<QWidget> widget)->void
{
    self->setWidget(row, role, widget.get());
}

COVARIANT(QFormLayout, QLayout)
