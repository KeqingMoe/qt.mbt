#include <QColor>
#include <QGraphicsDropShadowEffect>
#include <qt.hpp>

QSTATIC(QGraphicsDropShadowEffect, new)->qt<QGraphicsDropShadowEffect>
{
    return qt<QGraphicsDropShadowEffect>::make();
}

QSTATIC(QGraphicsDropShadowEffect, newWithParent, qt<QObject> parent)->qt<QGraphicsDropShadowEffect>
{
    return qt<QGraphicsDropShadowEffect>::make(parent.get());
}

QMETHOD(QGraphicsDropShadowEffect, setBlurRadius, Double radius)->void
{
    self->setBlurRadius(radius);
}

QMETHOD(QGraphicsDropShadowEffect, setColor, box<QColor> color)->void
{
    self->setColor(*color);
}

QMETHOD(QGraphicsDropShadowEffect, setOffset, Double dx, Double dy)->void
{
    self->setOffset(dx, dy);
}

COVARIANT(QGraphicsDropShadowEffect, QGraphicsEffect)
