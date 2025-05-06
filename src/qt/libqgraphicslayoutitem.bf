using System;
using System.Interop;
namespace Qt;

public struct QGraphicsLayoutItem
{
	[LinkName("QGraphicsLayoutItem_new")]
	public static extern QGraphicsLayoutItem* QGraphicsLayoutItem_new();
	[LinkName("QGraphicsLayoutItem_new2")]
	public static extern QGraphicsLayoutItem* QGraphicsLayoutItem_new2(QGraphicsLayoutItem* parent);
	[LinkName("QGraphicsLayoutItem_new3")]
	public static extern QGraphicsLayoutItem* QGraphicsLayoutItem_new3(QGraphicsLayoutItem* parent, bool isLayout);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy(Self* c_this, QSizePolicy* policy);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy2")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy2(Self* c_this, int64 hPolicy, int64 vPolicy);
	[LinkName("QGraphicsLayoutItem_SizePolicy")]
	public static extern QSizePolicy QGraphicsLayoutItem_SizePolicy(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize(Self* c_this, QSizeF* size);
	[LinkName("QGraphicsLayoutItem_SetMinimumSize2")]
	public static extern void QGraphicsLayoutItem_SetMinimumSize2(Self* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MinimumSize")]
	public static extern QSizeF QGraphicsLayoutItem_MinimumSize(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumWidth")]
	public static extern void QGraphicsLayoutItem_SetMinimumWidth(Self* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MinimumWidth")]
	public static extern double QGraphicsLayoutItem_MinimumWidth(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMinimumHeight")]
	public static extern void QGraphicsLayoutItem_SetMinimumHeight(Self* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MinimumHeight")]
	public static extern double QGraphicsLayoutItem_MinimumHeight(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize(Self* c_this, QSizeF* size);
	[LinkName("QGraphicsLayoutItem_SetPreferredSize2")]
	public static extern void QGraphicsLayoutItem_SetPreferredSize2(Self* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_PreferredSize")]
	public static extern QSizeF QGraphicsLayoutItem_PreferredSize(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredWidth")]
	public static extern void QGraphicsLayoutItem_SetPreferredWidth(Self* c_this, double width);
	[LinkName("QGraphicsLayoutItem_PreferredWidth")]
	public static extern double QGraphicsLayoutItem_PreferredWidth(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetPreferredHeight")]
	public static extern void QGraphicsLayoutItem_SetPreferredHeight(Self* c_this, double height);
	[LinkName("QGraphicsLayoutItem_PreferredHeight")]
	public static extern double QGraphicsLayoutItem_PreferredHeight(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize(Self* c_this, QSizeF* size);
	[LinkName("QGraphicsLayoutItem_SetMaximumSize2")]
	public static extern void QGraphicsLayoutItem_SetMaximumSize2(Self* c_this, double w, double h);
	[LinkName("QGraphicsLayoutItem_MaximumSize")]
	public static extern QSizeF QGraphicsLayoutItem_MaximumSize(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumWidth")]
	public static extern void QGraphicsLayoutItem_SetMaximumWidth(Self* c_this, double width);
	[LinkName("QGraphicsLayoutItem_MaximumWidth")]
	public static extern double QGraphicsLayoutItem_MaximumWidth(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetMaximumHeight")]
	public static extern void QGraphicsLayoutItem_SetMaximumHeight(Self* c_this, double height);
	[LinkName("QGraphicsLayoutItem_MaximumHeight")]
	public static extern double QGraphicsLayoutItem_MaximumHeight(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetGeometry")]
	public static extern void QGraphicsLayoutItem_SetGeometry(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsLayoutItem_Geometry")]
	public static extern QRectF QGraphicsLayoutItem_Geometry(Self* c_this);
	[LinkName("QGraphicsLayoutItem_GetContentsMargins")]
	public static extern void QGraphicsLayoutItem_GetContentsMargins(Self* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsLayoutItem_ContentsRect")]
	public static extern QRectF QGraphicsLayoutItem_ContentsRect(Self* c_this);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint")]
	public static extern QSizeF QGraphicsLayoutItem_EffectiveSizeHint(Self* c_this, int64 which);
	[LinkName("QGraphicsLayoutItem_UpdateGeometry")]
	public static extern void QGraphicsLayoutItem_UpdateGeometry(Self* c_this);
	[LinkName("QGraphicsLayoutItem_IsEmpty")]
	public static extern bool QGraphicsLayoutItem_IsEmpty(Self* c_this);
	[LinkName("QGraphicsLayoutItem_ParentLayoutItem")]
	public static extern QGraphicsLayoutItem* QGraphicsLayoutItem_ParentLayoutItem(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetParentLayoutItem")]
	public static extern void QGraphicsLayoutItem_SetParentLayoutItem(Self* c_this, QGraphicsLayoutItem* parent);
	[LinkName("QGraphicsLayoutItem_IsLayout")]
	public static extern bool QGraphicsLayoutItem_IsLayout(Self* c_this);
	[LinkName("QGraphicsLayoutItem_GraphicsItem")]
	public static extern QGraphicsItem* QGraphicsLayoutItem_GraphicsItem(Self* c_this);
	[LinkName("QGraphicsLayoutItem_OwnedByLayout")]
	public static extern bool QGraphicsLayoutItem_OwnedByLayout(Self* c_this);
	[LinkName("QGraphicsLayoutItem_SetGraphicsItem")]
	public static extern void QGraphicsLayoutItem_SetGraphicsItem(Self* c_this, QGraphicsItem* item);
	[LinkName("QGraphicsLayoutItem_SetOwnedByLayout")]
	public static extern void QGraphicsLayoutItem_SetOwnedByLayout(Self* c_this, bool ownedByLayout);
	[LinkName("QGraphicsLayoutItem_SizeHint")]
	public static extern QSizeF QGraphicsLayoutItem_SizeHint(Self* c_this, int64 which, QSizeF* constraint);
	[LinkName("QGraphicsLayoutItem_SetSizePolicy3")]
	public static extern void QGraphicsLayoutItem_SetSizePolicy3(Self* c_this, int64 hPolicy, int64 vPolicy, int64 controlType);
	[LinkName("QGraphicsLayoutItem_EffectiveSizeHint2")]
	public static extern QSizeF QGraphicsLayoutItem_EffectiveSizeHint2(Self* c_this, int64 which, QSizeF* constraint);
}