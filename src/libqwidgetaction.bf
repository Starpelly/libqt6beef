using System;
using System.Interop;
namespace Qt;

public struct QWidgetAction
{
	[LinkName("QWidgetAction_new")]
	public static extern void* QWidgetAction_new(QObject parent);
	[LinkName("QWidgetAction_MetaObject")]
	public static extern QMetaObject QWidgetAction_MetaObject(void* c_this);
	[LinkName("QWidgetAction_Metacast")]
	public static extern void QWidgetAction_Metacast(void* c_this, char8[] param1);
	[LinkName("QWidgetAction_Metacall")]
	public static extern int32 QWidgetAction_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QWidgetAction_Tr")]
	public static extern char8[] QWidgetAction_Tr(char8[] s);
	[LinkName("QWidgetAction_SetDefaultWidget")]
	public static extern void QWidgetAction_SetDefaultWidget(void* c_this, QWidget w);
	[LinkName("QWidgetAction_DefaultWidget")]
	public static extern QWidget QWidgetAction_DefaultWidget(void* c_this);
	[LinkName("QWidgetAction_RequestWidget")]
	public static extern QWidget QWidgetAction_RequestWidget(void* c_this, QWidget parent);
	[LinkName("QWidgetAction_ReleaseWidget")]
	public static extern void QWidgetAction_ReleaseWidget(void* c_this, QWidget widget);
	[LinkName("QWidgetAction_Event")]
	public static extern bool QWidgetAction_Event(void* c_this, QEvent param1);
	[LinkName("QWidgetAction_EventFilter")]
	public static extern bool QWidgetAction_EventFilter(void* c_this, QObject param1, QEvent param2);
	[LinkName("QWidgetAction_CreateWidget")]
	public static extern QWidget QWidgetAction_CreateWidget(void* c_this, QWidget parent);
	[LinkName("QWidgetAction_DeleteWidget")]
	public static extern void QWidgetAction_DeleteWidget(void* c_this, QWidget widget);
	[LinkName("QWidgetAction_CreatedWidgets")]
	public static extern QWidget[] QWidgetAction_CreatedWidgets(void* c_this);
	[LinkName("QWidgetAction_Tr2")]
	public static extern char8[] QWidgetAction_Tr2(char8[] s, char8[] c);
	[LinkName("QWidgetAction_Tr3")]
	public static extern char8[] QWidgetAction_Tr3(char8[] s, char8[] c, int32 n);
}