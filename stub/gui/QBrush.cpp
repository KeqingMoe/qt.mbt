#include <QBrush>
#include <QColor>
#include <qt.hpp>

QSTATIC(QBrush, new)->box<QBrush>
{
    return box<QBrush>::make(QBrush());
}

QSTATIC(QBrush, newWithColor, box<QColor> color)->box<QBrush>
{
    return box<QBrush>::make(QBrush(*color));
}

QMETHOD2(QBrush, color)->box<QColor>
{
    return box<QColor>::make(self->color());
}

QMETHOD2(QBrush, isOpaque)->Bool
{
    return Bool::make(self->isOpaque());
}

QMETHOD2(QBrush, setColor, box<QColor> color)->void
{
    self->setColor(*color);
}
