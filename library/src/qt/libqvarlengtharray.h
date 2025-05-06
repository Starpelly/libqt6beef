#pragma once
#ifndef SRC_QTC_LIBQVARLENGTHARRAY_H
#define SRC_QTC_LIBQVARLENGTHARRAY_H

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
typedef struct QVLABaseBase QVLABaseBase;
#endif

#ifdef __cplusplus
typedef QVLABaseBase::size_type size_type; // C++ QFlags
#else
typedef ptrdiff_t size_type; // C ABI QFlags
#endif

QTLIBC_API ptrdiff_t QVLABaseBase_Capacity(const QVLABaseBase* self);
QTLIBC_API ptrdiff_t QVLABaseBase_Size(const QVLABaseBase* self);
QTLIBC_API bool QVLABaseBase_Empty(const QVLABaseBase* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
