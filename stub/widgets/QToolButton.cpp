#include <QToolButton>
#include <qt.hpp>

QSTATIC(QToolButton, new)->qt<QToolButton>
{
    return qt<QToolButton>::make();
}

QMETHOD(QToolButton, autoRaise)->Bool
{
    return Bool::make(self->autoRaise());
}

QMETHOD(QToolButton, popupMode)->Enum<QToolButton::ToolButtonPopupMode>
{
    return {self->popupMode()};
}

QMETHOD(QToolButton, setAutoRaise, Bool autoRaise)->void
{
    self->setAutoRaise(autoRaise);
}

QMETHOD(QToolButton, setPopupMode, Enum<QToolButton::ToolButtonPopupMode> popupMode)->void
{
    self->setPopupMode(popupMode);
}

QMETHOD(QToolButton, setToolButtonStyle, Enum<Qt::ToolButtonStyle> style)->void
{
    self->setToolButtonStyle(style);
}

QMETHOD(QToolButton, toolButtonStyle)->Enum<Qt::ToolButtonStyle>
{
    return {self->toolButtonStyle()};
}

COVARIANT(QToolButton, QAbstractButton)
