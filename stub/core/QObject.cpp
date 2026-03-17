#include <QObject>
#include <qt.hpp>

QSTATIC(QObject, connect, ErasedSignal signal, ErasedSlot slot)->Connection
{
    return signal->repr->connect_erased(slot);
}

QSTATIC(QObject, disconnect, Connection connection)->Bool
{
    auto flag = QObject::disconnect(*connection);
    return Bool::make(flag);
}

QMETHOD(QObject, is_null)->bool
{
    return self.is_null();
}
