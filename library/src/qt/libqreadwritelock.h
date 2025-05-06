#pragma once
#ifndef SRC_QTC_LIBQREADWRITELOCK_H
#define SRC_QTC_LIBQREADWRITELOCK_H

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
typedef struct QReadLocker QReadLocker;
typedef struct QReadWriteLock QReadWriteLock;
typedef struct QWriteLocker QWriteLocker;
#endif

#ifdef __cplusplus
typedef QReadWriteLock::RecursionMode RecursionMode; // C++ enum
#else
typedef int RecursionMode; // C ABI enum
#endif

QTLIBC_API QReadWriteLock* QReadWriteLock_new();
QTLIBC_API QReadWriteLock* QReadWriteLock_new2(int recursionMode);
QTLIBC_API void QReadWriteLock_LockForRead(QReadWriteLock* self);
QTLIBC_API bool QReadWriteLock_TryLockForRead(QReadWriteLock* self);
QTLIBC_API bool QReadWriteLock_TryLockForReadWithTimeout(QReadWriteLock* self, int timeout);
QTLIBC_API void QReadWriteLock_LockForWrite(QReadWriteLock* self);
QTLIBC_API bool QReadWriteLock_TryLockForWrite(QReadWriteLock* self);
QTLIBC_API bool QReadWriteLock_TryLockForWriteWithTimeout(QReadWriteLock* self, int timeout);
QTLIBC_API void QReadWriteLock_Unlock(QReadWriteLock* self);
QTLIBC_API void QReadWriteLock_Delete(QReadWriteLock* self);

QTLIBC_API QReadLocker* QReadLocker_new(QReadWriteLock* readWriteLock);
QTLIBC_API void QReadLocker_Unlock(QReadLocker* self);
QTLIBC_API void QReadLocker_Relock(QReadLocker* self);
QTLIBC_API QReadWriteLock* QReadLocker_ReadWriteLock(const QReadLocker* self);
QTLIBC_API void QReadLocker_Delete(QReadLocker* self);

QTLIBC_API QWriteLocker* QWriteLocker_new(QReadWriteLock* readWriteLock);
QTLIBC_API void QWriteLocker_Unlock(QWriteLocker* self);
QTLIBC_API void QWriteLocker_Relock(QWriteLocker* self);
QTLIBC_API QReadWriteLock* QWriteLocker_ReadWriteLock(const QWriteLocker* self);
QTLIBC_API void QWriteLocker_Delete(QWriteLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
