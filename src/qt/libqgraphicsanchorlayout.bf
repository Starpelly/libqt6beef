using System;
using System.Interop;
namespace Qt;

public struct QGraphicsAnchor : QObject
{
	[LinkName("QGraphicsAnchor_MetaObject")]
	public static extern QMetaObject* QGraphicsAnchor_MetaObject(Self* c_this);
	[LinkName("QGraphicsAnchor_Metacast")]
	public static extern void* QGraphicsAnchor_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGraphicsAnchor_Metacall")]
	public static extern int32 QGraphicsAnchor_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsAnchor_Tr")]
	public static extern libqt_string QGraphicsAnchor_Tr(char8[] s);
	[LinkName("QGraphicsAnchor_SetSpacing")]
	public static extern void QGraphicsAnchor_SetSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsAnchor_UnsetSpacing")]
	public static extern void QGraphicsAnchor_UnsetSpacing(Self* c_this);
	[LinkName("QGraphicsAnchor_Spacing")]
	public static extern double QGraphicsAnchor_Spacing(Self* c_this);
	[LinkName("QGraphicsAnchor_SetSizePolicy")]
	public static extern void QGraphicsAnchor_SetSizePolicy(Self* c_this, int64 policy);
	[LinkName("QGraphicsAnchor_SizePolicy")]
	public static extern int64 QGraphicsAnchor_SizePolicy(Self* c_this);
	[LinkName("QGraphicsAnchor_Tr2")]
	public static extern libqt_string QGraphicsAnchor_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsAnchor_Tr3")]
	public static extern libqt_string QGraphicsAnchor_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QGraphicsAnchorLayout : QGraphicsLayout
{
	[LinkName("QGraphicsAnchorLayout_new")]
	public static extern QGraphicsAnchorLayout* QGraphicsAnchorLayout_new();
	[LinkName("QGraphicsAnchorLayout_new2")]
	public static extern QGraphicsAnchorLayout* QGraphicsAnchorLayout_new2(QGraphicsLayoutItem* parent);
	[LinkName("QGraphicsAnchorLayout_AddAnchor")]
	public static extern QGraphicsAnchor* QGraphicsAnchorLayout_AddAnchor(Self* c_this, QGraphicsLayoutItem* firstItem, int64 firstEdge, QGraphicsLayoutItem* secondItem, int64 secondEdge);
	[LinkName("QGraphicsAnchorLayout_Anchor")]
	public static extern QGraphicsAnchor* QGraphicsAnchorLayout_Anchor(Self* c_this, QGraphicsLayoutItem* firstItem, int64 firstEdge, QGraphicsLayoutItem* secondItem, int64 secondEdge);
	[LinkName("QGraphicsAnchorLayout_AddCornerAnchors")]
	public static extern void QGraphicsAnchorLayout_AddCornerAnchors(Self* c_this, QGraphicsLayoutItem* firstItem, int64 firstCorner, QGraphicsLayoutItem* secondItem, int64 secondCorner);
	[LinkName("QGraphicsAnchorLayout_AddAnchors")]
	public static extern void QGraphicsAnchorLayout_AddAnchors(Self* c_this, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem);
	[LinkName("QGraphicsAnchorLayout_SetHorizontalSpacing")]
	public static extern void QGraphicsAnchorLayout_SetHorizontalSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_SetVerticalSpacing")]
	public static extern void QGraphicsAnchorLayout_SetVerticalSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_SetSpacing")]
	public static extern void QGraphicsAnchorLayout_SetSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_HorizontalSpacing")]
	public static extern double QGraphicsAnchorLayout_HorizontalSpacing(Self* c_this);
	[LinkName("QGraphicsAnchorLayout_VerticalSpacing")]
	public static extern double QGraphicsAnchorLayout_VerticalSpacing(Self* c_this);
	[LinkName("QGraphicsAnchorLayout_RemoveAt")]
	public static extern void QGraphicsAnchorLayout_RemoveAt(Self* c_this, int32 index);
	[LinkName("QGraphicsAnchorLayout_SetGeometry")]
	public static extern void QGraphicsAnchorLayout_SetGeometry(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsAnchorLayout_Count")]
	public static extern int32 QGraphicsAnchorLayout_Count(Self* c_this);
	[LinkName("QGraphicsAnchorLayout_ItemAt")]
	public static extern QGraphicsLayoutItem* QGraphicsAnchorLayout_ItemAt(Self* c_this, int32 index);
	[LinkName("QGraphicsAnchorLayout_Invalidate")]
	public static extern void QGraphicsAnchorLayout_Invalidate(Self* c_this);
	[LinkName("QGraphicsAnchorLayout_SizeHint")]
	public static extern QSizeF QGraphicsAnchorLayout_SizeHint(Self* c_this, int64 which, QSizeF* constraint);
	[LinkName("QGraphicsAnchorLayout_AddAnchors3")]
	public static extern void QGraphicsAnchorLayout_AddAnchors3(Self* c_this, QGraphicsLayoutItem* firstItem, QGraphicsLayoutItem* secondItem, int64 orientations);
}