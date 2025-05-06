#pragma once
#ifndef SRC_QTC_LIBQSEMAPHORE_H
#define SRC_QTC_LIBQSEMAPHORE_H

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
typedef struct QSemaphore QSemaphore;
typedef struct QSemaphoreReleaser QSemaphoreReleaser;
#endif

QTLIBC_API QSemaphore* QSemaphore_new();
QTLIBC_API QSemaphore* QSemaphore_new2(int n);
QTLIBC_API void QSemaphore_Acquire(QSemaphore* self);
QTLIBC_API bool QSemaphore_TryAcquire(QSemaphore* self);
QTLIBC_API bool QSemaphore_TryAcquire2(QSemaphore* self, int n, int timeout);
QTLIBC_API void QSemaphore_Release(QSemaphore* self);
QTLIBC_API int QSemaphore_Available(const QSemaphore* self);
QTLIBC_API bool QSemaphore_TryAcquire3(QSemaphore* self);
QTLIBC_API void QSemaphore_Acquire1(QSemaphore* self, int n);
QTLIBC_API bool QSemaphore_TryAcquire1(QSemaphore* self, int n);
QTLIBC_API void QSemaphore_Release1(QSemaphore* self, int n);
QTLIBC_API void QSemaphore_Delete(QSemaphore* self);

QTLIBC_API QSemaphoreReleaser* QSemaphoreReleaser_new();
QTLIBC_API QSemaphoreReleaser* QSemaphoreReleaser_new2(QSemaphore* sem);
QTLIBC_API QSemaphoreReleaser* QSemaphoreReleaser_new3(QSemaphore* sem);
QTLIBC_API QSemaphoreReleaser* QSemaphoreReleaser_new4(QSemaphore* sem, int n);
QTLIBC_API QSemaphoreReleaser* QSemaphoreReleaser_new5(QSemaphore* sem, int n);
QTLIBC_API void QSemaphoreReleaser_Swap(QSemaphoreReleaser* self, QSemaphoreReleaser* other);
QTLIBC_API QSemaphore* QSemaphoreReleaser_Semaphore(const QSemaphoreReleaser* self);
QTLIBC_API QSemaphore* QSemaphoreReleaser_Cancel(QSemaphoreReleaser* self);
QTLIBC_API void QSemaphoreReleaser_Delete(QSemaphoreReleaser* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
