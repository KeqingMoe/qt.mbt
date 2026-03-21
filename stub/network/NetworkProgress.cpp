#include <qt.hpp>

QSTATIC(NetworkProgress, new, Int64 received, Int64 total)->box<NetworkProgress>
{
    return box<NetworkProgress>::make(NetworkProgress{received, total});
}

QMETHOD2(NetworkProgress, received)->Int64
{
    return self->received;
}

QMETHOD2(NetworkProgress, total)->Int64
{
    return self->total;
}
