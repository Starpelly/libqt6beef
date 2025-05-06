using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QIconEngine__IconEngineHook
{
	IsNullHook = 3,
	ScaledPixmapHook = 4,
}
public struct QIconEngine
{
	[LinkName("QIconEngine_new")]
	public static extern QIconEngine* QIconEngine_new();
	[LinkName("QIconEngine_Paint")]
	public static extern void QIconEngine_Paint(Self* c_this, QPainter* painter, QRect* rect, int64 mode, int64 state);
	[LinkName("QIconEngine_ActualSize")]
	public static extern QSize QIconEngine_ActualSize(Self* c_this, QSize* size, int64 mode, int64 state);
	[LinkName("QIconEngine_Pixmap")]
	public static extern QPixmap QIconEngine_Pixmap(Self* c_this, QSize* size, int64 mode, int64 state);
	[LinkName("QIconEngine_AddPixmap")]
	public static extern void QIconEngine_AddPixmap(Self* c_this, QPixmap* pixmap, int64 mode, int64 state);
	[LinkName("QIconEngine_AddFile")]
	public static extern void QIconEngine_AddFile(Self* c_this, libqt_string fileName, QSize* size, int64 mode, int64 state);
	[LinkName("QIconEngine_Key")]
	public static extern libqt_string QIconEngine_Key(Self* c_this);
	[LinkName("QIconEngine_Clone")]
	public static extern QIconEngine* QIconEngine_Clone(Self* c_this);
	[LinkName("QIconEngine_Read")]
	public static extern bool QIconEngine_Read(Self* c_this, QDataStream* _in);
	[LinkName("QIconEngine_Write")]
	public static extern bool QIconEngine_Write(Self* c_this, QDataStream* _out);
	[LinkName("QIconEngine_AvailableSizes")]
	public static extern QSize[] QIconEngine_AvailableSizes(Self* c_this, int64 mode, int64 state);
	[LinkName("QIconEngine_IconName")]
	public static extern libqt_string QIconEngine_IconName(Self* c_this);
	[LinkName("QIconEngine_IsNull")]
	public static extern bool QIconEngine_IsNull(Self* c_this);
	[LinkName("QIconEngine_ScaledPixmap")]
	public static extern QPixmap QIconEngine_ScaledPixmap(Self* c_this, QSize* size, int64 mode, int64 state, double scale);
	[LinkName("QIconEngine_VirtualHook")]
	public static extern void QIconEngine_VirtualHook(Self* c_this, int32 id, void* data);
}
public struct QIconEngine__ScaledPixmapArgument
{
	[LinkName("QIconEngine__ScaledPixmapArgument_new")]
	public static extern QIconEngine__ScaledPixmapArgument* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* param1);
	[LinkName("QIconEngine__ScaledPixmapArgument_OperatorAssign")]
	public static extern void QIconEngine__ScaledPixmapArgument_OperatorAssign(Self* c_this, QIconEngine__ScaledPixmapArgument* param1);
}