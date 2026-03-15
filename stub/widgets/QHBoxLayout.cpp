#include <QHBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QHBoxLayout_new() -> qt<QHBoxLayout>
    {
        return qt<QHBoxLayout>::make();
    }

    auto QHBoxLayout_as_QBoxLayout(qt<QHBoxLayout> self) -> qt<QBoxLayout>
    {
        return self.cast<QBoxLayout>();
    }
}
