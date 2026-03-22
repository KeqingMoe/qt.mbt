#include <qt.hpp>

QSTATIC(SplitterMoved, new, Int position, Int index)->box<SplitterMoved>
{
    return box<SplitterMoved>::make(SplitterMoved{position, index});
}

QMETHOD2(SplitterMoved, index)->Int
{
    return self->index;
}

QMETHOD2(SplitterMoved, position)->Int
{
    return self->position;
}
