#pragma once
#ifndef QT_MBT_STUB_QT_HPP
#define QT_MBT_STUB_QT_HPP

#include "box.hpp"    // IWYU pragma: keep
#include "enum.hpp"   // IWYU pragma: keep
#include "signal.hpp" // IWYU pragma: keep
#include "string.hpp" // IWYU pragma: keep

using namespace mbt::types;
namespace ffi = mbt::ffi;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"

#define QSTATIC(Self, Method, ...) extern "C" auto Self##_##Method(__VA_ARGS__)
#define QMETHOD(Self, Method, ...) extern "C" auto Self##_##Method(qt<Self> self __VA_OPT__(, ) __VA_ARGS__)

#endif
