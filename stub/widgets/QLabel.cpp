#include <QLabel>
#include <qt.hpp>

extern "C"
{
    auto QLabel_new() -> qt<QLabel>
    {
        return qt<QLabel>::make();
    }

    auto QLabel_setText(qt<QLabel> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QLabel_as_QWidget(qt<QLabel> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
