using System;
using System.Interop;
namespace Qt;

public struct QDrag : QObject
{
	[LinkName("QDrag_new")]
	public static extern QDrag* QDrag_new(QObject* dragSource);
	[LinkName("QDrag_MetaObject")]
	public static extern QMetaObject* QDrag_MetaObject(Self* c_this);
	[LinkName("QDrag_Metacast")]
	public static extern void* QDrag_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDrag_Metacall")]
	public static extern int32 QDrag_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDrag_Tr")]
	public static extern libqt_string QDrag_Tr(char8[] s);
	[LinkName("QDrag_SetMimeData")]
	public static extern void QDrag_SetMimeData(Self* c_this, QMimeData* data);
	[LinkName("QDrag_MimeData")]
	public static extern QMimeData* QDrag_MimeData(Self* c_this);
	[LinkName("QDrag_SetPixmap")]
	public static extern void QDrag_SetPixmap(Self* c_this, QPixmap* pixmap);
	[LinkName("QDrag_Pixmap")]
	public static extern QPixmap QDrag_Pixmap(Self* c_this);
	[LinkName("QDrag_SetHotSpot")]
	public static extern void QDrag_SetHotSpot(Self* c_this, QPoint* hotspot);
	[LinkName("QDrag_HotSpot")]
	public static extern QPoint QDrag_HotSpot(Self* c_this);
	[LinkName("QDrag_Source")]
	public static extern QObject* QDrag_Source(Self* c_this);
	[LinkName("QDrag_Target")]
	public static extern QObject* QDrag_Target(Self* c_this);
	[LinkName("QDrag_Exec")]
	public static extern int64 QDrag_Exec(Self* c_this);
	[LinkName("QDrag_Exec2")]
	public static extern int64 QDrag_Exec2(Self* c_this, int64 supportedActions, int64 defaultAction);
	[LinkName("QDrag_SetDragCursor")]
	public static extern void QDrag_SetDragCursor(Self* c_this, QPixmap* cursor, int64 action);
	[LinkName("QDrag_DragCursor")]
	public static extern QPixmap QDrag_DragCursor(Self* c_this, int64 action);
	[LinkName("QDrag_SupportedActions")]
	public static extern int64 QDrag_SupportedActions(Self* c_this);
	[LinkName("QDrag_DefaultAction")]
	public static extern int64 QDrag_DefaultAction(Self* c_this);
	[LinkName("QDrag_Cancel")]
	public static extern void QDrag_Cancel();
	[LinkName("QDrag_Connect_ActionChanged")]
	public static extern void QDrag_Connect_ActionChanged(Self* c_this, c_intptr slot);
	[LinkName("QDrag_Connect_TargetChanged")]
	public static extern void QDrag_Connect_TargetChanged(Self* c_this, c_intptr slot);
	[LinkName("QDrag_Tr2")]
	public static extern libqt_string QDrag_Tr2(char8[] s, char8[] c);
	[LinkName("QDrag_Tr3")]
	public static extern libqt_string QDrag_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QDrag_Exec1")]
	public static extern int64 QDrag_Exec1(Self* c_this, int64 supportedActions);
}