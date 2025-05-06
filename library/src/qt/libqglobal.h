#pragma once
#ifndef SRC_QTC_LIBQGLOBAL_H
#define SRC_QTC_LIBQGLOBAL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifdef __GNUC__
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#endif

#include "qtlibc.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#else

#endif

#ifdef __cplusplus
typedef QtPrivate::Deprecated_t Deprecated_t; // C++ enum
#else
typedef int Deprecated_t; // C ABI enum
#endif

#ifdef __cplusplus
} /* extern C */
#endif

#endif
