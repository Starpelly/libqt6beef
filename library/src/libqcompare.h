#pragma once
#ifndef SRCC_LIBQCOMPARE_H
#define SRCC_LIBQCOMPARE_H

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
typedef struct QPartialOrdering QPartialOrdering;
#endif

#ifdef __cplusplus
typedef QtPrivate::Ordering Ordering;         // C++ enum
typedef QtPrivate::Uncomparable Uncomparable; // C++ enum
#else
typedef signed char Ordering;     // C ABI enum
typedef signed char Uncomparable; // C ABI enum
#endif

QTLIBC_API QPartialOrdering* QPartialOrdering_new(QPartialOrdering* other);
QTLIBC_API QPartialOrdering* QPartialOrdering_new2(QPartialOrdering* other);
QTLIBC_API QPartialOrdering* QPartialOrdering_new3(QPartialOrdering* param1);
QTLIBC_API void QPartialOrdering_CopyAssign(QPartialOrdering* self, QPartialOrdering* other);
QTLIBC_API void QPartialOrdering_MoveAssign(QPartialOrdering* self, QPartialOrdering* other);
QTLIBC_API void QPartialOrdering_Delete(QPartialOrdering* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
