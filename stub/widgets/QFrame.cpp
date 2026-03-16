#include <QFrame>
#include <qt.hpp>

extern "C"
{
    QSTATIC(QFrame, new)->qt<QFrame>
    {
        return qt<QFrame>::make();
    }

    COVARIANT(QFrame, QWidget)
}
