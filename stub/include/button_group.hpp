#pragma once
#ifndef QT_MBT_STUB_BUTTON_GROUP_HPP
#define QT_MBT_STUB_BUTTON_GROUP_HPP

#include <QAbstractButton>
#include <QList>
#include <qt.hpp>

using QAbstractButtonList = QList<QAbstractButton*>;

struct ButtonToggled
{
    qt<QAbstractButton> button;
    mbt::Bool checked;
};

struct IdToggled
{
    mbt::Int id;
    mbt::Bool checked;
};

#endif
