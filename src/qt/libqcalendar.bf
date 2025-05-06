using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCalendar__
{
	Unspecified = -2147483648,
}
[AllowDuplicates]
public enum QCalendar__System
{
	Gregorian = 0,
	Julian = 8,
	Milankovic = 9,
	Jalali = 10,
	IslamicCivil = 11,
	Last = 11,
	User = -1,
}
public struct QCalendar
{
	[LinkName("QCalendar_new")]
	public static extern QCalendar* QCalendar_new(QCalendar* other);
	[LinkName("QCalendar_new2")]
	public static extern QCalendar* QCalendar_new2(QCalendar* other);
	[LinkName("QCalendar_new3")]
	public static extern QCalendar* QCalendar_new3();
	[LinkName("QCalendar_new4")]
	public static extern QCalendar* QCalendar_new4(int64 system);
	[LinkName("QCalendar_new5")]
	public static extern QCalendar* QCalendar_new5(QAnyStringView name);
	[LinkName("QCalendar_new6")]
	public static extern QCalendar* QCalendar_new6(QCalendar__SystemId id);
	[LinkName("QCalendar_IsValid")]
	public static extern bool QCalendar_IsValid(Self* c_this);
	[LinkName("QCalendar_DaysInMonth")]
	public static extern int32 QCalendar_DaysInMonth(Self* c_this, int32 month);
	[LinkName("QCalendar_DaysInYear")]
	public static extern int32 QCalendar_DaysInYear(Self* c_this, int32 year);
	[LinkName("QCalendar_MonthsInYear")]
	public static extern int32 QCalendar_MonthsInYear(Self* c_this, int32 year);
	[LinkName("QCalendar_IsDateValid")]
	public static extern bool QCalendar_IsDateValid(Self* c_this, int32 year, int32 month, int32 day);
	[LinkName("QCalendar_IsLeapYear")]
	public static extern bool QCalendar_IsLeapYear(Self* c_this, int32 year);
	[LinkName("QCalendar_IsGregorian")]
	public static extern bool QCalendar_IsGregorian(Self* c_this);
	[LinkName("QCalendar_IsLunar")]
	public static extern bool QCalendar_IsLunar(Self* c_this);
	[LinkName("QCalendar_IsLuniSolar")]
	public static extern bool QCalendar_IsLuniSolar(Self* c_this);
	[LinkName("QCalendar_IsSolar")]
	public static extern bool QCalendar_IsSolar(Self* c_this);
	[LinkName("QCalendar_IsProleptic")]
	public static extern bool QCalendar_IsProleptic(Self* c_this);
	[LinkName("QCalendar_HasYearZero")]
	public static extern bool QCalendar_HasYearZero(Self* c_this);
	[LinkName("QCalendar_MaximumDaysInMonth")]
	public static extern int32 QCalendar_MaximumDaysInMonth(Self* c_this);
	[LinkName("QCalendar_MinimumDaysInMonth")]
	public static extern int32 QCalendar_MinimumDaysInMonth(Self* c_this);
	[LinkName("QCalendar_MaximumMonthsInYear")]
	public static extern int32 QCalendar_MaximumMonthsInYear(Self* c_this);
	[LinkName("QCalendar_Name")]
	public static extern libqt_string QCalendar_Name(Self* c_this);
	[LinkName("QCalendar_DateFromParts")]
	public static extern QDate QCalendar_DateFromParts(Self* c_this, int32 year, int32 month, int32 day);
	[LinkName("QCalendar_DateFromPartsWithParts")]
	public static extern QDate QCalendar_DateFromPartsWithParts(Self* c_this, QCalendar__YearMonthDay* parts);
	[LinkName("QCalendar_PartsFromDate")]
	public static extern QCalendar__YearMonthDay QCalendar_PartsFromDate(Self* c_this, QDate date);
	[LinkName("QCalendar_DayOfWeek")]
	public static extern int32 QCalendar_DayOfWeek(Self* c_this, QDate date);
	[LinkName("QCalendar_MonthName")]
	public static extern libqt_string QCalendar_MonthName(Self* c_this, QLocale* locale, int32 month);
	[LinkName("QCalendar_StandaloneMonthName")]
	public static extern libqt_string QCalendar_StandaloneMonthName(Self* c_this, QLocale* locale, int32 month);
	[LinkName("QCalendar_WeekDayName")]
	public static extern libqt_string QCalendar_WeekDayName(Self* c_this, QLocale* locale, int32 day);
	[LinkName("QCalendar_StandaloneWeekDayName")]
	public static extern libqt_string QCalendar_StandaloneWeekDayName(Self* c_this, QLocale* locale, int32 day);
	[LinkName("QCalendar_AvailableCalendars")]
	public static extern libqt_string[] QCalendar_AvailableCalendars();
	[LinkName("QCalendar_DaysInMonth2")]
	public static extern int32 QCalendar_DaysInMonth2(Self* c_this, int32 month, int32 year);
	[LinkName("QCalendar_MonthName3")]
	public static extern libqt_string QCalendar_MonthName3(Self* c_this, QLocale* locale, int32 month, int32 year);
	[LinkName("QCalendar_MonthName4")]
	public static extern libqt_string QCalendar_MonthName4(Self* c_this, QLocale* locale, int32 month, int32 year, int64 format);
	[LinkName("QCalendar_StandaloneMonthName3")]
	public static extern libqt_string QCalendar_StandaloneMonthName3(Self* c_this, QLocale* locale, int32 month, int32 year);
	[LinkName("QCalendar_StandaloneMonthName4")]
	public static extern libqt_string QCalendar_StandaloneMonthName4(Self* c_this, QLocale* locale, int32 month, int32 year, int64 format);
	[LinkName("QCalendar_WeekDayName3")]
	public static extern libqt_string QCalendar_WeekDayName3(Self* c_this, QLocale* locale, int32 day, int64 format);
	[LinkName("QCalendar_StandaloneWeekDayName3")]
	public static extern libqt_string QCalendar_StandaloneWeekDayName3(Self* c_this, QLocale* locale, int32 day, int64 format);
}
public struct QCalendar__YearMonthDay
{
	[LinkName("QCalendar__YearMonthDay_new")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new(QCalendar__YearMonthDay* other);
	[LinkName("QCalendar__YearMonthDay_new2")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new2(QCalendar__YearMonthDay* other);
	[LinkName("QCalendar__YearMonthDay_new3")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new3();
	[LinkName("QCalendar__YearMonthDay_new4")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new4(int32 y);
	[LinkName("QCalendar__YearMonthDay_new5")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new5(int32 y, int32 m);
	[LinkName("QCalendar__YearMonthDay_new6")]
	public static extern QCalendar__YearMonthDay* QCalendar__YearMonthDay_new6(int32 y, int32 m, int32 d);
	[LinkName("QCalendar__YearMonthDay_IsValid")]
	public static extern bool QCalendar__YearMonthDay_IsValid(Self* c_this);
}
public struct QCalendar__SystemId
{
	[LinkName("QCalendar__SystemId_new")]
	public static extern QCalendar__SystemId* QCalendar__SystemId_new(QCalendar__SystemId* other);
	[LinkName("QCalendar__SystemId_new2")]
	public static extern QCalendar__SystemId* QCalendar__SystemId_new2(QCalendar__SystemId* other);
	[LinkName("QCalendar__SystemId_new3")]
	public static extern QCalendar__SystemId* QCalendar__SystemId_new3();
	[LinkName("QCalendar__SystemId_Index")]
	public static extern uint32 QCalendar__SystemId_Index(Self* c_this);
	[LinkName("QCalendar__SystemId_IsValid")]
	public static extern bool QCalendar__SystemId_IsValid(Self* c_this);
}