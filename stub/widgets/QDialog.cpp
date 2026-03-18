#include <QDialog>
#include <qt.hpp>

QSTATIC(QDialog, new)->qt<QDialog>
{
    return qt<QDialog>::make();
}

QMETHOD(QDialog, accept)->void
{
    self->accept();
}

QMETHOD(QDialog, done, Int result)->void
{
    self->done(result);
}

QMETHOD(QDialog, isModal)->Bool
{
    return Bool::make(self->isModal());
}

QMETHOD(QDialog, reject)->void
{
    self->reject();
}

QMETHOD(QDialog, result)->Int
{
    return self->result();
}

QMETHOD(QDialog, setModal, Bool modal)->void
{
    self->setModal(modal);
}

SIGNAL_DEF(QDialog, accepted, Unit, Unit::make)

SIGNAL_DEF(QDialog, finished, Int, [](auto result) { return result; })

SIGNAL_DEF(QDialog, rejected, Unit, Unit::make)

COVARIANT(QDialog, QWidget)
