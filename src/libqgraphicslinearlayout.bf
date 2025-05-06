using System;
using System.Interop;
namespace Qt;

public struct QGraphicsLinearLayout
{
	[LinkName("QGraphicsLinearLayout_new")]
	public static extern void* QGraphicsLinearLayout_new();
	[LinkName("QGraphicsLinearLayout_new2")]
	public static extern void* QGraphicsLinearLayout_new2(int64 orientation);
	[LinkName("QGraphicsLinearLayout_new3")]
	public static extern void* QGraphicsLinearLayout_new3(QGraphicsLayoutItem parent);
	[LinkName("QGraphicsLinearLayout_new4")]
	public static extern void* QGraphicsLinearLayout_new4(int64 orientation, QGraphicsLayoutItem parent);
	[LinkName("QGraphicsLinearLayout_SetOrientation")]
	public static extern void QGraphicsLinearLayout_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QGraphicsLinearLayout_Orientation")]
	public static extern int64 QGraphicsLinearLayout_Orientation(void* c_this);
	[LinkName("QGraphicsLinearLayout_AddItem")]
	public static extern void QGraphicsLinearLayout_AddItem(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsLinearLayout_AddStretch")]
	public static extern void QGraphicsLinearLayout_AddStretch(void* c_this);
	[LinkName("QGraphicsLinearLayout_InsertItem")]
	public static extern void QGraphicsLinearLayout_InsertItem(void* c_this, int32 index, QGraphicsLayoutItem item);
	[LinkName("QGraphicsLinearLayout_InsertStretch")]
	public static extern void QGraphicsLinearLayout_InsertStretch(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_RemoveItem")]
	public static extern void QGraphicsLinearLayout_RemoveItem(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsLinearLayout_RemoveAt")]
	public static extern void QGraphicsLinearLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_SetSpacing")]
	public static extern void QGraphicsLinearLayout_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsLinearLayout_Spacing")]
	public static extern double QGraphicsLinearLayout_Spacing(void* c_this);
	[LinkName("QGraphicsLinearLayout_SetItemSpacing")]
	public static extern void QGraphicsLinearLayout_SetItemSpacing(void* c_this, int32 index, double spacing);
	[LinkName("QGraphicsLinearLayout_ItemSpacing")]
	public static extern double QGraphicsLinearLayout_ItemSpacing(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_SetStretchFactor")]
	public static extern void QGraphicsLinearLayout_SetStretchFactor(void* c_this, QGraphicsLayoutItem item, int32 stretch);
	[LinkName("QGraphicsLinearLayout_StretchFactor")]
	public static extern int32 QGraphicsLinearLayout_StretchFactor(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsLinearLayout_SetAlignment")]
	public static extern void QGraphicsLinearLayout_SetAlignment(void* c_this, QGraphicsLayoutItem item, int64 alignment);
	[LinkName("QGraphicsLinearLayout_Alignment")]
	public static extern int64 QGraphicsLinearLayout_Alignment(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsLinearLayout_SetGeometry")]
	public static extern void QGraphicsLinearLayout_SetGeometry(void* c_this, QRectF rect);
	[LinkName("QGraphicsLinearLayout_Count")]
	public static extern int32 QGraphicsLinearLayout_Count(void* c_this);
	[LinkName("QGraphicsLinearLayout_ItemAt")]
	public static extern QGraphicsLayoutItem QGraphicsLinearLayout_ItemAt(void* c_this, int32 index);
	[LinkName("QGraphicsLinearLayout_Invalidate")]
	public static extern void QGraphicsLinearLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsLinearLayout_SizeHint")]
	public static extern QSizeF QGraphicsLinearLayout_SizeHint(void* c_this, int64 which, QSizeF constraint);
	[LinkName("QGraphicsLinearLayout_Dump")]
	public static extern void QGraphicsLinearLayout_Dump(void* c_this);
	[LinkName("QGraphicsLinearLayout_AddStretch1")]
	public static extern void QGraphicsLinearLayout_AddStretch1(void* c_this, int32 stretch);
	[LinkName("QGraphicsLinearLayout_InsertStretch2")]
	public static extern void QGraphicsLinearLayout_InsertStretch2(void* c_this, int32 index, int32 stretch);
	[LinkName("QGraphicsLinearLayout_Dump1")]
	public static extern void QGraphicsLinearLayout_Dump1(void* c_this, int32 indent);
}