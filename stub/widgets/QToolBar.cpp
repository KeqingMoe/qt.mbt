#include <QAction>
#include <QIcon>
#include <QSize>
#include <QToolBar>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QToolBar, new)->qt<QToolBar>
{
    return qt<QToolBar>::make();
}

QSTATIC(QToolBar, newWithParent, qt<QWidget> parent)->qt<QToolBar>
{
    return qt<QToolBar>::make(parent.get());
}

QSTATIC(QToolBar, newWithTitle, String title)->qt<QToolBar>
{
    return qt<QToolBar>::make(str::mbt_to_qt(title));
}

QSTATIC(QToolBar, newWithTitleParent, String title, qt<QWidget> parent)->qt<QToolBar>
{
    return qt<QToolBar>::make(str::mbt_to_qt(title), parent.get());
}

QMETHOD(QToolBar, addAction, qt<QAction> action)->qt<QAction>
{
    self->addAction(action.get());
    return action;
}

QMETHOD(QToolBar, addActionWithIconText, box<QIcon> icon, String text)->qt<QAction>
{
    return qt<QAction>::from_raw(self->addAction(*icon, str::mbt_to_qt(text)));
}

QMETHOD(QToolBar, addActionWithText, String text)->qt<QAction>
{
    return qt<QAction>::from_raw(self->addAction(str::mbt_to_qt(text)));
}

QMETHOD(QToolBar, addSeparator)->qt<QAction>
{
    return qt<QAction>::from_raw(self->addSeparator());
}

QMETHOD(QToolBar, addWidget, qt<QWidget> widget)->qt<QAction>
{
    return qt<QAction>::from_raw(self->addWidget(widget.get()));
}

QMETHOD(QToolBar, allowedAreas)->UInt64
{
    return static_cast<UInt64>(self->allowedAreas().toInt());
}

QMETHOD(QToolBar, clear)->void
{
    self->clear();
}

QMETHOD(QToolBar, iconSize)->box<QSize>
{
    return box<QSize>::make(self->iconSize());
}

QMETHOD(QToolBar, insertSeparator, qt<QAction> before)->qt<QAction>
{
    return qt<QAction>::from_raw(self->insertSeparator(before.get()));
}

QMETHOD(QToolBar, insertWidget, qt<QAction> before, qt<QWidget> widget)->qt<QAction>
{
    return qt<QAction>::from_raw(self->insertWidget(before.get(), widget.get()));
}

QMETHOD(QToolBar, isAreaAllowed, UInt64 area)->Bool
{
    return Bool::make(self->isAreaAllowed(static_cast<Qt::ToolBarArea>(area)));
}

QMETHOD(QToolBar, isFloatable)->Bool
{
    return Bool::make(self->isFloatable());
}

QMETHOD(QToolBar, isFloating)->Bool
{
    return Bool::make(self->isFloating());
}

QMETHOD(QToolBar, isMovable)->Bool
{
    return Bool::make(self->isMovable());
}

QMETHOD(QToolBar, orientation)->Enum<Qt::Orientation>
{
    return {self->orientation()};
}

QMETHOD(QToolBar, removeAction, qt<QAction> action)->void
{
    self->removeAction(action.get());
}

QMETHOD(QToolBar, setAllowedAreas, UInt64 areas)->void
{
    self->setAllowedAreas(Qt::ToolBarAreas(std::in_place, areas));
}

QMETHOD(QToolBar, setFloatable, Bool value)->void
{
    self->setFloatable(value);
}

QMETHOD(QToolBar, setIconSize, box<QSize> iconSize)->void
{
    self->setIconSize(*iconSize);
}

QMETHOD(QToolBar, setMovable, Bool value)->void
{
    self->setMovable(value);
}

QMETHOD(QToolBar, setOrientation, Enum<Qt::Orientation> orientation)->void
{
    self->setOrientation(orientation);
}

QMETHOD(QToolBar, setToolButtonStyle, Enum<Qt::ToolButtonStyle> style)->void
{
    self->setToolButtonStyle(style);
}

QMETHOD(QToolBar, toggleViewAction)->qt<QAction>
{
    return qt<QAction>::from_raw(self->toggleViewAction());
}

QMETHOD(QToolBar, toolButtonStyle)->Enum<Qt::ToolButtonStyle>
{
    return {self->toolButtonStyle()};
}

QMETHOD(QToolBar, widgetForAction, qt<QAction> action)->qt<QWidget>
{
    return qt<QWidget>::from_raw(self->widgetForAction(action.get()));
}

SIGNAL_DEF(QToolBar, allowedAreasChanged, UInt64, [](Qt::ToolBarAreas areas, auto&&...) -> UInt64 {
    return static_cast<UInt64>(areas.toInt());
})

SIGNAL_DEF(QToolBar, iconSizeChanged, box<QSize>, [](const QSize& size, auto&&...) -> box<QSize> {
    return box<QSize>::make(size);
})

SIGNAL_DEF(QToolBar, movableChanged, Bool, Bool::make)
SIGNAL_DEF(QToolBar, orientationChanged, Enum<Qt::Orientation>, [](Qt::Orientation orientation, auto&&...) -> Enum<Qt::Orientation> {
    return {orientation};
})
SIGNAL_DEF(QToolBar, toolButtonStyleChanged, Enum<Qt::ToolButtonStyle>, [](Qt::ToolButtonStyle style, auto&&...) -> Enum<Qt::ToolButtonStyle> {
    return {style};
})
SIGNAL_DEF(QToolBar, topLevelChanged, Bool, Bool::make)
SIGNAL_DEF(QToolBar, visibilityChanged, Bool, Bool::make)

COVARIANT(QToolBar, QWidget)
