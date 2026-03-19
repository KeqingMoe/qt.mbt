#include <QFrame>
#include <qt.hpp>

QSTATIC(QFrame, new)->qt<QFrame>
{
    return qt<QFrame>::make();
}

QMETHOD(QFrame, frameShadow)->Enum<QFrame::Shadow>
{
    return {self->frameShadow()};
}

QMETHOD(QFrame, frameShape)->Enum<QFrame::Shape>
{
    return {self->frameShape()};
}

QMETHOD(QFrame, setFrameShadow, Enum<QFrame::Shadow> shadow)->void
{
    self->setFrameShadow(shadow);
}

QMETHOD(QFrame, setFrameShape, Enum<QFrame::Shape> shape)->void
{
    self->setFrameShape(shape);
}

COVARIANT(QFrame, QWidget)
