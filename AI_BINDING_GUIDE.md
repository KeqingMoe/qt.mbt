# Qt MoonBit Binding AI Guide

这份文档用于约束 AI 在本仓库中生成 Qt 绑定代码的行为。

如果 AI 需要继续为本项目生成代码，应优先遵守本文件，而不是临时发明新的模式。如有特殊情况，必须及时向用户报告。

本文档的优先级高于 [AGENTS.md](./AGENTS.md)

## 总体原则

1. 严格尊重 Qt 类层次。  
  例如 `QPushButton -> QAbstractButton -> QWidget -> QObject`，`QLabel -> QFrame -> QWidget -> QObject`。  
  如果 Qt 中存在中间基类，而项目中还没有补齐，应优先补齐中间层，而不是直接把方法堆到叶子类上。  
  例外是，如果某个类存在派生类，但 MoonBit 侧尚未添加任何该类的派生类，则无需 As trait。而在后续补上派生类后，应该添加 As trait 并按原则 2 进行一定重构。

2. 公共方法应尽量放在正确的 trait 层级。  
  例如按钮共有方法应放到 `AsAbstractButton`，布局共有方法应放到 `AsLayout` / `AsBoxLayout`，而不是只挂在 `QPushButton` 或 `QHBoxLayout` 上。

3. 优先复用现有抽象，不要回退到 ad-hoc 实现。  
  已有 `Signal[A]`、`SignalAdapter`、`qt<T>`、`QSTATIC`、`QMETHOD`、`SIGNAL_DEF`、`COVARIANT` 等机制时，应优先使用。

4. 命名和语义尽量贴近 Qt。  
  如果 Qt 的方法叫 `setCheckable`、`isChecked`、`animateClick`，MoonBit 侧尽量保持同名，而不是自行发明别名。

5. Moonbit 方法顺序和导出顺序应该按首字母顺序。  
  尤其是对于 As 系列 trait。它内部应该分为三个区域：
    1. as_ 函数
    2. 公共方法和插槽（按首字母顺序）
    3. 信号（按首字母顺序）
  加入新方法时也应当插入到适当的位置。

6. Moonbit 导出顺序也应该按首字母顺序。  
  对于每个对应单个 Qt 类的 C++ stub，它内部应该分为四个区域：
    1. 构造函数
    2. 公共方法和插槽（按首字母顺序）
    3. 信号（按首字母顺序）
    4. 协变函数
  加入新方法时也应当插入到适当的位置。

7. 专注于代码。无需刻意进行手动调整代码格式等有自动化流程辅助的操作，也无需调用代码格式化工具，相关工作应该交给人类。

8. 不知道做什么时，可以参考现有实现，也可以询问用户或让用户接管。

9. 目前 API 尚不稳定，无需运行 `moon info` 生成 .mbti 文件。

## 分层结构

本项目有两个明确层次：

1. `src/`  
  这一层是 public wrapper。负责：
    - 定义抽象类型和私有的 FFI 部分，并放在源码最上部
    - 定义 public struct/newtype
    - 定义 trait
    - 在 trait 默认实现中调用 FFI
    - 组织 public API

2. `stub/`  
  这一层是 C++ 胶水。负责：
    - 调用真实 Qt API
    - 做字符串、信号、协变等跨 FFI 适配
    - 为 MoonBit 的 FFI 提供导出符号

### 绝对规则

- MoonBit 侧 `extern "C"` 函数绝对不能导出。
- public 层不要直接暴露 stub 层的实现细节。

## MoonBit 层规范

### public 类型

public wrapper 通常写成：

```mbt
pub type QWidget
```

该类型直接对应 stub 侧的 `qt<QWidget>`，其含义为可空不悬垂指针。

不应在 MoonBit 侧使用 `Option[QWidget]`，`QWidget` 本身就是可空语义。

### FFI 命名

FFI 名称遵循：

- MoonBit 外部函数：`_QWidget_show`
- C++ 导出函数：`QWidget_show`

也就是说，public 接口只调用 `_QWidget_show`，真正的 C++ 符号名是 `QWidget_show`。

```mbt
#borrow(this)
extern "C" fn _QWidget_show(this : QWidget) = "QWidget_show"
```

### As trait 设计

- As trait 用于表达 Qt 的继承/子类型关系。
- As trait 应为 `pub(open)`，允许用户为自定义组件实现。
- As trait 默认实现用于承接“该层所有子类共有的方法”。
- 叶子类只保留：
  - 构造函数
  - 该类特有的方法
  - 该类特有的信号
  - 向上转型所需的 `as_xxx`

例如：

- `AsWidget` 承接 `show`、`setWindowTitle`、`setLayout`
- `AsLayout` 承接 `addWidget`
- `AsBoxLayout` 承接 `addLayout`
- `AsAbstractButton` 承接按钮共有方法和信号

```mbt
pub(open) trait AsWidget: AsObject {
  as_widget(Self) -> QWidget
  show(Self) -> Unit = _
  // ...
}

impl AsWidget with show(self) {
  _QWidget_show(self.as_widget())
}
```

### 信号规范

- MoonBit 侧统一使用 `Signal[A]`
- 连接统一使用 `QObject::connect`
- 信号 getter 名字应尽量和 Qt 原始信号一致，例如：
  - `clicked() -> Signal[Bool]`
  - `pressed() -> Signal[Unit]`
  - `textChanged() -> Signal[String]`

## C++ stub 规范

### Qt 文档

访问 `https://doc.qt.io/qt-6/` 以获取在线文档。例如 `QAbstractButton` 的文档位于 `https://doc.qt.io/qt-6/qabstractbutton.html`，请注意类名在这里应当转为全小写。

### 统一宏

stub 层优先使用这些宏：

- `QSTATIC(Self, Method, ...)`
- `QMETHOD(Self, Method, ...)`
- `SIGNAL_DEF(Sender, Signal, Arg, Converter)`
- `COVARIANT(Derived, Base)`

这些宏已经代表当前项目认可的模式。除非当前模式无法表达，否则不要回退到手写重复样板。

`SIGNAL_DEF` 宏可以直接把 Converter 作为 lambda 内联在宏中。但如果有函数能直接符合要求，则无需额外包一层 lambda。

### `qt<T>` 的意义

`qt<T>` 的目标是保留 Qt 风格协变与防止悬垂。其本身具有可空语义，直接对应 MoonBit 侧的抽象类型。

尤其是：

- `qt<QPushButton> -> qt<QAbstractButton> -> qt<QWidget> -> qt<QObject>`
- `qt<QLabel> -> qt<QFrame> -> qt<QWidget>`

这类上转型必须通过现有协变机制来做，不要重新发明别的桥接表示。

### 字符串转换

统一使用：

- `str::mbt_to_qt`
- `str::qt_to_mbt`

不要在各个 `.cpp` 文件里重复手写 `QString` / `String` 转换逻辑。

### Qt 枚举映射

- 如果 Qt API 使用的是具名枚举类型，而该枚举在 MoonBit 侧值得直接表达语义，则应在 MoonBit public 层定义对应的常量枚举，而不是把 public API 退化成 `Int`。
- 这类 MoonBit 常量枚举应尽量保持 Qt 原始枚举项的语义和数值，例如 `Qt::CheckState` 对应 `Unchecked = 0`、`PartiallyChecked = 1`、`Checked = 2`。
- MoonBit internal/public 的 `extern "C"` 声明可以直接使用这种常量枚举作为参数和返回值。按照 MoonBit FFI 约定，常量枚举会按整数传递，无需额外桥接层。
- stub 层可以继续把这类参数和返回值写成 `Int`，并在需要时显式转换到 Qt 枚举，例如 `static_cast<Qt::CheckState>(state)`。
- 信号也遵循同样规则：如果 Qt 信号参数本质上是这类枚举，则 MoonBit 侧信号类型应写成对应枚举类型，而不是 `Signal[Int]`。

### 布尔转换

- 从 C++ `bool` 到 MoonBit `Bool`：使用 `Bool::make(...)`
- 从 MoonBit `Bool` 到 C++ `bool`：使用现有隐式/显式转换能力，不要再新增无必要 helper

### 信号实现

所有 Qt 信号应优先走 `SignalAdapter` + `SIGNAL_DEF`。

不要再手写这种旧式代码：

```cpp
class Clicked : public Signal<Bool> { ... };
```

除非该信号无法用当前设施表达。

### MoonBit 数组

可以在 stub 中用 `Array<T>` 和 `FixedArray<T>` 接受 MoonBit 侧对应的数组。但目前无法在 stub 侧构造这两种数组，凡返回线性容器的 MoonBit API 应暂不实现。

### 导出边界

stub 的导出符号必须对齐 internal FFI 声明。
也就是说：

- MoonBit internal 有 `extern "C" fn _QAbstractButton_setText(...) = "QAbstractButton_setText"`
- C++ stub 必须有 `QMETHOD(QAbstractButton, setText, ...)`

不要在 C++ 层随意更名。

## 变更流程

无论做何种变更，都应先查询 Qt 的文档。

### 添加新类的流程

AI 在新增一个 Qt 类时，应按下面顺序工作：

1. 先查清 Qt 文档中的真实继承链。
2. 如果中间基类还没绑定，先补中间基类。
3. 在 `src/...` 中增加抽象类型 `type T` 和 extern 声明。
4. 在 `src/...` 中增加 public wrapper。
5. 把方法放到“最高但仍正确”的 trait 层级，而不是直接塞给叶子类。
6. 在 `stub/` 中实现对应的 C++ 导出函数。
7. 如有信号，优先使用 `SIGNAL_DEF`。
8. 如有协变，优先使用 `COVARIANT`。
9. 如该新增能力值得展示，补一个 example。

### 添加新方法的流程

AI 在给现有类补方法时，应先判断：

1. 这个方法是不是属于已有基类？  
  如果是，应优先加到对应 trait，而不是叶子类。

2. 这个方法会不会引入新类型？  
  如果不会，优先实现这类“低成本、可直接落地”的方法。

3. 如果会引入新类型，请暂时不做。

## AI 禁止事项

AI 不应做以下事情：

- 跳过 Qt 中间基类，直接把方法堆到叶子类
- 在 public 包里写 `extern "C"`
- 为已存在的统一模式重新发明一套新模式
- 新增 ad-hoc 风格 API，而不是沿用 Qt 命名和现有抽象
- 为了省事把多个层次的方法都绑在单个类上
- 在 stub 中重复手写已有宏能表达的样板
- 为简单 bool/string 等类型转换引入额外 helper 或局部风格
- 在未被用户要求的情况下使用非只读的 Git 功能

## 验证要求

完成代码生成后，至少执行：

- `moon check --target native`
- 在 `examples/` 下再执行一次 `moon check --target native`

## 最后判断标准

一个好的绑定改动，应同时满足：

- Qt 类层次更完整，而不是更混乱
- public API 更像 Qt，而不是更像 FFI
- 重复样板更少，但抽象没有过度
- 后续 AI 更容易沿着同一模式继续写

如果一个改动只是“局部能跑”，但破坏了以上任何一点，就不应被视为好改动。

如果存在任何问题，一定要询问用户的意见，用户拥有最终决定权。
