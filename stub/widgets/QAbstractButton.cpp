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

using Pressed = SignalAdapter< //
    QAbstractButton,
    &QAbstractButton::pressed,
    Unit,
    []() {
        return Unit{};
    } //
    >;

using Released = SignalAdapter< //
    QAbstractButton,
    &QAbstractButton::released,
    Unit,
    []() {
        return Unit{};
    } //
    >;

using Toggled = SignalAdapter< //
    QAbstractButton,
    &QAbstractButton::toggled,
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

    auto QAbstractButton_pressed(qt<QAbstractButton> self) -> box<Pressed>
    {
        return box<Pressed>::make(*self.repr);
    }

    auto QAbstractButton_released(qt<QAbstractButton> self) -> box<Released>
    {
        return box<Released>::make(*self.repr);
    }

    auto QAbstractButton_toggled(qt<QAbstractButton> self) -> box<Toggled>
    {
        return box<Toggled>::make(*self.repr);
    }

    auto QAbstractButton_as_QWidget(qt<QAbstractButton> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
