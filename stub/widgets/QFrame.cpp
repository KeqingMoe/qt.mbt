#include <QFrame>
#include <qt.hpp>

extern "C"
{
    auto QFrame_new() -> qt<QFrame>
    {
        return qt<QFrame>::make();
    }

    COVARIANT(QFrame, QWidget)
}
