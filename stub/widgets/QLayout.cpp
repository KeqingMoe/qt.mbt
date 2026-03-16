#include <QLayout>
#include <QWidget>
#include <qt.hpp>

extern "C"
{
    QMETHOD(QLayout, addWidget, qt<QWidget> widget)->void
    {
        self->addWidget(widget.get());
    }

    COVARIANT(QLayout, QObject)
}
