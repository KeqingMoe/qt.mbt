#include <QAbstractGraphicsShapeItem>
#include <QPen>
#include <qt.hpp>

extern "C" auto QAbstractGraphicsShapeItem_as_QGraphicsItem(QAbstractGraphicsShapeItem* self) -> QGraphicsItem*
{
    return self;
}

extern "C" auto QAbstractGraphicsShapeItem_setPen(QAbstractGraphicsShapeItem* self, box<QPen> pen) -> void
{
    self->setPen(*pen);
}
