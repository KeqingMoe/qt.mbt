#include <QStackedWidget>
#include <qt.hpp>

QSTATIC(QStackedWidget, new)->qt<QStackedWidget>
{
    return qt<QStackedWidget>::make();
}

QMETHOD(QStackedWidget, addWidget, qt<QWidget> widget)->Int
{
    return self->addWidget(widget.get());
}

QMETHOD(QStackedWidget, count)->Int
{
    return self->count();
}

QMETHOD(QStackedWidget, currentIndex)->Int
{
    return self->currentIndex();
}

QMETHOD(QStackedWidget, currentWidget)->qt<QWidget>
{
    return qt<QWidget>::make(self->currentWidget());
}

QMETHOD(QStackedWidget, setCurrentIndex, Int index)->void
{
    self->setCurrentIndex(index);
}

QMETHOD(QStackedWidget, setCurrentWidget, qt<QWidget> widget)->void
{
    self->setCurrentWidget(widget.get());
}

SIGNAL_DEF(QStackedWidget, currentChanged, Int, [](auto index) { return index; })

COVARIANT(QStackedWidget, QFrame)
