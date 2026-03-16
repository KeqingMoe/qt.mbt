#include <QApplication>
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
        auto u8s  = u16s.toStdString();
        Args.argarr.push_back(std::move(u8s));
        Args.argv.push_back(Args.argarr.back().data());
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

COVARIANT(QApplication, QObject)
