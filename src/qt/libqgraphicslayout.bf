using System;
using System.Interop;
namespace Qt;

public struct QGraphicsLayout : QGraphicsLayoutItem
{
	[LinkName("QGraphicsLayout_new")]
	public static extern QGraphicsLayout* QGraphicsLayout_new();
	[LinkName("QGraphicsLayout_new2")]
	public static extern QGraphicsLayout* QGraphicsLayout_new2(QGraphicsLayoutItem* parent);
	[LinkName("QGraphicsLayout_SetContentsMargins")]
	public static extern void QGraphicsLayout_SetContentsMargins(Self* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsLayout_GetContentsMargins")]
	public static extern void QGraphicsLayout_GetContentsMargins(Self* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsLayout_Activate")]
	public static extern void QGraphicsLayout_Activate(Self* c_this);
	[LinkName("QGraphicsLayout_IsActivated")]
	public static extern bool QGraphicsLayout_IsActivated(Self* c_this);
	[LinkName("QGraphicsLayout_Invalidate")]
	public static extern void QGraphicsLayout_Invalidate(Self* c_this);
	[LinkName("QGraphicsLayout_UpdateGeometry")]
	public static extern void QGraphicsLayout_UpdateGeometry(Self* c_this);
	[LinkName("QGraphicsLayout_WidgetEvent")]
	public static extern void QGraphicsLayout_WidgetEvent(Self* c_this, QEvent* e);
	[LinkName("QGraphicsLayout_Count")]
	public static extern int32 QGraphicsLayout_Count(Self* c_this);
	[LinkName("QGraphicsLayout_ItemAt")]
	public static extern QGraphicsLayoutItem* QGraphicsLayout_ItemAt(Self* c_this, int32 i);
	[LinkName("QGraphicsLayout_RemoveAt")]
	public static extern void QGraphicsLayout_RemoveAt(Self* c_this, int32 index);
	[LinkName("QGraphicsLayout_SetInstantInvalidatePropagation")]
	public static extern void QGraphicsLayout_SetInstantInvalidatePropagation(bool enable);
	[LinkName("QGraphicsLayout_InstantInvalidatePropagation")]
	public static extern bool QGraphicsLayout_InstantInvalidatePropagation();
	[LinkName("QGraphicsLayout_AddChildLayoutItem")]
	public static extern void QGraphicsLayout_AddChildLayoutItem(Self* c_this, QGraphicsLayoutItem* layoutItem);
}