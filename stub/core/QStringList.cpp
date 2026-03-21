#include <QStringList>
#include <qt.hpp>

QMETHOD2(QStringList, get, Int index)->String
{
    return str::qt_to_mbt((*self)[index]);
}

QMETHOD2(QStringList, length)->Int
{
    return self->size();
}
