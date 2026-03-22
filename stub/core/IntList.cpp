#include <QList>
#include <qt.hpp>

using IntList = QList<Int>;

QMETHOD2(IntList, get, Int index)->Int
{
    return (*self)[index];
}

QMETHOD2(IntList, length)->Int
{
    return self->size();
}
