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
	public static extern QTimeZone* QTimeZone_new();
	[LinkName("QTimeZone_new2")]
	public static extern QTimeZone* QTimeZone_new2(libqt_string ianaId);
	[LinkName("QTimeZone_new3")]
	public static extern QTimeZone* QTimeZone_new3(int32 offsetSeconds);
	[LinkName("QTimeZone_new4")]
	public static extern QTimeZone* QTimeZone_new4(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation);
	[LinkName("QTimeZone_new5")]
	public static extern QTimeZone* QTimeZone_new5(QTimeZone* other);
	[LinkName("QTimeZone_new6")]
	public static extern QTimeZone* QTimeZone_new6(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation, int64 territory);
	[LinkName("QTimeZone_new7")]
	public static extern QTimeZone* QTimeZone_new7(libqt_string zoneId, int32 offsetSeconds, libqt_string name, libqt_string abbreviation, int64 territory, libqt_string comment);
	[LinkName("QTimeZone_OperatorAssign")]
	public static extern void QTimeZone_OperatorAssign(Self* c_this, QTimeZone* other);
	[LinkName("QTimeZone_Swap")]
	public static extern void QTimeZone_Swap(Self* c_this, QTimeZone* other);
	[LinkName("QTimeZone_IsValid")]
	public static extern bool QTimeZone_IsValid(Self* c_this);
	[LinkName("QTimeZone_Id")]
	public static extern libqt_string QTimeZone_Id(Self* c_this);
	[LinkName("QTimeZone_Territory")]
	public static extern int64 QTimeZone_Territory(Self* c_this);
	[LinkName("QTimeZone_Country")]
	public static extern int64 QTimeZone_Country(Self* c_this);
	[LinkName("QTimeZone_Comment")]
	public static extern libqt_string QTimeZone_Comment(Self* c_this);
	[LinkName("QTimeZone_DisplayName")]
	public static extern libqt_string QTimeZone_DisplayName(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_DisplayNameWithTimeType")]
	public static extern libqt_string QTimeZone_DisplayNameWithTimeType(Self* c_this, int64 timeType);
	[LinkName("QTimeZone_Abbreviation")]
	public static extern libqt_string QTimeZone_Abbreviation(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_OffsetFromUtc")]
	public static extern int32 QTimeZone_OffsetFromUtc(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_StandardTimeOffset")]
	public static extern int32 QTimeZone_StandardTimeOffset(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_DaylightTimeOffset")]
	public static extern int32 QTimeZone_DaylightTimeOffset(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_HasDaylightTime")]
	public static extern bool QTimeZone_HasDaylightTime(Self* c_this);
	[LinkName("QTimeZone_IsDaylightTime")]
	public static extern bool QTimeZone_IsDaylightTime(Self* c_this, QDateTime* atDateTime);
	[LinkName("QTimeZone_OffsetData")]
	public static extern QTimeZone__OffsetData QTimeZone_OffsetData(Self* c_this, QDateTime* forDateTime);
	[LinkName("QTimeZone_HasTransitions")]
	public static extern bool QTimeZone_HasTransitions(Self* c_this);
	[LinkName("QTimeZone_NextTransition")]
	public static extern QTimeZone__OffsetData QTimeZone_NextTransition(Self* c_this, QDateTime* afterDateTime);
	[LinkName("QTimeZone_PreviousTransition")]
	public static extern QTimeZone__OffsetData QTimeZone_PreviousTransition(Self* c_this, QDateTime* beforeDateTime);
	[LinkName("QTimeZone_Transitions")]
	public static extern QTimeZone__OffsetData[] QTimeZone_Transitions(Self* c_this, QDateTime* fromDateTime, QDateTime* toDateTime);
	[LinkName("QTimeZone_SystemTimeZoneId")]
	public static extern libqt_string QTimeZone_SystemTimeZoneId();
	[LinkName("QTimeZone_SystemTimeZone")]
	public static extern QTimeZone QTimeZone_SystemTimeZone();
	[LinkName("QTimeZone_Utc")]
	public static extern QTimeZone QTimeZone_Utc();
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
	public static extern libqt_string QTimeZone_DisplayName2(Self* c_this, QDateTime* atDateTime, int64 nameType);
	[LinkName("QTimeZone_DisplayName3")]
	public static extern libqt_string QTimeZone_DisplayName3(Self* c_this, QDateTime* atDateTime, int64 nameType, QLocale* locale);
	[LinkName("QTimeZone_DisplayName22")]
	public static extern libqt_string QTimeZone_DisplayName22(Self* c_this, int64 timeType, int64 nameType);
	[LinkName("QTimeZone_DisplayName32")]
	public static extern libqt_string QTimeZone_DisplayName32(Self* c_this, int64 timeType, int64 nameType, QLocale* locale);
}
public struct QTimeZone__OffsetData
{
	[LinkName("QTimeZone__OffsetData_new")]
	public static extern QTimeZone__OffsetData* QTimeZone__OffsetData_new(QTimeZone__OffsetData* param1);
	[LinkName("QTimeZone__OffsetData_OperatorAssign")]
	public static extern void QTimeZone__OffsetData_OperatorAssign(Self* c_this, QTimeZone__OffsetData* param1);
}