#include <QHBoxLayout>
#include <qt.hpp>

QSTATIC(QHBoxLayout, new)->qt<QHBoxLayout>
{
    return qt<QHBoxLayout>::make();
}

COVARIANT(QHBoxLayout, QBoxLayout)
