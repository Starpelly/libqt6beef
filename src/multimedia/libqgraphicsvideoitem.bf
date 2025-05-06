using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsVideoItem__
{
	Type = 14,
}
public struct QGraphicsVideoItem
{
	[LinkName("QGraphicsVideoItem_new")]
	public static extern void* QGraphicsVideoItem_new();
	[LinkName("QGraphicsVideoItem_new2")]
	public static extern void* QGraphicsVideoItem_new2(QGraphicsItem parent);
	[LinkName("QGraphicsVideoItem_MetaObject")]
	public static extern QMetaObject QGraphicsVideoItem_MetaObject(void* c_this);
	[LinkName("QGraphicsVideoItem_Metacast")]
	public static extern void QGraphicsVideoItem_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsVideoItem_Metacall")]
	public static extern int32 QGraphicsVideoItem_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsVideoItem_Tr")]
	public static extern char8[] QGraphicsVideoItem_Tr(char8[] s);
	[LinkName("QGraphicsVideoItem_VideoSink")]
	public static extern QVideoSink QGraphicsVideoItem_VideoSink(void* c_this);
	[LinkName("QGraphicsVideoItem_AspectRatioMode")]
	public static extern int64 QGraphicsVideoItem_AspectRatioMode(void* c_this);
	[LinkName("QGraphicsVideoItem_SetAspectRatioMode")]
	public static extern void QGraphicsVideoItem_SetAspectRatioMode(void* c_this, int64 mode);
	[LinkName("QGraphicsVideoItem_Offset")]
	public static extern QPointF QGraphicsVideoItem_Offset(void* c_this);
	[LinkName("QGraphicsVideoItem_SetOffset")]
	public static extern void QGraphicsVideoItem_SetOffset(void* c_this, QPointF offset);
	[LinkName("QGraphicsVideoItem_Size")]
	public static extern QSizeF QGraphicsVideoItem_Size(void* c_this);
	[LinkName("QGraphicsVideoItem_SetSize")]
	public static extern void QGraphicsVideoItem_SetSize(void* c_this, QSizeF size);
	[LinkName("QGraphicsVideoItem_NativeSize")]
	public static extern QSizeF QGraphicsVideoItem_NativeSize(void* c_this);
	[LinkName("QGraphicsVideoItem_BoundingRect")]
	public static extern QRectF QGraphicsVideoItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsVideoItem_Paint")]
	public static extern void QGraphicsVideoItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsVideoItem_Type")]
	public static extern int32 QGraphicsVideoItem_Type(void* c_this);
	[LinkName("QGraphicsVideoItem_NativeSizeChanged")]
	public static extern void QGraphicsVideoItem_NativeSizeChanged(void* c_this, QSizeF size);
	[LinkName("QGraphicsVideoItem_TimerEvent")]
	public static extern void QGraphicsVideoItem_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QGraphicsVideoItem_ItemChange")]
	public static extern QVariant QGraphicsVideoItem_ItemChange(void* c_this, int64 change, QVariant value);
	[LinkName("QGraphicsVideoItem_Tr2")]
	public static extern char8[] QGraphicsVideoItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsVideoItem_Tr3")]
	public static extern char8[] QGraphicsVideoItem_Tr3(char8[] s, char8[] c, int32 n);
}