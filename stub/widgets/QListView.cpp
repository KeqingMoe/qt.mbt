#include <QListView>
#include <QSize>
#include <qt.hpp>

QSTATIC(QListView, new)->qt<QListView>
{
    return qt<QListView>::make();
}

QMETHOD(QListView, batchSize)->Int
{
    return self->batchSize();
}

QMETHOD(QListView, clearPropertyFlags)->void
{
    self->clearPropertyFlags();
}

QMETHOD(QListView, flow)->Enum<QListView::Flow>
{
    return {self->flow()};
}

QMETHOD(QListView, gridSize)->box<QSize>
{
    return box<QSize>::make(self->gridSize());
}

QMETHOD(QListView, isRowHidden, Int row)->Bool
{
    return Bool::make(self->isRowHidden(row));
}

QMETHOD(QListView, isSelectionRectVisible)->Bool
{
    return Bool::make(self->isSelectionRectVisible());
}

QMETHOD(QListView, isWrapping)->Bool
{
    return Bool::make(self->isWrapping());
}

QMETHOD(QListView, itemAlignment)->UInt64
{
    return self->itemAlignment().toInt();
}

QMETHOD(QListView, layoutMode)->Enum<QListView::LayoutMode>
{
    return {self->layoutMode()};
}

QMETHOD(QListView, modelColumn)->Int
{
    return self->modelColumn();
}

QMETHOD(QListView, movement)->Enum<QListView::Movement>
{
    return {self->movement()};
}

QMETHOD(QListView, resizeMode)->Enum<QListView::ResizeMode>
{
    return {self->resizeMode()};
}

QMETHOD(QListView, setBatchSize, Int batchSize)->void
{
    self->setBatchSize(batchSize);
}

QMETHOD(QListView, setFlow, Enum<QListView::Flow> flow)->void
{
    self->setFlow(flow);
}

QMETHOD(QListView, setGridSize, box<QSize> size)->void
{
    self->setGridSize(*size);
}

QMETHOD(QListView, setItemAlignment, UInt64 alignment)->void
{
    self->setItemAlignment(Qt::Alignment(std::in_place, alignment));
}

QMETHOD(QListView, setLayoutMode, Enum<QListView::LayoutMode> mode)->void
{
    self->setLayoutMode(mode);
}

QMETHOD(QListView, setModelColumn, Int column)->void
{
    self->setModelColumn(column);
}

QMETHOD(QListView, setMovement, Enum<QListView::Movement> movement)->void
{
    self->setMovement(movement);
}

QMETHOD(QListView, setResizeMode, Enum<QListView::ResizeMode> mode)->void
{
    self->setResizeMode(mode);
}

QMETHOD(QListView, setRowHidden, Int row, Bool hide)->void
{
    self->setRowHidden(row, hide);
}

QMETHOD(QListView, setSelectionRectVisible, Bool show)->void
{
    self->setSelectionRectVisible(show);
}

QMETHOD(QListView, setSpacing, Int space)->void
{
    self->setSpacing(space);
}

QMETHOD(QListView, setUniformItemSizes, Bool enable)->void
{
    self->setUniformItemSizes(enable);
}

QMETHOD(QListView, setViewMode, Enum<QListView::ViewMode> mode)->void
{
    self->setViewMode(mode);
}

QMETHOD(QListView, setWordWrap, Bool on)->void
{
    self->setWordWrap(on);
}

QMETHOD(QListView, setWrapping, Bool enable)->void
{
    self->setWrapping(enable);
}

QMETHOD(QListView, spacing)->Int
{
    return self->spacing();
}

QMETHOD(QListView, uniformItemSizes)->Bool
{
    return Bool::make(self->uniformItemSizes());
}

QMETHOD(QListView, viewMode)->Enum<QListView::ViewMode>
{
    return {self->viewMode()};
}

QMETHOD(QListView, wordWrap)->Bool
{
    return Bool::make(self->wordWrap());
}

COVARIANT(QListView, QAbstractItemView)
