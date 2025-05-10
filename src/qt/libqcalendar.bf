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
public class QCalendar
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QCalendar_new(other);
	}
	
	public ~this()
	{
		CQt.QCalendar_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QCalendar_IsValid(this.nativePtr);
	}
	
	public int32 DaysInMonth(int32 month)
	{
		return CQt.QCalendar_DaysInMonth(this.nativePtr, month);
	}
	
	public int32 DaysInYear(int32 year)
	{
		return CQt.QCalendar_DaysInYear(this.nativePtr, year);
	}
	
	public int32 MonthsInYear(int32 year)
	{
		return CQt.QCalendar_MonthsInYear(this.nativePtr, year);
	}
	
	public bool IsDateValid(int32 year, int32 month, int32 day)
	{
		return CQt.QCalendar_IsDateValid(this.nativePtr, year, month, day);
	}
	
	public bool IsLeapYear(int32 year)
	{
		return CQt.QCalendar_IsLeapYear(this.nativePtr, year);
	}
	
	public bool IsGregorian()
	{
		return CQt.QCalendar_IsGregorian(this.nativePtr);
	}
	
	public bool IsLunar()
	{
		return CQt.QCalendar_IsLunar(this.nativePtr);
	}
	
	public bool IsLuniSolar()
	{
		return CQt.QCalendar_IsLuniSolar(this.nativePtr);
	}
	
	public bool IsSolar()
	{
		return CQt.QCalendar_IsSolar(this.nativePtr);
	}
	
	public bool IsProleptic()
	{
		return CQt.QCalendar_IsProleptic(this.nativePtr);
	}
	
	public bool HasYearZero()
	{
		return CQt.QCalendar_HasYearZero(this.nativePtr);
	}
	
	public int32 MaximumDaysInMonth()
	{
		return CQt.QCalendar_MaximumDaysInMonth(this.nativePtr);
	}
	
	public int32 MinimumDaysInMonth()
	{
		return CQt.QCalendar_MinimumDaysInMonth(this.nativePtr);
	}
	
	public int32 MaximumMonthsInYear()
	{
		return CQt.QCalendar_MaximumMonthsInYear(this.nativePtr);
	}
	
	public libqt_string Name()
	{
		return CQt.QCalendar_Name(this.nativePtr);
	}
	
	public void DateFromParts(int32 year, int32 month, int32 day)
	{
		CQt.QCalendar_DateFromParts(this.nativePtr, year, month, day);
	}
	
	public void DateFromPartsWithParts(QCalendar__YearMonthDay* parts)
	{
		CQt.QCalendar_DateFromPartsWithParts(this.nativePtr, parts);
	}
	
	public QCalendar__YearMonthDay PartsFromDate(void date)
	{
		return CQt.QCalendar_PartsFromDate(this.nativePtr, date);
	}
	
	public int32 DayOfWeek(void date)
	{
		return CQt.QCalendar_DayOfWeek(this.nativePtr, date);
	}
	
	public libqt_string MonthName(void* locale, int32 month)
	{
		return CQt.QCalendar_MonthName(this.nativePtr, locale, month);
	}
	
	public libqt_string StandaloneMonthName(void* locale, int32 month)
	{
		return CQt.QCalendar_StandaloneMonthName(this.nativePtr, locale, month);
	}
	
	public libqt_string WeekDayName(void* locale, int32 day)
	{
		return CQt.QCalendar_WeekDayName(this.nativePtr, locale, day);
	}
	
	public libqt_string StandaloneWeekDayName(void* locale, int32 day)
	{
		return CQt.QCalendar_StandaloneWeekDayName(this.nativePtr, locale, day);
	}
	
	public static libqt_string[] AvailableCalendars()
	{
		return CQt.QCalendar_AvailableCalendars();
	}
	
	public int32 DaysInMonth2(int32 month, int32 year)
	{
		return CQt.QCalendar_DaysInMonth2(this.nativePtr, month, year);
	}
	
	public libqt_string MonthName3(void* locale, int32 month, int32 year)
	{
		return CQt.QCalendar_MonthName3(this.nativePtr, locale, month, year);
	}
	
	public libqt_string MonthName4(void* locale, int32 month, int32 year, int64 format)
	{
		return CQt.QCalendar_MonthName4(this.nativePtr, locale, month, year, format);
	}
	
	public libqt_string StandaloneMonthName3(void* locale, int32 month, int32 year)
	{
		return CQt.QCalendar_StandaloneMonthName3(this.nativePtr, locale, month, year);
	}
	
	public libqt_string StandaloneMonthName4(void* locale, int32 month, int32 year, int64 format)
	{
		return CQt.QCalendar_StandaloneMonthName4(this.nativePtr, locale, month, year, format);
	}
	
	public libqt_string WeekDayName3(void* locale, int32 day, int64 format)
	{
		return CQt.QCalendar_WeekDayName3(this.nativePtr, locale, day, format);
	}
	
	public libqt_string StandaloneWeekDayName3(void* locale, int32 day, int64 format)
	{
		return CQt.QCalendar_StandaloneWeekDayName3(this.nativePtr, locale, day, format);
	}
	
}
extension CQt
{
	[LinkName("QCalendar_new")]
	public static extern void* QCalendar_new(void* other);
	[LinkName("QCalendar_new2")]
	public static extern void* QCalendar_new2(void* other);
	[LinkName("QCalendar_new3")]
	public static extern void* QCalendar_new3();
	[LinkName("QCalendar_new4")]
	public static extern void* QCalendar_new4(int64 system);
	[LinkName("QCalendar_new5")]
	public static extern void* QCalendar_new5(void name);
	[LinkName("QCalendar_new6")]
	public static extern void* QCalendar_new6(QCalendar__SystemId id);
	[LinkName("QCalendar_IsValid")]
	public static extern bool QCalendar_IsValid(void* c_this);
	[LinkName("QCalendar_DaysInMonth")]
	public static extern int32 QCalendar_DaysInMonth(void* c_this, int32 month);
	[LinkName("QCalendar_DaysInYear")]
	public static extern int32 QCalendar_DaysInYear(void* c_this, int32 year);
	[LinkName("QCalendar_MonthsInYear")]
	public static extern int32 QCalendar_MonthsInYear(void* c_this, int32 year);
	[LinkName("QCalendar_IsDateValid")]
	public static extern bool QCalendar_IsDateValid(void* c_this, int32 year, int32 month, int32 day);
	[LinkName("QCalendar_IsLeapYear")]
	public static extern bool QCalendar_IsLeapYear(void* c_this, int32 year);
	[LinkName("QCalendar_IsGregorian")]
	public static extern bool QCalendar_IsGregorian(void* c_this);
	[LinkName("QCalendar_IsLunar")]
	public static extern bool QCalendar_IsLunar(void* c_this);
	[LinkName("QCalendar_IsLuniSolar")]
	public static extern bool QCalendar_IsLuniSolar(void* c_this);
	[LinkName("QCalendar_IsSolar")]
	public static extern bool QCalendar_IsSolar(void* c_this);
	[LinkName("QCalendar_IsProleptic")]
	public static extern bool QCalendar_IsProleptic(void* c_this);
	[LinkName("QCalendar_HasYearZero")]
	public static extern bool QCalendar_HasYearZero(void* c_this);
	[LinkName("QCalendar_MaximumDaysInMonth")]
	public static extern int32 QCalendar_MaximumDaysInMonth(void* c_this);
	[LinkName("QCalendar_MinimumDaysInMonth")]
	public static extern int32 QCalendar_MinimumDaysInMonth(void* c_this);
	[LinkName("QCalendar_MaximumMonthsInYear")]
	public static extern int32 QCalendar_MaximumMonthsInYear(void* c_this);
	[LinkName("QCalendar_Name")]
	public static extern libqt_string QCalendar_Name(void* c_this);
	[LinkName("QCalendar_DateFromParts")]
	public static extern void QCalendar_DateFromParts(void* c_this, int32 year, int32 month, int32 day);
	[LinkName("QCalendar_DateFromPartsWithParts")]
	public static extern void QCalendar_DateFromPartsWithParts(void* c_this, QCalendar__YearMonthDay* parts);
	[LinkName("QCalendar_PartsFromDate")]
	public static extern QCalendar__YearMonthDay QCalendar_PartsFromDate(void* c_this, void date);
	[LinkName("QCalendar_DayOfWeek")]
	public static extern int32 QCalendar_DayOfWeek(void* c_this, void date);
	[LinkName("QCalendar_MonthName")]
	public static extern libqt_string QCalendar_MonthName(void* c_this, void* locale, int32 month);
	[LinkName("QCalendar_StandaloneMonthName")]
	public static extern libqt_string QCalendar_StandaloneMonthName(void* c_this, void* locale, int32 month);
	[LinkName("QCalendar_WeekDayName")]
	public static extern libqt_string QCalendar_WeekDayName(void* c_this, void* locale, int32 day);
	[LinkName("QCalendar_StandaloneWeekDayName")]
	public static extern libqt_string QCalendar_StandaloneWeekDayName(void* c_this, void* locale, int32 day);
	[LinkName("QCalendar_AvailableCalendars")]
	public static extern libqt_string[] QCalendar_AvailableCalendars();
	[LinkName("QCalendar_DaysInMonth2")]
	public static extern int32 QCalendar_DaysInMonth2(void* c_this, int32 month, int32 year);
	[LinkName("QCalendar_MonthName3")]
	public static extern libqt_string QCalendar_MonthName3(void* c_this, void* locale, int32 month, int32 year);
	[LinkName("QCalendar_MonthName4")]
	public static extern libqt_string QCalendar_MonthName4(void* c_this, void* locale, int32 month, int32 year, int64 format);
	[LinkName("QCalendar_StandaloneMonthName3")]
	public static extern libqt_string QCalendar_StandaloneMonthName3(void* c_this, void* locale, int32 month, int32 year);
	[LinkName("QCalendar_StandaloneMonthName4")]
	public static extern libqt_string QCalendar_StandaloneMonthName4(void* c_this, void* locale, int32 month, int32 year, int64 format);
	[LinkName("QCalendar_WeekDayName3")]
	public static extern libqt_string QCalendar_WeekDayName3(void* c_this, void* locale, int32 day, int64 format);
	[LinkName("QCalendar_StandaloneWeekDayName3")]
	public static extern libqt_string QCalendar_StandaloneWeekDayName3(void* c_this, void* locale, int32 day, int64 format);
	/// Delete this object from C++ memory
	[LinkName("QCalendar_Delete")]
	public static extern void QCalendar_Delete(void* self);
}
public class QCalendar__YearMonthDay
{
	protected void* nativePtr;
	
	public this(QCalendar__YearMonthDay* other)
	{
		this.nativePtr = CQt.QCalendar__YearMonthDay_new(other);
	}
	
	public ~this()
	{
		CQt.QCalendar__YearMonthDay_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QCalendar__YearMonthDay_IsValid(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCalendar__YearMonthDay_new")]
	public static extern void* QCalendar__YearMonthDay_new(QCalendar__YearMonthDay* other);
	[LinkName("QCalendar__YearMonthDay_new2")]
	public static extern void* QCalendar__YearMonthDay_new2(QCalendar__YearMonthDay* other);
	[LinkName("QCalendar__YearMonthDay_new3")]
	public static extern void* QCalendar__YearMonthDay_new3();
	[LinkName("QCalendar__YearMonthDay_new4")]
	public static extern void* QCalendar__YearMonthDay_new4(int32 y);
	[LinkName("QCalendar__YearMonthDay_new5")]
	public static extern void* QCalendar__YearMonthDay_new5(int32 y, int32 m);
	[LinkName("QCalendar__YearMonthDay_new6")]
	public static extern void* QCalendar__YearMonthDay_new6(int32 y, int32 m, int32 d);
	[LinkName("QCalendar__YearMonthDay_IsValid")]
	public static extern bool QCalendar__YearMonthDay_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCalendar__YearMonthDay_Delete")]
	public static extern void QCalendar__YearMonthDay_Delete(void* self);
}
public class QCalendar__SystemId
{
	protected void* nativePtr;
	
	public this(QCalendar__SystemId* other)
	{
		this.nativePtr = CQt.QCalendar__SystemId_new(other);
	}
	
	public ~this()
	{
		CQt.QCalendar__SystemId_Delete(this.nativePtr);
	}
	
	public uint32 Index()
	{
		return CQt.QCalendar__SystemId_Index(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QCalendar__SystemId_IsValid(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QCalendar__SystemId_new")]
	public static extern void* QCalendar__SystemId_new(QCalendar__SystemId* other);
	[LinkName("QCalendar__SystemId_new2")]
	public static extern void* QCalendar__SystemId_new2(QCalendar__SystemId* other);
	[LinkName("QCalendar__SystemId_new3")]
	public static extern void* QCalendar__SystemId_new3();
	[LinkName("QCalendar__SystemId_Index")]
	public static extern uint32 QCalendar__SystemId_Index(void* c_this);
	[LinkName("QCalendar__SystemId_IsValid")]
	public static extern bool QCalendar__SystemId_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCalendar__SystemId_Delete")]
	public static extern void QCalendar__SystemId_Delete(void* self);
}