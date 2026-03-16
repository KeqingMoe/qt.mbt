#include <QFrame>
#include <qt.hpp>

QSTATIC(QFrame, new)->qt<QFrame>
{
    return qt<QFrame>::make();
}

COVARIANT(QFrame, QWidget)
