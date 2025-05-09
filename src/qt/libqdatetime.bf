using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDateTime__YearRange
{
	First = -292275056,
	Last = 292278994,
}
public class QDate
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QDate_new(other);
	}
	
	public ~this()
	{
		CQt.QDate_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QDate_IsNull(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QDate_IsValid(this.nativePtr);
	}
	
	public int32 Year()
	{
		return CQt.QDate_Year(this.nativePtr);
	}
	
	public int32 Month()
	{
		return CQt.QDate_Month(this.nativePtr);
	}
	
	public int32 Day()
	{
		return CQt.QDate_Day(this.nativePtr);
	}
	
	public int32 DayOfWeek()
	{
		return CQt.QDate_DayOfWeek(this.nativePtr);
	}
	
	public int32 DayOfYear()
	{
		return CQt.QDate_DayOfYear(this.nativePtr);
	}
	
	public int32 DaysInMonth()
	{
		return CQt.QDate_DaysInMonth(this.nativePtr);
	}
	
	public int32 DaysInYear()
	{
		return CQt.QDate_DaysInYear(this.nativePtr);
	}
	
	public int32 WeekNumber()
	{
		return CQt.QDate_WeekNumber(this.nativePtr);
	}
	
	public int32 YearWithCal(void cal)
	{
		return CQt.QDate_YearWithCal(this.nativePtr, cal);
	}
	
	public int32 MonthWithCal(void cal)
	{
		return CQt.QDate_MonthWithCal(this.nativePtr, cal);
	}
	
	public int32 DayWithCal(void cal)
	{
		return CQt.QDate_DayWithCal(this.nativePtr, cal);
	}
	
	public int32 DayOfWeekWithCal(void cal)
	{
		return CQt.QDate_DayOfWeekWithCal(this.nativePtr, cal);
	}
	
	public int32 DayOfYearWithCal(void cal)
	{
		return CQt.QDate_DayOfYearWithCal(this.nativePtr, cal);
	}
	
	public int32 DaysInMonthWithCal(void cal)
	{
		return CQt.QDate_DaysInMonthWithCal(this.nativePtr, cal);
	}
	
	public int32 DaysInYearWithCal(void cal)
	{
		return CQt.QDate_DaysInYearWithCal(this.nativePtr, cal);
	}
	
	public void StartOfDay()
	{
		CQt.QDate_StartOfDay(this.nativePtr);
	}
	
	public void EndOfDay()
	{
		CQt.QDate_EndOfDay(this.nativePtr);
	}
	
	public void StartOfDayWithZone(void* zone)
	{
		CQt.QDate_StartOfDayWithZone(this.nativePtr, zone);
	}
	
	public void EndOfDayWithZone(void* zone)
	{
		CQt.QDate_EndOfDayWithZone(this.nativePtr, zone);
	}
	
	public libqt_string ToString()
	{
		return CQt.QDate_ToString(this.nativePtr);
	}
	
	public libqt_string ToStringWithFormat(libqt_string format)
	{
		return CQt.QDate_ToStringWithFormat(this.nativePtr, format);
	}
	
	public bool SetDate(int32 year, int32 month, int32 day)
	{
		return CQt.QDate_SetDate(this.nativePtr, year, month, day);
	}
	
	public bool SetDate2(int32 year, int32 month, int32 day, void cal)
	{
		return CQt.QDate_SetDate2(this.nativePtr, year, month, day, cal);
	}
	
	public void GetDate(int32* year, int32* month, int32* day)
	{
		CQt.QDate_GetDate(this.nativePtr, year, month, day);
	}
	
	public void AddDays(int64 days)
	{
		CQt.QDate_AddDays(this.nativePtr, days);
	}
	
	public void AddMonths(int32 months)
	{
		CQt.QDate_AddMonths(this.nativePtr, months);
	}
	
	public void AddYears(int32 years)
	{
		CQt.QDate_AddYears(this.nativePtr, years);
	}
	
	public void AddMonths2(int32 months, void cal)
	{
		CQt.QDate_AddMonths2(this.nativePtr, months, cal);
	}
	
	public void AddYears2(int32 years, void cal)
	{
		CQt.QDate_AddYears2(this.nativePtr, years, cal);
	}
	
	public int64 DaysTo(void d)
	{
		return CQt.QDate_DaysTo(this.nativePtr, d);
	}
	
	public static void CurrentDate()
	{
		CQt.QDate_CurrentDate();
	}
	
	public static void FromStringWithStringVal(libqt_string stringVal)
	{
		CQt.QDate_FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(libqt_string stringVal, libqt_string format)
	{
		CQt.QDate_FromString4(stringVal, format);
	}
	
	public static bool IsValid2(int32 y, int32 m, int32 d)
	{
		return CQt.QDate_IsValid2(y, m, d);
	}
	
	public static bool IsLeapYear(int32 year)
	{
		return CQt.QDate_IsLeapYear(year);
	}
	
	public static void FromJulianDay(int64 jd_)
	{
		CQt.QDate_FromJulianDay(jd_);
	}
	
	public int64 ToJulianDay()
	{
		return CQt.QDate_ToJulianDay(this.nativePtr);
	}
	
	public int32 WeekNumber1(int32* yearNum)
	{
		return CQt.QDate_WeekNumber1(this.nativePtr, yearNum);
	}
	
	public void StartOfDay1(int64 spec)
	{
		CQt.QDate_StartOfDay1(this.nativePtr, spec);
	}
	
	public void StartOfDay2(int64 spec, int32 offsetSeconds)
	{
		CQt.QDate_StartOfDay2(this.nativePtr, spec, offsetSeconds);
	}
	
	public void EndOfDay1(int64 spec)
	{
		CQt.QDate_EndOfDay1(this.nativePtr, spec);
	}
	
	public void EndOfDay2(int64 spec, int32 offsetSeconds)
	{
		CQt.QDate_EndOfDay2(this.nativePtr, spec, offsetSeconds);
	}
	
	public libqt_string ToString1(int64 format)
	{
		return CQt.QDate_ToString1(this.nativePtr, format);
	}
	
	public libqt_string ToString22(libqt_string format, void cal)
	{
		return CQt.QDate_ToString22(this.nativePtr, format, cal);
	}
	
	public static void FromString23(libqt_string stringVal, int64 format)
	{
		CQt.QDate_FromString23(stringVal, format);
	}
	
	public static void FromString34(libqt_string stringVal, libqt_string format, void cal)
	{
		CQt.QDate_FromString34(stringVal, format, cal);
	}
	
}
extension CQt
{
	[LinkName("QDate_new")]
	public static extern void* QDate_new(void* other);
	[LinkName("QDate_new2")]
	public static extern void* QDate_new2(void* other);
	[LinkName("QDate_new3")]
	public static extern void* QDate_new3();
	[LinkName("QDate_new4")]
	public static extern void* QDate_new4(int32 y, int32 m, int32 d);
	[LinkName("QDate_new5")]
	public static extern void* QDate_new5(int32 y, int32 m, int32 d, void cal);
	[LinkName("QDate_new6")]
	public static extern void* QDate_new6(void* param1);
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
	public static extern int32 QDate_YearWithCal(void* c_this, void cal);
	[LinkName("QDate_MonthWithCal")]
	public static extern int32 QDate_MonthWithCal(void* c_this, void cal);
	[LinkName("QDate_DayWithCal")]
	public static extern int32 QDate_DayWithCal(void* c_this, void cal);
	[LinkName("QDate_DayOfWeekWithCal")]
	public static extern int32 QDate_DayOfWeekWithCal(void* c_this, void cal);
	[LinkName("QDate_DayOfYearWithCal")]
	public static extern int32 QDate_DayOfYearWithCal(void* c_this, void cal);
	[LinkName("QDate_DaysInMonthWithCal")]
	public static extern int32 QDate_DaysInMonthWithCal(void* c_this, void cal);
	[LinkName("QDate_DaysInYearWithCal")]
	public static extern int32 QDate_DaysInYearWithCal(void* c_this, void cal);
	[LinkName("QDate_StartOfDay")]
	public static extern void QDate_StartOfDay(void* c_this);
	[LinkName("QDate_EndOfDay")]
	public static extern void QDate_EndOfDay(void* c_this);
	[LinkName("QDate_StartOfDayWithZone")]
	public static extern void QDate_StartOfDayWithZone(void* c_this, void* zone);
	[LinkName("QDate_EndOfDayWithZone")]
	public static extern void QDate_EndOfDayWithZone(void* c_this, void* zone);
	[LinkName("QDate_ToString")]
	public static extern libqt_string QDate_ToString(void* c_this);
	[LinkName("QDate_ToStringWithFormat")]
	public static extern libqt_string QDate_ToStringWithFormat(void* c_this, libqt_string format);
	[LinkName("QDate_SetDate")]
	public static extern bool QDate_SetDate(void* c_this, int32 year, int32 month, int32 day);
	[LinkName("QDate_SetDate2")]
	public static extern bool QDate_SetDate2(void* c_this, int32 year, int32 month, int32 day, void cal);
	[LinkName("QDate_GetDate")]
	public static extern void QDate_GetDate(void* c_this, int32* year, int32* month, int32* day);
	[LinkName("QDate_AddDays")]
	public static extern void QDate_AddDays(void* c_this, int64 days);
	[LinkName("QDate_AddMonths")]
	public static extern void QDate_AddMonths(void* c_this, int32 months);
	[LinkName("QDate_AddYears")]
	public static extern void QDate_AddYears(void* c_this, int32 years);
	[LinkName("QDate_AddMonths2")]
	public static extern void QDate_AddMonths2(void* c_this, int32 months, void cal);
	[LinkName("QDate_AddYears2")]
	public static extern void QDate_AddYears2(void* c_this, int32 years, void cal);
	[LinkName("QDate_DaysTo")]
	public static extern int64 QDate_DaysTo(void* c_this, void d);
	[LinkName("QDate_CurrentDate")]
	public static extern void QDate_CurrentDate();
	[LinkName("QDate_FromStringWithStringVal")]
	public static extern void QDate_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QDate_FromString4")]
	public static extern void QDate_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QDate_IsValid2")]
	public static extern bool QDate_IsValid2(int32 y, int32 m, int32 d);
	[LinkName("QDate_IsLeapYear")]
	public static extern bool QDate_IsLeapYear(int32 year);
	[LinkName("QDate_FromJulianDay")]
	public static extern void QDate_FromJulianDay(int64 jd_);
	[LinkName("QDate_ToJulianDay")]
	public static extern int64 QDate_ToJulianDay(void* c_this);
	[LinkName("QDate_WeekNumber1")]
	public static extern int32 QDate_WeekNumber1(void* c_this, int32* yearNum);
	[LinkName("QDate_StartOfDay1")]
	public static extern void QDate_StartOfDay1(void* c_this, int64 spec);
	[LinkName("QDate_StartOfDay2")]
	public static extern void QDate_StartOfDay2(void* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_EndOfDay1")]
	public static extern void QDate_EndOfDay1(void* c_this, int64 spec);
	[LinkName("QDate_EndOfDay2")]
	public static extern void QDate_EndOfDay2(void* c_this, int64 spec, int32 offsetSeconds);
	[LinkName("QDate_ToString1")]
	public static extern libqt_string QDate_ToString1(void* c_this, int64 format);
	[LinkName("QDate_ToString22")]
	public static extern libqt_string QDate_ToString22(void* c_this, libqt_string format, void cal);
	[LinkName("QDate_FromString23")]
	public static extern void QDate_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QDate_FromString34")]
	public static extern void QDate_FromString34(libqt_string stringVal, libqt_string format, void cal);
	/// Delete this object from C++ memory
	[LinkName("QDate_Delete")]
	public static extern void QDate_Delete(void* self);
}
public class QTime
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QTime_new(other);
	}
	
	public ~this()
	{
		CQt.QTime_Delete(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QTime_IsNull(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTime_IsValid(this.nativePtr);
	}
	
	public int32 Hour()
	{
		return CQt.QTime_Hour(this.nativePtr);
	}
	
	public int32 Minute()
	{
		return CQt.QTime_Minute(this.nativePtr);
	}
	
	public int32 Second()
	{
		return CQt.QTime_Second(this.nativePtr);
	}
	
	public int32 Msec()
	{
		return CQt.QTime_Msec(this.nativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QTime_ToString(this.nativePtr);
	}
	
	public libqt_string ToStringWithFormat(libqt_string format)
	{
		return CQt.QTime_ToStringWithFormat(this.nativePtr, format);
	}
	
	public bool SetHMS(int32 h, int32 m, int32 s)
	{
		return CQt.QTime_SetHMS(this.nativePtr, h, m, s);
	}
	
	public void AddSecs(int32 secs)
	{
		CQt.QTime_AddSecs(this.nativePtr, secs);
	}
	
	public int32 SecsTo(void t)
	{
		return CQt.QTime_SecsTo(this.nativePtr, t);
	}
	
	public void AddMSecs(int32 ms)
	{
		CQt.QTime_AddMSecs(this.nativePtr, ms);
	}
	
	public int32 MsecsTo(void t)
	{
		return CQt.QTime_MsecsTo(this.nativePtr, t);
	}
	
	public static void FromMSecsSinceStartOfDay(int32 msecs)
	{
		CQt.QTime_FromMSecsSinceStartOfDay(msecs);
	}
	
	public int32 MsecsSinceStartOfDay()
	{
		return CQt.QTime_MsecsSinceStartOfDay(this.nativePtr);
	}
	
	public static void CurrentTime()
	{
		CQt.QTime_CurrentTime();
	}
	
	public static void FromStringWithStringVal(libqt_string stringVal)
	{
		CQt.QTime_FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(libqt_string stringVal, libqt_string format)
	{
		CQt.QTime_FromString4(stringVal, format);
	}
	
	public static bool IsValid2(int32 h, int32 m, int32 s)
	{
		return CQt.QTime_IsValid2(h, m, s);
	}
	
	public libqt_string ToString1(int64 f)
	{
		return CQt.QTime_ToString1(this.nativePtr, f);
	}
	
	public bool SetHMS4(int32 h, int32 m, int32 s, int32 ms)
	{
		return CQt.QTime_SetHMS4(this.nativePtr, h, m, s, ms);
	}
	
	public static void FromString23(libqt_string stringVal, int64 format)
	{
		CQt.QTime_FromString23(stringVal, format);
	}
	
	public static bool IsValid4(int32 h, int32 m, int32 s, int32 ms)
	{
		return CQt.QTime_IsValid4(h, m, s, ms);
	}
	
}
extension CQt
{
	[LinkName("QTime_new")]
	public static extern void* QTime_new(void* other);
	[LinkName("QTime_new2")]
	public static extern void* QTime_new2(void* other);
	[LinkName("QTime_new3")]
	public static extern void* QTime_new3();
	[LinkName("QTime_new4")]
	public static extern void* QTime_new4(int32 h, int32 m);
	[LinkName("QTime_new5")]
	public static extern void* QTime_new5(void* param1);
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
	public static extern libqt_string QTime_ToString(void* c_this);
	[LinkName("QTime_ToStringWithFormat")]
	public static extern libqt_string QTime_ToStringWithFormat(void* c_this, libqt_string format);
	[LinkName("QTime_SetHMS")]
	public static extern bool QTime_SetHMS(void* c_this, int32 h, int32 m, int32 s);
	[LinkName("QTime_AddSecs")]
	public static extern void QTime_AddSecs(void* c_this, int32 secs);
	[LinkName("QTime_SecsTo")]
	public static extern int32 QTime_SecsTo(void* c_this, void t);
	[LinkName("QTime_AddMSecs")]
	public static extern void QTime_AddMSecs(void* c_this, int32 ms);
	[LinkName("QTime_MsecsTo")]
	public static extern int32 QTime_MsecsTo(void* c_this, void t);
	[LinkName("QTime_FromMSecsSinceStartOfDay")]
	public static extern void QTime_FromMSecsSinceStartOfDay(int32 msecs);
	[LinkName("QTime_MsecsSinceStartOfDay")]
	public static extern int32 QTime_MsecsSinceStartOfDay(void* c_this);
	[LinkName("QTime_CurrentTime")]
	public static extern void QTime_CurrentTime();
	[LinkName("QTime_FromStringWithStringVal")]
	public static extern void QTime_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QTime_FromString4")]
	public static extern void QTime_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QTime_IsValid2")]
	public static extern bool QTime_IsValid2(int32 h, int32 m, int32 s);
	[LinkName("QTime_ToString1")]
	public static extern libqt_string QTime_ToString1(void* c_this, int64 f);
	[LinkName("QTime_SetHMS4")]
	public static extern bool QTime_SetHMS4(void* c_this, int32 h, int32 m, int32 s, int32 ms);
	[LinkName("QTime_FromString23")]
	public static extern void QTime_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QTime_IsValid4")]
	public static extern bool QTime_IsValid4(int32 h, int32 m, int32 s, int32 ms);
	/// Delete this object from C++ memory
	[LinkName("QTime_Delete")]
	public static extern void QTime_Delete(void* self);
}
public class QDateTime
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QDateTime_new();
	}
	
	public ~this()
	{
		CQt.QDateTime_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(void* other)
	{
		CQt.QDateTime_OperatorAssign(this.nativePtr, other);
	}
	
	public void Swap(void* other)
	{
		CQt.QDateTime_Swap(this.nativePtr, other);
	}
	
	public bool IsNull()
	{
		return CQt.QDateTime_IsNull(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QDateTime_IsValid(this.nativePtr);
	}
	
	public void Date()
	{
		CQt.QDateTime_Date(this.nativePtr);
	}
	
	public void Time()
	{
		CQt.QDateTime_Time(this.nativePtr);
	}
	
	public int64 TimeSpec()
	{
		return CQt.QDateTime_TimeSpec(this.nativePtr);
	}
	
	public int32 OffsetFromUtc()
	{
		return CQt.QDateTime_OffsetFromUtc(this.nativePtr);
	}
	
	public void TimeZone()
	{
		CQt.QDateTime_TimeZone(this.nativePtr);
	}
	
	public libqt_string TimeZoneAbbreviation()
	{
		return CQt.QDateTime_TimeZoneAbbreviation(this.nativePtr);
	}
	
	public bool IsDaylightTime()
	{
		return CQt.QDateTime_IsDaylightTime(this.nativePtr);
	}
	
	public int64 ToMSecsSinceEpoch()
	{
		return CQt.QDateTime_ToMSecsSinceEpoch(this.nativePtr);
	}
	
	public int64 ToSecsSinceEpoch()
	{
		return CQt.QDateTime_ToSecsSinceEpoch(this.nativePtr);
	}
	
	public void SetDate(void date)
	{
		CQt.QDateTime_SetDate(this.nativePtr, date);
	}
	
	public void SetTime(void time)
	{
		CQt.QDateTime_SetTime(this.nativePtr, time);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		CQt.QDateTime_SetTimeSpec(this.nativePtr, spec);
	}
	
	public void SetOffsetFromUtc(int32 offsetSeconds)
	{
		CQt.QDateTime_SetOffsetFromUtc(this.nativePtr, offsetSeconds);
	}
	
	public void SetTimeZone(void* toZone)
	{
		CQt.QDateTime_SetTimeZone(this.nativePtr, toZone);
	}
	
	public void SetMSecsSinceEpoch(int64 msecs)
	{
		CQt.QDateTime_SetMSecsSinceEpoch(this.nativePtr, msecs);
	}
	
	public void SetSecsSinceEpoch(int64 secs)
	{
		CQt.QDateTime_SetSecsSinceEpoch(this.nativePtr, secs);
	}
	
	public libqt_string ToString()
	{
		return CQt.QDateTime_ToString(this.nativePtr);
	}
	
	public libqt_string ToStringWithFormat(libqt_string format)
	{
		return CQt.QDateTime_ToStringWithFormat(this.nativePtr, format);
	}
	
	public void AddDays(int64 days)
	{
		CQt.QDateTime_AddDays(this.nativePtr, days);
	}
	
	public void AddMonths(int32 months)
	{
		CQt.QDateTime_AddMonths(this.nativePtr, months);
	}
	
	public void AddYears(int32 years)
	{
		CQt.QDateTime_AddYears(this.nativePtr, years);
	}
	
	public void AddSecs(int64 secs)
	{
		CQt.QDateTime_AddSecs(this.nativePtr, secs);
	}
	
	public void AddMSecs(int64 msecs)
	{
		CQt.QDateTime_AddMSecs(this.nativePtr, msecs);
	}
	
	public void ToTimeSpec(int64 spec)
	{
		CQt.QDateTime_ToTimeSpec(this.nativePtr, spec);
	}
	
	public void ToLocalTime()
	{
		CQt.QDateTime_ToLocalTime(this.nativePtr);
	}
	
	public void ToUTC()
	{
		CQt.QDateTime_ToUTC(this.nativePtr);
	}
	
	public void ToOffsetFromUtc(int32 offsetSeconds)
	{
		CQt.QDateTime_ToOffsetFromUtc(this.nativePtr, offsetSeconds);
	}
	
	public void ToTimeZone(void* toZone)
	{
		CQt.QDateTime_ToTimeZone(this.nativePtr, toZone);
	}
	
	public int64 DaysTo(void* param1)
	{
		return CQt.QDateTime_DaysTo(this.nativePtr, param1);
	}
	
	public int64 SecsTo(void* param1)
	{
		return CQt.QDateTime_SecsTo(this.nativePtr, param1);
	}
	
	public int64 MsecsTo(void* param1)
	{
		return CQt.QDateTime_MsecsTo(this.nativePtr, param1);
	}
	
	public static void CurrentDateTime()
	{
		CQt.QDateTime_CurrentDateTime();
	}
	
	public static void CurrentDateTimeUtc()
	{
		CQt.QDateTime_CurrentDateTimeUtc();
	}
	
	public static void FromStringWithStringVal(libqt_string stringVal)
	{
		CQt.QDateTime_FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(libqt_string stringVal, libqt_string format)
	{
		CQt.QDateTime_FromString4(stringVal, format);
	}
	
	public static void FromMSecsSinceEpoch(int64 msecs)
	{
		CQt.QDateTime_FromMSecsSinceEpoch(msecs);
	}
	
	public static void FromSecsSinceEpoch(int64 secs)
	{
		CQt.QDateTime_FromSecsSinceEpoch(secs);
	}
	
	public static void FromMSecsSinceEpoch2(int64 msecs, void* timeZone)
	{
		CQt.QDateTime_FromMSecsSinceEpoch2(msecs, timeZone);
	}
	
	public static void FromSecsSinceEpoch2(int64 secs, void* timeZone)
	{
		CQt.QDateTime_FromSecsSinceEpoch2(secs, timeZone);
	}
	
	public static int64 CurrentMSecsSinceEpoch()
	{
		return CQt.QDateTime_CurrentMSecsSinceEpoch();
	}
	
	public static int64 CurrentSecsSinceEpoch()
	{
		return CQt.QDateTime_CurrentSecsSinceEpoch();
	}
	
	public libqt_string ToString1(int64 format)
	{
		return CQt.QDateTime_ToString1(this.nativePtr, format);
	}
	
	public libqt_string ToString22(libqt_string format, void cal)
	{
		return CQt.QDateTime_ToString22(this.nativePtr, format, cal);
	}
	
	public static void FromString23(libqt_string stringVal, int64 format)
	{
		CQt.QDateTime_FromString23(stringVal, format);
	}
	
	public static void FromString34(libqt_string stringVal, libqt_string format, void cal)
	{
		CQt.QDateTime_FromString34(stringVal, format, cal);
	}
	
	public static void FromMSecsSinceEpoch22(int64 msecs, int64 spec)
	{
		CQt.QDateTime_FromMSecsSinceEpoch22(msecs, spec);
	}
	
	public static void FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc)
	{
		CQt.QDateTime_FromMSecsSinceEpoch3(msecs, spec, offsetFromUtc);
	}
	
	public static void FromSecsSinceEpoch22(int64 secs, int64 spec)
	{
		CQt.QDateTime_FromSecsSinceEpoch22(secs, spec);
	}
	
	public static void FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc)
	{
		CQt.QDateTime_FromSecsSinceEpoch3(secs, spec, offsetFromUtc);
	}
	
}
extension CQt
{
	[LinkName("QDateTime_new")]
	public static extern void* QDateTime_new();
	[LinkName("QDateTime_new2")]
	public static extern void* QDateTime_new2(void date, void time);
	[LinkName("QDateTime_new3")]
	public static extern void* QDateTime_new3(void date, void time, void* timeZone);
	[LinkName("QDateTime_new4")]
	public static extern void* QDateTime_new4(void* other);
	[LinkName("QDateTime_new5")]
	public static extern void* QDateTime_new5(void date, void time, int64 spec);
	[LinkName("QDateTime_new6")]
	public static extern void* QDateTime_new6(void date, void time, int64 spec, int32 offsetSeconds);
	[LinkName("QDateTime_OperatorAssign")]
	public static extern void QDateTime_OperatorAssign(void* c_this, void* other);
	[LinkName("QDateTime_Swap")]
	public static extern void QDateTime_Swap(void* c_this, void* other);
	[LinkName("QDateTime_IsNull")]
	public static extern bool QDateTime_IsNull(void* c_this);
	[LinkName("QDateTime_IsValid")]
	public static extern bool QDateTime_IsValid(void* c_this);
	[LinkName("QDateTime_Date")]
	public static extern void QDateTime_Date(void* c_this);
	[LinkName("QDateTime_Time")]
	public static extern void QDateTime_Time(void* c_this);
	[LinkName("QDateTime_TimeSpec")]
	public static extern int64 QDateTime_TimeSpec(void* c_this);
	[LinkName("QDateTime_OffsetFromUtc")]
	public static extern int32 QDateTime_OffsetFromUtc(void* c_this);
	[LinkName("QDateTime_TimeZone")]
	public static extern void QDateTime_TimeZone(void* c_this);
	[LinkName("QDateTime_TimeZoneAbbreviation")]
	public static extern libqt_string QDateTime_TimeZoneAbbreviation(void* c_this);
	[LinkName("QDateTime_IsDaylightTime")]
	public static extern bool QDateTime_IsDaylightTime(void* c_this);
	[LinkName("QDateTime_ToMSecsSinceEpoch")]
	public static extern int64 QDateTime_ToMSecsSinceEpoch(void* c_this);
	[LinkName("QDateTime_ToSecsSinceEpoch")]
	public static extern int64 QDateTime_ToSecsSinceEpoch(void* c_this);
	[LinkName("QDateTime_SetDate")]
	public static extern void QDateTime_SetDate(void* c_this, void date);
	[LinkName("QDateTime_SetTime")]
	public static extern void QDateTime_SetTime(void* c_this, void time);
	[LinkName("QDateTime_SetTimeSpec")]
	public static extern void QDateTime_SetTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTime_SetOffsetFromUtc")]
	public static extern void QDateTime_SetOffsetFromUtc(void* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_SetTimeZone")]
	public static extern void QDateTime_SetTimeZone(void* c_this, void* toZone);
	[LinkName("QDateTime_SetMSecsSinceEpoch")]
	public static extern void QDateTime_SetMSecsSinceEpoch(void* c_this, int64 msecs);
	[LinkName("QDateTime_SetSecsSinceEpoch")]
	public static extern void QDateTime_SetSecsSinceEpoch(void* c_this, int64 secs);
	[LinkName("QDateTime_ToString")]
	public static extern libqt_string QDateTime_ToString(void* c_this);
	[LinkName("QDateTime_ToStringWithFormat")]
	public static extern libqt_string QDateTime_ToStringWithFormat(void* c_this, libqt_string format);
	[LinkName("QDateTime_AddDays")]
	public static extern void QDateTime_AddDays(void* c_this, int64 days);
	[LinkName("QDateTime_AddMonths")]
	public static extern void QDateTime_AddMonths(void* c_this, int32 months);
	[LinkName("QDateTime_AddYears")]
	public static extern void QDateTime_AddYears(void* c_this, int32 years);
	[LinkName("QDateTime_AddSecs")]
	public static extern void QDateTime_AddSecs(void* c_this, int64 secs);
	[LinkName("QDateTime_AddMSecs")]
	public static extern void QDateTime_AddMSecs(void* c_this, int64 msecs);
	[LinkName("QDateTime_ToTimeSpec")]
	public static extern void QDateTime_ToTimeSpec(void* c_this, int64 spec);
	[LinkName("QDateTime_ToLocalTime")]
	public static extern void QDateTime_ToLocalTime(void* c_this);
	[LinkName("QDateTime_ToUTC")]
	public static extern void QDateTime_ToUTC(void* c_this);
	[LinkName("QDateTime_ToOffsetFromUtc")]
	public static extern void QDateTime_ToOffsetFromUtc(void* c_this, int32 offsetSeconds);
	[LinkName("QDateTime_ToTimeZone")]
	public static extern void QDateTime_ToTimeZone(void* c_this, void* toZone);
	[LinkName("QDateTime_DaysTo")]
	public static extern int64 QDateTime_DaysTo(void* c_this, void* param1);
	[LinkName("QDateTime_SecsTo")]
	public static extern int64 QDateTime_SecsTo(void* c_this, void* param1);
	[LinkName("QDateTime_MsecsTo")]
	public static extern int64 QDateTime_MsecsTo(void* c_this, void* param1);
	[LinkName("QDateTime_CurrentDateTime")]
	public static extern void QDateTime_CurrentDateTime();
	[LinkName("QDateTime_CurrentDateTimeUtc")]
	public static extern void QDateTime_CurrentDateTimeUtc();
	[LinkName("QDateTime_FromStringWithStringVal")]
	public static extern void QDateTime_FromStringWithStringVal(libqt_string stringVal);
	[LinkName("QDateTime_FromString4")]
	public static extern void QDateTime_FromString4(libqt_string stringVal, libqt_string format);
	[LinkName("QDateTime_FromMSecsSinceEpoch")]
	public static extern void QDateTime_FromMSecsSinceEpoch(int64 msecs);
	[LinkName("QDateTime_FromSecsSinceEpoch")]
	public static extern void QDateTime_FromSecsSinceEpoch(int64 secs);
	[LinkName("QDateTime_FromMSecsSinceEpoch2")]
	public static extern void QDateTime_FromMSecsSinceEpoch2(int64 msecs, void* timeZone);
	[LinkName("QDateTime_FromSecsSinceEpoch2")]
	public static extern void QDateTime_FromSecsSinceEpoch2(int64 secs, void* timeZone);
	[LinkName("QDateTime_CurrentMSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentMSecsSinceEpoch();
	[LinkName("QDateTime_CurrentSecsSinceEpoch")]
	public static extern int64 QDateTime_CurrentSecsSinceEpoch();
	[LinkName("QDateTime_ToString1")]
	public static extern libqt_string QDateTime_ToString1(void* c_this, int64 format);
	[LinkName("QDateTime_ToString22")]
	public static extern libqt_string QDateTime_ToString22(void* c_this, libqt_string format, void cal);
	[LinkName("QDateTime_FromString23")]
	public static extern void QDateTime_FromString23(libqt_string stringVal, int64 format);
	[LinkName("QDateTime_FromString34")]
	public static extern void QDateTime_FromString34(libqt_string stringVal, libqt_string format, void cal);
	[LinkName("QDateTime_FromMSecsSinceEpoch22")]
	public static extern void QDateTime_FromMSecsSinceEpoch22(int64 msecs, int64 spec);
	[LinkName("QDateTime_FromMSecsSinceEpoch3")]
	public static extern void QDateTime_FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc);
	[LinkName("QDateTime_FromSecsSinceEpoch22")]
	public static extern void QDateTime_FromSecsSinceEpoch22(int64 secs, int64 spec);
	[LinkName("QDateTime_FromSecsSinceEpoch3")]
	public static extern void QDateTime_FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc);
	/// Delete this object from C++ memory
	[LinkName("QDateTime_Delete")]
	public static extern void QDateTime_Delete(void* self);
}