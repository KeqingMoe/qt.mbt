#include <QColor>
#include <qt.hpp>

QSTATIC(QColor, new, Int red, Int green, Int blue, Int alpha)->box<QColor>
{
    return box<QColor>::make(QColor(red, green, blue, alpha));
}

QSTATIC(QColor, newWithName, String name)->box<QColor>
{
    return box<QColor>::make(QColor(str::mbt_to_qt(name)));
}

QMETHOD2(QColor, alpha)->Int
{
    return self->alpha();
}

QMETHOD2(QColor, blue)->Int
{
    return self->blue();
}

QMETHOD2(QColor, green)->Int
{
    return self->green();
}

QMETHOD2(QColor, red)->Int
{
    return self->red();
}

QMETHOD2(QColor, isValid)->Bool
{
    return Bool::make(self->isValid());
}

QMETHOD2(QColor, setAlpha, Int value)->void
{
    self->setAlpha(value);
}

QMETHOD2(QColor, setBlue, Int value)->void
{
    self->setBlue(value);
}

QMETHOD2(QColor, setGreen, Int value)->void
{
    self->setGreen(value);
}

QMETHOD2(QColor, setRed, Int value)->void
{
    self->setRed(value);
}
