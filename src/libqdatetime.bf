using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDateTime__YearRange
{
	First = -292275056,
	Last = 292278994,
}
public struct QDate
{
	[LinkName("QDate_new")]
	public static extern void* QDate_new(QDate other);
	[LinkName("QDate_new2")]
	public static extern void* QDate_new2(QDate other);
	[LinkName("QDate_new3")]
	public static extern void* QDate_new3();
	[LinkName("QDate_new4")]
	public static extern void* QDate_new4(int32 y, int32 m, int32 d);
	[LinkName("QDate_new5")]
	public static extern void* QDate_new5(int32 y, int32 m, int32 d, QCalendar cal);
	[LinkName("QDate_new6")]
	public static extern void* QDate_new6(QDate param1);
	[LinkName("QDate_IsNull")]
	public static extern bool QDate_IsNull(void* c_this);
	[LinkName("QDate_IsValid")]
	public static extern bool QDate_IsValid(void* c_this);
	[LinkName("QDate_Year")]
	public static extern int32 QDate_Year(void* c_this);
	[LinkName("QDate_Month")]
	public static extern int32 QDate_Month(void* c_this);
	[LinkName("QDate_Day")]
	public static extern int32 QDate_Day(void* c_this);
	[LinkName("QDate_DayOfWeek")]
	public static extern int32 QDate_DayOfWeek(void* c_this);
	[LinkName("QDate_DayOfYear")]
	public static extern int32 QDate_DayOfYear(void* c_this);
	[LinkName("QDate_DaysInMonth")]
	public static extern int32 QDate_DaysInMonth(void* c_this);
	[LinkName("QDate_DaysInYear")]
	public static extern int32 QDate_DaysInYear(void* c_this);
	[LinkName("QDate_WeekNumber")]
	public static extern int32 QDate_WeekNumber(void* c_this);
	[LinkName("QDate_YearWithCal")]
	public static extern int32 QDate_YearWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_MonthWithCal")]
	public static extern int32 QDate_MonthWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_DayWithCal")]
	public static extern int32 QDate_DayWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_DayOfWeekWithCal")]
	public static extern int32 QDate_DayOfWeekWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_DayOfYearWithCal")]
	public static extern int32 QDate_DayOfYearWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_DaysInMonthWithCal")]
	public static extern int32 QDate_DaysInMonthWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_DaysInYearWithCal")]
	public static extern int32 QDate_DaysInYearWithCal(void* c_this, QCalendar cal);
	[LinkName("QDate_StartOfDay")]
	public static extern QDateTime QDate_StartOfDay(void* c_this);
	[LinkName("QDate_EndOfDay")]
	public static extern QDateTime QDate_EndOfDay(void* c_this);
	[LinkName("QDate_StartOfDayWithZone")]
	public static extern QDateTime QDate_StartOfDayWithZone(void* c_this, QTimeZone zone);
	[LinkName("QDate_EndOfDayWithZone")]
	public static extern QDateTime QDate_EndOfDayWithZone(void* c_this, QTimeZone zone);
	[LinkName("QDate_ToString")]
	public static extern char8[] QDate_ToString(void* c_this);
	[LinkName("QDate_ToStringWithFormat")]
	public static extern char8[] QDate_ToStringWithFormat(void* c_this, char8[] format);
	[LinkName("QDate_SetDate")]
	public static extern bool QDate_SetDate(void* c_this, int32 year, int32 month, int32 day);
	[LinkName("QDate_SetDate2")]
	public static extern bool QDate_SetDate2(void* c_this, int32 year, int32 month, int32 day, QCalendar cal);
	[LinkName("QDate_GetDate")]
	public static extern void QDate_GetDate(void* c_this, int32 year, int32 month, int32 day);
	[LinkName("QDate_AddDays")]
	public static extern QDate QDate_AddDays(void* c_this, int64 days);
	[LinkName("QDate_AddMonths")]
	public static extern QDate QDate_AddMonths(void* c_this, int32 months);
	[LinkName("QDate_AddYears")]
	public static extern QDate QDate_AddYears(void* c_this, int32 years);
	[LinkName("QDate_AddMonths2")]
	public static extern QDate QDate_AddMonths2(void* c_this, int32 months, QCalendar cal);
	[LinkName("QDate_AddYears2")]
	public static extern QDate QDate_AddYears2(void* c_this, int32 years, QCalendar cal);
	[LinkName("QDate_DaysTo")]
	public static extern int64 QDate_DaysTo(void* c_this, QDate d);
	[LinkName("QDate_CurrentDate")]
	public static extern QDate QDate_CurrentDate();
	[LinkName("QDate_FromStringWithStringVal")]
	public static extern QDate QDate_FromStringWithStringVal(char8[] stringVal);
	[LinkName("QDate_FromString4")]
	public static extern QDate QDate_FromString4(char8[] stringVal, char8[] format);
	[LinkName("QDate_IsValid2")]
	public static extern bool QDate_IsValid2(int32 y, int32 m, int32 d);
	[LinkName("QDate_IsLeapYear")]
	public static extern bool QDate_IsLeapYear(int32 year);
	[LinkName("QDate_FromJulianDay")]
	public static extern QDate QDate_FromJulianDay(int64 jd_);
	[LinkName("QDate_ToJulianDay")]
	public static extern int64 QDate_ToJulianDay(void* c_this);
	[LinkName("QDate_WeekNumber1")]
	public static extern int32 QDate_WeekNumber1(void* c_this, int32 yearNum);
	[LinkName("QDate_StartOfDay1")]
	public static extern QDateTime QDate_StartOfDay1(void* c_this, int64 spec);
	[LinkName("QDate_StartOfDay2")]
	public static extern QDateTime QDate_StartOfDay2(void* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_EndOfDay1")]
	public static extern QDateTime QDate_EndOfDay1(void* c_this, int64 spec);
	[LinkName("QDate_EndOfDay2")]
	public static extern QDateTime QDate_EndOfDay2(void* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_ToString1")]
	public static extern char8[] QDate_ToString1(void* c_this, int64 format);
	[LinkName("QDate_ToString22")]
	public static extern char8[] QDate_ToString22(void* c_this, char8[] format, QCalendar cal);
	[LinkName("QDate_FromString23")]
	public static extern QDate QDate_FromString23(char8[] stringVal, int64 format);
	[LinkName("QDate_FromString34")]
	public static extern QDate QDate_FromString34(char8[] stringVal, char8[] format, QCalendar cal);
}
public struct QTime
{
	[LinkName("QTime_new")]
	public static extern void* QTime_new(QTime other);
	[LinkName("QTime_new2")]
	public static extern void* QTime_new2(QTime other);
	[LinkName("QTime_new3")]
	public static extern void* QTime_new3();
	[LinkName("QTime_new4")]
	public static extern void* QTime_new4(int32 h, int32 m);
	[LinkName("QTime_new5")]
	public static extern void* QTime_new5(QTime param1);
	[LinkName("QTime_new6")]
	public static extern void* QTime_new6(int32 h, int32 m, int32 s);
	[LinkName("QTime_new7")]
	public static extern void* QTime_new7(int32 h, int32 m, int32 s, int32 ms);
	[LinkName("QTime_IsNull")]
	public static extern bool QTime_IsNull(void* c_this);
	[LinkName("QTime_IsValid")]
	public static extern bool QTime_IsValid(void* c_this);
	[LinkName("QTime_Hour")]
	public static extern int32 QTime_Hour(void* c_this);
	[LinkName("QTime_Minute")]
	public static extern int32 QTime_Minute(void* c_this);
	[LinkName("QTime_Second")]
	public static extern int32 QTime_Second(void* c_this);
	[LinkName("QTime_Msec")]
	public static extern int32 QTime_Msec(void* c_this);
	[LinkName("QTime_ToString")]
	public static extern char8[] QTime_ToString(void* c_this);
	[LinkName("QTime_ToStringWithFormat")]
	public static extern char8[] QTime_ToStringWithFormat(void* c_this, char8[] format);
	[LinkName("QTime_SetHMS")]
	public static extern bool QTime_SetHMS(void* c_this, int32 h, int32 m, int32 s);
	[LinkName("QTime_AddSecs")]
	public static extern QTime QTime_AddSecs(void* c_this, int32 secs);
	[LinkName("QTime_SecsTo")]
	public static extern int32 QTime_SecsTo(void* c_this, QTime t);
	[LinkName("QTime_AddMSecs")]
	public static extern QTime QTime_AddMSecs(void* c_this, int32 ms);
	[LinkName("QTime_MsecsTo")]
	public static extern int32 QTime_MsecsTo(void* c_this, QTime t);
	[LinkName("QTime_FromMSecsSinceStartOfDay")]
	public static extern QTime QTime_FromMSecsSinceStartOfDay(int32 msecs);
	[LinkName("QTime_MsecsSinceStartOfDay")]
	public static extern int32 QTime_MsecsSinceStartOfDay(void* c_this);
	[LinkName("QTime_CurrentTime")]
	public static extern QTime QTime_CurrentTime();
	[LinkName("QTime_FromStringWithStringVal")]
	public static extern QTime QTime_FromStringWithStringVal(char8[] stringVal);
	[LinkName("QTime_FromString4")]
	public static extern QTime QTime_FromString4(char8[] stringVal, char8[] format);
	[LinkName("QTime_IsValid2")]
	public static extern bool QTime_IsValid2(int32 h, int32 m, int32 s);
	[LinkName("QTime_ToString1")]
	public static extern char8[] QTime_ToString1(void* c_this, int64 f);
	[LinkName("QTime_SetHMS4")]
	public static extern bool QTime_SetHMS4(void* c_this, int32 h, int32 m, int32 s, int32 ms);
	[LinkName("QTime_FromString23")]
	public static extern QTime QTime_FromString23(char8[] stringVal, int64 format);
	[LinkName("QTime_IsValid4")]
	public static extern bool QTime_IsValid4(int32 h, int32 m, int32 s, int32 ms);
}
public struct QDateTime
{
	[LinkName("QDateTime_new")]
	public static extern void* QDateTime_new();
	[LinkName("QDateTime_new2")]
	public static extern void* QDateTime_new2(QDate date, QTime time);
	[LinkName("QDateTime_new3")]
	public static extern void* QDateTime_new3(QDate date, QTime time, QTimeZone timeZone);
	[LinkName("QDateTime_new4")]
	public static extern void* QDateTime_new4(QDateTime other);
	[LinkName("QDateTime_new5")]
	public static extern void* QDateTime_new5(QDate date, QTime time, int64 spec);
	[LinkName("QDateTime_new6")]
	public static extern void* QDateTime_new6(QDate date, QTime time, int64 spec, int32 offsetSeconds);
	[LinkName("QDateTime_OperatorAssign")]
	public static extern void QDateTime_OperatorAssign(void* c_this, QDateTime other);
	[LinkName("QDateTime_Swap")]
	public static extern void QDateTime_Swap(void* c_this, QDateTime other);
	[LinkName("QDateTime_IsNull")]
	public static extern bool QDateTime_IsNull(void* c_this);
	[LinkName("QDateTime_IsValid")]
	public static extern bool QDateTime_IsValid(void* c_this);
	[LinkName("QDateTime_Date")]
	public static extern QDate QDateTime_Date(void* c_this);
	[LinkName("QDateTime_Time")]
	public static extern QTime QDateTime_Time(void* c_this);
	[LinkName("QDateTime_TimeSpec")]
	public static extern int64 QDateTime_TimeSpec(void* c_this);
	[LinkName("QDateTime_OffsetFromUtc")]
	public static extern int32 QDateTime_OffsetFromUtc(void* c_this);
	[LinkName("QDateTime_TimeZone")]
	public static extern QTimeZone QDateTime_TimeZone(void* c_this);
	[LinkName("QDateTime_TimeZoneAbbreviation")]
	public static extern char8[] QDateTime_TimeZoneAbbreviation(void* c_this);
	[LinkName("QDateTime_IsDaylightTime")]
	public static extern bool QDateTime_IsDaylightTime(void* c_this);
	[LinkName("QDateTime_ToMSecsSinceEpoch")]
	public static extern int64 QDateTime_ToMSecsSinceEpoch(void* c_this);
	[LinkName("QDateTime_ToSecsSinceEpoch")]
	public static extern int64 QDateTime_ToSecsSinceEpoch(void* c_this);
	[LinkName("QDateTime_SetDate")]
	public static extern void QDateTime_SetDate(void* c_this, QDate date);
	[LinkName("QDateTime_SetTime")]
	public static extern void QDateTime_SetTime(void* c_this, QTime time);
	[LinkName("QDateTime_SetTimeSpec")]
	public static extern void QDateTime_SetTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTime_SetOffsetFromUtc")]
	public static extern void QDateTime_SetOffsetFromUtc(void* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_SetTimeZone")]
	public static extern void QDateTime_SetTimeZone(void* c_this, QTimeZone toZone);
	[LinkName("QDateTime_SetMSecsSinceEpoch")]
	public static extern void QDateTime_SetMSecsSinceEpoch(void* c_this, int64 msecs);
	[LinkName("QDateTime_SetSecsSinceEpoch")]
	public static extern void QDateTime_SetSecsSinceEpoch(void* c_this, int64 secs);
	[LinkName("QDateTime_ToString")]
	public static extern char8[] QDateTime_ToString(void* c_this);
	[LinkName("QDateTime_ToStringWithFormat")]
	public static extern char8[] QDateTime_ToStringWithFormat(void* c_this, char8[] format);
	[LinkName("QDateTime_AddDays")]
	public static extern QDateTime QDateTime_AddDays(void* c_this, int64 days);
	[LinkName("QDateTime_AddMonths")]
	public static extern QDateTime QDateTime_AddMonths(void* c_this, int32 months);
	[LinkName("QDateTime_AddYears")]
	public static extern QDateTime QDateTime_AddYears(void* c_this, int32 years);
	[LinkName("QDateTime_AddSecs")]
	public static extern QDateTime QDateTime_AddSecs(void* c_this, int64 secs);
	[LinkName("QDateTime_AddMSecs")]
	public static extern QDateTime QDateTime_AddMSecs(void* c_this, int64 msecs);
	[LinkName("QDateTime_ToTimeSpec")]
	public static extern QDateTime QDateTime_ToTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTime_ToLocalTime")]
	public static extern QDateTime QDateTime_ToLocalTime(void* c_this);
	[LinkName("QDateTime_ToUTC")]
	public static extern QDateTime QDateTime_ToUTC(void* c_this);
	[LinkName("QDateTime_ToOffsetFromUtc")]
	public static extern QDateTime QDateTime_ToOffsetFromUtc(void* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_ToTimeZone")]
	public static extern QDateTime QDateTime_ToTimeZone(void* c_this, QTimeZone toZone);
	[LinkName("QDateTime_DaysTo")]
	public static extern int64 QDateTime_DaysTo(void* c_this, QDateTime param1);
	[LinkName("QDateTime_SecsTo")]
	public static extern int64 QDateTime_SecsTo(void* c_this, QDateTime param1);
	[LinkName("QDateTime_MsecsTo")]
	public static extern int64 QDateTime_MsecsTo(void* c_this, QDateTime param1);
	[LinkName("QDateTime_CurrentDateTime")]
	public static extern QDateTime QDateTime_CurrentDateTime();
	[LinkName("QDateTime_CurrentDateTimeUtc")]
	public static extern QDateTime QDateTime_CurrentDateTimeUtc();
	[LinkName("QDateTime_FromStringWithStringVal")]
	public static extern QDateTime QDateTime_FromStringWithStringVal(char8[] stringVal);
	[LinkName("QDateTime_FromString4")]
	public static extern QDateTime QDateTime_FromString4(char8[] stringVal, char8[] format);
	[LinkName("QDateTime_FromMSecsSinceEpoch")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch(int64 msecs);
	[LinkName("QDateTime_FromSecsSinceEpoch")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch(int64 secs);
	[LinkName("QDateTime_FromMSecsSinceEpoch2")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch2(int64 msecs, QTimeZone timeZone);
	[LinkName("QDateTime_FromSecsSinceEpoch2")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch2(int64 secs, QTimeZone timeZone);
	[LinkName("QDateTime_CurrentMSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentMSecsSinceEpoch();
	[LinkName("QDateTime_CurrentSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentSecsSinceEpoch();
	[LinkName("QDateTime_ToString1")]
	public static extern char8[] QDateTime_ToString1(void* c_this, int64 format);
	[LinkName("QDateTime_ToString22")]
	public static extern char8[] QDateTime_ToString22(void* c_this, char8[] format, QCalendar cal);
	[LinkName("QDateTime_FromString23")]
	public static extern QDateTime QDateTime_FromString23(char8[] stringVal, int64 format);
	[LinkName("QDateTime_FromString34")]
	public static extern QDateTime QDateTime_FromString34(char8[] stringVal, char8[] format, QCalendar cal);
	[LinkName("QDateTime_FromMSecsSinceEpoch22")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch22(int64 msecs, int64 spec);
	[LinkName("QDateTime_FromMSecsSinceEpoch3")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc);
	[LinkName("QDateTime_FromSecsSinceEpoch22")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch22(int64 secs, int64 spec);
	[LinkName("QDateTime_FromSecsSinceEpoch3")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc);
}