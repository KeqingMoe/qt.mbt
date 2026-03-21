#pragma once
#ifndef QT_MBT_STUB_BYTES_HPP
#define QT_MBT_STUB_BYTES_HPP

#include <QByteArray>
#include <cstring>
#include <moonbridge.hpp>

namespace bytes
{

inline auto mbt_to_qt(mbt::Bytes bytes) -> QByteArray
{
    auto data = static_cast<const char*>(static_cast<const void*>(bytes.data()));
    return QByteArray{data, bytes.size()};
}

inline auto qt_to_mbt(const QByteArray& bytes) -> mbt::Bytes
{
    auto data = static_cast<const mbt::Byte*>(static_cast<const void*>(bytes.data()));
    return mbt::Bytes::from_raw(data, bytes.size());
}

}

#endif
