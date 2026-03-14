#include <QPushButton>
#include <qt.hpp>

using Clicked = SignalAdapter< //
    QPushButton,
    &QPushButton::clicked,
    Bool,
    [](bool x) {
        return Bool::make(x);
    } //
    >;

extern "C"
{
    auto QPushButton_new() -> qt<QPushButton>
    {
        return qt<QPushButton>::make();
    }

    auto QPushButton_setText(qt<QPushButton> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QPushButton_on_clicked(qt<QPushButton> self, fn<Unit()> cb) -> void
    {
        QObject::connect(self.get(), &QPushButton::clicked, [cb = own{cb}] {
            cb.repr();
        });
    }

    auto QPushButton_clicked(qt<QPushButton> self) -> box<Clicked>
    {
        return box<Clicked>::make(*self.repr);
    }

    auto QPushButton_as_QWidget(qt<QPushButton> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
