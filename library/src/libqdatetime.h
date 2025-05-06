#pragma once
#ifndef SRCC_LIBQDATETIME_H
#define SRCC_LIBQDATETIME_H

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
typedef struct QCalendar QCalendar;
typedef struct QDate QDate;
typedef struct QDateTime QDateTime;
typedef struct QTime QTime;
typedef struct QTimeZone QTimeZone;
#endif

#ifdef __cplusplus
typedef QDateTime::YearRange YearRange; // C++ enum
#else
typedef int YearRange; // C ABI enum
#endif

QTLIBC_API QDate* QDate_new(QDate* other);
QTLIBC_API QDate* QDate_new2(QDate* other);
QTLIBC_API QDate* QDate_new3();
QTLIBC_API QDate* QDate_new4(int y, int m, int d);
QTLIBC_API QDate* QDate_new5(int y, int m, int d, QCalendar* cal);
QTLIBC_API QDate* QDate_new6(QDate* param1);
QTLIBC_API void QDate_CopyAssign(QDate* self, QDate* other);
QTLIBC_API void QDate_MoveAssign(QDate* self, QDate* other);
QTLIBC_API bool QDate_IsNull(const QDate* self);
QTLIBC_API bool QDate_IsValid(const QDate* self);
QTLIBC_API int QDate_Year(const QDate* self);
QTLIBC_API int QDate_Month(const QDate* self);
QTLIBC_API int QDate_Day(const QDate* self);
QTLIBC_API int QDate_DayOfWeek(const QDate* self);
QTLIBC_API int QDate_DayOfYear(const QDate* self);
QTLIBC_API int QDate_DaysInMonth(const QDate* self);
QTLIBC_API int QDate_DaysInYear(const QDate* self);
QTLIBC_API int QDate_WeekNumber(const QDate* self);
QTLIBC_API int QDate_YearWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_MonthWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_DayWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_DayOfWeekWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_DayOfYearWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_DaysInMonthWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API int QDate_DaysInYearWithCal(const QDate* self, QCalendar* cal);
QTLIBC_API QDateTime* QDate_StartOfDay(const QDate* self);
QTLIBC_API QDateTime* QDate_EndOfDay(const QDate* self);
QTLIBC_API QDateTime* QDate_StartOfDayWithZone(const QDate* self, QTimeZone* zone);
QTLIBC_API QDateTime* QDate_EndOfDayWithZone(const QDate* self, QTimeZone* zone);
QTLIBC_API libqt_string QDate_ToString(const QDate* self);
QTLIBC_API libqt_string QDate_ToStringWithFormat(const QDate* self, libqt_string format);
QTLIBC_API bool QDate_SetDate(QDate* self, int year, int month, int day);
QTLIBC_API bool QDate_SetDate2(QDate* self, int year, int month, int day, QCalendar* cal);
QTLIBC_API void QDate_GetDate(const QDate* self, int* year, int* month, int* day);
QTLIBC_API QDate* QDate_AddDays(const QDate* self, long long days);
QTLIBC_API QDate* QDate_AddMonths(const QDate* self, int months);
QTLIBC_API QDate* QDate_AddYears(const QDate* self, int years);
QTLIBC_API QDate* QDate_AddMonths2(const QDate* self, int months, QCalendar* cal);
QTLIBC_API QDate* QDate_AddYears2(const QDate* self, int years, QCalendar* cal);
QTLIBC_API long long QDate_DaysTo(const QDate* self, QDate* d);
QTLIBC_API QDate* QDate_CurrentDate();
QTLIBC_API QDate* QDate_FromStringWithStringVal(libqt_string stringVal);
QTLIBC_API QDate* QDate_FromString4(libqt_string stringVal, libqt_string format);
QTLIBC_API bool QDate_IsValid2(int y, int m, int d);
QTLIBC_API bool QDate_IsLeapYear(int year);
QTLIBC_API QDate* QDate_FromJulianDay(long long jd_);
QTLIBC_API long long QDate_ToJulianDay(const QDate* self);
QTLIBC_API int QDate_WeekNumber1(const QDate* self, int* yearNum);
QTLIBC_API QDateTime* QDate_StartOfDay1(const QDate* self, int spec);
QTLIBC_API QDateTime* QDate_StartOfDay2(const QDate* self, int spec, int offsetSeconds);
QTLIBC_API QDateTime* QDate_EndOfDay1(const QDate* self, int spec);
QTLIBC_API QDateTime* QDate_EndOfDay2(const QDate* self, int spec, int offsetSeconds);
QTLIBC_API libqt_string QDate_ToString1(const QDate* self, int format);
QTLIBC_API libqt_string QDate_ToString22(const QDate* self, libqt_string format, QCalendar* cal);
QTLIBC_API QDate* QDate_FromString23(libqt_string stringVal, int format);
QTLIBC_API QDate* QDate_FromString34(libqt_string stringVal, libqt_string format, QCalendar* cal);
QTLIBC_API void QDate_Delete(QDate* self);

QTLIBC_API QTime* QTime_new(QTime* other);
QTLIBC_API QTime* QTime_new2(QTime* other);
QTLIBC_API QTime* QTime_new3();
QTLIBC_API QTime* QTime_new4(int h, int m);
QTLIBC_API QTime* QTime_new5(QTime* param1);
QTLIBC_API QTime* QTime_new6(int h, int m, int s);
QTLIBC_API QTime* QTime_new7(int h, int m, int s, int ms);
QTLIBC_API void QTime_CopyAssign(QTime* self, QTime* other);
QTLIBC_API void QTime_MoveAssign(QTime* self, QTime* other);
QTLIBC_API bool QTime_IsNull(const QTime* self);
QTLIBC_API bool QTime_IsValid(const QTime* self);
QTLIBC_API int QTime_Hour(const QTime* self);
QTLIBC_API int QTime_Minute(const QTime* self);
QTLIBC_API int QTime_Second(const QTime* self);
QTLIBC_API int QTime_Msec(const QTime* self);
QTLIBC_API libqt_string QTime_ToString(const QTime* self);
QTLIBC_API libqt_string QTime_ToStringWithFormat(const QTime* self, libqt_string format);
QTLIBC_API bool QTime_SetHMS(QTime* self, int h, int m, int s);
QTLIBC_API QTime* QTime_AddSecs(const QTime* self, int secs);
QTLIBC_API int QTime_SecsTo(const QTime* self, QTime* t);
QTLIBC_API QTime* QTime_AddMSecs(const QTime* self, int ms);
QTLIBC_API int QTime_MsecsTo(const QTime* self, QTime* t);
QTLIBC_API QTime* QTime_FromMSecsSinceStartOfDay(int msecs);
QTLIBC_API int QTime_MsecsSinceStartOfDay(const QTime* self);
QTLIBC_API QTime* QTime_CurrentTime();
QTLIBC_API QTime* QTime_FromStringWithStringVal(libqt_string stringVal);
QTLIBC_API QTime* QTime_FromString4(libqt_string stringVal, libqt_string format);
QTLIBC_API bool QTime_IsValid2(int h, int m, int s);
QTLIBC_API libqt_string QTime_ToString1(const QTime* self, int f);
QTLIBC_API bool QTime_SetHMS4(QTime* self, int h, int m, int s, int ms);
QTLIBC_API QTime* QTime_FromString23(libqt_string stringVal, int format);
QTLIBC_API bool QTime_IsValid4(int h, int m, int s, int ms);
QTLIBC_API void QTime_Delete(QTime* self);

QTLIBC_API QDateTime* QDateTime_new();
QTLIBC_API QDateTime* QDateTime_new2(QDate* date, QTime* time);
QTLIBC_API QDateTime* QDateTime_new3(QDate* date, QTime* time, QTimeZone* timeZone);
QTLIBC_API QDateTime* QDateTime_new4(QDateTime* other);
QTLIBC_API QDateTime* QDateTime_new5(QDate* date, QTime* time, int spec);
QTLIBC_API QDateTime* QDateTime_new6(QDate* date, QTime* time, int spec, int offsetSeconds);
QTLIBC_API void QDateTime_OperatorAssign(QDateTime* self, QDateTime* other);
QTLIBC_API void QDateTime_Swap(QDateTime* self, QDateTime* other);
QTLIBC_API bool QDateTime_IsNull(const QDateTime* self);
QTLIBC_API bool QDateTime_IsValid(const QDateTime* self);
QTLIBC_API QDate* QDateTime_Date(const QDateTime* self);
QTLIBC_API QTime* QDateTime_Time(const QDateTime* self);
QTLIBC_API int QDateTime_TimeSpec(const QDateTime* self);
QTLIBC_API int QDateTime_OffsetFromUtc(const QDateTime* self);
QTLIBC_API QTimeZone* QDateTime_TimeZone(const QDateTime* self);
QTLIBC_API libqt_string QDateTime_TimeZoneAbbreviation(const QDateTime* self);
QTLIBC_API bool QDateTime_IsDaylightTime(const QDateTime* self);
QTLIBC_API long long QDateTime_ToMSecsSinceEpoch(const QDateTime* self);
QTLIBC_API long long QDateTime_ToSecsSinceEpoch(const QDateTime* self);
QTLIBC_API void QDateTime_SetDate(QDateTime* self, QDate* date);
QTLIBC_API void QDateTime_SetTime(QDateTime* self, QTime* time);
QTLIBC_API void QDateTime_SetTimeSpec(QDateTime* self, int spec);
QTLIBC_API void QDateTime_SetOffsetFromUtc(QDateTime* self, int offsetSeconds);
QTLIBC_API void QDateTime_SetTimeZone(QDateTime* self, QTimeZone* toZone);
QTLIBC_API void QDateTime_SetMSecsSinceEpoch(QDateTime* self, long long msecs);
QTLIBC_API void QDateTime_SetSecsSinceEpoch(QDateTime* self, long long secs);
QTLIBC_API libqt_string QDateTime_ToString(const QDateTime* self);
QTLIBC_API libqt_string QDateTime_ToStringWithFormat(const QDateTime* self, libqt_string format);
QTLIBC_API QDateTime* QDateTime_AddDays(const QDateTime* self, long long days);
QTLIBC_API QDateTime* QDateTime_AddMonths(const QDateTime* self, int months);
QTLIBC_API QDateTime* QDateTime_AddYears(const QDateTime* self, int years);
QTLIBC_API QDateTime* QDateTime_AddSecs(const QDateTime* self, long long secs);
QTLIBC_API QDateTime* QDateTime_AddMSecs(const QDateTime* self, long long msecs);
QTLIBC_API QDateTime* QDateTime_ToTimeSpec(const QDateTime* self, int spec);
QTLIBC_API QDateTime* QDateTime_ToLocalTime(const QDateTime* self);
QTLIBC_API QDateTime* QDateTime_ToUTC(const QDateTime* self);
QTLIBC_API QDateTime* QDateTime_ToOffsetFromUtc(const QDateTime* self, int offsetSeconds);
QTLIBC_API QDateTime* QDateTime_ToTimeZone(const QDateTime* self, QTimeZone* toZone);
QTLIBC_API long long QDateTime_DaysTo(const QDateTime* self, QDateTime* param1);
QTLIBC_API long long QDateTime_SecsTo(const QDateTime* self, QDateTime* param1);
QTLIBC_API long long QDateTime_MsecsTo(const QDateTime* self, QDateTime* param1);
QTLIBC_API QDateTime* QDateTime_CurrentDateTime();
QTLIBC_API QDateTime* QDateTime_CurrentDateTimeUtc();
QTLIBC_API QDateTime* QDateTime_FromStringWithStringVal(libqt_string stringVal);
QTLIBC_API QDateTime* QDateTime_FromString4(libqt_string stringVal, libqt_string format);
QTLIBC_API QDateTime* QDateTime_FromMSecsSinceEpoch(long long msecs);
QTLIBC_API QDateTime* QDateTime_FromSecsSinceEpoch(long long secs);
QTLIBC_API QDateTime* QDateTime_FromMSecsSinceEpoch2(long long msecs, QTimeZone* timeZone);
QTLIBC_API QDateTime* QDateTime_FromSecsSinceEpoch2(long long secs, QTimeZone* timeZone);
QTLIBC_API long long QDateTime_CurrentMSecsSinceEpoch();
QTLIBC_API long long QDateTime_CurrentSecsSinceEpoch();
QTLIBC_API libqt_string QDateTime_ToString1(const QDateTime* self, int format);
QTLIBC_API libqt_string QDateTime_ToString22(const QDateTime* self, libqt_string format, QCalendar* cal);
QTLIBC_API QDateTime* QDateTime_FromString23(libqt_string stringVal, int format);
QTLIBC_API QDateTime* QDateTime_FromString34(libqt_string stringVal, libqt_string format, QCalendar* cal);
QTLIBC_API QDateTime* QDateTime_FromMSecsSinceEpoch22(long long msecs, int spec);
QTLIBC_API QDateTime* QDateTime_FromMSecsSinceEpoch3(long long msecs, int spec, int offsetFromUtc);
QTLIBC_API QDateTime* QDateTime_FromSecsSinceEpoch22(long long secs, int spec);
QTLIBC_API QDateTime* QDateTime_FromSecsSinceEpoch3(long long secs, int spec, int offsetFromUtc);
QTLIBC_API void QDateTime_Delete(QDateTime* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
