#include <QPushButton>
#include <qt.hpp>

QSTATIC(QPushButton, new)->qt<QPushButton>
{
    return qt<QPushButton>::make();
}

COVARIANT(QPushButton, QAbstractButton)
