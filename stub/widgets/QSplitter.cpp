#include <QSplitter>
#include <qt.hpp>

QSTATIC(QSplitter, new, Enum<Qt::Orientation> orientation)->qt<QSplitter>
{
    return qt<QSplitter>::make(orientation);
}

QMETHOD(QSplitter, addWidget, qt<QWidget> widget)->void
{
    self->addWidget(widget.get());
}

QMETHOD(QSplitter, count)->Int
{
    return self->count();
}

QMETHOD(QSplitter, indexOf, qt<QWidget> widget)->Int
{
    return self->indexOf(widget.get());
}

QMETHOD(QSplitter, insertWidget, Int index, qt<QWidget> widget)->void
{
    self->insertWidget(index, widget.get());
}

QMETHOD(QSplitter, isCollapsible, Int index)->Bool
{
    return Bool::make(self->isCollapsible(index));
}

QMETHOD(QSplitter, orientation)->Enum<Qt::Orientation>
{
    return {self->orientation()};
}

QMETHOD(QSplitter, setHandleWidth, Int width)->void
{
    self->setHandleWidth(width);
}

QMETHOD(QSplitter, setChildrenCollapsible, Bool value)->void
{
    self->setChildrenCollapsible(value);
}

QMETHOD(QSplitter, setCollapsible, Int index, Bool value)->void
{
    self->setCollapsible(index, value);
}

QMETHOD(QSplitter, setOrientation, Enum<Qt::Orientation> orientation)->void
{
    self->setOrientation(orientation);
}

QMETHOD(QSplitter, setSizes, Array<Int> sizes)->void
{
    QList<int> values;
    values.reserve(sizes.size());
    for (auto value : sizes) {
        values.append(value);
    }
    self->setSizes(values);
}

QMETHOD(QSplitter, setStretchFactor, Int index, Int stretch)->void
{
    self->setStretchFactor(index, stretch);
}

QMETHOD(QSplitter, sizes)->box<QList<Int>>
{
    return box<QList<Int>>::make(self->sizes());
}

QMETHOD(QSplitter, widget, Int index)->qt<QWidget>
{
    return qt<QWidget>::from_raw(self->widget(index));
}

using Signal_QSplitter_splitterMoved = SignalAdapter<
    QSplitter,
    &QSplitter::splitterMoved,
    box<SplitterMoved>,
    [](Int position, Int index, auto&&...) -> box<SplitterMoved> {
        return box<SplitterMoved>::make(SplitterMoved{position, index});
    }>;

extern "C" auto QSplitter_splitterMoved(qt<QSplitter> self) -> box<Signal_QSplitter_splitterMoved>
{
    return box<Signal_QSplitter_splitterMoved>::make(*self.repr);
}

COVARIANT(QSplitter, QFrame)
