#include <QTabWidget>
#include <qt.hpp>

QSTATIC(QTabWidget, new)->qt<QTabWidget>
{
    return qt<QTabWidget>::make();
}

QMETHOD(QTabWidget, addTabWithIcon, qt<QWidget> widget, box<QIcon> icon, String text)->Int
{
    return self->addTab(widget.get(), *icon, str::mbt_to_qt(text));
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
    return qt<QWidget>::from_raw(self->currentWidget());
}

QMETHOD(QTabWidget, tabIcon, Int index)->box<QIcon>
{
    return box<QIcon>::make(self->tabIcon(index));
}

QMETHOD(QTabWidget, removeTab, Int index)->void
{
    self->removeTab(index);
}

QMETHOD(QTabWidget, setCurrentIndex, Int index)->void
{
    self->setCurrentIndex(index);
}

QMETHOD(QTabWidget, setTabIcon, Int index, box<QIcon> icon)->void
{
    self->setTabIcon(index, *icon);
}

QMETHOD(QTabWidget, setTabPosition, Enum<QTabWidget::TabPosition> position)->void
{
    self->setTabPosition(position);
}

QMETHOD(QTabWidget, setTabShape, Enum<QTabWidget::TabShape> shape)->void
{
    self->setTabShape(shape);
}

QMETHOD(QTabWidget, setTabText, Int index, String text)->void
{
    self->setTabText(index, str::mbt_to_qt(text));
}

QMETHOD(QTabWidget, setTabToolTip, Int index, String text)->void
{
    self->setTabToolTip(index, str::mbt_to_qt(text));
}

QMETHOD(QTabWidget, tabPosition)->Enum<QTabWidget::TabPosition>
{
    return {self->tabPosition()};
}

QMETHOD(QTabWidget, tabShape)->Enum<QTabWidget::TabShape>
{
    return {self->tabShape()};
}

QMETHOD(QTabWidget, tabText, Int index)->String
{
    return str::qt_to_mbt(self->tabText(index));
}

SIGNAL_DEF(QTabWidget, currentChanged, Int, std::identity{})

COVARIANT(QTabWidget, QWidget)
