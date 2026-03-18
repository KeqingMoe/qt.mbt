#include <QTabWidget>
#include <qt.hpp>

QSTATIC(QTabWidget, new)->qt<QTabWidget>
{
    return qt<QTabWidget>::make();
}

QMETHOD(QTabWidget, addTab, qt<QWidget> widget, String text)->Int
{
    return self->addTab(widget.get(), str::mbt_to_qt(text));
}

QMETHOD(QTabWidget, clear)->void
{
    self->clear();
}

QMETHOD(QTabWidget, count)->Int
{
    return self->count();
}

QMETHOD(QTabWidget, currentIndex)->Int
{
    return self->currentIndex();
}

QMETHOD(QTabWidget, currentWidget)->qt<QWidget>
{
    return qt<QWidget>::make(self->currentWidget());
}

QMETHOD(QTabWidget, removeTab, Int index)->void
{
    self->removeTab(index);
}

QMETHOD(QTabWidget, setCurrentIndex, Int index)->void
{
    self->setCurrentIndex(index);
}

QMETHOD(QTabWidget, setTabText, Int index, String text)->void
{
    self->setTabText(index, str::mbt_to_qt(text));
}

QMETHOD(QTabWidget, setTabToolTip, Int index, String text)->void
{
    self->setTabToolTip(index, str::mbt_to_qt(text));
}

QMETHOD(QTabWidget, tabText, Int index)->String
{
    return str::qt_to_mbt(self->tabText(index));
}

SIGNAL_DEF(QTabWidget, currentChanged, Int, [](auto index) { return index; })

COVARIANT(QTabWidget, QWidget)
