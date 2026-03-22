#include <qt.hpp>

QSTATIC(SliderRange, new, Int min, Int max)->box<SliderRange>
{
    return box<SliderRange>::make(SliderRange{min, max});
}

QMETHOD2(SliderRange, max)->Int
{
    return self->max;
}

QMETHOD2(SliderRange, min)->Int
{
    return self->min;
}
