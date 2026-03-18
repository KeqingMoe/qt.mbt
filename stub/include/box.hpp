#pragma once
#ifndef QT_MBT_STUB_BOX_HPP
#define QT_MBT_STUB_BOX_HPP

#include <QPointer>
#include <moonbridge.hpp>

// 用于将 Qt 类型传递给 MoonBit。
// 其目的是实现协变与防止悬垂。
// 我已论证在 Qt 对象树模型下，自动释放一定 unsound。
// 所以它不持有所有权，仅观察。
template <typename T>
struct qt
{
    using Self      = qt;
    using repr_type = mbt::box<QPointer<T>>;
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
        return {.repr = repr_type::make(new T(std::forward<Args>(args)...))};
    }

    template <typename U>
        requires std::derived_from<T, U>
    auto cast() -> qt<U>
    {
        return {.repr = qt<U>::repr_type::make(qobject_cast<U*>(repr->get()))};
    }

    auto get() const -> T*
    {
        return repr->get();
    }

    auto is_null() const -> bool
    {
        return repr->isNull();
    }
};

template <typename T>
struct mbt::moonbit_trait<qt<T>> : mbt::moonbit_trait<typename qt<T>::repr_type>
{
    using Self = qt<T>;
    using Base = mbt::moonbit_trait<typename qt<T>::repr_type>;

    static constexpr auto retain(Self self) noexcept -> void
    {
        Base::retain(self.repr);
    }

    static constexpr auto release(Self self) noexcept -> void
    {
        Base::release(self.repr);
    }
};

#define COVARIANT(Derived, Base)                                                                                       \
    extern "C" auto Derived##_as_##Base(qt<Derived> self) -> qt<Base>                                                  \
    {                                                                                                                  \
        return self.cast<Base>();                                                                                      \
    }

#endif
