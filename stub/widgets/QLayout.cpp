#include <QLayout>
#include <QWidget>
#include <qt.hpp>

extern "C"
{
    auto QLayout_addWidget(qt<QLayout> self, qt<QWidget> widget) -> void
    {
        self->addWidget(widget.get());
    }

    COVARIANT(QLayout, QObject)
}
