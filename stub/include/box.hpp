#pragma once
#ifndef QT_MBT_STUB_BOX_HPP
#define QT_MBT_STUB_BOX_HPP

#include <QSharedPointer>
#include <moonbridge.hpp>

// 用于将 Qt 类型传递给 Moonbit，底层表示为 box<QSharedPointer<T>>
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

#endif
