using System;
using System.Interop;
namespace Qt;

public struct QSizeGrip : QWidget
{
	[LinkName("QSizeGrip_new")]
	public static extern QSizeGrip* QSizeGrip_new(QWidget* parent);
	[LinkName("QSizeGrip_MetaObject")]
	public static extern QMetaObject* QSizeGrip_MetaObject(Self* c_this);
	[LinkName("QSizeGrip_Metacast")]
	public static extern void* QSizeGrip_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSizeGrip_Metacall")]
	public static extern int32 QSizeGrip_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSizeGrip_Tr")]
	public static extern libqt_string QSizeGrip_Tr(char8[] s);
	[LinkName("QSizeGrip_SizeHint")]
	public static extern QSize QSizeGrip_SizeHint(Self* c_this);
	[LinkName("QSizeGrip_SetVisible")]
	public static extern void QSizeGrip_SetVisible(Self* c_this, bool visible);
	[LinkName("QSizeGrip_PaintEvent")]
	public static extern void QSizeGrip_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QSizeGrip_MousePressEvent")]
	public static extern void QSizeGrip_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSizeGrip_MouseMoveEvent")]
	public static extern void QSizeGrip_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QSizeGrip_MouseReleaseEvent")]
	public static extern void QSizeGrip_MouseReleaseEvent(Self* c_this, QMouseEvent* mouseEvent);
	[LinkName("QSizeGrip_MoveEvent")]
	public static extern void QSizeGrip_MoveEvent(Self* c_this, QMoveEvent* moveEvent);
	[LinkName("QSizeGrip_ShowEvent")]
	public static extern void QSizeGrip_ShowEvent(Self* c_this, QShowEvent* showEvent);
	[LinkName("QSizeGrip_HideEvent")]
	public static extern void QSizeGrip_HideEvent(Self* c_this, QHideEvent* hideEvent);
	[LinkName("QSizeGrip_EventFilter")]
	public static extern bool QSizeGrip_EventFilter(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QSizeGrip_Event")]
	public static extern bool QSizeGrip_Event(Self* c_this, QEvent* param1);
	[LinkName("QSizeGrip_Tr2")]
	public static extern libqt_string QSizeGrip_Tr2(char8[] s, char8[] c);
	[LinkName("QSizeGrip_Tr3")]
	public static extern libqt_string QSizeGrip_Tr3(char8[] s, char8[] c, int32 n);
}