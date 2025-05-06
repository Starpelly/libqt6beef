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
	public static extern QDate* QDate_new(QDate* other);
	[LinkName("QDate_new2")]
	public static extern QDate* QDate_new2(QDate* other);
	[LinkName("QDate_new3")]
	public static extern QDate* QDate_new3();
	[LinkName("QDate_new4")]
	public static extern QDate* QDate_new4(int32 y, int32 m, int32 d);
	[LinkName("QDate_new5")]
	public static extern QDate* QDate_new5(int32 y, int32 m, int32 d, QCalendar cal);
	[LinkName("QDate_new6")]
	public static extern QDate* QDate_new6(QDate* param1);
	[LinkName("QDate_IsNull")]
	public static extern bool QDate_IsNull(Self* c_this);
	[LinkName("QDate_IsValid")]
	public static extern bool QDate_IsValid(Self* c_this);
	[LinkName("QDate_Year")]
	public static extern int32 QDate_Year(Self* c_this);
	[LinkName("QDate_Month")]
	public static extern int32 QDate_Month(Self* c_this);
	[LinkName("QDate_Day")]
	public static extern int32 QDate_Day(Self* c_this);
	[LinkName("QDate_DayOfWeek")]
	public static extern int32 QDate_DayOfWeek(Self* c_this);
	[LinkName("QDate_DayOfYear")]
	public static extern int32 QDate_DayOfYear(Self* c_this);
	[LinkName("QDate_DaysInMonth")]
	public static extern int32 QDate_DaysInMonth(Self* c_this);
	[LinkName("QDate_DaysInYear")]
	public static extern int32 QDate_DaysInYear(Self* c_this);
	[LinkName("QDate_WeekNumber")]
	public static extern int32 QDate_WeekNumber(Self* c_this);
	[LinkName("QDate_YearWithCal")]
	public static extern int32 QDate_YearWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_MonthWithCal")]
	public static extern int32 QDate_MonthWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_DayWithCal")]
	public static extern int32 QDate_DayWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_DayOfWeekWithCal")]
	public static extern int32 QDate_DayOfWeekWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_DayOfYearWithCal")]
	public static extern int32 QDate_DayOfYearWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_DaysInMonthWithCal")]
	public static extern int32 QDate_DaysInMonthWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_DaysInYearWithCal")]
	public static extern int32 QDate_DaysInYearWithCal(Self* c_this, QCalendar cal);
	[LinkName("QDate_StartOfDay")]
	public static extern QDateTime QDate_StartOfDay(Self* c_this);
	[LinkName("QDate_EndOfDay")]
	public static extern QDateTime QDate_EndOfDay(Self* c_this);
	[LinkName("QDate_StartOfDayWithZone")]
	public static extern QDateTime QDate_StartOfDayWithZone(Self* c_this, QTimeZone* zone);
	[LinkName("QDate_EndOfDayWithZone")]
	public static extern QDateTime QDate_EndOfDayWithZone(Self* c_this, QTimeZone* zone);
	[LinkName("QDate_ToString")]
	public static extern libqt_string QDate_ToString(Self* c_this);
	[LinkName("QDate_ToStringWithFormat")]
	public static extern libqt_string QDate_ToStringWithFormat(Self* c_this, libqt_string format);
	[LinkName("QDate_SetDate")]
	public static extern bool QDate_SetDate(Self* c_this, int32 year, int32 month, int32 day);
	[LinkName("QDate_SetDate2")]
	public static extern bool QDate_SetDate2(Self* c_this, int32 year, int32 month, int32 day, QCalendar cal);
	[LinkName("QDate_GetDate")]
	public static extern void QDate_GetDate(Self* c_this, int32* year, int32* month, int32* day);
	[LinkName("QDate_AddDays")]
	public static extern QDate QDate_AddDays(Self* c_this, int64 days);
	[LinkName("QDate_AddMonths")]
	public static extern QDate QDate_AddMonths(Self* c_this, int32 months);
	[LinkName("QDate_AddYears")]
	public static extern QDate QDate_AddYears(Self* c_this, int32 years);
	[LinkName("QDate_AddMonths2")]
	public static extern QDate QDate_AddMonths2(Self* c_this, int32 months, QCalendar cal);
	[LinkName("QDate_AddYears2")]
	public static extern QDate QDate_AddYears2(Self* c_this, int32 years, QCalendar cal);
	[LinkName("QDate_DaysTo")]
	public static extern int64 QDate_DaysTo(Self* c_this, QDate d);
	[LinkName("QDate_CurrentDate")]
	public static extern QDate QDate_CurrentDate();
	[LinkName("QDate_FromStringWithStringVal")]
	public static extern QDate QDate_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QDate_FromString4")]
	public static extern QDate QDate_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QDate_IsValid2")]
	public static extern bool QDate_IsValid2(int32 y, int32 m, int32 d);
	[LinkName("QDate_IsLeapYear")]
	public static extern bool QDate_IsLeapYear(int32 year);
	[LinkName("QDate_FromJulianDay")]
	public static extern QDate QDate_FromJulianDay(int64 jd_);
	[LinkName("QDate_ToJulianDay")]
	public static extern int64 QDate_ToJulianDay(Self* c_this);
	[LinkName("QDate_WeekNumber1")]
	public static extern int32 QDate_WeekNumber1(Self* c_this, int32* yearNum);
	[LinkName("QDate_StartOfDay1")]
	public static extern QDateTime QDate_StartOfDay1(Self* c_this, int64 spec);
	[LinkName("QDate_StartOfDay2")]
	public static extern QDateTime QDate_StartOfDay2(Self* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_EndOfDay1")]
	public static extern QDateTime QDate_EndOfDay1(Self* c_this, int64 spec);
	[LinkName("QDate_EndOfDay2")]
	public static extern QDateTime QDate_EndOfDay2(Self* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_ToString1")]
	public static extern libqt_string QDate_ToString1(Self* c_this, int64 format);
	[LinkName("QDate_ToString22")]
	public static extern libqt_string QDate_ToString22(Self* c_this, libqt_string format, QCalendar cal);
	[LinkName("QDate_FromString23")]
	public static extern QDate QDate_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QDate_FromString34")]
	public static extern QDate QDate_FromString34(libqt_string stringVal, libqt_string format, QCalendar cal);
}
public struct QTime
{
	[LinkName("QTime_new")]
	public static extern QTime* QTime_new(QTime* other);
	[LinkName("QTime_new2")]
	public static extern QTime* QTime_new2(QTime* other);
	[LinkName("QTime_new3")]
	public static extern QTime* QTime_new3();
	[LinkName("QTime_new4")]
	public static extern QTime* QTime_new4(int32 h, int32 m);
	[LinkName("QTime_new5")]
	public static extern QTime* QTime_new5(QTime* param1);
	[LinkName("QTime_new6")]
	public static extern QTime* QTime_new6(int32 h, int32 m, int32 s);
	[LinkName("QTime_new7")]
	public static extern QTime* QTime_new7(int32 h, int32 m, int32 s, int32 ms);
	[LinkName("QTime_IsNull")]
	public static extern bool QTime_IsNull(Self* c_this);
	[LinkName("QTime_IsValid")]
	public static extern bool QTime_IsValid(Self* c_this);
	[LinkName("QTime_Hour")]
	public static extern int32 QTime_Hour(Self* c_this);
	[LinkName("QTime_Minute")]
	public static extern int32 QTime_Minute(Self* c_this);
	[LinkName("QTime_Second")]
	public static extern int32 QTime_Second(Self* c_this);
	[LinkName("QTime_Msec")]
	public static extern int32 QTime_Msec(Self* c_this);
	[LinkName("QTime_ToString")]
	public static extern libqt_string QTime_ToString(Self* c_this);
	[LinkName("QTime_ToStringWithFormat")]
	public static extern libqt_string QTime_ToStringWithFormat(Self* c_this, libqt_string format);
	[LinkName("QTime_SetHMS")]
	public static extern bool QTime_SetHMS(Self* c_this, int32 h, int32 m, int32 s);
	[LinkName("QTime_AddSecs")]
	public static extern QTime QTime_AddSecs(Self* c_this, int32 secs);
	[LinkName("QTime_SecsTo")]
	public static extern int32 QTime_SecsTo(Self* c_this, QTime t);
	[LinkName("QTime_AddMSecs")]
	public static extern QTime QTime_AddMSecs(Self* c_this, int32 ms);
	[LinkName("QTime_MsecsTo")]
	public static extern int32 QTime_MsecsTo(Self* c_this, QTime t);
	[LinkName("QTime_FromMSecsSinceStartOfDay")]
	public static extern QTime QTime_FromMSecsSinceStartOfDay(int32 msecs);
	[LinkName("QTime_MsecsSinceStartOfDay")]
	public static extern int32 QTime_MsecsSinceStartOfDay(Self* c_this);
	[LinkName("QTime_CurrentTime")]
	public static extern QTime QTime_CurrentTime();
	[LinkName("QTime_FromStringWithStringVal")]
	public static extern QTime QTime_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QTime_FromString4")]
	public static extern QTime QTime_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QTime_IsValid2")]
	public static extern bool QTime_IsValid2(int32 h, int32 m, int32 s);
	[LinkName("QTime_ToString1")]
	public static extern libqt_string QTime_ToString1(Self* c_this, int64 f);
	[LinkName("QTime_SetHMS4")]
	public static extern bool QTime_SetHMS4(Self* c_this, int32 h, int32 m, int32 s, int32 ms);
	[LinkName("QTime_FromString23")]
	public static extern QTime QTime_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QTime_IsValid4")]
	public static extern bool QTime_IsValid4(int32 h, int32 m, int32 s, int32 ms);
}
public struct QDateTime
{
	[LinkName("QDateTime_new")]
	public static extern QDateTime* QDateTime_new();
	[LinkName("QDateTime_new2")]
	public static extern QDateTime* QDateTime_new2(QDate date, QTime time);
	[LinkName("QDateTime_new3")]
	public static extern QDateTime* QDateTime_new3(QDate date, QTime time, QTimeZone* timeZone);
	[LinkName("QDateTime_new4")]
	public static extern QDateTime* QDateTime_new4(QDateTime* other);
	[LinkName("QDateTime_new5")]
	public static extern QDateTime* QDateTime_new5(QDate date, QTime time, int64 spec);
	[LinkName("QDateTime_new6")]
	public static extern QDateTime* QDateTime_new6(QDate date, QTime time, int64 spec, int32 offsetSeconds);
	[LinkName("QDateTime_OperatorAssign")]
	public static extern void QDateTime_OperatorAssign(Self* c_this, QDateTime* other);
	[LinkName("QDateTime_Swap")]
	public static extern void QDateTime_Swap(Self* c_this, QDateTime* other);
	[LinkName("QDateTime_IsNull")]
	public static extern bool QDateTime_IsNull(Self* c_this);
	[LinkName("QDateTime_IsValid")]
	public static extern bool QDateTime_IsValid(Self* c_this);
	[LinkName("QDateTime_Date")]
	public static extern QDate QDateTime_Date(Self* c_this);
	[LinkName("QDateTime_Time")]
	public static extern QTime QDateTime_Time(Self* c_this);
	[LinkName("QDateTime_TimeSpec")]
	public static extern int64 QDateTime_TimeSpec(Self* c_this);
	[LinkName("QDateTime_OffsetFromUtc")]
	public static extern int32 QDateTime_OffsetFromUtc(Self* c_this);
	[LinkName("QDateTime_TimeZone")]
	public static extern QTimeZone QDateTime_TimeZone(Self* c_this);
	[LinkName("QDateTime_TimeZoneAbbreviation")]
	public static extern libqt_string QDateTime_TimeZoneAbbreviation(Self* c_this);
	[LinkName("QDateTime_IsDaylightTime")]
	public static extern bool QDateTime_IsDaylightTime(Self* c_this);
	[LinkName("QDateTime_ToMSecsSinceEpoch")]
	public static extern int64 QDateTime_ToMSecsSinceEpoch(Self* c_this);
	[LinkName("QDateTime_ToSecsSinceEpoch")]
	public static extern int64 QDateTime_ToSecsSinceEpoch(Self* c_this);
	[LinkName("QDateTime_SetDate")]
	public static extern void QDateTime_SetDate(Self* c_this, QDate date);
	[LinkName("QDateTime_SetTime")]
	public static extern void QDateTime_SetTime(Self* c_this, QTime time);
	[LinkName("QDateTime_SetTimeSpec")]
	public static extern void QDateTime_SetTimeSpec(Self* c_this, int64 spec);
	[LinkName("QDateTime_SetOffsetFromUtc")]
	public static extern void QDateTime_SetOffsetFromUtc(Self* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_SetTimeZone")]
	public static extern void QDateTime_SetTimeZone(Self* c_this, QTimeZone* toZone);
	[LinkName("QDateTime_SetMSecsSinceEpoch")]
	public static extern void QDateTime_SetMSecsSinceEpoch(Self* c_this, int64 msecs);
	[LinkName("QDateTime_SetSecsSinceEpoch")]
	public static extern void QDateTime_SetSecsSinceEpoch(Self* c_this, int64 secs);
	[LinkName("QDateTime_ToString")]
	public static extern libqt_string QDateTime_ToString(Self* c_this);
	[LinkName("QDateTime_ToStringWithFormat")]
	public static extern libqt_string QDateTime_ToStringWithFormat(Self* c_this, libqt_string format);
	[LinkName("QDateTime_AddDays")]
	public static extern QDateTime QDateTime_AddDays(Self* c_this, int64 days);
	[LinkName("QDateTime_AddMonths")]
	public static extern QDateTime QDateTime_AddMonths(Self* c_this, int32 months);
	[LinkName("QDateTime_AddYears")]
	public static extern QDateTime QDateTime_AddYears(Self* c_this, int32 years);
	[LinkName("QDateTime_AddSecs")]
	public static extern QDateTime QDateTime_AddSecs(Self* c_this, int64 secs);
	[LinkName("QDateTime_AddMSecs")]
	public static extern QDateTime QDateTime_AddMSecs(Self* c_this, int64 msecs);
	[LinkName("QDateTime_ToTimeSpec")]
	public static extern QDateTime QDateTime_ToTimeSpec(Self* c_this, int64 spec);
	[LinkName("QDateTime_ToLocalTime")]
	public static extern QDateTime QDateTime_ToLocalTime(Self* c_this);
	[LinkName("QDateTime_ToUTC")]
	public static extern QDateTime QDateTime_ToUTC(Self* c_this);
	[LinkName("QDateTime_ToOffsetFromUtc")]
	public static extern QDateTime QDateTime_ToOffsetFromUtc(Self* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_ToTimeZone")]
	public static extern QDateTime QDateTime_ToTimeZone(Self* c_this, QTimeZone* toZone);
	[LinkName("QDateTime_DaysTo")]
	public static extern int64 QDateTime_DaysTo(Self* c_this, QDateTime* param1);
	[LinkName("QDateTime_SecsTo")]
	public static extern int64 QDateTime_SecsTo(Self* c_this, QDateTime* param1);
	[LinkName("QDateTime_MsecsTo")]
	public static extern int64 QDateTime_MsecsTo(Self* c_this, QDateTime* param1);
	[LinkName("QDateTime_CurrentDateTime")]
	public static extern QDateTime QDateTime_CurrentDateTime();
	[LinkName("QDateTime_CurrentDateTimeUtc")]
	public static extern QDateTime QDateTime_CurrentDateTimeUtc();
	[LinkName("QDateTime_FromStringWithStringVal")]
	public static extern QDateTime QDateTime_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QDateTime_FromString4")]
	public static extern QDateTime QDateTime_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QDateTime_FromMSecsSinceEpoch")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch(int64 msecs);
	[LinkName("QDateTime_FromSecsSinceEpoch")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch(int64 secs);
	[LinkName("QDateTime_FromMSecsSinceEpoch2")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch2(int64 msecs, QTimeZone* timeZone);
	[LinkName("QDateTime_FromSecsSinceEpoch2")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch2(int64 secs, QTimeZone* timeZone);
	[LinkName("QDateTime_CurrentMSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentMSecsSinceEpoch();
	[LinkName("QDateTime_CurrentSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentSecsSinceEpoch();
	[LinkName("QDateTime_ToString1")]
	public static extern libqt_string QDateTime_ToString1(Self* c_this, int64 format);
	[LinkName("QDateTime_ToString22")]
	public static extern libqt_string QDateTime_ToString22(Self* c_this, libqt_string format, QCalendar cal);
	[LinkName("QDateTime_FromString23")]
	public static extern QDateTime QDateTime_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QDateTime_FromString34")]
	public static extern QDateTime QDateTime_FromString34(libqt_string stringVal, libqt_string format, QCalendar cal);
	[LinkName("QDateTime_FromMSecsSinceEpoch22")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch22(int64 msecs, int64 spec);
	[LinkName("QDateTime_FromMSecsSinceEpoch3")]
	public static extern QDateTime QDateTime_FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc);
	[LinkName("QDateTime_FromSecsSinceEpoch22")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch22(int64 secs, int64 spec);
	[LinkName("QDateTime_FromSecsSinceEpoch3")]
	public static extern QDateTime QDateTime_FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc);
}