using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QDateTime__YearRange
{
	First = -292275056,
	Last = 292278994,
}
public interface IQDate
{
	void* NativePtr { get; }
}
public struct QDatePtr : IQDate, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQDate other)
	{
		return .(CQt.QDate_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
	
	public int32 YearWithCal(IQCalendar cal)
	{
		return CQt.QDate_YearWithCal(this.nativePtr, default);
	}
	
	public int32 MonthWithCal(IQCalendar cal)
	{
		return CQt.QDate_MonthWithCal(this.nativePtr, default);
	}
	
	public int32 DayWithCal(IQCalendar cal)
	{
		return CQt.QDate_DayWithCal(this.nativePtr, default);
	}
	
	public int32 DayOfWeekWithCal(IQCalendar cal)
	{
		return CQt.QDate_DayOfWeekWithCal(this.nativePtr, default);
	}
	
	public int32 DayOfYearWithCal(IQCalendar cal)
	{
		return CQt.QDate_DayOfYearWithCal(this.nativePtr, default);
	}
	
	public int32 DaysInMonthWithCal(IQCalendar cal)
	{
		return CQt.QDate_DaysInMonthWithCal(this.nativePtr, default);
	}
	
	public int32 DaysInYearWithCal(IQCalendar cal)
	{
		return CQt.QDate_DaysInYearWithCal(this.nativePtr, default);
	}
	
	public void StartOfDay()
	{
		CQt.QDate_StartOfDay(this.nativePtr);
	}
	
	public void EndOfDay()
	{
		CQt.QDate_EndOfDay(this.nativePtr);
	}
	
	public void StartOfDayWithZone(IQTimeZone zone)
	{
		CQt.QDate_StartOfDayWithZone(this.nativePtr, (zone == default || zone.NativePtr == default) ? default : zone.NativePtr);
	}
	
	public void EndOfDayWithZone(IQTimeZone zone)
	{
		CQt.QDate_EndOfDayWithZone(this.nativePtr, (zone == default || zone.NativePtr == default) ? default : zone.NativePtr);
	}
	
	public libqt_string ToString()
	{
		return CQt.QDate_ToString(this.nativePtr);
	}
	
	public libqt_string ToStringWithFormat(String format)
	{
		return CQt.QDate_ToStringWithFormat(this.nativePtr, libqt_string(format));
	}
	
	public bool SetDate(int32 year, int32 month, int32 day)
	{
		return CQt.QDate_SetDate(this.nativePtr, year, month, day);
	}
	
	public bool SetDate2(int32 year, int32 month, int32 day, IQCalendar cal)
	{
		return CQt.QDate_SetDate2(this.nativePtr, year, month, day, default);
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
	
	public void AddMonths2(int32 months, IQCalendar cal)
	{
		CQt.QDate_AddMonths2(this.nativePtr, months, default);
	}
	
	public void AddYears2(int32 years, IQCalendar cal)
	{
		CQt.QDate_AddYears2(this.nativePtr, years, default);
	}
	
	public int64 DaysTo(IQDate d)
	{
		return CQt.QDate_DaysTo(this.nativePtr, default);
	}
	
	public static void CurrentDate()
	{
		CQt.QDate_CurrentDate();
	}
	
	public static void FromStringWithStringVal(String stringVal)
	{
		CQt.QDate_FromStringWithStringVal(libqt_string(stringVal));
	}
	
	public static void FromString4(String stringVal, String format)
	{
		CQt.QDate_FromString4(libqt_string(stringVal), libqt_string(format));
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
		CQt.QDate_StartOfDay1(this.nativePtr, (int64)spec);
	}
	
	public void StartOfDay2(int64 spec, int32 offsetSeconds)
	{
		CQt.QDate_StartOfDay2(this.nativePtr, (int64)spec, offsetSeconds);
	}
	
	public void EndOfDay1(int64 spec)
	{
		CQt.QDate_EndOfDay1(this.nativePtr, (int64)spec);
	}
	
	public void EndOfDay2(int64 spec, int32 offsetSeconds)
	{
		CQt.QDate_EndOfDay2(this.nativePtr, (int64)spec, offsetSeconds);
	}
	
	public libqt_string ToString1(int64 format)
	{
		return CQt.QDate_ToString1(this.nativePtr, (int64)format);
	}
	
	public libqt_string ToString22(String format, IQCalendar cal)
	{
		return CQt.QDate_ToString22(this.nativePtr, libqt_string(format), default);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		CQt.QDate_FromString23(libqt_string(stringVal), (int64)format);
	}
	
	public static void FromString34(String stringVal, String format, IQCalendar cal)
	{
		CQt.QDate_FromString34(libqt_string(stringVal), libqt_string(format), default);
	}
	
}
public class QDate
{
	public QDatePtr handle;
	
	public static implicit operator QDatePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQDate other)
	{
		this.handle = QDatePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int32 Year()
	{
		return this.handle.Year();
	}
	
	public int32 Month()
	{
		return this.handle.Month();
	}
	
	public int32 Day()
	{
		return this.handle.Day();
	}
	
	public int32 DayOfWeek()
	{
		return this.handle.DayOfWeek();
	}
	
	public int32 DayOfYear()
	{
		return this.handle.DayOfYear();
	}
	
	public int32 DaysInMonth()
	{
		return this.handle.DaysInMonth();
	}
	
	public int32 DaysInYear()
	{
		return this.handle.DaysInYear();
	}
	
	public int32 WeekNumber()
	{
		return this.handle.WeekNumber();
	}
	
	public int32 YearWithCal(IQCalendar cal)
	{
		return this.handle.YearWithCal(default);
	}
	
	public int32 MonthWithCal(IQCalendar cal)
	{
		return this.handle.MonthWithCal(default);
	}
	
	public int32 DayWithCal(IQCalendar cal)
	{
		return this.handle.DayWithCal(default);
	}
	
	public int32 DayOfWeekWithCal(IQCalendar cal)
	{
		return this.handle.DayOfWeekWithCal(default);
	}
	
	public int32 DayOfYearWithCal(IQCalendar cal)
	{
		return this.handle.DayOfYearWithCal(default);
	}
	
	public int32 DaysInMonthWithCal(IQCalendar cal)
	{
		return this.handle.DaysInMonthWithCal(default);
	}
	
	public int32 DaysInYearWithCal(IQCalendar cal)
	{
		return this.handle.DaysInYearWithCal(default);
	}
	
	public void StartOfDay()
	{
		this.handle.StartOfDay();
	}
	
	public void EndOfDay()
	{
		this.handle.EndOfDay();
	}
	
	public void StartOfDayWithZone(IQTimeZone zone)
	{
		this.handle.StartOfDayWithZone(zone);
	}
	
	public void EndOfDayWithZone(IQTimeZone zone)
	{
		this.handle.EndOfDayWithZone(zone);
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToStringWithFormat(String format)
	{
		return this.handle.ToStringWithFormat(format);
	}
	
	public bool SetDate(int32 year, int32 month, int32 day)
	{
		return this.handle.SetDate(year, month, day);
	}
	
	public bool SetDate2(int32 year, int32 month, int32 day, IQCalendar cal)
	{
		return this.handle.SetDate2(year, month, day, default);
	}
	
	public void GetDate(int32* year, int32* month, int32* day)
	{
		this.handle.GetDate(year, month, day);
	}
	
	public void AddDays(int64 days)
	{
		this.handle.AddDays(days);
	}
	
	public void AddMonths(int32 months)
	{
		this.handle.AddMonths(months);
	}
	
	public void AddYears(int32 years)
	{
		this.handle.AddYears(years);
	}
	
	public void AddMonths2(int32 months, IQCalendar cal)
	{
		this.handle.AddMonths2(months, default);
	}
	
	public void AddYears2(int32 years, IQCalendar cal)
	{
		this.handle.AddYears2(years, default);
	}
	
	public int64 DaysTo(IQDate d)
	{
		return this.handle.DaysTo(default);
	}
	
	public static void CurrentDate()
	{
		QDatePtr.CurrentDate();
	}
	
	public static void FromStringWithStringVal(String stringVal)
	{
		QDatePtr.FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(String stringVal, String format)
	{
		QDatePtr.FromString4(stringVal, format);
	}
	
	public static bool IsValid2(int32 y, int32 m, int32 d)
	{
		return QDatePtr.IsValid2(y, m, d);
	}
	
	public static bool IsLeapYear(int32 year)
	{
		return QDatePtr.IsLeapYear(year);
	}
	
	public static void FromJulianDay(int64 jd_)
	{
		QDatePtr.FromJulianDay(jd_);
	}
	
	public int64 ToJulianDay()
	{
		return this.handle.ToJulianDay();
	}
	
	public int32 WeekNumber1(int32* yearNum)
	{
		return this.handle.WeekNumber1(yearNum);
	}
	
	public void StartOfDay1(int64 spec)
	{
		this.handle.StartOfDay1(spec);
	}
	
	public void StartOfDay2(int64 spec, int32 offsetSeconds)
	{
		this.handle.StartOfDay2(spec, offsetSeconds);
	}
	
	public void EndOfDay1(int64 spec)
	{
		this.handle.EndOfDay1(spec);
	}
	
	public void EndOfDay2(int64 spec, int32 offsetSeconds)
	{
		this.handle.EndOfDay2(spec, offsetSeconds);
	}
	
	public libqt_string ToString1(int64 format)
	{
		return this.handle.ToString1(format);
	}
	
	public libqt_string ToString22(String format, IQCalendar cal)
	{
		return this.handle.ToString22(format, default);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		QDatePtr.FromString23(stringVal, format);
	}
	
	public static void FromString34(String stringVal, String format, IQCalendar cal)
	{
		QDatePtr.FromString34(stringVal, format, default);
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
public interface IQTime
{
	void* NativePtr { get; }
}
public struct QTimePtr : IQTime, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQTime other)
	{
		return .(CQt.QTime_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	
	public void Dispose()
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
	
	public libqt_string ToStringWithFormat(String format)
	{
		return CQt.QTime_ToStringWithFormat(this.nativePtr, libqt_string(format));
	}
	
	public bool SetHMS(int32 h, int32 m, int32 s)
	{
		return CQt.QTime_SetHMS(this.nativePtr, h, m, s);
	}
	
	public void AddSecs(int32 secs)
	{
		CQt.QTime_AddSecs(this.nativePtr, secs);
	}
	
	public int32 SecsTo(IQTime t)
	{
		return CQt.QTime_SecsTo(this.nativePtr, default);
	}
	
	public void AddMSecs(int32 ms)
	{
		CQt.QTime_AddMSecs(this.nativePtr, ms);
	}
	
	public int32 MsecsTo(IQTime t)
	{
		return CQt.QTime_MsecsTo(this.nativePtr, default);
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
	
	public static void FromStringWithStringVal(String stringVal)
	{
		CQt.QTime_FromStringWithStringVal(libqt_string(stringVal));
	}
	
	public static void FromString4(String stringVal, String format)
	{
		CQt.QTime_FromString4(libqt_string(stringVal), libqt_string(format));
	}
	
	public static bool IsValid2(int32 h, int32 m, int32 s)
	{
		return CQt.QTime_IsValid2(h, m, s);
	}
	
	public libqt_string ToString1(int64 f)
	{
		return CQt.QTime_ToString1(this.nativePtr, (int64)f);
	}
	
	public bool SetHMS4(int32 h, int32 m, int32 s, int32 ms)
	{
		return CQt.QTime_SetHMS4(this.nativePtr, h, m, s, ms);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		CQt.QTime_FromString23(libqt_string(stringVal), (int64)format);
	}
	
	public static bool IsValid4(int32 h, int32 m, int32 s, int32 ms)
	{
		return CQt.QTime_IsValid4(h, m, s, ms);
	}
	
}
public class QTime
{
	public QTimePtr handle;
	
	public static implicit operator QTimePtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQTime other)
	{
		this.handle = QTimePtr.New(other);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public int32 Hour()
	{
		return this.handle.Hour();
	}
	
	public int32 Minute()
	{
		return this.handle.Minute();
	}
	
	public int32 Second()
	{
		return this.handle.Second();
	}
	
	public int32 Msec()
	{
		return this.handle.Msec();
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToStringWithFormat(String format)
	{
		return this.handle.ToStringWithFormat(format);
	}
	
	public bool SetHMS(int32 h, int32 m, int32 s)
	{
		return this.handle.SetHMS(h, m, s);
	}
	
	public void AddSecs(int32 secs)
	{
		this.handle.AddSecs(secs);
	}
	
	public int32 SecsTo(IQTime t)
	{
		return this.handle.SecsTo(default);
	}
	
	public void AddMSecs(int32 ms)
	{
		this.handle.AddMSecs(ms);
	}
	
	public int32 MsecsTo(IQTime t)
	{
		return this.handle.MsecsTo(default);
	}
	
	public static void FromMSecsSinceStartOfDay(int32 msecs)
	{
		QTimePtr.FromMSecsSinceStartOfDay(msecs);
	}
	
	public int32 MsecsSinceStartOfDay()
	{
		return this.handle.MsecsSinceStartOfDay();
	}
	
	public static void CurrentTime()
	{
		QTimePtr.CurrentTime();
	}
	
	public static void FromStringWithStringVal(String stringVal)
	{
		QTimePtr.FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(String stringVal, String format)
	{
		QTimePtr.FromString4(stringVal, format);
	}
	
	public static bool IsValid2(int32 h, int32 m, int32 s)
	{
		return QTimePtr.IsValid2(h, m, s);
	}
	
	public libqt_string ToString1(int64 f)
	{
		return this.handle.ToString1(f);
	}
	
	public bool SetHMS4(int32 h, int32 m, int32 s, int32 ms)
	{
		return this.handle.SetHMS4(h, m, s, ms);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		QTimePtr.FromString23(stringVal, format);
	}
	
	public static bool IsValid4(int32 h, int32 m, int32 s, int32 ms)
	{
		return QTimePtr.IsValid4(h, m, s, ms);
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
public interface IQDateTime
{
	void* NativePtr { get; }
}
public struct QDateTimePtr : IQDateTime, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QDateTime_new());
	}
	
	public void Dispose()
	{
		CQt.QDateTime_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQDateTime other)
	{
		CQt.QDateTime_OperatorAssign(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void Swap(IQDateTime other)
	{
		CQt.QDateTime_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
	
	public void SetDate(IQDate date)
	{
		CQt.QDateTime_SetDate(this.nativePtr, default);
	}
	
	public void SetTime(IQTime time)
	{
		CQt.QDateTime_SetTime(this.nativePtr, default);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		CQt.QDateTime_SetTimeSpec(this.nativePtr, (int64)spec);
	}
	
	public void SetOffsetFromUtc(int32 offsetSeconds)
	{
		CQt.QDateTime_SetOffsetFromUtc(this.nativePtr, offsetSeconds);
	}
	
	public void SetTimeZone(IQTimeZone toZone)
	{
		CQt.QDateTime_SetTimeZone(this.nativePtr, (toZone == default || toZone.NativePtr == default) ? default : toZone.NativePtr);
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
	
	public libqt_string ToStringWithFormat(String format)
	{
		return CQt.QDateTime_ToStringWithFormat(this.nativePtr, libqt_string(format));
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
		CQt.QDateTime_ToTimeSpec(this.nativePtr, (int64)spec);
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
	
	public void ToTimeZone(IQTimeZone toZone)
	{
		CQt.QDateTime_ToTimeZone(this.nativePtr, (toZone == default || toZone.NativePtr == default) ? default : toZone.NativePtr);
	}
	
	public int64 DaysTo(IQDateTime param1)
	{
		return CQt.QDateTime_DaysTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public int64 SecsTo(IQDateTime param1)
	{
		return CQt.QDateTime_SecsTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public int64 MsecsTo(IQDateTime param1)
	{
		return CQt.QDateTime_MsecsTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static void CurrentDateTime()
	{
		CQt.QDateTime_CurrentDateTime();
	}
	
	public static void CurrentDateTimeUtc()
	{
		CQt.QDateTime_CurrentDateTimeUtc();
	}
	
	public static void FromStringWithStringVal(String stringVal)
	{
		CQt.QDateTime_FromStringWithStringVal(libqt_string(stringVal));
	}
	
	public static void FromString4(String stringVal, String format)
	{
		CQt.QDateTime_FromString4(libqt_string(stringVal), libqt_string(format));
	}
	
	public static void FromMSecsSinceEpoch(int64 msecs)
	{
		CQt.QDateTime_FromMSecsSinceEpoch(msecs);
	}
	
	public static void FromSecsSinceEpoch(int64 secs)
	{
		CQt.QDateTime_FromSecsSinceEpoch(secs);
	}
	
	public static void FromMSecsSinceEpoch2(int64 msecs, IQTimeZone timeZone)
	{
		CQt.QDateTime_FromMSecsSinceEpoch2(msecs, (timeZone == default || timeZone.NativePtr == default) ? default : timeZone.NativePtr);
	}
	
	public static void FromSecsSinceEpoch2(int64 secs, IQTimeZone timeZone)
	{
		CQt.QDateTime_FromSecsSinceEpoch2(secs, (timeZone == default || timeZone.NativePtr == default) ? default : timeZone.NativePtr);
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
		return CQt.QDateTime_ToString1(this.nativePtr, (int64)format);
	}
	
	public libqt_string ToString22(String format, IQCalendar cal)
	{
		return CQt.QDateTime_ToString22(this.nativePtr, libqt_string(format), default);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		CQt.QDateTime_FromString23(libqt_string(stringVal), (int64)format);
	}
	
	public static void FromString34(String stringVal, String format, IQCalendar cal)
	{
		CQt.QDateTime_FromString34(libqt_string(stringVal), libqt_string(format), default);
	}
	
	public static void FromMSecsSinceEpoch22(int64 msecs, int64 spec)
	{
		CQt.QDateTime_FromMSecsSinceEpoch22(msecs, (int64)spec);
	}
	
	public static void FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc)
	{
		CQt.QDateTime_FromMSecsSinceEpoch3(msecs, (int64)spec, offsetFromUtc);
	}
	
	public static void FromSecsSinceEpoch22(int64 secs, int64 spec)
	{
		CQt.QDateTime_FromSecsSinceEpoch22(secs, (int64)spec);
	}
	
	public static void FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc)
	{
		CQt.QDateTime_FromSecsSinceEpoch3(secs, (int64)spec, offsetFromUtc);
	}
	
}
public class QDateTime
{
	public QDateTimePtr handle;
	
	public static implicit operator QDateTimePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QDateTimePtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(IQDateTime other)
	{
		this.handle.OperatorAssign(other);
	}
	
	public void Swap(IQDateTime other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsNull()
	{
		return this.handle.IsNull();
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public void Date()
	{
		this.handle.Date();
	}
	
	public void Time()
	{
		this.handle.Time();
	}
	
	public int64 TimeSpec()
	{
		return this.handle.TimeSpec();
	}
	
	public int32 OffsetFromUtc()
	{
		return this.handle.OffsetFromUtc();
	}
	
	public void TimeZone()
	{
		this.handle.TimeZone();
	}
	
	public libqt_string TimeZoneAbbreviation()
	{
		return this.handle.TimeZoneAbbreviation();
	}
	
	public bool IsDaylightTime()
	{
		return this.handle.IsDaylightTime();
	}
	
	public int64 ToMSecsSinceEpoch()
	{
		return this.handle.ToMSecsSinceEpoch();
	}
	
	public int64 ToSecsSinceEpoch()
	{
		return this.handle.ToSecsSinceEpoch();
	}
	
	public void SetDate(IQDate date)
	{
		this.handle.SetDate(default);
	}
	
	public void SetTime(IQTime time)
	{
		this.handle.SetTime(default);
	}
	
	public void SetTimeSpec(int64 spec)
	{
		this.handle.SetTimeSpec(spec);
	}
	
	public void SetOffsetFromUtc(int32 offsetSeconds)
	{
		this.handle.SetOffsetFromUtc(offsetSeconds);
	}
	
	public void SetTimeZone(IQTimeZone toZone)
	{
		this.handle.SetTimeZone(toZone);
	}
	
	public void SetMSecsSinceEpoch(int64 msecs)
	{
		this.handle.SetMSecsSinceEpoch(msecs);
	}
	
	public void SetSecsSinceEpoch(int64 secs)
	{
		this.handle.SetSecsSinceEpoch(secs);
	}
	
	public libqt_string ToString()
	{
		return this.handle.ToString();
	}
	
	public libqt_string ToStringWithFormat(String format)
	{
		return this.handle.ToStringWithFormat(format);
	}
	
	public void AddDays(int64 days)
	{
		this.handle.AddDays(days);
	}
	
	public void AddMonths(int32 months)
	{
		this.handle.AddMonths(months);
	}
	
	public void AddYears(int32 years)
	{
		this.handle.AddYears(years);
	}
	
	public void AddSecs(int64 secs)
	{
		this.handle.AddSecs(secs);
	}
	
	public void AddMSecs(int64 msecs)
	{
		this.handle.AddMSecs(msecs);
	}
	
	public void ToTimeSpec(int64 spec)
	{
		this.handle.ToTimeSpec(spec);
	}
	
	public void ToLocalTime()
	{
		this.handle.ToLocalTime();
	}
	
	public void ToUTC()
	{
		this.handle.ToUTC();
	}
	
	public void ToOffsetFromUtc(int32 offsetSeconds)
	{
		this.handle.ToOffsetFromUtc(offsetSeconds);
	}
	
	public void ToTimeZone(IQTimeZone toZone)
	{
		this.handle.ToTimeZone(toZone);
	}
	
	public int64 DaysTo(IQDateTime param1)
	{
		return this.handle.DaysTo(param1);
	}
	
	public int64 SecsTo(IQDateTime param1)
	{
		return this.handle.SecsTo(param1);
	}
	
	public int64 MsecsTo(IQDateTime param1)
	{
		return this.handle.MsecsTo(param1);
	}
	
	public static void CurrentDateTime()
	{
		QDateTimePtr.CurrentDateTime();
	}
	
	public static void CurrentDateTimeUtc()
	{
		QDateTimePtr.CurrentDateTimeUtc();
	}
	
	public static void FromStringWithStringVal(String stringVal)
	{
		QDateTimePtr.FromStringWithStringVal(stringVal);
	}
	
	public static void FromString4(String stringVal, String format)
	{
		QDateTimePtr.FromString4(stringVal, format);
	}
	
	public static void FromMSecsSinceEpoch(int64 msecs)
	{
		QDateTimePtr.FromMSecsSinceEpoch(msecs);
	}
	
	public static void FromSecsSinceEpoch(int64 secs)
	{
		QDateTimePtr.FromSecsSinceEpoch(secs);
	}
	
	public static void FromMSecsSinceEpoch2(int64 msecs, IQTimeZone timeZone)
	{
		QDateTimePtr.FromMSecsSinceEpoch2(msecs, timeZone);
	}
	
	public static void FromSecsSinceEpoch2(int64 secs, IQTimeZone timeZone)
	{
		QDateTimePtr.FromSecsSinceEpoch2(secs, timeZone);
	}
	
	public static int64 CurrentMSecsSinceEpoch()
	{
		return QDateTimePtr.CurrentMSecsSinceEpoch();
	}
	
	public static int64 CurrentSecsSinceEpoch()
	{
		return QDateTimePtr.CurrentSecsSinceEpoch();
	}
	
	public libqt_string ToString1(int64 format)
	{
		return this.handle.ToString1(format);
	}
	
	public libqt_string ToString22(String format, IQCalendar cal)
	{
		return this.handle.ToString22(format, default);
	}
	
	public static void FromString23(String stringVal, int64 format)
	{
		QDateTimePtr.FromString23(stringVal, format);
	}
	
	public static void FromString34(String stringVal, String format, IQCalendar cal)
	{
		QDateTimePtr.FromString34(stringVal, format, default);
	}
	
	public static void FromMSecsSinceEpoch22(int64 msecs, int64 spec)
	{
		QDateTimePtr.FromMSecsSinceEpoch22(msecs, spec);
	}
	
	public static void FromMSecsSinceEpoch3(int64 msecs, int64 spec, int32 offsetFromUtc)
	{
		QDateTimePtr.FromMSecsSinceEpoch3(msecs, spec, offsetFromUtc);
	}
	
	public static void FromSecsSinceEpoch22(int64 secs, int64 spec)
	{
		QDateTimePtr.FromSecsSinceEpoch22(secs, spec);
	}
	
	public static void FromSecsSinceEpoch3(int64 secs, int64 spec, int32 offsetFromUtc)
	{
		QDateTimePtr.FromSecsSinceEpoch3(secs, spec, offsetFromUtc);
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