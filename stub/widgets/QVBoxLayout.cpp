#include <QVBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QVBoxLayout_new() -> qt<QVBoxLayout>
    {
        return qt<QVBoxLayout>::make();
    }

    auto QVBoxLayout_as_QLayout(qt<QVBoxLayout> self) -> qt<QLayout>
    {
        return self.cast<QLayout>();
    }
}
