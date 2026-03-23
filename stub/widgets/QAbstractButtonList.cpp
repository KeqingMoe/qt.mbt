#include <button_group.hpp>

QMETHOD2(QAbstractButtonList, get, Int index)->qt<QAbstractButton>
{
    return qt<QAbstractButton>::from_raw((*self)[index]);
}

QMETHOD2(QAbstractButtonList, length)->Int
{
    return self->size();
}
