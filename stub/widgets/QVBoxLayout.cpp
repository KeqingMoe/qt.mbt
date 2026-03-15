#include <QVBoxLayout>
#include <qt.hpp>

extern "C"
{
    auto QVBoxLayout_new() -> qt<QVBoxLayout>
    {
        return qt<QVBoxLayout>::make();
    }

    auto QVBoxLayout_as_QBoxLayout(qt<QVBoxLayout> self) -> qt<QBoxLayout>
    {
        return self.cast<QBoxLayout>();
    }
}
