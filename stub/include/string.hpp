#pragma once
#ifndef QT_MBT_STUB_STRING_HPP
#define QT_MBT_STUB_STRING_HPP

#include <QString>
#include <moonbridge.hpp>

namespace str
{

inline auto mbt_to_qt(mbt::String str) -> QString
{
    return QString::fromUtf16(str.data(), str.size());
}


inline auto qt_to_mbt(QString str) -> mbt::String
{
    // str.utf16()
    return mbt::String::from_str(reinterpret_cast<const char16_t*>(str.utf16()));
}


}

#endif
