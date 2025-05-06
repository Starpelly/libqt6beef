#pragma once
#ifndef SRC_QTC_LIBQMUTEX_H
#define SRC_QTC_LIBQMUTEX_H

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
typedef struct QBasicMutex QBasicMutex;
typedef struct QMutex QMutex;
typedef struct QRecursiveMutex QRecursiveMutex;
#endif

QTLIBC_API QBasicMutex* QBasicMutex_new();
QTLIBC_API void QBasicMutex_Lock(QBasicMutex* self);
QTLIBC_API void QBasicMutex_Unlock(QBasicMutex* self);
QTLIBC_API bool QBasicMutex_TryLock(QBasicMutex* self);
QTLIBC_API bool QBasicMutex_TryLock2(QBasicMutex* self);
QTLIBC_API void QBasicMutex_Delete(QBasicMutex* self);

QTLIBC_API QMutex* QMutex_new();
QTLIBC_API bool QMutex_TryLock(QMutex* self);
QTLIBC_API bool QMutex_TryLockWithTimeout(QMutex* self, int timeout);
QTLIBC_API void QMutex_Delete(QMutex* self);

QTLIBC_API QRecursiveMutex* QRecursiveMutex_new();
QTLIBC_API void QRecursiveMutex_Lock(QRecursiveMutex* self);
QTLIBC_API bool QRecursiveMutex_TryLock(QRecursiveMutex* self);
QTLIBC_API void QRecursiveMutex_Unlock(QRecursiveMutex* self);
QTLIBC_API bool QRecursiveMutex_TryLock2(QRecursiveMutex* self);
QTLIBC_API bool QRecursiveMutex_TryLock1(QRecursiveMutex* self, int timeout);
QTLIBC_API void QRecursiveMutex_Delete(QRecursiveMutex* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
