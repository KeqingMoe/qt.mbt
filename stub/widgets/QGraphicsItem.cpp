#include <QGraphicsItem>
#include <qt.hpp>

extern "C" auto QGraphicsItem_isNull(QGraphicsItem* self) -> Bool
{
    return Bool::make(self == nullptr);
}

extern "C" auto QGraphicsItem_setCacheMode(QGraphicsItem* self, Enum<QGraphicsItem::CacheMode> mode) -> void
{
    self->setCacheMode(mode);
}

extern "C" auto QGraphicsItem_setPos(QGraphicsItem* self, Double x, Double y) -> void
{
    self->setPos(x, y);
}

extern "C" auto QGraphicsItem_setVisible(QGraphicsItem* self, Bool value) -> void
{
    self->setVisible(value);
}

extern "C" auto QGraphicsItem_setZValue(QGraphicsItem* self, Double value) -> void
{
    self->setZValue(value);
}
