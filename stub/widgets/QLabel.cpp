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

    auto QLabel_as_QFrame(qt<QLabel> self) -> qt<QFrame>
    {
        return self.cast<QFrame>();
    }
}
