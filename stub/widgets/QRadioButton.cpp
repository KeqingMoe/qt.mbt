#include <QRadioButton>
#include <qt.hpp>

QSTATIC(QRadioButton, new)->qt<QRadioButton>
{
    return qt<QRadioButton>::make();
}

COVARIANT(QRadioButton, QAbstractButton)
