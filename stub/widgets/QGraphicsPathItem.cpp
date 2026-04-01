#include <QGraphicsPathItem>
#include <QPainterPath>
#include <qt.hpp>

extern "C" auto QGraphicsPathItem_as_QAbstractGraphicsShapeItem(QGraphicsPathItem* self) -> QAbstractGraphicsShapeItem*
{
    return self;
}

extern "C" auto QGraphicsPathItem_setPath(QGraphicsPathItem* self, box<QPainterPath> path) -> void
{
    self->setPath(*path);
}
