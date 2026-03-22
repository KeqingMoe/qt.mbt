#include <QPushButton>
#include <qt.hpp>

QSTATIC(QPushButton, new)->qt<QPushButton>
{
    return qt<QPushButton>::make();
}

QMETHOD(QPushButton, isFlat)->Bool
{
    return Bool::make(self->isFlat());
}

QMETHOD(QPushButton, setFlat, Bool flat)->void
{
    self->setFlat(flat);
}

COVARIANT(QPushButton, QAbstractButton)
