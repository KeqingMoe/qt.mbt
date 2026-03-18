#include <QFrame>
#include <qt.hpp>

QSTATIC(QFrame, new)->qt<QFrame>
{
    return qt<QFrame>::make();
}

QMETHOD(QFrame, frameShadow)->Int
{
    return self->frameShadow();
}

QMETHOD(QFrame, frameShape)->Int
{
    return self->frameShape();
}

QMETHOD(QFrame, setFrameShadow, Int shadow)->void
{
    self->setFrameShadow(static_cast<QFrame::Shadow>(shadow));
}

QMETHOD(QFrame, setFrameShape, Int shape)->void
{
    self->setFrameShape(static_cast<QFrame::Shape>(shape));
}

COVARIANT(QFrame, QWidget)
