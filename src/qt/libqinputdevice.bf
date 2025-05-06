using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputDevice__DeviceType
{
	Unknown = 0,
	Mouse = 1,
	TouchScreen = 2,
	TouchPad = 4,
	Puck = 8,
	Stylus = 16,
	Airbrush = 32,
	Keyboard = 4096,
	AllDevices = 2147483647,
}
[AllowDuplicates]
public enum QInputDevice__Capability
{
	None = 0,
	Position = 1,
	Area = 2,
	Pressure = 4,
	Velocity = 8,
	NormalizedPosition = 32,
	MouseEmulation = 64,
	PixelScroll = 128,
	Scroll = 256,
	Hover = 512,
	Rotation = 1024,
	XTilt = 2048,
	YTilt = 4096,
	TangentialPressure = 8192,
	ZPosition = 16384,
	All = 2147483647,
}
public struct QInputDevice : QObject
{
	[LinkName("QInputDevice_new")]
	public static extern QInputDevice* QInputDevice_new();
	[LinkName("QInputDevice_new2")]
	public static extern QInputDevice* QInputDevice_new2(libqt_string name, int64 systemId, int64 typeVal);
	[LinkName("QInputDevice_new3")]
	public static extern QInputDevice* QInputDevice_new3(QObject* parent);
	[LinkName("QInputDevice_new4")]
	public static extern QInputDevice* QInputDevice_new4(libqt_string name, int64 systemId, int64 typeVal, libqt_string seatName);
	[LinkName("QInputDevice_new5")]
	public static extern QInputDevice* QInputDevice_new5(libqt_string name, int64 systemId, int64 typeVal, libqt_string seatName, QObject* parent);
	[LinkName("QInputDevice_MetaObject")]
	public static extern QMetaObject* QInputDevice_MetaObject(Self* c_this);
	[LinkName("QInputDevice_Metacast")]
	public static extern void* QInputDevice_Metacast(Self* c_this, char8[] param1);
	[LinkName("QInputDevice_Metacall")]
	public static extern int32 QInputDevice_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QInputDevice_Tr")]
	public static extern libqt_string QInputDevice_Tr(char8[] s);
	[LinkName("QInputDevice_Name")]
	public static extern libqt_string QInputDevice_Name(Self* c_this);
	[LinkName("QInputDevice_Type")]
	public static extern int64 QInputDevice_Type(Self* c_this);
	[LinkName("QInputDevice_Capabilities")]
	public static extern int64 QInputDevice_Capabilities(Self* c_this);
	[LinkName("QInputDevice_HasCapability")]
	public static extern bool QInputDevice_HasCapability(Self* c_this, int64 cap);
	[LinkName("QInputDevice_SystemId")]
	public static extern int64 QInputDevice_SystemId(Self* c_this);
	[LinkName("QInputDevice_SeatName")]
	public static extern libqt_string QInputDevice_SeatName(Self* c_this);
	[LinkName("QInputDevice_AvailableVirtualGeometry")]
	public static extern QRect QInputDevice_AvailableVirtualGeometry(Self* c_this);
	[LinkName("QInputDevice_SeatNames")]
	public static extern libqt_string[] QInputDevice_SeatNames();
	[LinkName("QInputDevice_Devices")]
	public static extern QInputDevice*[] QInputDevice_Devices();
	[LinkName("QInputDevice_PrimaryKeyboard")]
	public static extern QInputDevice* QInputDevice_PrimaryKeyboard();
	[LinkName("QInputDevice_OperatorEqual")]
	public static extern bool QInputDevice_OperatorEqual(Self* c_this, QInputDevice* other);
	[LinkName("QInputDevice_AvailableVirtualGeometryChanged")]
	public static extern void QInputDevice_AvailableVirtualGeometryChanged(Self* c_this, QRect area);
	[LinkName("QInputDevice_Tr2")]
	public static extern libqt_string QInputDevice_Tr2(char8[] s, char8[] c);
	[LinkName("QInputDevice_Tr3")]
	public static extern libqt_string QInputDevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QInputDevice_PrimaryKeyboard1")]
	public static extern QInputDevice* QInputDevice_PrimaryKeyboard1(libqt_string seatName);
}