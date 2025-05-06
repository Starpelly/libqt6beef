#pragma once
#ifndef SRCC_LIBQWAITCONDITION_H
#define SRCC_LIBQWAITCONDITION_H

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
typedef struct QDeadlineTimer QDeadlineTimer;
typedef struct QMutex QMutex;
typedef struct QReadWriteLock QReadWriteLock;
typedef struct QWaitCondition QWaitCondition;
#endif

QTLIBC_API QWaitCondition* QWaitCondition_new();
QTLIBC_API bool QWaitCondition_Wait(QWaitCondition* self, QMutex* lockedMutex);
QTLIBC_API bool QWaitCondition_Wait2(QWaitCondition* self, QMutex* lockedMutex, unsigned long time);
QTLIBC_API bool QWaitCondition_WaitWithLockedReadWriteLock(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock);
QTLIBC_API bool QWaitCondition_Wait3(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, unsigned long time);
QTLIBC_API void QWaitCondition_WakeOne(QWaitCondition* self);
QTLIBC_API void QWaitCondition_WakeAll(QWaitCondition* self);
QTLIBC_API void QWaitCondition_NotifyOne(QWaitCondition* self);
QTLIBC_API void QWaitCondition_NotifyAll(QWaitCondition* self);
QTLIBC_API bool QWaitCondition_Wait22(QWaitCondition* self, QMutex* lockedMutex, QDeadlineTimer* deadline);
QTLIBC_API bool QWaitCondition_Wait23(QWaitCondition* self, QReadWriteLock* lockedReadWriteLock, QDeadlineTimer* deadline);
QTLIBC_API void QWaitCondition_Delete(QWaitCondition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
