#include <QHBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QHBoxLayout_new() -> qt<QHBoxLayout>
    {
        return qt<QHBoxLayout>::make();
    }

    COVARIANT(QHBoxLayout, QBoxLayout)
}
