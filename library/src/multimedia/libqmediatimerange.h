#pragma once
#ifndef SRC_MULTIMEDIAC_LIBQMEDIATIMERANGE_H
#define SRC_MULTIMEDIAC_LIBQMEDIATIMERANGE_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QMediaTimeRange__Interval)
typedef QMediaTimeRange::Interval QMediaTimeRange__Interval;
#endif
#else
typedef struct QMediaTimeRange QMediaTimeRange;
typedef struct QMediaTimeRange__Interval QMediaTimeRange__Interval;
#endif

QTLIBC_API QMediaTimeRange* QMediaTimeRange_new();
QTLIBC_API QMediaTimeRange* QMediaTimeRange_new2(long long start, long long end);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_new3(QMediaTimeRange__Interval* param1);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_new4(QMediaTimeRange* range);
QTLIBC_API void QMediaTimeRange_OperatorAssign(QMediaTimeRange* self, QMediaTimeRange* param1);
QTLIBC_API void QMediaTimeRange_Swap(QMediaTimeRange* self, QMediaTimeRange* other);
QTLIBC_API void QMediaTimeRange_Detach(QMediaTimeRange* self);
QTLIBC_API void QMediaTimeRange_OperatorAssignWithQMediaTimeRangeInterval(QMediaTimeRange* self, QMediaTimeRange__Interval* param1);
QTLIBC_API long long QMediaTimeRange_EarliestTime(const QMediaTimeRange* self);
QTLIBC_API long long QMediaTimeRange_LatestTime(const QMediaTimeRange* self);
QTLIBC_API libqt_list /* of QMediaTimeRange__Interval* */ QMediaTimeRange_Intervals(const QMediaTimeRange* self);
QTLIBC_API bool QMediaTimeRange_IsEmpty(const QMediaTimeRange* self);
QTLIBC_API bool QMediaTimeRange_IsContinuous(const QMediaTimeRange* self);
QTLIBC_API bool QMediaTimeRange_Contains(const QMediaTimeRange* self, long long time);
QTLIBC_API void QMediaTimeRange_AddInterval(QMediaTimeRange* self, long long start, long long end);
QTLIBC_API void QMediaTimeRange_AddIntervalWithInterval(QMediaTimeRange* self, QMediaTimeRange__Interval* interval);
QTLIBC_API void QMediaTimeRange_AddTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
QTLIBC_API void QMediaTimeRange_RemoveInterval(QMediaTimeRange* self, long long start, long long end);
QTLIBC_API void QMediaTimeRange_RemoveIntervalWithInterval(QMediaTimeRange* self, QMediaTimeRange__Interval* interval);
QTLIBC_API void QMediaTimeRange_RemoveTimeRange(QMediaTimeRange* self, QMediaTimeRange* param1);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_OperatorPlusAssign(QMediaTimeRange* self, QMediaTimeRange* param1);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_OperatorPlusAssignWithQMediaTimeRangeInterval(QMediaTimeRange* self, QMediaTimeRange__Interval* param1);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_OperatorMinusAssign(QMediaTimeRange* self, QMediaTimeRange* param1);
QTLIBC_API QMediaTimeRange* QMediaTimeRange_OperatorMinusAssignWithQMediaTimeRangeInterval(QMediaTimeRange* self, QMediaTimeRange__Interval* param1);
QTLIBC_API void QMediaTimeRange_Clear(QMediaTimeRange* self);
QTLIBC_API void QMediaTimeRange_Delete(QMediaTimeRange* self);

QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_new(QMediaTimeRange__Interval* other);
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_new2(QMediaTimeRange__Interval* other);
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_new3();
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_new4(long long start, long long end);
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_new5(QMediaTimeRange__Interval* param1);
QTLIBC_API void QMediaTimeRange__Interval_CopyAssign(QMediaTimeRange__Interval* self, QMediaTimeRange__Interval* other);
QTLIBC_API void QMediaTimeRange__Interval_MoveAssign(QMediaTimeRange__Interval* self, QMediaTimeRange__Interval* other);
QTLIBC_API long long QMediaTimeRange__Interval_Start(const QMediaTimeRange__Interval* self);
QTLIBC_API long long QMediaTimeRange__Interval_End(const QMediaTimeRange__Interval* self);
QTLIBC_API bool QMediaTimeRange__Interval_Contains(const QMediaTimeRange__Interval* self, long long time);
QTLIBC_API bool QMediaTimeRange__Interval_IsNormal(const QMediaTimeRange__Interval* self);
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_Normalized(const QMediaTimeRange__Interval* self);
QTLIBC_API QMediaTimeRange__Interval* QMediaTimeRange__Interval_Translated(const QMediaTimeRange__Interval* self, long long offset);
QTLIBC_API void QMediaTimeRange__Interval_Delete(QMediaTimeRange__Interval* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
