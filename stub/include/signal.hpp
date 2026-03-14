#pragma once
#ifndef QT_MBT_STUB_SIGNAL_HPP
#define QT_MBT_STUB_SIGNAL_HPP

#include <QMetaObject>
#include <moonbridge.hpp>

template <mbt::moonbit T>
using Slot = mbt::fn<mbt::Unit(T)>;

using ErasedSlot = mbt::fat<Slot<mbt::Unit>>;

using Connection = mbt::box<QMetaObject::Connection>;

class SignalBase
{
public:
    virtual ~SignalBase() = default;

    virtual auto connect_erased(ErasedSlot slot) -> Connection = 0;
};

using ErasedSignal = mbt::fat<mbt::box<SignalBase>>;

template <mbt::moonbit T>
class Signal : public SignalBase
{
public:
    auto connect_erased(ErasedSlot slot) -> Connection final
    {
        return connect(std::bit_cast<Slot<T>>(*slot));
    }

    virtual auto connect(Slot<T> slot) -> Connection = 0;
};

extern "C"
{
    auto QObject_connect(ErasedSignal signal, ErasedSlot slot) -> Connection;

    auto QObject_disconnect(Connection connection) -> mbt::Bool;

    auto Connection_is_valid(Connection connection) -> mbt::Bool;
}

#endif
