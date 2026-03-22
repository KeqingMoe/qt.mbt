#include <QMainWindow>
#include <QSize>
#include <QToolBar>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QMainWindow, new, UInt64 flags)->qt<QMainWindow>
{
    return qt<QMainWindow>::make(nullptr, Qt::WindowFlags(std::in_place, flags));
}

QMETHOD(QMainWindow, addToolBar, qt<QToolBar> toolbar)->void
{
    self->addToolBar(toolbar.get());
}

QMETHOD(QMainWindow, addToolBarAt, UInt64 area, qt<QToolBar> toolbar)->void
{
    self->addToolBar(static_cast<Qt::ToolBarArea>(area), toolbar.get());
}

QMETHOD(QMainWindow, addToolBarWithTitle, String title)->qt<QToolBar>
{
    return qt<QToolBar>::from_raw(self->addToolBar(str::mbt_to_qt(title)));
}

QMETHOD(QMainWindow, centralWidget)->qt<QWidget>
{
    return qt<QWidget>::from_raw(self->centralWidget());
}

QMETHOD(QMainWindow, iconSize)->box<QSize>
{
    return box<QSize>::make(self->iconSize());
}

QMETHOD(QMainWindow, removeToolBar, qt<QToolBar> toolbar)->void
{
    self->removeToolBar(toolbar.get());
}

QMETHOD(QMainWindow, setCentralWidget, qt<QWidget> widget)->void
{
    self->setCentralWidget(widget.get());
}

QMETHOD(QMainWindow, setIconSize, box<QSize> iconSize)->void
{
    self->setIconSize(*iconSize);
}

QMETHOD(QMainWindow, setToolButtonStyle, Enum<Qt::ToolButtonStyle> style)->void
{
    self->setToolButtonStyle(style);
}

QMETHOD(QMainWindow, setUnifiedTitleAndToolBarOnMac, Bool enabled)->void
{
    self->setUnifiedTitleAndToolBarOnMac(enabled);
}

QMETHOD(QMainWindow, takeCentralWidget)->qt<QWidget>
{
    return qt<QWidget>::from_raw(self->takeCentralWidget());
}

QMETHOD(QMainWindow, toolBarArea, qt<QToolBar> toolbar)->UInt64
{
    return static_cast<UInt64>(self->toolBarArea(toolbar.get()));
}

QMETHOD(QMainWindow, toolButtonStyle)->Enum<Qt::ToolButtonStyle>
{
    return {self->toolButtonStyle()};
}

QMETHOD(QMainWindow, unifiedTitleAndToolBarOnMac)->Bool
{
    return Bool::make(self->unifiedTitleAndToolBarOnMac());
}

SIGNAL_DEF(QMainWindow, iconSizeChanged, box<QSize>, [](const QSize& size, auto&&...) -> box<QSize> {
    return box<QSize>::make(size);
})

SIGNAL_DEF(QMainWindow, toolButtonStyleChanged, Enum<Qt::ToolButtonStyle>, [](Qt::ToolButtonStyle style, auto&&...) -> Enum<Qt::ToolButtonStyle> {
    return {style};
})

COVARIANT(QMainWindow, QWidget)
