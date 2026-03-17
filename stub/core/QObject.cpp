#include <QObject>
#include <qt.hpp>

QMETHOD(QObject, is_null)->bool
{
    return self.is_null();
}
