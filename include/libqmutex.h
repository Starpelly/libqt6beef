#pragma once
#ifndef SRCC_LIBQMUTEX_H
#define SRCC_LIBQMUTEX_H

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
typedef struct QMutexLocker QMutexLocker;
typedef struct QRecursiveMutex QRecursiveMutex;
#endif

#ifdef __cplusplus
typedef QMutex::RecursionMode RecursionMode; // C++ enum
#else
typedef int RecursionMode; // C ABI enum
#endif

QBasicMutex* QBasicMutex_new();
void QBasicMutex_Lock(QBasicMutex* self);
void QBasicMutex_Unlock(QBasicMutex* self);
bool QBasicMutex_TryLock(QBasicMutex* self);
bool QBasicMutex_TryLock2(QBasicMutex* self);
bool QBasicMutex_IsRecursive(QBasicMutex* self);
bool QBasicMutex_IsRecursive2(const QBasicMutex* self);
void QBasicMutex_Delete(QBasicMutex* self);

QMutex* QMutex_new();
QMutex* QMutex_new2(int mode);
void QMutex_Lock(QMutex* self);
bool QMutex_TryLock(QMutex* self);
void QMutex_Unlock(QMutex* self);
bool QMutex_TryLock2(QMutex* self);
bool QMutex_IsRecursive(const QMutex* self);
bool QMutex_TryLock1(QMutex* self, int timeout);
void QMutex_Delete(QMutex* self);

QRecursiveMutex* QRecursiveMutex_new();
void QRecursiveMutex_Delete(QRecursiveMutex* self);

QMutexLocker* QMutexLocker_new(QBasicMutex* m);
QMutexLocker* QMutexLocker_new2(QRecursiveMutex* m);
void QMutexLocker_Unlock(QMutexLocker* self);
void QMutexLocker_Relock(QMutexLocker* self);
QMutex* QMutexLocker_Mutex(const QMutexLocker* self);
void QMutexLocker_Delete(QMutexLocker* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
