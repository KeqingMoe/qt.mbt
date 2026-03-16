#include <QHBoxLayout>
#include <qt.hpp>

extern "C"
{
    QSTATIC(QHBoxLayout, new)->qt<QHBoxLayout>
    {
        return qt<QHBoxLayout>::make();
    }

    COVARIANT(QHBoxLayout, QBoxLayout)
}
