#include <QFrame>
#include <qt.hpp>

extern "C"
{
    auto QFrame_new() -> qt<QFrame>
    {
        return qt<QFrame>::make();
    }

    auto QFrame_as_QWidget(qt<QFrame> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
