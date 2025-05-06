using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsVideoItem__
{
	Type = 14,
}
public struct QGraphicsVideoItem : QGraphicsObject
{
	[LinkName("QGraphicsVideoItem_new")]
	public static extern QGraphicsVideoItem* QGraphicsVideoItem_new();
	[LinkName("QGraphicsVideoItem_new2")]
	public static extern QGraphicsVideoItem* QGraphicsVideoItem_new2(QGraphicsItem* parent);
	[LinkName("QGraphicsVideoItem_MetaObject")]
	public static extern QMetaObject* QGraphicsVideoItem_MetaObject(Self* c_this);
	[LinkName("QGraphicsVideoItem_Metacast")]
	public static extern void* QGraphicsVideoItem_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsVideoItem_Metacall")]
	public static extern int32 QGraphicsVideoItem_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsVideoItem_Tr")]
	public static extern libqt_string QGraphicsVideoItem_Tr(char8[] s);
	[LinkName("QGraphicsVideoItem_VideoSink")]
	public static extern QVideoSink* QGraphicsVideoItem_VideoSink(Self* c_this);
	[LinkName("QGraphicsVideoItem_AspectRatioMode")]
	public static extern int64 QGraphicsVideoItem_AspectRatioMode(Self* c_this);
	[LinkName("QGraphicsVideoItem_SetAspectRatioMode")]
	public static extern void QGraphicsVideoItem_SetAspectRatioMode(Self* c_this, int64 mode);
	[LinkName("QGraphicsVideoItem_Offset")]
	public static extern QPointF QGraphicsVideoItem_Offset(Self* c_this);
	[LinkName("QGraphicsVideoItem_SetOffset")]
	public static extern void QGraphicsVideoItem_SetOffset(Self* c_this, QPointF* offset);
	[LinkName("QGraphicsVideoItem_Size")]
	public static extern QSizeF QGraphicsVideoItem_Size(Self* c_this);
	[LinkName("QGraphicsVideoItem_SetSize")]
	public static extern void QGraphicsVideoItem_SetSize(Self* c_this, QSizeF* size);
	[LinkName("QGraphicsVideoItem_NativeSize")]
	public static extern QSizeF QGraphicsVideoItem_NativeSize(Self* c_this);
	[LinkName("QGraphicsVideoItem_BoundingRect")]
	public static extern QRectF QGraphicsVideoItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsVideoItem_Paint")]
	public static extern void QGraphicsVideoItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsVideoItem_Type")]
	public static extern int32 QGraphicsVideoItem_Type(Self* c_this);
	[LinkName("QGraphicsVideoItem_Connect_NativeSizeChanged")]
	public static extern void QGraphicsVideoItem_Connect_NativeSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QGraphicsVideoItem_TimerEvent")]
	public static extern void QGraphicsVideoItem_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QGraphicsVideoItem_ItemChange")]
	public static extern QVariant QGraphicsVideoItem_ItemChange(Self* c_this, int64 change, QVariant* value);
	[LinkName("QGraphicsVideoItem_Tr2")]
	public static extern libqt_string QGraphicsVideoItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsVideoItem_Tr3")]
	public static extern libqt_string QGraphicsVideoItem_Tr3(char8[] s, char8[] c, int32 n);
}