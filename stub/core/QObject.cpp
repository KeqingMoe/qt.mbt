#include <QObject>
#include <qt.hpp>

QSTATIC(QObject, connect, ErasedSignal signal, ErasedSlot slot)->Connection
{
    return signal->repr->connect_erased(slot);
}

QSTATIC(QObject, disconnect, Connection connection)->Bool
{
    auto flag = QObject::disconnect(*connection);
    return Bool::make(flag);
}

QMETHOD(QObject, is_null)->Bool
{
    return Bool::make(self.is_null());
}

QSTATIC(QObject, new)->qt<QObject>
{
    return qt<QObject>::make();
}

QMETHOD(QObject, blockSignals, Bool block)->Bool
{
    return Bool::make(self->blockSignals(block));
}

QMETHOD(QObject, deleteLater)->void
{
    self->deleteLater();
}

QMETHOD(QObject, dumpObjectInfo)->void
{
    self->dumpObjectInfo();
}

QMETHOD(QObject, dumpObjectTree)->void
{
    self->dumpObjectTree();
}

QMETHOD(QObject, inherits, String className)->Bool
{
    auto utf8 = str::mbt_to_qt(className).toUtf8();
    return Bool::make(self->inherits(utf8.constData()));
}

QMETHOD(QObject, isWidgetType)->Bool
{
    return Bool::make(self->isWidgetType());
}

QMETHOD(QObject, isWindowType)->Bool
{
    return Bool::make(self->isWindowType());
}

QMETHOD(QObject, objectName)->String
{
    return str::qt_to_mbt(self->objectName());
}

QMETHOD(QObject, parent)->qt<QObject>
{
    return qt<QObject>::from_raw(self->parent());
}

QMETHOD(QObject, setObjectName, String name)->void
{
    self->setObjectName(str::mbt_to_qt(name));
}

QMETHOD(QObject, setParent, qt<QObject> parent)->void
{
    self->setParent(parent.get());
}

QMETHOD(QObject, signalsBlocked)->Bool
{
    return Bool::make(self->signalsBlocked());
}

SIGNAL_DEF(QObject, destroyed, qt<QObject>, qt<QObject>::from_raw)

SIGNAL_DEF(QObject, objectNameChanged, String, [](const QString& name, auto&&...) -> String {
    return str::qt_to_mbt(name);
})
