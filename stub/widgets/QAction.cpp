#include <QAction>
#include <QIcon>
#include <qt.hpp>

QSTATIC(QAction, new)->qt<QAction>
{
    return qt<QAction>::make();
}

QSTATIC(QAction, newWithParent, qt<QObject> parent)->qt<QAction>
{
    return qt<QAction>::make(parent.get());
}

QSTATIC(QAction, newWithText, String text, qt<QObject> parent)->qt<QAction>
{
    return qt<QAction>::make(str::mbt_to_qt(text), parent.get());
}

QSTATIC(QAction, newWithIconText, box<QIcon> icon, String text, qt<QObject> parent)->qt<QAction>
{
    return qt<QAction>::make(*icon, str::mbt_to_qt(text), parent.get());
}

QMETHOD(QAction, autoRepeat)->Bool
{
    return Bool::make(self->autoRepeat());
}

QMETHOD(QAction, hover)->void
{
    self->hover();
}

QMETHOD(QAction, icon)->box<QIcon>
{
    return box<QIcon>::make(self->icon());
}

QMETHOD(QAction, iconText)->String
{
    return str::qt_to_mbt(self->iconText());
}

QMETHOD(QAction, isCheckable)->Bool
{
    return Bool::make(self->isCheckable());
}

QMETHOD(QAction, isChecked)->Bool
{
    return Bool::make(self->isChecked());
}

QMETHOD(QAction, isEnabled)->Bool
{
    return Bool::make(self->isEnabled());
}

QMETHOD(QAction, isIconVisibleInMenu)->Bool
{
    return Bool::make(self->isIconVisibleInMenu());
}

QMETHOD(QAction, isSeparator)->Bool
{
    return Bool::make(self->isSeparator());
}

QMETHOD(QAction, isVisible)->Bool
{
    return Bool::make(self->isVisible());
}

QMETHOD(QAction, menuRole)->Enum<QAction::MenuRole>
{
    return {self->menuRole()};
}

QMETHOD(QAction, priority)->Enum<QAction::Priority>
{
    return {self->priority()};
}

QMETHOD(QAction, setAutoRepeat, Bool value)->void
{
    self->setAutoRepeat(value);
}

QMETHOD(QAction, setCheckable, Bool value)->void
{
    self->setCheckable(value);
}

QMETHOD(QAction, setChecked, Bool value)->void
{
    self->setChecked(value);
}

QMETHOD(QAction, setEnabled, Bool value)->void
{
    self->setEnabled(value);
}

QMETHOD(QAction, setIcon, box<QIcon> icon)->void
{
    self->setIcon(*icon);
}

QMETHOD(QAction, setIconText, String text)->void
{
    self->setIconText(str::mbt_to_qt(text));
}

QMETHOD(QAction, setIconVisibleInMenu, Bool value)->void
{
    self->setIconVisibleInMenu(value);
}

QMETHOD(QAction, setMenuRole, Enum<QAction::MenuRole> role)->void
{
    self->setMenuRole(role);
}

QMETHOD(QAction, setPriority, Enum<QAction::Priority> priority)->void
{
    self->setPriority(priority);
}

QMETHOD(QAction, setSeparator, Bool value)->void
{
    self->setSeparator(value);
}

QMETHOD(QAction, setStatusTip, String statusTip)->void
{
    self->setStatusTip(str::mbt_to_qt(statusTip));
}

QMETHOD(QAction, setText, String text)->void
{
    self->setText(str::mbt_to_qt(text));
}

QMETHOD(QAction, setToolTip, String toolTip)->void
{
    self->setToolTip(str::mbt_to_qt(toolTip));
}

QMETHOD(QAction, setVisible, Bool value)->void
{
    self->setVisible(value);
}

QMETHOD(QAction, setWhatsThis, String whatsThis)->void
{
    self->setWhatsThis(str::mbt_to_qt(whatsThis));
}

QMETHOD(QAction, statusTip)->String
{
    return str::qt_to_mbt(self->statusTip());
}

QMETHOD(QAction, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD(QAction, toggle)->void
{
    self->toggle();
}

QMETHOD(QAction, toolTip)->String
{
    return str::qt_to_mbt(self->toolTip());
}

QMETHOD(QAction, trigger)->void
{
    self->trigger();
}

QMETHOD(QAction, whatsThis)->String
{
    return str::qt_to_mbt(self->whatsThis());
}

SIGNAL_DEF(QAction, changed, Unit, Unit::make)
SIGNAL_DEF(QAction, checkableChanged, Bool, Bool::make)
SIGNAL_DEF(QAction, enabledChanged, Bool, Bool::make)
SIGNAL_DEF(QAction, hovered, Unit, Unit::make)
SIGNAL_DEF(QAction, toggled, Bool, Bool::make)
SIGNAL_DEF(QAction, triggered, Bool, Bool::make)
SIGNAL_DEF(QAction, visibleChanged, Unit, Unit::make)

COVARIANT(QAction, QObject)
