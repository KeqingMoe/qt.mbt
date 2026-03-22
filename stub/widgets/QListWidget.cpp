#include <QListWidget>
#include <qt.hpp>

QSTATIC(QListWidget, new)->qt<QListWidget>
{
    return qt<QListWidget>::make();
}

QMETHOD(QListWidget, addTextItem, String label)->void
{
    self->addItem(str::mbt_to_qt(label));
}

QMETHOD(QListWidget, addTextItems, Array<String> labels)->void
{
    for (auto label : labels) {
        self->addItem(str::mbt_to_qt(label));
    }
}

QMETHOD(QListWidget, insertTextItem, Int row, String label)->void
{
    self->insertItem(row, str::mbt_to_qt(label));
}

QMETHOD(QListWidget, insertTextItems, Int row, Array<String> labels)->void
{
    QStringList texts;
    texts.reserve(labels.size());
    for (auto label : labels) {
        texts.append(str::mbt_to_qt(label));
    }
    self->insertItems(row, texts);
}

QMETHOD(QListWidget, clear)->void
{
    self->clear();
}

QMETHOD(QListWidget, count)->Int
{
    return self->count();
}

QMETHOD(QListWidget, currentRow)->Int
{
    return self->currentRow();
}

QMETHOD(QListWidget, isSortingEnabled)->Bool
{
    return Bool::make(self->isSortingEnabled());
}

QMETHOD(QListWidget, setCurrentRow, Int row)->void
{
    self->setCurrentRow(row);
}

QMETHOD(QListWidget, setSortingEnabled, Bool enable)->void
{
    self->setSortingEnabled(enable);
}

SIGNAL_DEF(QListWidget, currentRowChanged, Int, std::identity{})

SIGNAL_DEF(QListWidget, currentTextChanged, String, str::qt_to_mbt)

SIGNAL_DEF(QListWidget, itemSelectionChanged, Unit, Unit::make)

COVARIANT(QListWidget, QListView)
