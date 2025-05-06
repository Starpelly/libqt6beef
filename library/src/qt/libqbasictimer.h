#pragma once
#ifndef SRC_QTC_LIBQBASICTIMER_H
#define SRC_QTC_LIBQBASICTIMER_H

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
typedef struct QBasicTimer QBasicTimer;
typedef struct QObject QObject;
#endif

QTLIBC_API QBasicTimer* QBasicTimer_new();
QTLIBC_API void QBasicTimer_Swap(QBasicTimer* self, QBasicTimer* other);
QTLIBC_API bool QBasicTimer_IsActive(const QBasicTimer* self);
QTLIBC_API int QBasicTimer_TimerId(const QBasicTimer* self);
QTLIBC_API void QBasicTimer_Start(QBasicTimer* self, int msec, QObject* obj);
QTLIBC_API void QBasicTimer_Start2(QBasicTimer* self, int msec, int timerType, QObject* obj);
QTLIBC_API void QBasicTimer_Stop(QBasicTimer* self);
QTLIBC_API void QBasicTimer_Delete(QBasicTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
