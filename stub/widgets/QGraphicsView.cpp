#include <QGraphicsScene>
#include <QGraphicsView>
#include <QPointF>
#include <QRectF>
#include <qt.hpp>

QSTATIC(QGraphicsView, new)->qt<QGraphicsView>
{
    return qt<QGraphicsView>::make();
}

QSTATIC(QGraphicsView, newWithParent, qt<QWidget> parent)->qt<QGraphicsView>
{
    return qt<QGraphicsView>::make(parent.get());
}

QMETHOD(QGraphicsView, centerOn, box<QPointF> point)->void
{
    self->centerOn(*point);
}

QMETHOD(QGraphicsView, fitInView, box<QRectF> rect, Enum<Qt::AspectRatioMode> mode)->void
{
    self->fitInView(*rect, mode);
}

QMETHOD(QGraphicsView, resetTransform)->void
{
    self->resetTransform();
}

QMETHOD(QGraphicsView, scale, Double sx, Double sy)->void
{
    self->scale(sx, sy);
}

QMETHOD(QGraphicsView, setDragMode, Enum<QGraphicsView::DragMode> mode)->void
{
    self->setDragMode(mode);
}

QMETHOD(QGraphicsView, setRenderHint, Enum<QPainter::RenderHint> hint, Bool on)->void
{
    self->setRenderHint(hint, on);
}

QMETHOD(QGraphicsView, setScene, qt<QGraphicsScene> scene)->void
{
    self->setScene(scene.get());
}

QMETHOD(QGraphicsView, setSceneRect, box<QRectF> rect)->void
{
    self->setSceneRect(*rect);
}

QMETHOD(QGraphicsView, setTransformationAnchor, Enum<QGraphicsView::ViewportAnchor> anchor)->void
{
    self->setTransformationAnchor(anchor);
}

QMETHOD(QGraphicsView, setResizeAnchor, Enum<QGraphicsView::ViewportAnchor> anchor)->void
{
    self->setResizeAnchor(anchor);
}

QMETHOD(QGraphicsView, setViewportUpdateMode, Enum<QGraphicsView::ViewportUpdateMode> mode)->void
{
    self->setViewportUpdateMode(mode);
}

COVARIANT(QGraphicsView, QAbstractScrollArea)
