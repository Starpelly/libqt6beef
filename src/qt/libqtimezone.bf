using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTimeZone__
{
	MinUtcOffsetSecs = -50400,
	MaxUtcOffsetSecs = 50400,
}
[AllowDuplicates]
public enum QTimeZone__TimeType
{
	StandardTime = 0,
	DaylightTime = 1,
	GenericTime = 2,
}
[AllowDuplicates]
public enum QTimeZone__NameType
{
	DefaultName = 0,
	LongName = 1,
	ShortName = 2,
	OffsetName = 3,
}
public interface IQTimeZone
{
	void* NativePtr { get; }
}
public class QTimeZone : IQTimeZone
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTimeZone_new();
	}
	
	public ~this()
	{
		CQt.QTimeZone_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQTimeZone other)
	{
		CQt.QTimeZone_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQTimeZone other)
	{
		CQt.QTimeZone_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTimeZone_IsValid(this.nativePtr);
	}
	
	public libqt_string Id()
	{
		return CQt.QTimeZone_Id(this.nativePtr);
	}
	
	public int64 Territory()
	{
		return CQt.QTimeZone_Territory(this.nativePtr);
	}
	
	public int64 Country()
	{
		return CQt.QTimeZone_Country(this.nativePtr);
	}
	
	public libqt_string Comment()
	{
		return CQt.QTimeZone_Comment(this.nativePtr);
	}
	
	public libqt_string DisplayName(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_DisplayName(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public libqt_string DisplayNameWithTimeType(int64 timeType)
	{
		return CQt.QTimeZone_DisplayNameWithTimeType(this.nativePtr, timeType);
	}
	
	public libqt_string Abbreviation(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_Abbreviation(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public int32 OffsetFromUtc(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_OffsetFromUtc(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public int32 StandardTimeOffset(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_StandardTimeOffset(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public int32 DaylightTimeOffset(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_DaylightTimeOffset(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public bool HasDaylightTime()
	{
		return CQt.QTimeZone_HasDaylightTime(this.nativePtr);
	}
	
	public bool IsDaylightTime(IQDateTime atDateTime)
	{
		return CQt.QTimeZone_IsDaylightTime(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr);
	}
	
	public void OffsetData(IQDateTime forDateTime)
	{
		CQt.QTimeZone_OffsetData(this.nativePtr, (forDateTime == default) ? default : (void*)forDateTime.NativePtr);
	}
	
	public bool HasTransitions()
	{
		return CQt.QTimeZone_HasTransitions(this.nativePtr);
	}
	
	public void NextTransition(IQDateTime afterDateTime)
	{
		CQt.QTimeZone_NextTransition(this.nativePtr, (afterDateTime == default) ? default : (void*)afterDateTime.NativePtr);
	}
	
	public void PreviousTransition(IQDateTime beforeDateTime)
	{
		CQt.QTimeZone_PreviousTransition(this.nativePtr, (beforeDateTime == default) ? default : (void*)beforeDateTime.NativePtr);
	}
	
	public void[] Transitions(IQDateTime fromDateTime, IQDateTime toDateTime)
	{
		return CQt.QTimeZone_Transitions(this.nativePtr, (fromDateTime == default) ? default : (void*)fromDateTime.NativePtr, (toDateTime == default) ? default : (void*)toDateTime.NativePtr);
	}
	
	public static libqt_string SystemTimeZoneId()
	{
		return CQt.QTimeZone_SystemTimeZoneId();
	}
	
	public static void SystemTimeZone()
	{
		CQt.QTimeZone_SystemTimeZone();
	}
	
	public static void Utc()
	{
		CQt.QTimeZone_Utc();
	}
	
	public static bool IsTimeZoneIdAvailable(String ianaId)
	{
		return CQt.QTimeZone_IsTimeZoneIdAvailable(libqt_string(ianaId));
	}
	
	public static libqt_string[] AvailableTimeZoneIds()
	{
		return CQt.QTimeZone_AvailableTimeZoneIds();
	}
	
	public static libqt_string[] AvailableTimeZoneIdsWithTerritory(int64 territory)
	{
		return CQt.QTimeZone_AvailableTimeZoneIdsWithTerritory(territory);
	}
	
	public static libqt_string[] AvailableTimeZoneIdsWithOffsetSeconds(int32 offsetSeconds)
	{
		return CQt.QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds(offsetSeconds);
	}
	
	public static libqt_string IanaIdToWindowsId(String ianaId)
	{
		return CQt.QTimeZone_IanaIdToWindowsId(libqt_string(ianaId));
	}
	
	public static libqt_string WindowsIdToDefaultIanaId(String windowsId)
	{
		return CQt.QTimeZone_WindowsIdToDefaultIanaId(libqt_string(windowsId));
	}
	
	public static libqt_string WindowsIdToDefaultIanaId2(String windowsId, int64 territory)
	{
		return CQt.QTimeZone_WindowsIdToDefaultIanaId2(libqt_string(windowsId), territory);
	}
	
	public static libqt_string[] WindowsIdToIanaIds(String windowsId)
	{
		return CQt.QTimeZone_WindowsIdToIanaIds(libqt_string(windowsId));
	}
	
	public static libqt_string[] WindowsIdToIanaIds2(String windowsId, int64 territory)
	{
		return CQt.QTimeZone_WindowsIdToIanaIds2(libqt_string(windowsId), territory);
	}
	
	public libqt_string DisplayName2(IQDateTime atDateTime, int64 nameType)
	{
		return CQt.QTimeZone_DisplayName2(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr, nameType);
	}
	
	public libqt_string DisplayName3(IQDateTime atDateTime, int64 nameType, IQLocale locale)
	{
		return CQt.QTimeZone_DisplayName3(this.nativePtr, (atDateTime == default) ? default : (void*)atDateTime.NativePtr, nameType, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public libqt_string DisplayName22(int64 timeType, int64 nameType)
	{
		return CQt.QTimeZone_DisplayName22(this.nativePtr, timeType, nameType);
	}
	
	public libqt_string DisplayName32(int64 timeType, int64 nameType, IQLocale locale)
	{
		return CQt.QTimeZone_DisplayName32(this.nativePtr, timeType, nameType, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTimeZone_new")]
	public static extern void* QTimeZone_new();
	[LinkName("QTimeZone_new2")]
	public static extern void* QTimeZone_new2(libqt_string ianaId);
	[LinkName("QTimeZone_new3")]
	public static extern void* QTimeZone_new3(int32 offsetSeconds);
	[LinkName("QTimeZone_new4")]
	public static extern void* QTimeZone_new4(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation);
	[LinkName("QTimeZone_new5")]
	public static extern void* QTimeZone_new5(void* other);
	[LinkName("QTimeZone_new6")]
	public static extern void* QTimeZone_new6(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation, int64 territory);
	[LinkName("QTimeZone_new7")]
	public static extern void* QTimeZone_new7(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation, int64 territory, libqt_string comment);
	[LinkName("QTimeZone_OperatorAssign")]
	public static extern void QTimeZone_OperatorAssign(void* c_this, void* other);
	[LinkName("QTimeZone_Swap")]
	public static extern void QTimeZone_Swap(void* c_this, void* other);
	[LinkName("QTimeZone_IsValid")]
	public static extern bool QTimeZone_IsValid(void* c_this);
	[LinkName("QTimeZone_Id")]
	public static extern libqt_string QTimeZone_Id(void* c_this);
	[LinkName("QTimeZone_Territory")]
	public static extern int64 QTimeZone_Territory(void* c_this);
	[LinkName("QTimeZone_Country")]
	public static extern int64 QTimeZone_Country(void* c_this);
	[LinkName("QTimeZone_Comment")]
	public static extern libqt_string QTimeZone_Comment(void* c_this);
	[LinkName("QTimeZone_DisplayName")]
	public static extern libqt_string QTimeZone_DisplayName(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_DisplayNameWithTimeType")]
	public static extern libqt_string QTimeZone_DisplayNameWithTimeType(void* c_this, int64 timeType);
	[LinkName("QTimeZone_Abbreviation")]
	public static extern libqt_string QTimeZone_Abbreviation(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_OffsetFromUtc")]
	public static extern int32 QTimeZone_OffsetFromUtc(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_StandardTimeOffset")]
	public static extern int32 QTimeZone_StandardTimeOffset(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_DaylightTimeOffset")]
	public static extern int32 QTimeZone_DaylightTimeOffset(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_HasDaylightTime")]
	public static extern bool QTimeZone_HasDaylightTime(void* c_this);
	[LinkName("QTimeZone_IsDaylightTime")]
	public static extern bool QTimeZone_IsDaylightTime(void* c_this, void* atDateTime);
	[LinkName("QTimeZone_OffsetData")]
	public static extern void QTimeZone_OffsetData(void* c_this, void* forDateTime);
	[LinkName("QTimeZone_HasTransitions")]
	public static extern bool QTimeZone_HasTransitions(void* c_this);
	[LinkName("QTimeZone_NextTransition")]
	public static extern void QTimeZone_NextTransition(void* c_this, void* afterDateTime);
	[LinkName("QTimeZone_PreviousTransition")]
	public static extern void QTimeZone_PreviousTransition(void* c_this, void* beforeDateTime);
	[LinkName("QTimeZone_Transitions")]
	public static extern void[] QTimeZone_Transitions(void* c_this, void* fromDateTime, void* toDateTime);
	[LinkName("QTimeZone_SystemTimeZoneId")]
	public static extern libqt_string QTimeZone_SystemTimeZoneId();
	[LinkName("QTimeZone_SystemTimeZone")]
	public static extern void QTimeZone_SystemTimeZone();
	[LinkName("QTimeZone_Utc")]
	public static extern void QTimeZone_Utc();
	[LinkName("QTimeZone_IsTimeZoneIdAvailable")]
	public static extern bool QTimeZone_IsTimeZoneIdAvailable(libqt_string ianaId);
	[LinkName("QTimeZone_AvailableTimeZoneIds")]
	public static extern libqt_string[] QTimeZone_AvailableTimeZoneIds();
	[LinkName("QTimeZone_AvailableTimeZoneIdsWithTerritory")]
	public static extern libqt_string[] QTimeZone_AvailableTimeZoneIdsWithTerritory(int64 territory);
	[LinkName("QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds")]
	public static extern libqt_string[] QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds(int32 offsetSeconds);
	[LinkName("QTimeZone_IanaIdToWindowsId")]
	public static extern libqt_string QTimeZone_IanaIdToWindowsId(libqt_string ianaId);
	[LinkName("QTimeZone_WindowsIdToDefaultIanaId")]
	public static extern libqt_string QTimeZone_WindowsIdToDefaultIanaId(libqt_string windowsId);
	[LinkName("QTimeZone_WindowsIdToDefaultIanaId2")]
	public static extern libqt_string QTimeZone_WindowsIdToDefaultIanaId2(libqt_string windowsId, int64 territory);
	[LinkName("QTimeZone_WindowsIdToIanaIds")]
	public static extern libqt_string[] QTimeZone_WindowsIdToIanaIds(libqt_string windowsId);
	[LinkName("QTimeZone_WindowsIdToIanaIds2")]
	public static extern libqt_string[] QTimeZone_WindowsIdToIanaIds2(libqt_string windowsId, int64 territory);
	[LinkName("QTimeZone_DisplayName2")]
	public static extern libqt_string QTimeZone_DisplayName2(void* c_this, void* atDateTime, int64 nameType);
	[LinkName("QTimeZone_DisplayName3")]
	public static extern libqt_string QTimeZone_DisplayName3(void* c_this, void* atDateTime, int64 nameType, void* locale);
	[LinkName("QTimeZone_DisplayName22")]
	public static extern libqt_string QTimeZone_DisplayName22(void* c_this, int64 timeType, int64 nameType);
	[LinkName("QTimeZone_DisplayName32")]
	public static extern libqt_string QTimeZone_DisplayName32(void* c_this, int64 timeType, int64 nameType, void* locale);
	/// Delete this object from C++ memory
	[LinkName("QTimeZone_Delete")]
	public static extern void QTimeZone_Delete(void* self);
}
public interface IQTimeZone__OffsetData
{
	void* NativePtr { get; }
}
public class QTimeZone__OffsetData : IQTimeZone__OffsetData
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QTimeZone__OffsetData param1)
	{
		this.nativePtr = CQt.QTimeZone__OffsetData_new((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public ~this()
	{
		CQt.QTimeZone__OffsetData_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QTimeZone__OffsetData param1)
	{
		CQt.QTimeZone__OffsetData_OperatorAssign(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QTimeZone__OffsetData_new")]
	public static extern void* QTimeZone__OffsetData_new(void* param1);
	[LinkName("QTimeZone__OffsetData_OperatorAssign")]
	public static extern void QTimeZone__OffsetData_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QTimeZone__OffsetData_Delete")]
	public static extern void QTimeZone__OffsetData_Delete(void* self);
}