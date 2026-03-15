#include <QAbstractButton>
#include <qt.hpp>

using Clicked = SignalAdapter< //
    QAbstractButton,
    &QAbstractButton::clicked,
    Bool,
    [](bool x) {
        return Bool::make(x);
    } //
    >;

extern "C"
{
    auto QAbstractButton_setText(qt<QAbstractButton> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QAbstractButton_clicked(qt<QAbstractButton> self) -> box<Clicked>
    {
        return box<Clicked>::make(*self.repr);
    }

    auto QAbstractButton_as_QWidget(qt<QAbstractButton> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
