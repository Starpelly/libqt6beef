#pragma once
#ifndef SRCC_LIBQELAPSEDTIMER_H
#define SRCC_LIBQELAPSEDTIMER_H

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
typedef struct QElapsedTimer QElapsedTimer;
#endif

#ifdef __cplusplus
typedef QElapsedTimer::ClockType ClockType; // C++ enum
#else
typedef int ClockType; // C ABI enum
#endif

QTLIBC_API QElapsedTimer* QElapsedTimer_new(QElapsedTimer* other);
QTLIBC_API QElapsedTimer* QElapsedTimer_new2(QElapsedTimer* other);
QTLIBC_API QElapsedTimer* QElapsedTimer_new3();
QTLIBC_API void QElapsedTimer_CopyAssign(QElapsedTimer* self, QElapsedTimer* other);
QTLIBC_API void QElapsedTimer_MoveAssign(QElapsedTimer* self, QElapsedTimer* other);
QTLIBC_API int QElapsedTimer_ClockType();
QTLIBC_API bool QElapsedTimer_IsMonotonic();
QTLIBC_API void QElapsedTimer_Start(QElapsedTimer* self);
QTLIBC_API long long QElapsedTimer_Restart(QElapsedTimer* self);
QTLIBC_API void QElapsedTimer_Invalidate(QElapsedTimer* self);
QTLIBC_API bool QElapsedTimer_IsValid(const QElapsedTimer* self);
QTLIBC_API long long QElapsedTimer_NsecsElapsed(const QElapsedTimer* self);
QTLIBC_API long long QElapsedTimer_Elapsed(const QElapsedTimer* self);
QTLIBC_API bool QElapsedTimer_HasExpired(const QElapsedTimer* self, long long timeout);
QTLIBC_API long long QElapsedTimer_MsecsSinceReference(const QElapsedTimer* self);
QTLIBC_API long long QElapsedTimer_MsecsTo(const QElapsedTimer* self, QElapsedTimer* other);
QTLIBC_API long long QElapsedTimer_SecsTo(const QElapsedTimer* self, QElapsedTimer* other);
QTLIBC_API void QElapsedTimer_Delete(QElapsedTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
