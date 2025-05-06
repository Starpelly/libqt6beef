using System;
using System.Interop;
namespace Qt;

public struct QPaintDeviceWindow
{
	[LinkName("QPaintDeviceWindow_MetaObject")]
	public static extern QMetaObject QPaintDeviceWindow_MetaObject(void* c_this);
	[LinkName("QPaintDeviceWindow_Metacast")]
	public static extern void QPaintDeviceWindow_Metacast(void* c_this, char8[] param1);
	[LinkName("QPaintDeviceWindow_Metacall")]
	public static extern int32 QPaintDeviceWindow_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QPaintDeviceWindow_Tr")]
	public static extern char8[] QPaintDeviceWindow_Tr(char8[] s);
	[LinkName("QPaintDeviceWindow_Update")]
	public static extern void QPaintDeviceWindow_Update(void* c_this, QRect rect);
	[LinkName("QPaintDeviceWindow_UpdateWithRegion")]
	public static extern void QPaintDeviceWindow_UpdateWithRegion(void* c_this, QRegion region);
	[LinkName("QPaintDeviceWindow_Update2")]
	public static extern void QPaintDeviceWindow_Update2(void* c_this);
	[LinkName("QPaintDeviceWindow_ExposeEvent")]
	public static extern void QPaintDeviceWindow_ExposeEvent(void* c_this, QExposeEvent param1);
	[LinkName("QPaintDeviceWindow_PaintEvent")]
	public static extern void QPaintDeviceWindow_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QPaintDeviceWindow_Metric")]
	public static extern int32 QPaintDeviceWindow_Metric(void* c_this, int64 metric);
	[LinkName("QPaintDeviceWindow_Event")]
	public static extern bool QPaintDeviceWindow_Event(void* c_this, QEvent event);
	[LinkName("QPaintDeviceWindow_Tr2")]
	public static extern char8[] QPaintDeviceWindow_Tr2(char8[] s, char8[] c);
	[LinkName("QPaintDeviceWindow_Tr3")]
	public static extern char8[] QPaintDeviceWindow_Tr3(char8[] s, char8[] c, int32 n);
}