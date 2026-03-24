#include <QLayout>
#include <QIcon>
#include <QMargins>
#include <QSize>
#include <QSizePolicy>
#include <QWindow>
#include <QWidget>
#include <qt.hpp>

QSTATIC(QWidget, new)->qt<QWidget>
{
    return qt<QWidget>::make();
}

QMETHOD(QWidget, close)->Bool
{
    return Bool::make(self->close());
}

QMETHOD(QWidget, contextMenuPolicy)->Enum<Qt::ContextMenuPolicy>
{
    return {self->contextMenuPolicy()};
}

QMETHOD(QWidget, contentsMargins)->box<QMargins>
{
    return box<QMargins>::make(self->contentsMargins());
}

QMETHOD(QWidget, focusPolicy)->Enum<Qt::FocusPolicy>
{
    return {self->focusPolicy()};
}

QMETHOD(QWidget, height)->Int
{
    return self->height();
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

QMETHOD(QWidget, isMaximized)->Bool
{
    return Bool::make(self->isMaximized());
}

QMETHOD(QWidget, isVisible)->Bool
{
    return Bool::make(self->isVisible());
}

QMETHOD(QWidget, maximumHeight)->Int
{
    return self->maximumHeight();
}

QMETHOD(QWidget, maximumSize)->box<QSize>
{
    return box<QSize>::make(self->maximumSize());
}

QMETHOD(QWidget, maximumWidth)->Int
{
    return self->maximumWidth();
}

QMETHOD(QWidget, minimumHeight)->Int
{
    return self->minimumHeight();
}

QMETHOD(QWidget, minimumSize)->box<QSize>
{
    return box<QSize>::make(self->minimumSize());
}

QMETHOD(QWidget, minimumSizeHint)->box<QSize>
{
    return box<QSize>::make(self->minimumSizeHint());
}

QMETHOD(QWidget, minimumWidth)->Int
{
    return self->minimumWidth();
}

QMETHOD(QWidget, testAttribute, Int attribute)->Bool
{
    return Bool::make(self->testAttribute(static_cast<Qt::WidgetAttribute>(attribute)));
}

QMETHOD(QWidget, toolTip)->String
{
    return str::qt_to_mbt(self->toolTip());
}

QMETHOD(QWidget, windowFlags)->UInt64
{
    return static_cast<UInt64>(self->windowFlags().toInt());
}

QMETHOD(QWidget, windowHandle)->qt<QWindow>
{
    return qt<QWindow>::from_raw(self->windowHandle());
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

QMETHOD(QWidget, size)->box<QSize>
{
    return box<QSize>::make(self->size());
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

QMETHOD(QWidget, setFixedHeight, Int height)->void
{
    self->setFixedHeight(height);
}

QMETHOD(QWidget, setFixedWidth, Int width)->void
{
    self->setFixedWidth(width);
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

QMETHOD(QWidget, setMaximumHeight, Int height)->void
{
    self->setMaximumHeight(height);
}

QMETHOD(QWidget, setMaximumWidth, Int width)->void
{
    self->setMaximumWidth(width);
}

QMETHOD(QWidget, setMinimumSize, Int width, Int height)->void
{
    self->setMinimumSize(width, height);
}

QMETHOD(QWidget, setMinimumHeight, Int height)->void
{
    self->setMinimumHeight(height);
}

QMETHOD(QWidget, setMinimumWidth, Int width)->void
{
    self->setMinimumWidth(width);
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

QMETHOD(QWidget, setAttribute, Int attribute, Bool on)->void
{
    self->setAttribute(static_cast<Qt::WidgetAttribute>(attribute), on);
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

QMETHOD(QWidget, showMaximized)->void
{
    self->showMaximized();
}

QMETHOD(QWidget, showMinimized)->void
{
    self->showMinimized();
}

QMETHOD(QWidget, showNormal)->void
{
    self->showNormal();
}

QMETHOD(QWidget, sizeHint)->box<QSize>
{
    return box<QSize>::make(self->sizeHint());
}

QMETHOD(QWidget, sizePolicy)->box<QSizePolicy>
{
    return box<QSizePolicy>::make(self->sizePolicy());
}

QMETHOD(QWidget, styleSheet)->String
{
    return str::qt_to_mbt(self->styleSheet());
}

QMETHOD(QWidget, updateGeometry)->void
{
    self->updateGeometry();
}

QMETHOD(QWidget, windowTitle)->String
{
    return str::qt_to_mbt(self->windowTitle());
}

QMETHOD(QWidget, width)->Int
{
    return self->width();
}

COVARIANT(QWidget, QObject)
