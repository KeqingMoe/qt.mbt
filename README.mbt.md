# KeqingMoe/qt

`KeqingMoe/qt` 是一个面向 Qt Widgets 的 MoonBit 绑定。目前它覆盖了 Qt 对象模型里一小部分但已经可用的接口。

这个项目的目标不只是暴露几个 Qt API，还希望在 MoonBit 侧尽量保留 Qt
原本的基本子类型关系，让代码风格尽可能接近原生 Qt 的编程模型。

## 当前状态

这个项目还处在早期阶段。

目前已知可以在安装了 Homebrew Qt 的 macOS 上运行仓库内附带的示例。其他平台将很快提供支持。

## 示例

```mbt check
fn main raise NullptrError {
  let app = QApplication::new(@env.args())

  let mut count = 0

  let label = QLabel::new()
  label.setText("Count: 0")

  let button = QPushButton::new()
  button.setText("Click me!")

  let _ = QObject::connect(button.clicked(), _ => {
    count += 1
    try! label.setText("Count: \{count}")
  })

  let layout = QHBoxLayout::new()
  layout.addWidget(button)
  layout.addWidget(label)

  let window = QWidget::new()
  window.setWindowTitle("Counter")
  window.setLayout(layout)
  window.show()

  let _ = app.exec()
}
```

完整示例见 [`examples/counter/main.mbt`](./examples/counter/main.mbt)。

## 项目结构

- `examples/`：示例应用
- `scripts/`：构建脚本
- `src/`：Qt Binding
- `stub/`：C++ 胶水代码
- `AI_BINDING_GUIDE.md`：供 AI 继续生成绑定代码时遵循的规范文档

## 构建说明

这个包目前依赖本地 native 工具链环境。

需要的工具包括：

- MoonBit 工具链
- Clang，至少支持 C++23
- [xmake](https://xmake.io)
- Qt 6

当前默认假设：

- macOS
- 通过 Homebrew 安装 Qt，路径位于 `/opt/homebrew/lib`
- `xmake` 已经在 `PATH` 中可用

很快将会针对其他平台及配置完善适配。

这个包使用了 MoonBit 实验性的 prebuild config script 机制，用来：

1. 构建 `stub/` 里的 C++ stub
2. 发现生成后的库目录
3. 把 native link 配置从依赖传播到最终可执行文件

这件事是必要的，因为 MoonBit 当前的 native link 配置不会自动沿依赖传播。

## 运行示例

```sh
cd examples
moon run counter # 或其他示例
```

这会触发 prebuild 脚本，先用 `xmake` 构建 Qt stub，再链接最终的 native
可执行文件。

## API 形状

对外公开的 MoonBit API 由 `src/*.mbt` 导出。

其中 `AsWidget`、`AsLayout` 等 trait 用来在 MoonBit 中表达 Qt
的基本子类型关系。

## 实现说明

底层 C++ 桥接构建在 [`moonbridge`](https://github.com/KeqingMoe/moonbridge) 之上。它是一个配套项目，
提供了这里所需的底层 MoonBit/C++ FFI 抽象。

其中 Qt stub 使用额外的包装类型来保留 Qt 风格的上转型能力，因此像
`QPushButton -> QWidget -> QObject` 这样的转换可以比较自然地暴露给
MoonBit 代码。

## 当前限制

- 目前只绑定了少量 Qt Widgets 接口。
- 目前只支持 macOS。
- 构建流程仍然比较实验性，依赖本地工具正确安装。
- 绑定层还没有完整的自动化测试覆盖。

## License

Apache-2.0.
