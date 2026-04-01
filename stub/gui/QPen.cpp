#include <QColor>
#include <QPen>
#include <qt.hpp>

QSTATIC(QPen, new)->box<QPen>
{
    return box<QPen>::make(QPen());
}

QSTATIC(QPen, newWithColor, box<QColor> color)->box<QPen>
{
    return box<QPen>::make(QPen(*color));
}

QMETHOD2(QPen, color)->box<QColor>
{
    return box<QColor>::make(self->color());
}

QMETHOD2(QPen, setColor, box<QColor> color)->void
{
    self->setColor(*color);
}

QMETHOD2(QPen, setWidthF, Double width)->void
{
    self->setWidthF(width);
}

QMETHOD2(QPen, setStyle, Enum<Qt::PenStyle> style)->void
{
    self->setStyle(style);
}

QMETHOD2(QPen, setCapStyle, Enum<Qt::PenCapStyle> style)->void
{
    self->setCapStyle(style);
}

QMETHOD2(QPen, setJoinStyle, Enum<Qt::PenJoinStyle> style)->void
{
    self->setJoinStyle(style);
}

QMETHOD2(QPen, widthF)->Double
{
    return self->widthF();
}
