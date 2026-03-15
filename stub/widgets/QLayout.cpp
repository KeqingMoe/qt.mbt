#include <QLayout>
#include <QWidget>
#include <qt.hpp>

extern "C"
{
    auto QLayout_as_QObject(qt<QLayout> self) -> qt<QObject>
    {
        return self.cast<QObject>();
    }

    auto QLayout_addWidget(qt<QLayout> self, qt<QWidget> widget) -> void
    {
        self->addWidget(widget.get());
    }
}
