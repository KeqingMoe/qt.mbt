#include <QVBoxLayout>
#include <qt.hpp>

QSTATIC(QVBoxLayout, new)->qt<QVBoxLayout>
{
    return qt<QVBoxLayout>::make();
}

COVARIANT(QVBoxLayout, QBoxLayout)
