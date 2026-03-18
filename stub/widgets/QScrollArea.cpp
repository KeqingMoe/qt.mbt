#include <QScrollArea>
#include <qt.hpp>

QSTATIC(QScrollArea, new)->qt<QScrollArea>
{
    return qt<QScrollArea>::make();
}

QMETHOD(QScrollArea, ensureVisible, Int x, Int y, Int xMargin, Int yMargin)->void
{
    self->ensureVisible(x, y, xMargin, yMargin);
}

QMETHOD(QScrollArea, ensureWidgetVisible, qt<QWidget> widget, Int xMargin, Int yMargin)->void
{
    self->ensureWidgetVisible(widget.get(), xMargin, yMargin);
}

QMETHOD(QScrollArea, setWidget, qt<QWidget> widget)->void
{
    self->setWidget(widget.get());
}

QMETHOD(QScrollArea, setWidgetResizable, Bool resizable)->void
{
    self->setWidgetResizable(resizable);
}

QMETHOD(QScrollArea, widget)->qt<QWidget>
{
    return qt<QWidget>::make(self->widget());
}

QMETHOD(QScrollArea, widgetResizable)->Bool
{
    return Bool::make(self->widgetResizable());
}

COVARIANT(QScrollArea, QAbstractScrollArea)
