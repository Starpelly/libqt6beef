using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSlider__TickPosition
{
	NoTicks = 0,
	TicksAbove = 1,
	TicksLeft = 1,
	TicksBelow = 2,
	TicksRight = 2,
	TicksBothSides = 3,
}
public struct QSlider
{
	[LinkName("QSlider_new")]
	public static extern void* QSlider_new(QWidget parent);
	[LinkName("QSlider_new2")]
	public static extern void* QSlider_new2();
	[LinkName("QSlider_new3")]
	public static extern void* QSlider_new3(int64 orientation);
	[LinkName("QSlider_new4")]
	public static extern void* QSlider_new4(int64 orientation, QWidget parent);
	[LinkName("QSlider_MetaObject")]
	public static extern QMetaObject QSlider_MetaObject(void* c_this);
	[LinkName("QSlider_Metacast")]
	public static extern void QSlider_Metacast(void* c_this, char8[] param1);
	[LinkName("QSlider_Metacall")]
	public static extern int32 QSlider_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSlider_Tr")]
	public static extern char8[] QSlider_Tr(char8[] s);
	[LinkName("QSlider_SizeHint")]
	public static extern QSize QSlider_SizeHint(void* c_this);
	[LinkName("QSlider_MinimumSizeHint")]
	public static extern QSize QSlider_MinimumSizeHint(void* c_this);
	[LinkName("QSlider_SetTickPosition")]
	public static extern void QSlider_SetTickPosition(void* c_this, int64 position);
	[LinkName("QSlider_TickPosition")]
	public static extern int64 QSlider_TickPosition(void* c_this);
	[LinkName("QSlider_SetTickInterval")]
	public static extern void QSlider_SetTickInterval(void* c_this, int32 ti);
	[LinkName("QSlider_TickInterval")]
	public static extern int32 QSlider_TickInterval(void* c_this);
	[LinkName("QSlider_Event")]
	public static extern bool QSlider_Event(void* c_this, QEvent event);
	[LinkName("QSlider_PaintEvent")]
	public static extern void QSlider_PaintEvent(void* c_this, QPaintEvent ev);
	[LinkName("QSlider_MousePressEvent")]
	public static extern void QSlider_MousePressEvent(void* c_this, QMouseEvent ev);
	[LinkName("QSlider_MouseReleaseEvent")]
	public static extern void QSlider_MouseReleaseEvent(void* c_this, QMouseEvent ev);
	[LinkName("QSlider_MouseMoveEvent")]
	public static extern void QSlider_MouseMoveEvent(void* c_this, QMouseEvent ev);
	[LinkName("QSlider_InitStyleOption")]
	public static extern void QSlider_InitStyleOption(void* c_this, QStyleOptionSlider option);
	[LinkName("QSlider_Tr2")]
	public static extern char8[] QSlider_Tr2(char8[] s, char8[] c);
	[LinkName("QSlider_Tr3")]
	public static extern char8[] QSlider_Tr3(char8[] s, char8[] c, int32 n);
}