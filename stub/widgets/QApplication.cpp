#include <QApplication>
#include <QIcon>
#include <qt.hpp>

QSTATIC(QApplication, new, Array<String> args)->qt<QApplication>
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
        ffi::panic();
    }

    Args.argc = args.size();
    for (auto arg : args) {
        auto u16s = str::mbt_to_qt(arg);
        Args.argarr.push_back(u16s.toStdString());
    }
    for (auto&& arg : Args.argarr) {
        Args.argv.push_back(arg.data());
    }
    Args.argv.push_back(nullptr);

    auto&& argc = Args.argc;
    auto&& argv = Args.argv.data();
    return qt<QApplication>::make(argc, argv);
}

QMETHOD(QApplication, exec)->Int
{
    return self->exec();
}

QMETHOD(QApplication, windowIcon)->box<QIcon>
{
    return box<QIcon>::make(self->windowIcon());
}

QMETHOD(QApplication, quit)->void
{
    self->quit();
}

QMETHOD(QApplication, setStyleSheet, String styleSheet)->void
{
    self->setStyleSheet(str::mbt_to_qt(styleSheet));
}

QMETHOD(QApplication, setWindowIcon, box<QIcon> icon)->void
{
    self->setWindowIcon(*icon);
}

QMETHOD(QApplication, styleSheet)->String
{
    return str::qt_to_mbt(self->styleSheet());
}


COVARIANT(QApplication, QObject)
