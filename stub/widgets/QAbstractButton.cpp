#include <QAbstractButton>
#include <QIcon>
#include <qt.hpp>

QMETHOD(QAbstractButton, animateClick)->void
{
    self->animateClick();
}

QMETHOD(QAbstractButton, autoExclusive)->Bool
{
    return Bool::make(self->autoExclusive());
}

QMETHOD(QAbstractButton, autoRepeat)->Bool
{
    return Bool::make(self->autoRepeat());
}

QMETHOD(QAbstractButton, autoRepeatDelay)->Int
{
    return self->autoRepeatDelay();
}

QMETHOD(QAbstractButton, autoRepeatInterval)->Int
{
    return self->autoRepeatInterval();
}

QMETHOD(QAbstractButton, click)->void
{
    self->click();
}

QMETHOD(QAbstractButton, icon)->box<QIcon>
{
    return box<QIcon>::make(self->icon());
}

QMETHOD(QAbstractButton, isCheckable)->Bool
{
    return Bool::make(self->isCheckable());
}

QMETHOD(QAbstractButton, isChecked)->Bool
{
    return Bool::make(self->isChecked());
}

QMETHOD(QAbstractButton, isDown)->Bool
{
    return Bool::make(self->isDown());
}

QMETHOD(QAbstractButton, setAutoExclusive, Bool value)->void
{
    self->setAutoExclusive(value);
}

QMETHOD(QAbstractButton, setAutoRepeat, Bool value)->void
{
    self->setAutoRepeat(value);
}

QMETHOD(QAbstractButton, setAutoRepeatDelay, Int delay)->void
{
    self->setAutoRepeatDelay(delay);
}

QMETHOD(QAbstractButton, setAutoRepeatInterval, Int interval)->void
{
    self->setAutoRepeatInterval(interval);
}

QMETHOD(QAbstractButton, setCheckable, Bool value)->void
{
    self->setCheckable(value);
}

QMETHOD(QAbstractButton, setChecked, Bool value)->void
{
    self->setChecked(value);
}

QMETHOD(QAbstractButton, setDown, Bool value)->void
{
    self->setDown(value);
}

QMETHOD(QAbstractButton, setIcon, box<QIcon> icon)->void
{
    self->setIcon(*icon);
}

QMETHOD(QAbstractButton, setText, String text)->void
{
    self->setText(str::mbt_to_qt(text));
}

QMETHOD(QAbstractButton, text)->String
{
    return str::qt_to_mbt(self->text());
}

QMETHOD(QAbstractButton, toggle)->void
{
    self->toggle();
}

SIGNAL_DEF(QAbstractButton, clicked, Bool, Bool::make)

SIGNAL_DEF(QAbstractButton, pressed, Unit, Unit::make)

SIGNAL_DEF(QAbstractButton, released, Unit, Unit::make)

SIGNAL_DEF(QAbstractButton, toggled, Bool, Bool::make)

COVARIANT(QAbstractButton, QWidget)
