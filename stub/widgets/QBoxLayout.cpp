#include <QBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QBoxLayout_addLayout(qt<QBoxLayout> self, qt<QLayout> layout) -> void
    {
        self->addLayout(layout.get());
    }

    COVARIANT(QBoxLayout, QLayout)
}
