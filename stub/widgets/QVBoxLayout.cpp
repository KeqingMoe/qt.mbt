#include <QVBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QVBoxLayout_new() -> qt<QVBoxLayout>
    {
        return qt<QVBoxLayout>::make();
    }

    COVARIANT(QVBoxLayout, QBoxLayout)
}
