#include <QGraphicsScene>
#include <QGraphicsPathItem>
#include <QGraphicsProxyWidget>
#include <QWidget>
#include <QRectF>
#include <qt.hpp>

QSTATIC(QGraphicsScene, new)->qt<QGraphicsScene>
{
    return qt<QGraphicsScene>::make();
}

QSTATIC(QGraphicsScene, newWithParent, qt<QObject> parent)->qt<QGraphicsScene>
{
    return qt<QGraphicsScene>::make(parent.get());
}

QMETHOD(QGraphicsScene, clear)->void
{
    self->clear();
}

QMETHOD(QGraphicsScene, addWidget, qt<QWidget> widget)->qt<QGraphicsProxyWidget>
{
    return qt<QGraphicsProxyWidget>::from_raw(self->addWidget(widget.get()));
}

extern "C" auto QGraphicsScene_addPath(qt<QGraphicsScene> self, box<QPainterPath> path, box<QPen> pen) -> QGraphicsPathItem*
{
    return self->addPath(*path, *pen);
}

QMETHOD(QGraphicsScene, itemsBoundingRect)->box<QRectF>
{
    return box<QRectF>::make(self->itemsBoundingRect());
}

QMETHOD(QGraphicsScene, setSceneRect, box<QRectF> rect)->void
{
    self->setSceneRect(*rect);
}

QMETHOD(QGraphicsScene, setBackgroundBrush, box<QBrush> brush)->void
{
    self->setBackgroundBrush(*brush);
}

SIGNAL_DEF(QGraphicsScene, selectionChanged, Unit, Unit::make)

COVARIANT(QGraphicsScene, QObject)
