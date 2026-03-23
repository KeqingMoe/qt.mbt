#include <button_group.hpp>

QSTATIC(ButtonToggled, new, qt<QAbstractButton> button, Bool checked)->box<ButtonToggled>
{
    return box<ButtonToggled>::make(ButtonToggled{button, checked});
}

QMETHOD2(ButtonToggled, button)->qt<QAbstractButton>
{
    return self->button;
}

QMETHOD2(ButtonToggled, checked)->Bool
{
    return self->checked;
}
