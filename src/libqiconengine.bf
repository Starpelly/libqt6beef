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
	public static extern void* QIconEngine_new();
	[LinkName("QIconEngine_Paint")]
	public static extern void QIconEngine_Paint(void* c_this, QPainter painter, QRect rect, int64 mode, int64 state);
	[LinkName("QIconEngine_ActualSize")]
	public static extern QSize QIconEngine_ActualSize(void* c_this, QSize size, int64 mode, int64 state);
	[LinkName("QIconEngine_Pixmap")]
	public static extern QPixmap QIconEngine_Pixmap(void* c_this, QSize size, int64 mode, int64 state);
	[LinkName("QIconEngine_AddPixmap")]
	public static extern void QIconEngine_AddPixmap(void* c_this, QPixmap pixmap, int64 mode, int64 state);
	[LinkName("QIconEngine_AddFile")]
	public static extern void QIconEngine_AddFile(void* c_this, char8[] fileName, QSize size, int64 mode, int64 state);
	[LinkName("QIconEngine_Key")]
	public static extern char8[] QIconEngine_Key(void* c_this);
	[LinkName("QIconEngine_Clone")]
	public static extern QIconEngine QIconEngine_Clone(void* c_this);
	[LinkName("QIconEngine_Read")]
	public static extern bool QIconEngine_Read(void* c_this, QDataStream _in);
	[LinkName("QIconEngine_Write")]
	public static extern bool QIconEngine_Write(void* c_this, QDataStream _out);
	[LinkName("QIconEngine_AvailableSizes")]
	public static extern QSize[] QIconEngine_AvailableSizes(void* c_this, int64 mode, int64 state);
	[LinkName("QIconEngine_IconName")]
	public static extern char8[] QIconEngine_IconName(void* c_this);
	[LinkName("QIconEngine_IsNull")]
	public static extern bool QIconEngine_IsNull(void* c_this);
	[LinkName("QIconEngine_ScaledPixmap")]
	public static extern QPixmap QIconEngine_ScaledPixmap(void* c_this, QSize size, int64 mode, int64 state, double scale);
	[LinkName("QIconEngine_VirtualHook")]
	public static extern void QIconEngine_VirtualHook(void* c_this, int32 id, void data);
}
public struct QIconEngine__ScaledPixmapArgument
{
	[LinkName("QIconEngine__ScaledPixmapArgument_new")]
	public static extern void* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument param1);
	[LinkName("QIconEngine__ScaledPixmapArgument_OperatorAssign")]
	public static extern void QIconEngine__ScaledPixmapArgument_OperatorAssign(void* c_this, QIconEngine__ScaledPixmapArgument param1);
}