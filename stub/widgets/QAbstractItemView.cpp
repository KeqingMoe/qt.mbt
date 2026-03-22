#include <QAbstractItemView>
#include <QSize>
#include <qt.hpp>

QMETHOD(QAbstractItemView, alternatingRowColors)->Bool
{
    return Bool::make(self->alternatingRowColors());
}

QMETHOD(QAbstractItemView, autoScrollMargin)->Int
{
    return self->autoScrollMargin();
}

QMETHOD(QAbstractItemView, clearSelection)->void
{
    self->clearSelection();
}

QMETHOD(QAbstractItemView, doItemsLayout)->void
{
    self->doItemsLayout();
}

QMETHOD(QAbstractItemView, hasAutoScroll)->Bool
{
    return Bool::make(self->hasAutoScroll());
}

QMETHOD(QAbstractItemView, horizontalScrollMode)->Enum<QAbstractItemView::ScrollMode>
{
    return {self->horizontalScrollMode()};
}

QMETHOD(QAbstractItemView, iconSize)->box<QSize>
{
    return box<QSize>::make(self->iconSize());
}

QMETHOD(QAbstractItemView, reset)->void
{
    self->reset();
}

QMETHOD(QAbstractItemView, scrollToBottom)->void
{
    self->scrollToBottom();
}

QMETHOD(QAbstractItemView, scrollToTop)->void
{
    self->scrollToTop();
}

QMETHOD(QAbstractItemView, selectAll)->void
{
    self->selectAll();
}

QMETHOD(QAbstractItemView, selectionBehavior)->Enum<QAbstractItemView::SelectionBehavior>
{
    return {self->selectionBehavior()};
}

QMETHOD(QAbstractItemView, selectionMode)->Enum<QAbstractItemView::SelectionMode>
{
    return {self->selectionMode()};
}

QMETHOD(QAbstractItemView, setAlternatingRowColors, Bool value)->void
{
    self->setAlternatingRowColors(value);
}

QMETHOD(QAbstractItemView, setAutoScroll, Bool enable)->void
{
    self->setAutoScroll(enable);
}

QMETHOD(QAbstractItemView, setAutoScrollMargin, Int margin)->void
{
    self->setAutoScrollMargin(margin);
}

QMETHOD(QAbstractItemView, setHorizontalScrollMode, Enum<QAbstractItemView::ScrollMode> mode)->void
{
    self->setHorizontalScrollMode(mode);
}

QMETHOD(QAbstractItemView, setIconSize, box<QSize> size)->void
{
    self->setIconSize(*size);
}

QMETHOD(QAbstractItemView, setSelectionBehavior, Enum<QAbstractItemView::SelectionBehavior> behavior)->void
{
    self->setSelectionBehavior(behavior);
}

QMETHOD(QAbstractItemView, setSelectionMode, Enum<QAbstractItemView::SelectionMode> mode)->void
{
    self->setSelectionMode(mode);
}

QMETHOD(QAbstractItemView, setTabKeyNavigation, Bool enable)->void
{
    self->setTabKeyNavigation(enable);
}

QMETHOD(QAbstractItemView, setUpdateThreshold, Int threshold)->void
{
    self->setUpdateThreshold(threshold);
}

QMETHOD(QAbstractItemView, setVerticalScrollMode, Enum<QAbstractItemView::ScrollMode> mode)->void
{
    self->setVerticalScrollMode(mode);
}

QMETHOD(QAbstractItemView, tabKeyNavigation)->Bool
{
    return Bool::make(self->tabKeyNavigation());
}

QMETHOD(QAbstractItemView, updateThreshold)->Int
{
    return self->updateThreshold();
}

QMETHOD(QAbstractItemView, verticalScrollMode)->Enum<QAbstractItemView::ScrollMode>
{
    return {self->verticalScrollMode()};
}

SIGNAL_DEF(QAbstractItemView, iconSizeChanged, box<QSize>, [](const QSize& size) -> box<QSize> {
    return box<QSize>::make(size);
})

SIGNAL_DEF(QAbstractItemView, viewportEntered, Unit, Unit::make)

COVARIANT(QAbstractItemView, QAbstractScrollArea)
