#include <QWidget>
#include <qt.hpp>

extern "C"
{
    auto QWidget_new() -> qt<QWidget>
    {
        return qt<QWidget>::make();
    }

    auto QWidget_show(qt<QWidget> self) -> void
    {
        self->show();
    }

    auto QWidget_setWindowTitle(qt<QWidget> self, String title) -> void
    {
        self->setWindowTitle(str::mbt_to_qt(title));
    }

    auto QWidget_as_QObject(qt<QWidget> self) -> qt<QObject>
    {
        return self.cast<QObject>();
    }

    auto QWidget_setLayout(qt<QWidget> self, qt<QLayout> layout)
    {
        self->setLayout(layout.get());
    }
}
