#include <QHBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QHBoxLayout_new() -> qt<QHBoxLayout>
    {
        return qt<QHBoxLayout>::make();
    }

    auto QHBoxLayout_as_QLayout(qt<QHBoxLayout> self) -> qt<QLayout>
    {
        return self.cast<QLayout>();
    }
}
