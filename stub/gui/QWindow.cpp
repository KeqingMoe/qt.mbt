#include <QWindow>
#include <QMargins>
#include <qt.hpp>

QSTATIC(QWindow, new)->qt<QWindow>
{
    return qt<QWindow>::make();
}

QMETHOD(QWindow, close)->Bool
{
    return Bool::make(self->close());
}

QMETHOD(QWindow, flags)->UInt64
{
    return static_cast<UInt64>(self->flags().toInt());
}

QMETHOD(QWindow, height)->Int
{
    return self->height();
}

QMETHOD(QWindow, hide)->void
{
    self->hide();
}

QMETHOD(QWindow, isVisible)->Bool
{
    return Bool::make(self->isVisible());
}

QMETHOD(QWindow, positionX)->Int
{
    return self->x();
}

QMETHOD(QWindow, positionY)->Int
{
    return self->y();
}

QMETHOD(QWindow, safeAreaMargins)->box<QMargins>
{
    return box<QMargins>::make(self->safeAreaMargins());
}

QMETHOD(QWindow, resize, Int width, Int height)->void
{
    self->resize(width, height);
}

QMETHOD(QWindow, setFlag, UInt64 windowFlag, Bool on)->void
{
    self->setFlag(static_cast<Qt::WindowType>(windowFlag), on);
}

QMETHOD(QWindow, setFlags, UInt64 flags)->void
{
    self->setFlags(Qt::WindowFlags(std::in_place, flags));
}

QMETHOD(QWindow, setHeight, Int height)->void
{
    self->setHeight(height);
}

QMETHOD(QWindow, setPosition, Int x, Int y)->void
{
    self->setPosition(x, y);
}

QMETHOD(QWindow, setTitle, String title)->void
{
    self->setTitle(str::mbt_to_qt(title));
}

QMETHOD(QWindow, setVisible, Bool visible)->void
{
    self->setVisible(visible);
}

QMETHOD(QWindow, setWidth, Int width)->void
{
    self->setWidth(width);
}

QMETHOD(QWindow, show)->void
{
    self->show();
}

QMETHOD(QWindow, showMaximized)->void
{
    self->showMaximized();
}

QMETHOD(QWindow, showMinimized)->void
{
    self->showMinimized();
}

QMETHOD(QWindow, showNormal)->void
{
    self->showNormal();
}

QMETHOD(QWindow, startSystemMove)->Bool
{
    return Bool::make(self->startSystemMove());
}

QMETHOD(QWindow, title)->String
{
    return str::qt_to_mbt(self->title());
}

QMETHOD(QWindow, type)->Enum<Qt::WindowType>
{
    return {static_cast<Int>(self->type())};
}

QMETHOD(QWindow, width)->Int
{
    return self->width();
}

SIGNAL_DEF(QWindow, safeAreaMarginsChanged, box<QMargins>, [](const QMargins& margins, auto&&...) -> box<QMargins> {
    return box<QMargins>::make(margins);
})

COVARIANT(QWindow, QObject)
