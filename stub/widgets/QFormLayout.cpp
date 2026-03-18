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

COVARIANT(QFormLayout, QLayout)
