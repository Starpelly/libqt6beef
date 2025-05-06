using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsSvgItem__
{
	Type = 13,
}
public struct QGraphicsSvgItem : QGraphicsObject
{
	[LinkName("QGraphicsSvgItem_new")]
	public static extern QGraphicsSvgItem* QGraphicsSvgItem_new();
	[LinkName("QGraphicsSvgItem_new2")]
	public static extern QGraphicsSvgItem* QGraphicsSvgItem_new2(libqt_string fileName);
	[LinkName("QGraphicsSvgItem_new3")]
	public static extern QGraphicsSvgItem* QGraphicsSvgItem_new3(QGraphicsItem* parentItem);
	[LinkName("QGraphicsSvgItem_new4")]
	public static extern QGraphicsSvgItem* QGraphicsSvgItem_new4(libqt_string fileName, QGraphicsItem* parentItem);
	[LinkName("QGraphicsSvgItem_MetaObject")]
	public static extern QMetaObject* QGraphicsSvgItem_MetaObject(Self* c_this);
	[LinkName("QGraphicsSvgItem_Metacast")]
	public static extern void* QGraphicsSvgItem_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsSvgItem_Metacall")]
	public static extern int32 QGraphicsSvgItem_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsSvgItem_Tr")]
	public static extern libqt_string QGraphicsSvgItem_Tr(char8[] s);
	[LinkName("QGraphicsSvgItem_SetSharedRenderer")]
	public static extern void QGraphicsSvgItem_SetSharedRenderer(Self* c_this, QSvgRenderer* renderer);
	[LinkName("QGraphicsSvgItem_Renderer")]
	public static extern QSvgRenderer* QGraphicsSvgItem_Renderer(Self* c_this);
	[LinkName("QGraphicsSvgItem_SetElementId")]
	public static extern void QGraphicsSvgItem_SetElementId(Self* c_this, libqt_string id);
	[LinkName("QGraphicsSvgItem_ElementId")]
	public static extern libqt_string QGraphicsSvgItem_ElementId(Self* c_this);
	[LinkName("QGraphicsSvgItem_SetCachingEnabled")]
	public static extern void QGraphicsSvgItem_SetCachingEnabled(Self* c_this, bool cachingEnabled);
	[LinkName("QGraphicsSvgItem_IsCachingEnabled")]
	public static extern bool QGraphicsSvgItem_IsCachingEnabled(Self* c_this);
	[LinkName("QGraphicsSvgItem_SetMaximumCacheSize")]
	public static extern void QGraphicsSvgItem_SetMaximumCacheSize(Self* c_this, QSize* size);
	[LinkName("QGraphicsSvgItem_MaximumCacheSize")]
	public static extern QSize QGraphicsSvgItem_MaximumCacheSize(Self* c_this);
	[LinkName("QGraphicsSvgItem_BoundingRect")]
	public static extern QRectF QGraphicsSvgItem_BoundingRect(Self* c_this);
	[LinkName("QGraphicsSvgItem_Paint")]
	public static extern void QGraphicsSvgItem_Paint(Self* c_this, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	[LinkName("QGraphicsSvgItem_Type")]
	public static extern int32 QGraphicsSvgItem_Type(Self* c_this);
	[LinkName("QGraphicsSvgItem_Tr2")]
	public static extern libqt_string QGraphicsSvgItem_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsSvgItem_Tr3")]
	public static extern libqt_string QGraphicsSvgItem_Tr3(char8[] s, char8[] c, int32 n);
}