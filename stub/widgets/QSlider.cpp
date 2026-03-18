#include <QSlider>
#include <qt.hpp>

QSTATIC(QSlider, new, Int orientation)->qt<QSlider>
{
    return qt<QSlider>::make(static_cast<Qt::Orientation>(orientation));
}

COVARIANT(QSlider, QAbstractSlider)
