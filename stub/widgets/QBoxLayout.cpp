#include <QBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QBoxLayout_addLayout(qt<QBoxLayout> self, qt<QLayout> layout) -> void
    {
        self->addLayout(layout.get());
    }

    auto QBoxLayout_as_QLayout(qt<QBoxLayout> self) -> qt<QLayout>
    {
        return self.cast<QLayout>();
    }
}
