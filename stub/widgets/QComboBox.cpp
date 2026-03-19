#include <QComboBox>
#include <qt.hpp>

QSTATIC(QComboBox, new)->qt<QComboBox>
{
    return qt<QComboBox>::make();
}

QMETHOD(QComboBox, addItem, String text)->void
{
    self->addItem(str::mbt_to_qt(text));
}

QMETHOD(QComboBox, clear)->void
{
    self->clear();
}

QMETHOD(QComboBox, count)->Int
{
    return self->count();
}

QMETHOD(QComboBox, currentIndex)->Int
{
    return self->currentIndex();
}

QMETHOD(QComboBox, currentText)->String
{
    return str::qt_to_mbt(self->currentText());
}

QMETHOD(QComboBox, isEditable)->Bool
{
    return Bool::make(self->isEditable());
}

QMETHOD(QComboBox, placeholderText)->String
{
    return str::qt_to_mbt(self->placeholderText());
}

QMETHOD(QComboBox, setCurrentIndex, Int index)->void
{
    self->setCurrentIndex(index);
}

QMETHOD(QComboBox, setCurrentText, String text)->void
{
    self->setCurrentText(str::mbt_to_qt(text));
}

QMETHOD(QComboBox, setEditable, Bool editable)->void
{
    self->setEditable(editable);
}

QMETHOD(QComboBox, setPlaceholderText, String text)->void
{
    self->setPlaceholderText(str::mbt_to_qt(text));
}

SIGNAL_DEF(QComboBox, activated, Int, std::identity{})

SIGNAL_DEF(QComboBox, currentIndexChanged, Int, std::identity{})

SIGNAL_DEF(QComboBox, currentTextChanged, String, str::qt_to_mbt)

COVARIANT(QComboBox, QWidget)
