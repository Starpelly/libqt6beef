using System;
using System.Interop;
namespace Qt;

public struct QDial
{
	[LinkName("QDial_new")]
	public static extern void* QDial_new(QWidget parent);
	[LinkName("QDial_new2")]
	public static extern void* QDial_new2();
	[LinkName("QDial_MetaObject")]
	public static extern QMetaObject QDial_MetaObject(void* c_this);
	[LinkName("QDial_Metacast")]
	public static extern void QDial_Metacast(void* c_this, char8[] param1);
	[LinkName("QDial_Metacall")]
	public static extern int32 QDial_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDial_Tr")]
	public static extern char8[] QDial_Tr(char8[] s);
	[LinkName("QDial_Wrapping")]
	public static extern bool QDial_Wrapping(void* c_this);
	[LinkName("QDial_NotchSize")]
	public static extern int32 QDial_NotchSize(void* c_this);
	[LinkName("QDial_SetNotchTarget")]
	public static extern void QDial_SetNotchTarget(void* c_this, double target);
	[LinkName("QDial_NotchTarget")]
	public static extern double QDial_NotchTarget(void* c_this);
	[LinkName("QDial_NotchesVisible")]
	public static extern bool QDial_NotchesVisible(void* c_this);
	[LinkName("QDial_SizeHint")]
	public static extern QSize QDial_SizeHint(void* c_this);
	[LinkName("QDial_MinimumSizeHint")]
	public static extern QSize QDial_MinimumSizeHint(void* c_this);
	[LinkName("QDial_SetNotchesVisible")]
	public static extern void QDial_SetNotchesVisible(void* c_this, bool visible);
	[LinkName("QDial_SetWrapping")]
	public static extern void QDial_SetWrapping(void* c_this, bool on);
	[LinkName("QDial_Event")]
	public static extern bool QDial_Event(void* c_this, QEvent e);
	[LinkName("QDial_ResizeEvent")]
	public static extern void QDial_ResizeEvent(void* c_this, QResizeEvent re);
	[LinkName("QDial_PaintEvent")]
	public static extern void QDial_PaintEvent(void* c_this, QPaintEvent pe);
	[LinkName("QDial_MousePressEvent")]
	public static extern void QDial_MousePressEvent(void* c_this, QMouseEvent me);
	[LinkName("QDial_MouseReleaseEvent")]
	public static extern void QDial_MouseReleaseEvent(void* c_this, QMouseEvent me);
	[LinkName("QDial_MouseMoveEvent")]
	public static extern void QDial_MouseMoveEvent(void* c_this, QMouseEvent me);
	[LinkName("QDial_SliderChange")]
	public static extern void QDial_SliderChange(void* c_this, int64 change);
	[LinkName("QDial_InitStyleOption")]
	public static extern void QDial_InitStyleOption(void* c_this, QStyleOptionSlider option);
	[LinkName("QDial_Tr2")]
	public static extern char8[] QDial_Tr2(char8[] s, char8[] c);
	[LinkName("QDial_Tr3")]
	public static extern char8[] QDial_Tr3(char8[] s, char8[] c, int32 n);
}