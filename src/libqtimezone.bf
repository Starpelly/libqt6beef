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
public struct QTimeZone
{
	[LinkName("QTimeZone_new")]
	public static extern void* QTimeZone_new();
	[LinkName("QTimeZone_new2")]
	public static extern void* QTimeZone_new2(uint8[] ianaId);
	[LinkName("QTimeZone_new3")]
	public static extern void* QTimeZone_new3(int32 offsetSeconds);
	[LinkName("QTimeZone_new4")]
	public static extern void* QTimeZone_new4(uint8[] zoneId, int32 offsetSeconds, char8[] name, char8[] abbreviation);
	[LinkName("QTimeZone_new5")]
	public static extern void* QTimeZone_new5(QTimeZone other);
	[LinkName("QTimeZone_new6")]
	public static extern void* QTimeZone_new6(uint8[] zoneId, int32 offsetSeconds, char8[] name, char8[] abbreviation, int64 territory);
	[LinkName("QTimeZone_new7")]
	public static extern void* QTimeZone_new7(uint8[] zoneId, int32 offsetSeconds, char8[] name, char8[] abbreviation, int64 territory, char8[] comment);
	[LinkName("QTimeZone_OperatorAssign")]
	public static extern void QTimeZone_OperatorAssign(void* c_this, QTimeZone other);
	[LinkName("QTimeZone_Swap")]
	public static extern void QTimeZone_Swap(void* c_this, QTimeZone other);
	[LinkName("QTimeZone_IsValid")]
	public static extern bool QTimeZone_IsValid(void* c_this);
	[LinkName("QTimeZone_Id")]
	public static extern uint8[] QTimeZone_Id(void* c_this);
	[LinkName("QTimeZone_Territory")]
	public static extern int64 QTimeZone_Territory(void* c_this);
	[LinkName("QTimeZone_Country")]
	public static extern int64 QTimeZone_Country(void* c_this);
	[LinkName("QTimeZone_Comment")]
	public static extern char8[] QTimeZone_Comment(void* c_this);
	[LinkName("QTimeZone_DisplayName")]
	public static extern char8[] QTimeZone_DisplayName(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_DisplayNameWithTimeType")]
	public static extern char8[] QTimeZone_DisplayNameWithTimeType(void* c_this, int64 timeType);
	[LinkName("QTimeZone_Abbreviation")]
	public static extern char8[] QTimeZone_Abbreviation(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_OffsetFromUtc")]
	public static extern int32 QTimeZone_OffsetFromUtc(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_StandardTimeOffset")]
	public static extern int32 QTimeZone_StandardTimeOffset(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_DaylightTimeOffset")]
	public static extern int32 QTimeZone_DaylightTimeOffset(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_HasDaylightTime")]
	public static extern bool QTimeZone_HasDaylightTime(void* c_this);
	[LinkName("QTimeZone_IsDaylightTime")]
	public static extern bool QTimeZone_IsDaylightTime(void* c_this, QDateTime atDateTime);
	[LinkName("QTimeZone_OffsetData")]
	public static extern QTimeZone__OffsetData QTimeZone_OffsetData(void* c_this, QDateTime forDateTime);
	[LinkName("QTimeZone_HasTransitions")]
	public static extern bool QTimeZone_HasTransitions(void* c_this);
	[LinkName("QTimeZone_NextTransition")]
	public static extern QTimeZone__OffsetData QTimeZone_NextTransition(void* c_this, QDateTime afterDateTime);
	[LinkName("QTimeZone_PreviousTransition")]
	public static extern QTimeZone__OffsetData QTimeZone_PreviousTransition(void* c_this, QDateTime beforeDateTime);
	[LinkName("QTimeZone_Transitions")]
	public static extern QTimeZone__OffsetData[] QTimeZone_Transitions(void* c_this, QDateTime fromDateTime, QDateTime toDateTime);
	[LinkName("QTimeZone_SystemTimeZoneId")]
	public static extern uint8[] QTimeZone_SystemTimeZoneId();
	[LinkName("QTimeZone_SystemTimeZone")]
	public static extern QTimeZone QTimeZone_SystemTimeZone();
	[LinkName("QTimeZone_Utc")]
	public static extern QTimeZone QTimeZone_Utc();
	[LinkName("QTimeZone_IsTimeZoneIdAvailable")]
	public static extern bool QTimeZone_IsTimeZoneIdAvailable(uint8[] ianaId);
	[LinkName("QTimeZone_AvailableTimeZoneIds")]
	public static extern uint8[][] QTimeZone_AvailableTimeZoneIds();
	[LinkName("QTimeZone_AvailableTimeZoneIdsWithTerritory")]
	public static extern uint8[][] QTimeZone_AvailableTimeZoneIdsWithTerritory(int64 territory);
	[LinkName("QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds")]
	public static extern uint8[][] QTimeZone_AvailableTimeZoneIdsWithOffsetSeconds(int32 offsetSeconds);
	[LinkName("QTimeZone_IanaIdToWindowsId")]
	public static extern uint8[] QTimeZone_IanaIdToWindowsId(uint8[] ianaId);
	[LinkName("QTimeZone_WindowsIdToDefaultIanaId")]
	public static extern uint8[] QTimeZone_WindowsIdToDefaultIanaId(uint8[] windowsId);
	[LinkName("QTimeZone_WindowsIdToDefaultIanaId2")]
	public static extern uint8[] QTimeZone_WindowsIdToDefaultIanaId2(uint8[] windowsId, int64 territory);
	[LinkName("QTimeZone_WindowsIdToIanaIds")]
	public static extern uint8[][] QTimeZone_WindowsIdToIanaIds(uint8[] windowsId);
	[LinkName("QTimeZone_WindowsIdToIanaIds2")]
	public static extern uint8[][] QTimeZone_WindowsIdToIanaIds2(uint8[] windowsId, int64 territory);
	[LinkName("QTimeZone_DisplayName2")]
	public static extern char8[] QTimeZone_DisplayName2(void* c_this, QDateTime atDateTime, int64 nameType);
	[LinkName("QTimeZone_DisplayName3")]
	public static extern char8[] QTimeZone_DisplayName3(void* c_this, QDateTime atDateTime, int64 nameType, QLocale locale);
	[LinkName("QTimeZone_DisplayName22")]
	public static extern char8[] QTimeZone_DisplayName22(void* c_this, int64 timeType, int64 nameType);
	[LinkName("QTimeZone_DisplayName32")]
	public static extern char8[] QTimeZone_DisplayName32(void* c_this, int64 timeType, int64 nameType, QLocale locale);
}
public struct QTimeZone__OffsetData
{
	[LinkName("QTimeZone__OffsetData_new")]
	public static extern void* QTimeZone__OffsetData_new(QTimeZone__OffsetData param1);
	[LinkName("QTimeZone__OffsetData_OperatorAssign")]
	public static extern void QTimeZone__OffsetData_OperatorAssign(void* c_this, QTimeZone__OffsetData param1);
}