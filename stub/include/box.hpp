#pragma once
#ifndef QT_MBT_STUB_BOX_HPP
#define QT_MBT_STUB_BOX_HPP

#include <QSharedPointer>
#include <moonbridge.hpp>

// 用于将 Qt 类型传递给 MoonBit。
// 其目的并非生命周期管理（已有 MoonBit 对象模型代劳），
// 而是用来实现协变。协变后产生的新指针指向基类子对象，
// 而引用计数控制块仍和原对象共享。
// 使用 QSharedPointer 是为了稳妥，降低复杂性，
// 因为我并不太熟悉 MoonBit 对象模型。以后可能会替换实现。
template <typename T>
struct qt
{
    using Self      = qt;
    using repr_type = mbt::box<QSharedPointer<T>>;
    repr_type repr;

    constexpr auto operator->(this Self self) noexcept -> T*
    {
        return self.repr->get();
    }

    constexpr auto operator*(this Self self) noexcept -> T&
    {
        return *self.repr;
    }

    template <typename... Args>
        requires std::constructible_from<T, Args&&...>
    static auto make(Args&&... args) noexcept -> Self
    {
        return {.repr = repr_type::make(QSharedPointer<T>::create(std::forward<Args>(args)...))};
    }

    template <typename U>
        requires std::derived_from<T, U>
    auto cast() -> qt<U>
    {
        return {.repr = qt<U>::repr_type::make(repr->template objectCast<U>())};
    }

    auto get() const -> T*
    {
        return repr->get();
    }
};

#define COVARIANT(Derived, Base)                                                                                       \
    extern "C" auto Derived##_as_##Base(qt<Derived> self) -> qt<Base>                                                  \
    {                                                                                                                  \
        return self.cast<Base>();                                                                                      \
    }

#endif
