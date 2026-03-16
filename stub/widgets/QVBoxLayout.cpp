#include <QVBoxLayout>
#include <qt.hpp>

extern "C"
{
    QSTATIC(QVBoxLayout, new)-> qt<QVBoxLayout>
    {
        return qt<QVBoxLayout>::make();
    }

    COVARIANT(QVBoxLayout, QBoxLayout)
}
