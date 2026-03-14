#include "QDebug"
#include <QLineEdit>
#include <qt.hpp>

using TextChanged = SignalAdapter< //
    QLineEdit,
    &QLineEdit::textChanged,
    String,
    [](const QString& text) {
        return str::qt_to_mbt(text);
    } //
    >;

extern "C"
{
    auto QLineEdit_new() -> qt<QLineEdit>
    {
        return qt<QLineEdit>::make();
    }

    auto QLineEdit_setText(qt<QLineEdit> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QLineEdit_text(qt<QLineEdit> self) -> String
    {
        return str::qt_to_mbt(self->text());
    }

    auto QLineEdit_textChanged(qt<QLineEdit> self) -> box<TextChanged>
    {
        return box<TextChanged>::make(*self.repr);
    }

    auto QLineEdit_as_QWidget(qt<QLineEdit> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }
}
