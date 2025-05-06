using System;
using System.Interop;
namespace Qt;

public struct QScrollArea : QAbstractScrollArea
{
	[LinkName("QScrollArea_new")]
	public static extern QScrollArea* QScrollArea_new(QWidget* parent);
	[LinkName("QScrollArea_new2")]
	public static extern QScrollArea* QScrollArea_new2();
	[LinkName("QScrollArea_MetaObject")]
	public static extern QMetaObject* QScrollArea_MetaObject(Self* c_this);
	[LinkName("QScrollArea_Metacast")]
	public static extern void* QScrollArea_Metacast(Self* c_this, char8[] param1);
	[LinkName("QScrollArea_Metacall")]
	public static extern int32 QScrollArea_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QScrollArea_Tr")]
	public static extern libqt_string QScrollArea_Tr(char8[] s);
	[LinkName("QScrollArea_Widget")]
	public static extern QWidget* QScrollArea_Widget(Self* c_this);
	[LinkName("QScrollArea_SetWidget")]
	public static extern void QScrollArea_SetWidget(Self* c_this, QWidget* widget);
	[LinkName("QScrollArea_TakeWidget")]
	public static extern QWidget* QScrollArea_TakeWidget(Self* c_this);
	[LinkName("QScrollArea_WidgetResizable")]
	public static extern bool QScrollArea_WidgetResizable(Self* c_this);
	[LinkName("QScrollArea_SetWidgetResizable")]
	public static extern void QScrollArea_SetWidgetResizable(Self* c_this, bool resizable);
	[LinkName("QScrollArea_SizeHint")]
	public static extern QSize QScrollArea_SizeHint(Self* c_this);
	[LinkName("QScrollArea_FocusNextPrevChild")]
	public static extern bool QScrollArea_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QScrollArea_Alignment")]
	public static extern int64 QScrollArea_Alignment(Self* c_this);
	[LinkName("QScrollArea_SetAlignment")]
	public static extern void QScrollArea_SetAlignment(Self* c_this, int64 alignment);
	[LinkName("QScrollArea_EnsureVisible")]
	public static extern void QScrollArea_EnsureVisible(Self* c_this, int32 x, int32 y);
	[LinkName("QScrollArea_EnsureWidgetVisible")]
	public static extern void QScrollArea_EnsureWidgetVisible(Self* c_this, QWidget* childWidget);
	[LinkName("QScrollArea_Event")]
	public static extern bool QScrollArea_Event(Self* c_this, QEvent* param1);
	[LinkName("QScrollArea_EventFilter")]
	public static extern bool QScrollArea_EventFilter(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QScrollArea_ResizeEvent")]
	public static extern void QScrollArea_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QScrollArea_ScrollContentsBy")]
	public static extern void QScrollArea_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QScrollArea_ViewportSizeHint")]
	public static extern QSize QScrollArea_ViewportSizeHint(Self* c_this);
	[LinkName("QScrollArea_Tr2")]
	public static extern libqt_string QScrollArea_Tr2(char8[] s, char8[] c);
	[LinkName("QScrollArea_Tr3")]
	public static extern libqt_string QScrollArea_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QScrollArea_EnsureVisible3")]
	public static extern void QScrollArea_EnsureVisible3(Self* c_this, int32 x, int32 y, int32 xmargin);
	[LinkName("QScrollArea_EnsureVisible4")]
	public static extern void QScrollArea_EnsureVisible4(Self* c_this, int32 x, int32 y, int32 xmargin, int32 ymargin);
	[LinkName("QScrollArea_EnsureWidgetVisible2")]
	public static extern void QScrollArea_EnsureWidgetVisible2(Self* c_this, QWidget* childWidget, int32 xmargin);
	[LinkName("QScrollArea_EnsureWidgetVisible3")]
	public static extern void QScrollArea_EnsureWidgetVisible3(Self* c_this, QWidget* childWidget, int32 xmargin, int32 ymargin);
}