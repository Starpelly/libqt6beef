#pragma once
#ifndef SRCC_LIBQHASHFUNCTIONS_H
#define SRCC_LIBQHASHFUNCTIONS_H

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
typedef struct QHashSeed QHashSeed;
#endif

QTLIBC_API QHashSeed* QHashSeed_new(QHashSeed* other);
QTLIBC_API QHashSeed* QHashSeed_new2(QHashSeed* other);
QTLIBC_API QHashSeed* QHashSeed_new3();
QTLIBC_API QHashSeed* QHashSeed_new4(size_t d);
QTLIBC_API void QHashSeed_CopyAssign(QHashSeed* self, QHashSeed* other);
QTLIBC_API void QHashSeed_MoveAssign(QHashSeed* self, QHashSeed* other);
QTLIBC_API size_t QHashSeed_ToUnsignedLong(const QHashSeed* self);
QTLIBC_API QHashSeed* QHashSeed_GlobalSeed();
QTLIBC_API void QHashSeed_SetDeterministicGlobalSeed();
QTLIBC_API void QHashSeed_ResetRandomGlobalSeed();
QTLIBC_API void QHashSeed_Delete(QHashSeed* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
