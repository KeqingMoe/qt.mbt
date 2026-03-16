#include <QBoxLayout>
#include <qt.hpp>

QMETHOD(QBoxLayout, addLayout, qt<QLayout> layout)->void
{
    self->addLayout(layout.get());
}

COVARIANT(QBoxLayout, QLayout)
