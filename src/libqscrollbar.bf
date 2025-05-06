using System;
using System.Interop;
namespace Qt;

public struct QScrollBar
{
	[LinkName("QScrollBar_new")]
	public static extern void* QScrollBar_new(QWidget parent);
	[LinkName("QScrollBar_new2")]
	public static extern void* QScrollBar_new2();
	[LinkName("QScrollBar_new3")]
	public static extern void* QScrollBar_new3(int64 param1);
	[LinkName("QScrollBar_new4")]
	public static extern void* QScrollBar_new4(int64 param1, QWidget parent);
	[LinkName("QScrollBar_MetaObject")]
	public static extern QMetaObject QScrollBar_MetaObject(void* c_this);
	[LinkName("QScrollBar_Metacast")]
	public static extern void QScrollBar_Metacast(void* c_this, char8[] param1);
	[LinkName("QScrollBar_Metacall")]
	public static extern int32 QScrollBar_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QScrollBar_Tr")]
	public static extern char8[] QScrollBar_Tr(char8[] s);
	[LinkName("QScrollBar_SizeHint")]
	public static extern QSize QScrollBar_SizeHint(void* c_this);
	[LinkName("QScrollBar_Event")]
	public static extern bool QScrollBar_Event(void* c_this, QEvent event);
	[LinkName("QScrollBar_WheelEvent")]
	public static extern void QScrollBar_WheelEvent(void* c_this, QWheelEvent param1);
	[LinkName("QScrollBar_PaintEvent")]
	public static extern void QScrollBar_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QScrollBar_MousePressEvent")]
	public static extern void QScrollBar_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QScrollBar_MouseReleaseEvent")]
	public static extern void QScrollBar_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QScrollBar_MouseMoveEvent")]
	public static extern void QScrollBar_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QScrollBar_HideEvent")]
	public static extern void QScrollBar_HideEvent(void* c_this, QHideEvent param1);
	[LinkName("QScrollBar_SliderChange")]
	public static extern void QScrollBar_SliderChange(void* c_this, int64 change);
	[LinkName("QScrollBar_ContextMenuEvent")]
	public static extern void QScrollBar_ContextMenuEvent(void* c_this, QContextMenuEvent param1);
	[LinkName("QScrollBar_InitStyleOption")]
	public static extern void QScrollBar_InitStyleOption(void* c_this, QStyleOptionSlider option);
	[LinkName("QScrollBar_Tr2")]
	public static extern char8[] QScrollBar_Tr2(char8[] s, char8[] c);
	[LinkName("QScrollBar_Tr3")]
	public static extern char8[] QScrollBar_Tr3(char8[] s, char8[] c, int32 n);
}