#include <button_group.hpp>

QSTATIC(IdToggled, new, Int id, Bool checked)->box<IdToggled>
{
    return box<IdToggled>::make(IdToggled{id, checked});
}

QMETHOD2(IdToggled, checked)->Bool
{
    return self->checked;
}

QMETHOD2(IdToggled, id)->Int
{
    return self->id;
}
