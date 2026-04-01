#include <QGraphicsObject>
#include <qt.hpp>

QMETHOD(QGraphicsObject, as_QGraphicsItem)->QGraphicsItem*
{
    return self.get();
}

COVARIANT(QGraphicsObject, QObject)
