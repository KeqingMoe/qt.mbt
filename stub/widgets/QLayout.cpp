#include <QLayout>
#include <QWidget>
#include <qt.hpp>

extern "C"
{
    auto QLayout_as_QObject(qt<QLayout> self) -> qt<QObject>
    {
        return self.cast<QObject>();
    }
}
