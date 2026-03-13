#include <qt.hpp>

#include <QApplication>
#include <QHBoxLayout>
#include <QLabel>
#include <QPushButton>
#include <QSharedPointer>
#include <QWidget>

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"

// namespace qt
// {

// using QObject      = QSharedPointer<QObject>;
// using QWidget      = QSharedPointer<QWidget>;
// using QLayout      = QSharedPointer<QLayout>;
// using QApplication = QSharedPointer<QApplication>;
// using QHBoxLayout  = QSharedPointer<QHBoxLayout>;
// using QLabel       = QSharedPointer<QLabel>;
// using QPushButton  = QSharedPointer<QPushButton>;

// } // namespace qt

extern "C"
{
    using namespace mbt::types;
    using namespace mbt::ffi;

    auto QApplication_new(Array<String> args) -> qt<QApplication>
    {
        // 只能创建一个 Application 对象
        // argc 和 argv 必须可变全程存活
        // 受制于 Qt 的神秘设计，不得不如此

        static struct
        {
            int argc = 0;
            std::vector<std::string> argarr;
            std::vector<char*> argv;
        } Args;

        if (Args.argc != 0 || args.size() == 0) {
            panic();
        }

        Args.argc = args.size();
        for (auto arg : args) {
            auto u16s = str::mbt_to_qt(arg);
            auto u8s  = u16s.toStdString();
            Args.argarr.push_back(std::move(u8s));
            Args.argv.push_back(Args.argarr.back().data());
        }
        Args.argv.push_back(nullptr);

        auto&& argc = Args.argc;
        auto&& argv = Args.argv.data();
        return qt<QApplication>::make(argc, argv);
    }

    auto QApplication_exec(qt<QApplication> self) -> Int
    {
        return self->exec();
    }

    auto QApplication_as_QObject(qt<QApplication> self) -> qt<QObject>
    {
        return self.cast<QObject>();
    }

    auto QWidget_new() -> qt<QWidget>
    {
        return qt<QWidget>::make();
    }

    auto QWidget_show(qt<QWidget> self) -> void
    {
        self->show();
    }

    auto QWidget_setWindowTitle(qt<QWidget> self, String title) -> void
    {
        self->setWindowTitle(str::mbt_to_qt(title));
    }

    auto QWidget_as_QObject(qt<QWidget> self) -> qt<QObject>
    {
        return self.cast<QObject>();
    }

    auto QWidget_setLayout(qt<QWidget> self, qt<QLayout> layout)
    {
        self->setLayout(layout.get());
    }

    auto QHBoxLayout_new() -> qt<QHBoxLayout>
    {
        return qt<QHBoxLayout>::make();
    }

    auto QHBoxLayout_addWidget(qt<QHBoxLayout> self, qt<QWidget> widget) -> void
    {
        self->addWidget(widget.get());
    }

    auto QHBoxLayout_as_QLayout(qt<QHBoxLayout> self) -> qt<QLayout>
    {
        return self.cast<QLayout>();
    }

    auto QLabel_new() -> qt<QLabel>
    {
        return qt<QLabel>::make();
    }

    auto QLabel_setText(qt<QLabel> self, String text) -> void
    {
        self->setText(str::mbt_to_qt(text));
    }

    auto QLabel_as_QWidget(qt<QLabel> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }

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

    auto QPushButton_as_QWidget(qt<QPushButton> self) -> qt<QWidget>
    {
        return self.cast<QWidget>();
    }

    auto test_cb(fn<Unit()> cb) -> void
    {
        cb();
    }
}
