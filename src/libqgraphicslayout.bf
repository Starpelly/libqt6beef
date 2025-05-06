using System;
using System.Interop;
namespace Qt;

public struct QGraphicsLayout
{
	[LinkName("QGraphicsLayout_new")]
	public static extern void* QGraphicsLayout_new();
	[LinkName("QGraphicsLayout_new2")]
	public static extern void* QGraphicsLayout_new2(QGraphicsLayoutItem parent);
	[LinkName("QGraphicsLayout_SetContentsMargins")]
	public static extern void QGraphicsLayout_SetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsLayout_GetContentsMargins")]
	public static extern void QGraphicsLayout_GetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsLayout_Activate")]
	public static extern void QGraphicsLayout_Activate(void* c_this);
	[LinkName("QGraphicsLayout_IsActivated")]
	public static extern bool QGraphicsLayout_IsActivated(void* c_this);
	[LinkName("QGraphicsLayout_Invalidate")]
	public static extern void QGraphicsLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsLayout_UpdateGeometry")]
	public static extern void QGraphicsLayout_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsLayout_WidgetEvent")]
	public static extern void QGraphicsLayout_WidgetEvent(void* c_this, QEvent e);
	[LinkName("QGraphicsLayout_Count")]
	public static extern int32 QGraphicsLayout_Count(void* c_this);
	[LinkName("QGraphicsLayout_ItemAt")]
	public static extern QGraphicsLayoutItem QGraphicsLayout_ItemAt(void* c_this, int32 i);
	[LinkName("QGraphicsLayout_RemoveAt")]
	public static extern void QGraphicsLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsLayout_SetInstantInvalidatePropagation")]
	public static extern void QGraphicsLayout_SetInstantInvalidatePropagation(bool enable);
	[LinkName("QGraphicsLayout_InstantInvalidatePropagation")]
	public static extern bool QGraphicsLayout_InstantInvalidatePropagation();
	[LinkName("QGraphicsLayout_AddChildLayoutItem")]
	public static extern void QGraphicsLayout_AddChildLayoutItem(void* c_this, QGraphicsLayoutItem layoutItem);
}