#include <QColor>
#include <QPalette>
#include <qt.hpp>

QSTATIC(QPalette, new)->box<QPalette>
{
    return box<QPalette>::make(QPalette());
}

QMETHOD2(QPalette, color, Enum<QPalette::ColorRole> role)->box<QColor>
{
    return box<QColor>::make(self->color(role));
}

QMETHOD2(QPalette, setColor, Enum<QPalette::ColorRole> role, box<QColor> color)->void
{
    self->setColor(role, *color);
}
