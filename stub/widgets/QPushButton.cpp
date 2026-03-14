#include <QPushButton>
#include <qt.hpp>

class Clicked : public Signal<Bool>
{
public:
    QSharedPointer<QPushButton> sender;
    Clicked(QSharedPointer<QPushButton> sender) : sender{std::move(sender)} {}

    auto connect(Slot<Bool> slot) -> Connection override
    {
        return Connection::make(QObject::connect( //
            sender.get(),
            &QPushButton::clicked,
            [slot = own{slot}](bool x) -> void {
                slot.repr(Bool::make(x));
            }) //
        );
    }
};

extern "C"
{
    auto QPushButton_new() -> qt<QPushButton>
    {
        return qt<QPushButton>::make();
    }

    auto QPushButton_setText(qt<QPushButton> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QPushButton_on_clicked(qt<QPushButton> self, fn<Unit()> cb) -> void
    {
        QObject::connect(self.get(), &QPushButton::clicked, [cb = own{cb}] {
            cb.repr();
        });
    }

    auto QPushButton_clicked(qt<QPushButton> self) -> box<Clicked>
    {
        return box<Clicked>::make(*self.repr);
    }

    auto QPushButton_as_QWidget(qt<QPushButton> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
