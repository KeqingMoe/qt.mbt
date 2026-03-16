#include <QPushButton>
#include <qt.hpp>

extern "C"
{
    auto QPushButton_new() -> qt<QPushButton>
    {
        return qt<QPushButton>::make();
    }

    auto QPushButton_on_clicked(qt<QPushButton> self, fn<Unit()> cb) -> void
    {
        QObject::connect(self.get(), &QPushButton::clicked, [cb = own{cb}] {
            cb.repr();
        });
    }

    COVARIANT(QPushButton, QAbstractButton)
}
