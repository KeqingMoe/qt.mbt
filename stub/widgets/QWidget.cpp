#include <QLayout>
#include <QIcon>
#include <QSizePolicy>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QWidget, new)->qt<QWidget>
{
    return qt<QWidget>::make();
}

QMETHOD(QWidget, contextMenuPolicy)->Enum<Qt::ContextMenuPolicy>
{
    return {self->contextMenuPolicy()};
}

QMETHOD(QWidget, focusPolicy)->Enum<Qt::FocusPolicy>
{
    return {self->focusPolicy()};
}

QMETHOD(QWidget, hide)->void
{
    self->hide();
}

QMETHOD(QWidget, inputMethodHints)->UInt64
{
    return self->inputMethodHints().toInt();
}

QMETHOD(QWidget, isEnabled)->Bool
{
    return Bool::make(self->isEnabled());
}

QMETHOD(QWidget, isHidden)->Bool
{
    return Bool::make(self->isHidden());
}

QMETHOD(QWidget, isVisible)->Bool
{
    return Bool::make(self->isVisible());
}

QMETHOD(QWidget, toolTip)->String
{
    return str::qt_to_mbt(self->toolTip());
}

QMETHOD(QWidget, windowFlags)->UInt64
{
    return static_cast<UInt64>(self->windowFlags().toInt());
}

QMETHOD(QWidget, windowIcon)->box<QIcon>
{
    return box<QIcon>::make(self->windowIcon());
}

QMETHOD(QWidget, windowType)->Enum<Qt::WindowType>
{
    return {static_cast<Int>(self->windowType())};
}

QMETHOD(QWidget, move, Int x, Int y)->void
{
    self->move(x, y);
}

QMETHOD(QWidget, resize, Int width, Int height)->void
{
    self->resize(width, height);
}

QMETHOD(QWidget, setEnabled, Bool value)->void
{
    self->setEnabled(value);
}

QMETHOD(QWidget, setContextMenuPolicy, Enum<Qt::ContextMenuPolicy> policy)->void
{
    self->setContextMenuPolicy(policy);
}

QMETHOD(QWidget, setFocusPolicy, Enum<Qt::FocusPolicy> policy)->void
{
    self->setFocusPolicy(policy);
}

QMETHOD(QWidget, setFixedSize, Int width, Int height)->void
{
    self->setFixedSize(width, height);
}

QMETHOD(QWidget, setInputMethodHints, UInt64 hints)->void
{
    self->setInputMethodHints(Qt::InputMethodHints(std::in_place, hints));
}

QMETHOD(QWidget, setLayout, qt<QLayout> layout)->void
{
    self->setLayout(layout.get());
}

QMETHOD(QWidget, setMaximumSize, Int width, Int height)->void
{
    self->setMaximumSize(width, height);
}

QMETHOD(QWidget, setMinimumSize, Int width, Int height)->void
{
    self->setMinimumSize(width, height);
}

QMETHOD(QWidget, setSizePolicy, box<QSizePolicy> policy)->void
{
    self->setSizePolicy(*policy);
}

QMETHOD(QWidget, setStyleSheet, String styleSheet)->void
{
    self->setStyleSheet(str::mbt_to_qt(styleSheet));
}

QMETHOD(QWidget, setToolTip, String toolTip)->void
{
    self->setToolTip(str::mbt_to_qt(toolTip));
}

QMETHOD(QWidget, setVisible, Bool value)->void
{
    self->setVisible(value);
}

QMETHOD(QWidget, setWindowFlag, UInt64 type, Bool on)->void
{
    self->setWindowFlag(static_cast<Qt::WindowType>(type), on);
}

QMETHOD(QWidget, setWindowFlags, UInt64 flags)->void
{
    self->setWindowFlags(Qt::WindowFlags(std::in_place, flags));
}

QMETHOD(QWidget, setWindowIcon, box<QIcon> icon)->void
{
    self->setWindowIcon(*icon);
}

QMETHOD(QWidget, setWindowTitle, String title)->void
{
    self->setWindowTitle(str::mbt_to_qt(title));
}

QMETHOD(QWidget, overrideWindowFlags, UInt64 flags)->void
{
    self->overrideWindowFlags(Qt::WindowFlags(std::in_place, flags));
}

QMETHOD(QWidget, show)->void
{
    self->show();
}

QMETHOD(QWidget, sizePolicy)->box<QSizePolicy>
{
    return box<QSizePolicy>::make(self->sizePolicy());
}

QMETHOD(QWidget, styleSheet)->String
{
    return str::qt_to_mbt(self->styleSheet());
}

QMETHOD(QWidget, windowTitle)->String
{
    return str::qt_to_mbt(self->windowTitle());
}

COVARIANT(QWidget, QObject)
