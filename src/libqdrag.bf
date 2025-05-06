using System;
using System.Interop;
namespace Qt;

public struct QDrag
{
	[LinkName("QDrag_new")]
	public static extern void* QDrag_new(QObject dragSource);
	[LinkName("QDrag_MetaObject")]
	public static extern QMetaObject QDrag_MetaObject(void* c_this);
	[LinkName("QDrag_Metacast")]
	public static extern void QDrag_Metacast(void* c_this, char8[] param1);
	[LinkName("QDrag_Metacall")]
	public static extern int32 QDrag_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDrag_Tr")]
	public static extern char8[] QDrag_Tr(char8[] s);
	[LinkName("QDrag_SetMimeData")]
	public static extern void QDrag_SetMimeData(void* c_this, QMimeData data);
	[LinkName("QDrag_MimeData")]
	public static extern QMimeData QDrag_MimeData(void* c_this);
	[LinkName("QDrag_SetPixmap")]
	public static extern void QDrag_SetPixmap(void* c_this, QPixmap pixmap);
	[LinkName("QDrag_Pixmap")]
	public static extern QPixmap QDrag_Pixmap(void* c_this);
	[LinkName("QDrag_SetHotSpot")]
	public static extern void QDrag_SetHotSpot(void* c_this, QPoint hotspot);
	[LinkName("QDrag_HotSpot")]
	public static extern QPoint QDrag_HotSpot(void* c_this);
	[LinkName("QDrag_Source")]
	public static extern QObject QDrag_Source(void* c_this);
	[LinkName("QDrag_Target")]
	public static extern QObject QDrag_Target(void* c_this);
	[LinkName("QDrag_Exec")]
	public static extern int64 QDrag_Exec(void* c_this);
	[LinkName("QDrag_Exec2")]
	public static extern int64 QDrag_Exec2(void* c_this, int64 supportedActions, int64 defaultAction);
	[LinkName("QDrag_SetDragCursor")]
	public static extern void QDrag_SetDragCursor(void* c_this, QPixmap cursor, int64 action);
	[LinkName("QDrag_DragCursor")]
	public static extern QPixmap QDrag_DragCursor(void* c_this, int64 action);
	[LinkName("QDrag_SupportedActions")]
	public static extern int64 QDrag_SupportedActions(void* c_this);
	[LinkName("QDrag_DefaultAction")]
	public static extern int64 QDrag_DefaultAction(void* c_this);
	[LinkName("QDrag_Cancel")]
	public static extern void QDrag_Cancel();
	[LinkName("QDrag_ActionChanged")]
	public static extern void QDrag_ActionChanged(void* c_this, int64 action);
	[LinkName("QDrag_TargetChanged")]
	public static extern void QDrag_TargetChanged(void* c_this, QObject newTarget);
	[LinkName("QDrag_Tr2")]
	public static extern char8[] QDrag_Tr2(char8[] s, char8[] c);
	[LinkName("QDrag_Tr3")]
	public static extern char8[] QDrag_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QDrag_Exec1")]
	public static extern int64 QDrag_Exec1(void* c_this, int64 supportedActions);
}