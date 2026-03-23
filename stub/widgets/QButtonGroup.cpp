#include <QButtonGroup>
#include <button_group.hpp>

QSTATIC(QButtonGroup, new)->qt<QButtonGroup>
{
    return qt<QButtonGroup>::make();
}

QSTATIC(QButtonGroup, newWithParent, qt<QObject> parent)->qt<QButtonGroup>
{
    return qt<QButtonGroup>::make(parent.get());
}

QMETHOD(QButtonGroup, addButton, qt<QAbstractButton> button, Int id)->void
{
    self->addButton(button.get(), id);
}

QMETHOD(QButtonGroup, button, Int id)->qt<QAbstractButton>
{
    return qt<QAbstractButton>::from_raw(self->button(id));
}

QMETHOD(QButtonGroup, buttons)->box<QAbstractButtonList>
{
    return box<QAbstractButtonList>::make(self->buttons());
}

QMETHOD(QButtonGroup, checkedButton)->qt<QAbstractButton>
{
    return qt<QAbstractButton>::from_raw(self->checkedButton());
}

QMETHOD(QButtonGroup, checkedId)->Int
{
    return self->checkedId();
}

QMETHOD(QButtonGroup, exclusive)->Bool
{
    return Bool::make(self->exclusive());
}

QMETHOD(QButtonGroup, id, qt<QAbstractButton> button)->Int
{
    return self->id(button.get());
}

QMETHOD(QButtonGroup, removeButton, qt<QAbstractButton> button)->void
{
    self->removeButton(button.get());
}

QMETHOD(QButtonGroup, setExclusive, Bool value)->void
{
    self->setExclusive(value);
}

QMETHOD(QButtonGroup, setId, qt<QAbstractButton> button, Int id)->void
{
    self->setId(button.get(), id);
}

SIGNAL_DEF(QButtonGroup, buttonClicked, qt<QAbstractButton>, qt<QAbstractButton>::from_raw)

SIGNAL_DEF(QButtonGroup, buttonPressed, qt<QAbstractButton>, qt<QAbstractButton>::from_raw)

SIGNAL_DEF(QButtonGroup, buttonReleased, qt<QAbstractButton>, qt<QAbstractButton>::from_raw)

SIGNAL_DEF(QButtonGroup, buttonToggled, box<ButtonToggled>, [](QAbstractButton* button, bool checked) -> box<ButtonToggled> {
    return box<ButtonToggled>::make(ButtonToggled{
        qt<QAbstractButton>::from_raw(button),
        Bool::make(checked),
    });
})

SIGNAL_DEF(QButtonGroup, idClicked, Int, std::identity{})

SIGNAL_DEF(QButtonGroup, idPressed, Int, std::identity{})

SIGNAL_DEF(QButtonGroup, idReleased, Int, std::identity{})

SIGNAL_DEF(QButtonGroup, idToggled, box<IdToggled>, [](Int id, bool checked) -> box<IdToggled> {
    return box<IdToggled>::make(IdToggled{id, Bool::make(checked)});
})

COVARIANT(QButtonGroup, QObject)
