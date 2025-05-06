using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsSvgItem__
{
	Type = 13,
}
public struct QGraphicsSvgItem
{
	[LinkName("QGraphicsSvgItem_new")]
	public static extern void* QGraphicsSvgItem_new();
	[LinkName("QGraphicsSvgItem_new2")]
	public static extern void* QGraphicsSvgItem_new2(char8[] fileName);
	[LinkName("QGraphicsSvgItem_new3")]
	public static extern void* QGraphicsSvgItem_new3(QGraphicsItem parentItem);
	[LinkName("QGraphicsSvgItem_new4")]
	public static extern void* QGraphicsSvgItem_new4(char8[] fileName, QGraphicsItem parentItem);
	[LinkName("QGraphicsSvgItem_MetaObject")]
	public static extern QMetaObject QGraphicsSvgItem_MetaObject(void* c_this);
	[LinkName("QGraphicsSvgItem_Metacast")]
	public static extern void QGraphicsSvgItem_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsSvgItem_Metacall")]
	public static extern int32 QGraphicsSvgItem_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsSvgItem_Tr")]
	public static extern char8[] QGraphicsSvgItem_Tr(char8[] s);
	[LinkName("QGraphicsSvgItem_SetSharedRenderer")]
	public static extern void QGraphicsSvgItem_SetSharedRenderer(void* c_this, QSvgRenderer renderer);
	[LinkName("QGraphicsSvgItem_Renderer")]
	public static extern QSvgRenderer QGraphicsSvgItem_Renderer(void* c_this);
	[LinkName("QGraphicsSvgItem_SetElementId")]
	public static extern void QGraphicsSvgItem_SetElementId(void* c_this, char8[] id);
	[LinkName("QGraphicsSvgItem_ElementId")]
	public static extern char8[] QGraphicsSvgItem_ElementId(void* c_this);
	[LinkName("QGraphicsSvgItem_SetCachingEnabled")]
	public static extern void QGraphicsSvgItem_SetCachingEnabled(void* c_this, bool cachingEnabled);
	[LinkName("QGraphicsSvgItem_IsCachingEnabled")]
	public static extern bool QGraphicsSvgItem_IsCachingEnabled(void* c_this);
	[LinkName("QGraphicsSvgItem_SetMaximumCacheSize")]
	public static extern void QGraphicsSvgItem_SetMaximumCacheSize(void* c_this, QSize size);
	[LinkName("QGraphicsSvgItem_MaximumCacheSize")]
	public static extern QSize QGraphicsSvgItem_MaximumCacheSize(void* c_this);
	[LinkName("QGraphicsSvgItem_BoundingRect")]
	public static extern QRectF QGraphicsSvgItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsSvgItem_Paint")]
	public static extern void QGraphicsSvgItem_Paint(void* c_this, QPainter painter, QStyleOptionGraphicsItem option, QWidget widget);
	[LinkName("QGraphicsSvgItem_Type")]
	public static extern int32 QGraphicsSvgItem_Type(void* c_this);
	[LinkName("QGraphicsSvgItem_Tr2")]
	public static extern char8[] QGraphicsSvgItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsSvgItem_Tr3")]
	public static extern char8[] QGraphicsSvgItem_Tr3(char8[] s, char8[] c, int32 n);
}