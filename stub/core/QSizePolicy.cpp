#include <QSizePolicy>
#include <qt.hpp>

QSTATIC(QSizePolicy, new, Enum<QSizePolicy::Policy> horizontal, Enum<QSizePolicy::Policy> vertical)->box<QSizePolicy>
{
    return box<QSizePolicy>::make(QSizePolicy(horizontal, vertical));
}

QMETHOD2(QSizePolicy, controlTypes)->UInt64
{
    return static_cast<UInt64>(self->controlType());
}

QMETHOD2(QSizePolicy, hasHeightForWidth)->Bool
{
    return Bool::make(self->hasHeightForWidth());
}

QMETHOD2(QSizePolicy, hasWidthForHeight)->Bool
{
    return Bool::make(self->hasWidthForHeight());
}

QMETHOD2(QSizePolicy, horizontalPolicy)->Enum<QSizePolicy::Policy>
{
    return {self->horizontalPolicy()};
}

QMETHOD2(QSizePolicy, horizontalStretch)->Int
{
    return self->horizontalStretch();
}

QMETHOD2(QSizePolicy, retainSizeWhenHidden)->Bool
{
    return Bool::make(self->retainSizeWhenHidden());
}

QMETHOD2(QSizePolicy, setControlTypes, UInt64 controlTypes)->void
{
    self->setControlType(static_cast<QSizePolicy::ControlType>(controlTypes));
}

QMETHOD2(QSizePolicy, setHeightForWidth, Bool value)->void
{
    self->setHeightForWidth(value);
}

QMETHOD2(QSizePolicy, setHorizontalPolicy, Enum<QSizePolicy::Policy> policy)->void
{
    self->setHorizontalPolicy(policy);
}

QMETHOD2(QSizePolicy, setHorizontalStretch, Int stretch)->void
{
    self->setHorizontalStretch(static_cast<uchar>(stretch));
}

QMETHOD2(QSizePolicy, setRetainSizeWhenHidden, Bool value)->void
{
    self->setRetainSizeWhenHidden(value);
}

QMETHOD2(QSizePolicy, setVerticalPolicy, Enum<QSizePolicy::Policy> policy)->void
{
    self->setVerticalPolicy(policy);
}

QMETHOD2(QSizePolicy, setVerticalStretch, Int stretch)->void
{
    self->setVerticalStretch(static_cast<uchar>(stretch));
}

QMETHOD2(QSizePolicy, transpose)->void
{
    self->transpose();
}

QMETHOD2(QSizePolicy, transposed)->box<QSizePolicy>
{
    return box<QSizePolicy>::make(self->transposed());
}

QMETHOD2(QSizePolicy, verticalPolicy)->Enum<QSizePolicy::Policy>
{
    return {self->verticalPolicy()};
}

QMETHOD2(QSizePolicy, verticalStretch)->Int
{
    return self->verticalStretch();
}
