#pragma once
#ifndef QT_MBT_STUB_ENUM_HPP
#define QT_MBT_STUB_ENUM_HPP

#include <moonbridge.hpp>
#include <type_traits>

template <typename T>
    requires std::is_enum_v<T> && (sizeof(std::underlying_type_t<T>) <= sizeof(int32_t))
struct Enum
{
    using repr_type = mbt::Int;
    repr_type repr;

    static constexpr auto make(T x) noexcept -> Enum
    {
        return Enum{x};
    }

    constexpr operator T() const noexcept
    {
        return get();
    }

    constexpr auto get() const noexcept -> T
    {
        return static_cast<T>(repr);
    }
};

template <typename T>
struct mbt::moonbit_trait<Enum<T>> : mbt::moonbit_trait<Int>
{
};

#endif
