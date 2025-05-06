#pragma once
#ifndef SRC_QTC_LIBQDEADLINETIMER_H
#define SRC_QTC_LIBQDEADLINETIMER_H

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
#endif

#ifdef __cplusplus
typedef QDeadlineTimer::ForeverConstant ForeverConstant; // C++ enum
#else
typedef int ForeverConstant; // C ABI enum
#endif

QTLIBC_API QDeadlineTimer* QDeadlineTimer_new(QDeadlineTimer* other);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new2(QDeadlineTimer* other);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new3();
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new4(int param1);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new5(long long msecs);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new6(QDeadlineTimer* param1);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new7(int type_);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new8(int param1, int type_);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_new9(long long msecs, int typeVal);
QTLIBC_API void QDeadlineTimer_CopyAssign(QDeadlineTimer* self, QDeadlineTimer* other);
QTLIBC_API void QDeadlineTimer_MoveAssign(QDeadlineTimer* self, QDeadlineTimer* other);
QTLIBC_API void QDeadlineTimer_Swap(QDeadlineTimer* self, QDeadlineTimer* other);
QTLIBC_API bool QDeadlineTimer_IsForever(const QDeadlineTimer* self);
QTLIBC_API bool QDeadlineTimer_HasExpired(const QDeadlineTimer* self);
QTLIBC_API int QDeadlineTimer_TimerType(const QDeadlineTimer* self);
QTLIBC_API void QDeadlineTimer_SetTimerType(QDeadlineTimer* self, int typeVal);
QTLIBC_API long long QDeadlineTimer_RemainingTime(const QDeadlineTimer* self);
QTLIBC_API long long QDeadlineTimer_RemainingTimeNSecs(const QDeadlineTimer* self);
QTLIBC_API void QDeadlineTimer_SetRemainingTime(QDeadlineTimer* self, long long msecs);
QTLIBC_API void QDeadlineTimer_SetPreciseRemainingTime(QDeadlineTimer* self, long long secs);
QTLIBC_API long long QDeadlineTimer_Deadline(const QDeadlineTimer* self);
QTLIBC_API long long QDeadlineTimer_DeadlineNSecs(const QDeadlineTimer* self);
QTLIBC_API void QDeadlineTimer_SetDeadline(QDeadlineTimer* self, long long msecs);
QTLIBC_API void QDeadlineTimer_SetPreciseDeadline(QDeadlineTimer* self, long long secs);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_AddNSecs(QDeadlineTimer* dt, long long nsecs);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_Current();
QTLIBC_API QDeadlineTimer* QDeadlineTimer_OperatorPlusAssign(QDeadlineTimer* self, long long msecs);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_OperatorMinusAssign(QDeadlineTimer* self, long long msecs);
QTLIBC_API void QDeadlineTimer_OperatorAssign(QDeadlineTimer* self, QDeadlineTimer* param1);
QTLIBC_API void QDeadlineTimer_SetRemainingTime2(QDeadlineTimer* self, long long msecs, int typeVal);
QTLIBC_API void QDeadlineTimer_SetPreciseRemainingTime2(QDeadlineTimer* self, long long secs, long long nsecs);
QTLIBC_API void QDeadlineTimer_SetPreciseRemainingTime3(QDeadlineTimer* self, long long secs, long long nsecs, int typeVal);
QTLIBC_API void QDeadlineTimer_SetDeadline2(QDeadlineTimer* self, long long msecs, int timerType);
QTLIBC_API void QDeadlineTimer_SetPreciseDeadline2(QDeadlineTimer* self, long long secs, long long nsecs);
QTLIBC_API void QDeadlineTimer_SetPreciseDeadline3(QDeadlineTimer* self, long long secs, long long nsecs, int typeVal);
QTLIBC_API QDeadlineTimer* QDeadlineTimer_Current1(int timerType);
QTLIBC_API void QDeadlineTimer_Delete(QDeadlineTimer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
