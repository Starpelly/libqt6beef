using System;
using System.Interop;
namespace Qt;

public struct QGraphicsLayoutItem
{
	[LinkName("QGraphicsLayoutItem_new")]
	public static extern void* QGraphicsLayoutItem_new();
	[LinkName("QGraphicsLayoutItem_new2")]
	public static extern void* QGraphicsLayoutItem_new2(QGraphicsLayoutItem parent);
	[LinkName("QGraphicsLayoutItem_new3")]
	public static extern void* QGraphicsLayoutItem_new3(QGraphicsLayoutItem parent, bool isLayout);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy(void* c_this, QSizePolicy policy);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy2")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy2(void* c_this, int64 hPolicy, int64 vPolicy);
	[LinkName("QGraphicsLayoutItem_SizePolicy")]
	public static extern QSizePolicy QGraphicsLayoutItem_SizePolicy(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize(void* c_this, QSizeF size);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize2")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MinimumSize")]
	public static extern QSizeF QGraphicsLayoutItem_MinimumSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumWidth")]
	public static extern void QGraphicsLayoutItem_SetMinimumWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MinimumWidth")]
	public static extern double QGraphicsLayoutItem_MinimumWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumHeight")]
	public static extern void QGraphicsLayoutItem_SetMinimumHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MinimumHeight")]
	public static extern double QGraphicsLayoutItem_MinimumHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize(void* c_this, QSizeF size);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize2")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_PreferredSize")]
	public static extern QSizeF QGraphicsLayoutItem_PreferredSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredWidth")]
	public static extern void QGraphicsLayoutItem_SetPreferredWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_PreferredWidth")]
	public static extern double QGraphicsLayoutItem_PreferredWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredHeight")]
	public static extern void QGraphicsLayoutItem_SetPreferredHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_PreferredHeight")]
	public static extern double QGraphicsLayoutItem_PreferredHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize(void* c_this, QSizeF size);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize2")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize2(void* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MaximumSize")]
	public static extern QSizeF QGraphicsLayoutItem_MaximumSize(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumWidth")]
	public static extern void QGraphicsLayoutItem_SetMaximumWidth(void* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MaximumWidth")]
	public static extern double QGraphicsLayoutItem_MaximumWidth(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumHeight")]
	public static extern void QGraphicsLayoutItem_SetMaximumHeight(void* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MaximumHeight")]
	public static extern double QGraphicsLayoutItem_MaximumHeight(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetGeometry")]
	public static extern void QGraphicsLayoutItem_SetGeometry(void* c_this, QRectF rect);
	[LinkName("QGraphicsLayoutItem_Geometry")]
	public static extern QRectF QGraphicsLayoutItem_Geometry(void* c_this);
	[LinkName("QGraphicsLayoutItem_GetContentsMargins")]
	public static extern void QGraphicsLayoutItem_GetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsLayoutItem_ContentsRect")]
	public static extern QRectF QGraphicsLayoutItem_ContentsRect(void* c_this);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint")]
	public static extern QSizeF QGraphicsLayoutItem_EffectiveSizeHint(void* c_this, int64 which);
	[LinkName("QGraphicsLayoutItem_UpdateGeometry")]
	public static extern void QGraphicsLayoutItem_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsLayoutItem_IsEmpty")]
	public static extern bool QGraphicsLayoutItem_IsEmpty(void* c_this);
	[LinkName("QGraphicsLayoutItem_ParentLayoutItem")]
	public static extern QGraphicsLayoutItem QGraphicsLayoutItem_ParentLayoutItem(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetParentLayoutItem")]
	public static extern void QGraphicsLayoutItem_SetParentLayoutItem(void* c_this, QGraphicsLayoutItem parent);
	[LinkName("QGraphicsLayoutItem_IsLayout")]
	public static extern bool QGraphicsLayoutItem_IsLayout(void* c_this);
	[LinkName("QGraphicsLayoutItem_GraphicsItem")]
	public static extern QGraphicsItem QGraphicsLayoutItem_GraphicsItem(void* c_this);
	[LinkName("QGraphicsLayoutItem_OwnedByLayout")]
	public static extern bool QGraphicsLayoutItem_OwnedByLayout(void* c_this);
	[LinkName("QGraphicsLayoutItem_SetGraphicsItem")]
	public static extern void QGraphicsLayoutItem_SetGraphicsItem(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsLayoutItem_SetOwnedByLayout")]
	public static extern void QGraphicsLayoutItem_SetOwnedByLayout(void* c_this, bool ownedByLayout);
	[LinkName("QGraphicsLayoutItem_SizeHint")]
	public static extern QSizeF QGraphicsLayoutItem_SizeHint(void* c_this, int64 which, QSizeF constraint);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy3")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy3(void* c_this, int64 hPolicy, int64 vPolicy, int64 controlType);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint2")]
	public static extern QSizeF QGraphicsLayoutItem_EffectiveSizeHint2(void* c_this, int64 which, QSizeF constraint);
}