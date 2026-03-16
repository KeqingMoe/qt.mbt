#include <QBoxLayout>
#include <qt.hpp>

extern "C"
{
    QMETHOD(QBoxLayout, addLayout, qt<QLayout> layout)->void
    {
        self->addLayout(layout.get());
    }

    COVARIANT(QBoxLayout, QLayout)
}
