using System;
using System.Interop;
namespace Qt;

public struct QFocusFrame
{
	[LinkName("QFocusFrame_new")]
	public static extern void* QFocusFrame_new(QWidget parent);
	[LinkName("QFocusFrame_new2")]
	public static extern void* QFocusFrame_new2();
	[LinkName("QFocusFrame_MetaObject")]
	public static extern QMetaObject QFocusFrame_MetaObject(void* c_this);
	[LinkName("QFocusFrame_Metacast")]
	public static extern void QFocusFrame_Metacast(void* c_this, char8[] param1);
	[LinkName("QFocusFrame_Metacall")]
	public static extern int32 QFocusFrame_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFocusFrame_Tr")]
	public static extern char8[] QFocusFrame_Tr(char8[] s);
	[LinkName("QFocusFrame_SetWidget")]
	public static extern void QFocusFrame_SetWidget(void* c_this, QWidget widget);
	[LinkName("QFocusFrame_Widget")]
	public static extern QWidget QFocusFrame_Widget(void* c_this);
	[LinkName("QFocusFrame_Event")]
	public static extern bool QFocusFrame_Event(void* c_this, QEvent e);
	[LinkName("QFocusFrame_EventFilter")]
	public static extern bool QFocusFrame_EventFilter(void* c_this, QObject param1, QEvent param2);
	[LinkName("QFocusFrame_PaintEvent")]
	public static extern void QFocusFrame_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QFocusFrame_InitStyleOption")]
	public static extern void QFocusFrame_InitStyleOption(void* c_this, QStyleOption option);
	[LinkName("QFocusFrame_Tr2")]
	public static extern char8[] QFocusFrame_Tr2(char8[] s, char8[] c);
	[LinkName("QFocusFrame_Tr3")]
	public static extern char8[] QFocusFrame_Tr3(char8[] s, char8[] c, int32 n);
}