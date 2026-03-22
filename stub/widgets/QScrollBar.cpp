#include <QScrollBar>
#include <qt.hpp>

QSTATIC(QScrollBar, new, Enum<Qt::Orientation> orientation)->qt<QScrollBar>
{
    return qt<QScrollBar>::make(orientation);
}

COVARIANT(QScrollBar, QAbstractSlider)
