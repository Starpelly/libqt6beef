using System;
using System.Interop;
namespace Qt;

public struct QStackedWidget : QFrame
{
	[LinkName("QStackedWidget_new")]
	public static extern QStackedWidget* QStackedWidget_new(QWidget* parent);
	[LinkName("QStackedWidget_new2")]
	public static extern QStackedWidget* QStackedWidget_new2();
	[LinkName("QStackedWidget_MetaObject")]
	public static extern QMetaObject* QStackedWidget_MetaObject(Self* c_this);
	[LinkName("QStackedWidget_Metacast")]
	public static extern void* QStackedWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStackedWidget_Metacall")]
	public static extern int32 QStackedWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStackedWidget_Tr")]
	public static extern libqt_string QStackedWidget_Tr(char8[] s);
	[LinkName("QStackedWidget_AddWidget")]
	public static extern int32 QStackedWidget_AddWidget(Self* c_this, QWidget* w);
	[LinkName("QStackedWidget_InsertWidget")]
	public static extern int32 QStackedWidget_InsertWidget(Self* c_this, int32 index, QWidget* w);
	[LinkName("QStackedWidget_RemoveWidget")]
	public static extern void QStackedWidget_RemoveWidget(Self* c_this, QWidget* w);
	[LinkName("QStackedWidget_CurrentWidget")]
	public static extern QWidget* QStackedWidget_CurrentWidget(Self* c_this);
	[LinkName("QStackedWidget_CurrentIndex")]
	public static extern int32 QStackedWidget_CurrentIndex(Self* c_this);
	[LinkName("QStackedWidget_IndexOf")]
	public static extern int32 QStackedWidget_IndexOf(Self* c_this, QWidget* param1);
	[LinkName("QStackedWidget_Widget")]
	public static extern QWidget* QStackedWidget_Widget(Self* c_this, int32 param1);
	[LinkName("QStackedWidget_Count")]
	public static extern int32 QStackedWidget_Count(Self* c_this);
	[LinkName("QStackedWidget_SetCurrentIndex")]
	public static extern void QStackedWidget_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QStackedWidget_SetCurrentWidget")]
	public static extern void QStackedWidget_SetCurrentWidget(Self* c_this, QWidget* w);
	[LinkName("QStackedWidget_CurrentChanged")]
	public static extern void QStackedWidget_CurrentChanged(Self* c_this, int32 param1);
	[LinkName("QStackedWidget_WidgetRemoved")]
	public static extern void QStackedWidget_WidgetRemoved(Self* c_this, int32 index);
	[LinkName("QStackedWidget_Event")]
	public static extern bool QStackedWidget_Event(Self* c_this, QEvent* e);
	[LinkName("QStackedWidget_Tr2")]
	public static extern libqt_string QStackedWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QStackedWidget_Tr3")]
	public static extern libqt_string QStackedWidget_Tr3(char8[] s, char8[] c, int32 n);
}