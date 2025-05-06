using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPointingDevice__PointerType
{
	Unknown = 0,
	Generic = 1,
	Finger = 2,
	Pen = 4,
	Eraser = 8,
	Cursor = 16,
	AllPointerTypes = 32767,
}
[AllowDuplicates]
public enum QPointingDevice__GrabTransition
{
	GrabPassive = 1,
	UngrabPassive = 2,
	CancelGrabPassive = 3,
	OverrideGrabPassive = 4,
	GrabExclusive = 16,
	UngrabExclusive = 32,
	CancelGrabExclusive = 48,
}
public struct QPointingDeviceUniqueId
{
	[LinkName("QPointingDeviceUniqueId_new")]
	public static extern void* QPointingDeviceUniqueId_new(QPointingDeviceUniqueId other);
	[LinkName("QPointingDeviceUniqueId_new2")]
	public static extern void* QPointingDeviceUniqueId_new2(QPointingDeviceUniqueId other);
	[LinkName("QPointingDeviceUniqueId_new3")]
	public static extern void* QPointingDeviceUniqueId_new3();
	[LinkName("QPointingDeviceUniqueId_new4")]
	public static extern void* QPointingDeviceUniqueId_new4(QPointingDeviceUniqueId param1);
	[LinkName("QPointingDeviceUniqueId_FromNumericId")]
	public static extern QPointingDeviceUniqueId QPointingDeviceUniqueId_FromNumericId(int64 id);
	[LinkName("QPointingDeviceUniqueId_IsValid")]
	public static extern bool QPointingDeviceUniqueId_IsValid(void* c_this);
	[LinkName("QPointingDeviceUniqueId_NumericId")]
	public static extern int64 QPointingDeviceUniqueId_NumericId(void* c_this);
}
public struct QPointingDevice
{
	[LinkName("QPointingDevice_new")]
	public static extern void* QPointingDevice_new();
	[LinkName("QPointingDevice_new2")]
	public static extern void* QPointingDevice_new2(char8[] name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount);
	[LinkName("QPointingDevice_new3")]
	public static extern void* QPointingDevice_new3(QObject parent);
	[LinkName("QPointingDevice_new4")]
	public static extern void* QPointingDevice_new4(char8[] name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, char8[] seatName);
	[LinkName("QPointingDevice_new5")]
	public static extern void* QPointingDevice_new5(char8[] name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, char8[] seatName, QPointingDeviceUniqueId uniqueId);
	[LinkName("QPointingDevice_new6")]
	public static extern void* QPointingDevice_new6(char8[] name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, char8[] seatName, QPointingDeviceUniqueId uniqueId, QObject parent);
	[LinkName("QPointingDevice_MetaObject")]
	public static extern QMetaObject QPointingDevice_MetaObject(void* c_this);
	[LinkName("QPointingDevice_Metacast")]
	public static extern void QPointingDevice_Metacast(void* c_this, char8[] param1);
	[LinkName("QPointingDevice_Metacall")]
	public static extern int32 QPointingDevice_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPointingDevice_Tr")]
	public static extern char8[] QPointingDevice_Tr(char8[] s);
	[LinkName("QPointingDevice_SetType")]
	public static extern void QPointingDevice_SetType(void* c_this, int64 devType);
	[LinkName("QPointingDevice_SetCapabilities")]
	public static extern void QPointingDevice_SetCapabilities(void* c_this, int64 caps);
	[LinkName("QPointingDevice_SetMaximumTouchPoints")]
	public static extern void QPointingDevice_SetMaximumTouchPoints(void* c_this, int32 c);
	[LinkName("QPointingDevice_PointerType")]
	public static extern int64 QPointingDevice_PointerType(void* c_this);
	[LinkName("QPointingDevice_MaximumPoints")]
	public static extern int32 QPointingDevice_MaximumPoints(void* c_this);
	[LinkName("QPointingDevice_ButtonCount")]
	public static extern int32 QPointingDevice_ButtonCount(void* c_this);
	[LinkName("QPointingDevice_UniqueId")]
	public static extern QPointingDeviceUniqueId QPointingDevice_UniqueId(void* c_this);
	[LinkName("QPointingDevice_PrimaryPointingDevice")]
	public static extern QPointingDevice QPointingDevice_PrimaryPointingDevice();
	[LinkName("QPointingDevice_OperatorEqual")]
	public static extern bool QPointingDevice_OperatorEqual(void* c_this, QPointingDevice other);
	[LinkName("QPointingDevice_GrabChanged")]
	public static extern void QPointingDevice_GrabChanged(void* c_this, QObject grabber, int64 transition, QPointerEvent event, QEventPoint point);
	[LinkName("QPointingDevice_Tr2")]
	public static extern char8[] QPointingDevice_Tr2(char8[] s, char8[] c);
	[LinkName("QPointingDevice_Tr3")]
	public static extern char8[] QPointingDevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QPointingDevice_PrimaryPointingDevice1")]
	public static extern QPointingDevice QPointingDevice_PrimaryPointingDevice1(char8[] seatName);
}