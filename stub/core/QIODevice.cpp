#include <QIODevice>
#include <qt.hpp>

SIGNAL_DEF(QIODevice, aboutToClose, Unit, Unit::make)

QMETHOD(QIODevice, atEnd)->Bool
{
    return Bool::make(self->atEnd());
}

QMETHOD(QIODevice, bytesAvailable)->Int64
{
    return self->bytesAvailable();
}

QMETHOD(QIODevice, canReadLine)->Bool
{
    return Bool::make(self->canReadLine());
}

QMETHOD(QIODevice, close)->void
{
    self->close();
}

QMETHOD(QIODevice, errorString)->String
{
    return str::qt_to_mbt(self->errorString());
}

QMETHOD(QIODevice, isSequential)->Bool
{
    return Bool::make(self->isSequential());
}

QMETHOD(QIODevice, readAll)->Bytes
{
    return bytes::qt_to_mbt(self->readAll());
}

QMETHOD(QIODevice, readLine, Int64 maxlen)->Bytes
{
    return bytes::qt_to_mbt(self->readLine(maxlen));
}

SIGNAL_DEF(QIODevice, readyRead, Unit, Unit::make)

SIGNAL_DEF(QIODevice, readChannelFinished, Unit, Unit::make)

QMETHOD(QIODevice, waitForReadyRead, Int msecs)->Bool
{
    return Bool::make(self->waitForReadyRead(msecs));
}

COVARIANT(QIODevice, QObject)
