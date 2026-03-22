#include <QIcon>
#include <qt.hpp>

QSTATIC(QIcon, new)->box<QIcon>
{
    return box<QIcon>::make(QIcon());
}

QSTATIC(QIcon, fromTheme, Enum<QIcon::ThemeIcon> icon)->box<QIcon>
{
    return box<QIcon>::make(QIcon::fromTheme(icon));
}

QSTATIC(QIcon, fromThemeWithFallback, Enum<QIcon::ThemeIcon> icon, box<QIcon> fallback)->box<QIcon>
{
    return box<QIcon>::make(QIcon::fromTheme(icon, *fallback));
}

QSTATIC(QIcon, hasThemeIcon, Enum<QIcon::ThemeIcon> icon)->Bool
{
    return Bool::make(QIcon::hasThemeIcon(icon));
}

QMETHOD2(QIcon, isNull)->Bool
{
    return Bool::make(self->isNull());
}
