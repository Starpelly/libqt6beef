#pragma once
#ifndef SRCC_LIBQCALENDAR_H
#define SRCC_LIBQCALENDAR_H

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
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCalendar__SystemId)
typedef QCalendar::SystemId QCalendar__SystemId;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCalendar__YearMonthDay)
typedef QCalendar::YearMonthDay QCalendar__YearMonthDay;
#endif
#else
typedef struct QAnyStringView QAnyStringView;
typedef struct QCalendar QCalendar;
typedef struct QCalendar__SystemId QCalendar__SystemId;
typedef struct QCalendar__YearMonthDay QCalendar__YearMonthDay;
typedef struct QDate QDate;
typedef struct QLocale QLocale;
#endif

#ifdef __cplusplus
typedef QCalendar::QtGadgetHelper QtGadgetHelper; // C++ QFlags
typedef QCalendar::System System;                 // C++ enum
#else
typedef int System;          // C ABI enum
typedef void QtGadgetHelper; // C ABI QFlags
#endif

QTLIBC_API QCalendar* QCalendar_new(QCalendar* other);
QTLIBC_API QCalendar* QCalendar_new2(QCalendar* other);
QTLIBC_API QCalendar* QCalendar_new3();
QTLIBC_API QCalendar* QCalendar_new4(int system);
QTLIBC_API QCalendar* QCalendar_new5(char* name);
QTLIBC_API QCalendar* QCalendar_new6(QCalendar__SystemId* id);
QTLIBC_API void QCalendar_CopyAssign(QCalendar* self, QCalendar* other);
QTLIBC_API void QCalendar_MoveAssign(QCalendar* self, QCalendar* other);
QTLIBC_API bool QCalendar_IsValid(const QCalendar* self);
QTLIBC_API int QCalendar_DaysInMonth(const QCalendar* self, int month);
QTLIBC_API int QCalendar_DaysInYear(const QCalendar* self, int year);
QTLIBC_API int QCalendar_MonthsInYear(const QCalendar* self, int year);
QTLIBC_API bool QCalendar_IsDateValid(const QCalendar* self, int year, int month, int day);
QTLIBC_API bool QCalendar_IsLeapYear(const QCalendar* self, int year);
QTLIBC_API bool QCalendar_IsGregorian(const QCalendar* self);
QTLIBC_API bool QCalendar_IsLunar(const QCalendar* self);
QTLIBC_API bool QCalendar_IsLuniSolar(const QCalendar* self);
QTLIBC_API bool QCalendar_IsSolar(const QCalendar* self);
QTLIBC_API bool QCalendar_IsProleptic(const QCalendar* self);
QTLIBC_API bool QCalendar_HasYearZero(const QCalendar* self);
QTLIBC_API int QCalendar_MaximumDaysInMonth(const QCalendar* self);
QTLIBC_API int QCalendar_MinimumDaysInMonth(const QCalendar* self);
QTLIBC_API int QCalendar_MaximumMonthsInYear(const QCalendar* self);
QTLIBC_API libqt_string QCalendar_Name(const QCalendar* self);
QTLIBC_API QDate* QCalendar_DateFromParts(const QCalendar* self, int year, int month, int day);
QTLIBC_API QDate* QCalendar_DateFromPartsWithParts(const QCalendar* self, QCalendar__YearMonthDay* parts);
QTLIBC_API QCalendar__YearMonthDay* QCalendar_PartsFromDate(const QCalendar* self, QDate* date);
QTLIBC_API int QCalendar_DayOfWeek(const QCalendar* self, QDate* date);
QTLIBC_API libqt_string QCalendar_MonthName(const QCalendar* self, QLocale* locale, int month);
QTLIBC_API libqt_string QCalendar_StandaloneMonthName(const QCalendar* self, QLocale* locale, int month);
QTLIBC_API libqt_string QCalendar_WeekDayName(const QCalendar* self, QLocale* locale, int day);
QTLIBC_API libqt_string QCalendar_StandaloneWeekDayName(const QCalendar* self, QLocale* locale, int day);
QTLIBC_API libqt_list /* of libqt_string */ QCalendar_AvailableCalendars();
QTLIBC_API int QCalendar_DaysInMonth2(const QCalendar* self, int month, int year);
QTLIBC_API libqt_string QCalendar_MonthName3(const QCalendar* self, QLocale* locale, int month, int year);
QTLIBC_API libqt_string QCalendar_MonthName4(const QCalendar* self, QLocale* locale, int month, int year, int format);
QTLIBC_API libqt_string QCalendar_StandaloneMonthName3(const QCalendar* self, QLocale* locale, int month, int year);
QTLIBC_API libqt_string QCalendar_StandaloneMonthName4(const QCalendar* self, QLocale* locale, int month, int year, int format);
QTLIBC_API libqt_string QCalendar_WeekDayName3(const QCalendar* self, QLocale* locale, int day, int format);
QTLIBC_API libqt_string QCalendar_StandaloneWeekDayName3(const QCalendar* self, QLocale* locale, int day, int format);
QTLIBC_API void QCalendar_Delete(QCalendar* self);

QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new(QCalendar__YearMonthDay* other);
QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new2(QCalendar__YearMonthDay* other);
QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new3();
QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new4(int y);
QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new5(int y, int m);
QTLIBC_API QCalendar__YearMonthDay* QCalendar__YearMonthDay_new6(int y, int m, int d);
QTLIBC_API void QCalendar__YearMonthDay_CopyAssign(QCalendar__YearMonthDay* self, QCalendar__YearMonthDay* other);
QTLIBC_API void QCalendar__YearMonthDay_MoveAssign(QCalendar__YearMonthDay* self, QCalendar__YearMonthDay* other);
QTLIBC_API bool QCalendar__YearMonthDay_IsValid(const QCalendar__YearMonthDay* self);
QTLIBC_API void QCalendar__YearMonthDay_Delete(QCalendar__YearMonthDay* self);

QTLIBC_API QCalendar__SystemId* QCalendar__SystemId_new(QCalendar__SystemId* other);
QTLIBC_API QCalendar__SystemId* QCalendar__SystemId_new2(QCalendar__SystemId* other);
QTLIBC_API QCalendar__SystemId* QCalendar__SystemId_new3();
QTLIBC_API void QCalendar__SystemId_CopyAssign(QCalendar__SystemId* self, QCalendar__SystemId* other);
QTLIBC_API void QCalendar__SystemId_MoveAssign(QCalendar__SystemId* self, QCalendar__SystemId* other);
QTLIBC_API size_t QCalendar__SystemId_Index(const QCalendar__SystemId* self);
QTLIBC_API bool QCalendar__SystemId_IsValid(const QCalendar__SystemId* self);
QTLIBC_API void QCalendar__SystemId_Delete(QCalendar__SystemId* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
