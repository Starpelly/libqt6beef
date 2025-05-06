using System;
using System.Interop;
namespace Qt;

public struct QPaintDeviceWindow : QPaintDevice
{
	[LinkName("QPaintDeviceWindow_MetaObject")]
	public static extern QMetaObject* QPaintDeviceWindow_MetaObject(Self* c_this);
	[LinkName("QPaintDeviceWindow_Metacast")]
	public static extern void* QPaintDeviceWindow_Metacast(Self* c_this, char8[] param1);
	[LinkName("QPaintDeviceWindow_Metacall")]
	public static extern int32 QPaintDeviceWindow_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPaintDeviceWindow_Tr")]
	public static extern libqt_string QPaintDeviceWindow_Tr(char8[] s);
	[LinkName("QPaintDeviceWindow_Update")]
	public static extern void QPaintDeviceWindow_Update(Self* c_this, QRect* rect);
	[LinkName("QPaintDeviceWindow_UpdateWithRegion")]
	public static extern void QPaintDeviceWindow_UpdateWithRegion(Self* c_this, QRegion* region);
	[LinkName("QPaintDeviceWindow_Update2")]
	public static extern void QPaintDeviceWindow_Update2(Self* c_this);
	[LinkName("QPaintDeviceWindow_ExposeEvent")]
	public static extern void QPaintDeviceWindow_ExposeEvent(Self* c_this, QExposeEvent* param1);
	[LinkName("QPaintDeviceWindow_PaintEvent")]
	public static extern void QPaintDeviceWindow_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QPaintDeviceWindow_Metric")]
	public static extern int32 QPaintDeviceWindow_Metric(Self* c_this, int64 metric);
	[LinkName("QPaintDeviceWindow_Event")]
	public static extern bool QPaintDeviceWindow_Event(Self* c_this, QEvent* event);
	[LinkName("QPaintDeviceWindow_Tr2")]
	public static extern libqt_string QPaintDeviceWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QPaintDeviceWindow_Tr3")]
	public static extern libqt_string QPaintDeviceWindow_Tr3(char8[] s, char8[] c, int32 n);
}