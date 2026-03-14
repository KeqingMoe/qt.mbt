#include <QObject>
#include <signal.hpp>

auto QObject_connect(ErasedSignal signal, ErasedSlot slot) -> Connection
{
    return signal->repr->connect_erased(slot);
}

auto QObject_disconnect(Connection connection) -> mbt::Bool
{
    auto flag = QObject::disconnect(*connection);
    return mbt::Bool::make(flag);
}

auto Connection_is_valid(Connection connection) -> mbt::Bool
{
    auto flag = static_cast<bool>(*connection);
    return mbt::Bool::make(flag);
}
