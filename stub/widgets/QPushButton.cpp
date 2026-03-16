#include <QPushButton>
#include <qt.hpp>

QSTATIC(QPushButton, new)->qt<QPushButton>
{
    return qt<QPushButton>::make();
}

QMETHOD(QPushButton, on_clicked, fn<Unit()> cb)->void
{
    QObject::connect(self.get(), &QPushButton::clicked, [cb = own{cb}] {
        cb.repr();
    });
}

COVARIANT(QPushButton, QAbstractButton)
