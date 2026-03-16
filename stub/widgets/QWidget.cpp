#include <QWidget>
#include <qt.hpp>

extern "C"
{
    QSTATIC(QWidget, new)->qt<QWidget>
    {
        return qt<QWidget>::make();
    }

    QMETHOD(QWidget, show)->void
    {
        self->show();
    }

    QMETHOD(QWidget, setWindowTitle, String title)->void
    {
        self->setWindowTitle(str::mbt_to_qt(title));
    }

    QMETHOD(QWidget, setLayout, qt<QLayout> layout)->void
    {
        self->setLayout(layout.get());
    }

    COVARIANT(QWidget, QObject)
}
