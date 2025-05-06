using System;
using System.Interop;
namespace Qt;

public struct QGraphicsGridLayout
{
	[LinkName("QGraphicsGridLayout_new")]
	public static extern void* QGraphicsGridLayout_new();
	[LinkName("QGraphicsGridLayout_new2")]
	public static extern void* QGraphicsGridLayout_new2(QGraphicsLayoutItem parent);
	[LinkName("QGraphicsGridLayout_AddItem")]
	public static extern void QGraphicsGridLayout_AddItem(void* c_this, QGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGraphicsGridLayout_AddItem2")]
	public static extern void QGraphicsGridLayout_AddItem2(void* c_this, QGraphicsLayoutItem item, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_SetHorizontalSpacing")]
	public static extern void QGraphicsGridLayout_SetHorizontalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_HorizontalSpacing")]
	public static extern double QGraphicsGridLayout_HorizontalSpacing(void* c_this);
	[LinkName("QGraphicsGridLayout_SetVerticalSpacing")]
	public static extern void QGraphicsGridLayout_SetVerticalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_VerticalSpacing")]
	public static extern double QGraphicsGridLayout_VerticalSpacing(void* c_this);
	[LinkName("QGraphicsGridLayout_SetSpacing")]
	public static extern void QGraphicsGridLayout_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_SetRowSpacing")]
	public static extern void QGraphicsGridLayout_SetRowSpacing(void* c_this, int32 row, double spacing);
	[LinkName("QGraphicsGridLayout_RowSpacing")]
	public static extern double QGraphicsGridLayout_RowSpacing(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnSpacing")]
	public static extern void QGraphicsGridLayout_SetColumnSpacing(void* c_this, int32 column, double spacing);
	[LinkName("QGraphicsGridLayout_ColumnSpacing")]
	public static extern double QGraphicsGridLayout_ColumnSpacing(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowStretchFactor")]
	public static extern void QGraphicsGridLayout_SetRowStretchFactor(void* c_this, int32 row, int32 stretch);
	[LinkName("QGraphicsGridLayout_RowStretchFactor")]
	public static extern int32 QGraphicsGridLayout_RowStretchFactor(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnStretchFactor")]
	public static extern void QGraphicsGridLayout_SetColumnStretchFactor(void* c_this, int32 column, int32 stretch);
	[LinkName("QGraphicsGridLayout_ColumnStretchFactor")]
	public static extern int32 QGraphicsGridLayout_ColumnStretchFactor(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowMinimumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMinimumHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMinimumHeight")]
	public static extern double QGraphicsGridLayout_RowMinimumHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowPreferredHeight")]
	public static extern void QGraphicsGridLayout_SetRowPreferredHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowPreferredHeight")]
	public static extern double QGraphicsGridLayout_RowPreferredHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowMaximumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMaximumHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMaximumHeight")]
	public static extern double QGraphicsGridLayout_RowMaximumHeight(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowFixedHeight")]
	public static extern void QGraphicsGridLayout_SetRowFixedHeight(void* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_SetColumnMinimumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMinimumWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMinimumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMinimumWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnPreferredWidth")]
	public static extern void QGraphicsGridLayout_SetColumnPreferredWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnPreferredWidth")]
	public static extern double QGraphicsGridLayout_ColumnPreferredWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnMaximumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMaximumWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMaximumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMaximumWidth(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnFixedWidth")]
	public static extern void QGraphicsGridLayout_SetColumnFixedWidth(void* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_SetRowAlignment")]
	public static extern void QGraphicsGridLayout_SetRowAlignment(void* c_this, int32 row, int64 alignment);
	[LinkName("QGraphicsGridLayout_RowAlignment")]
	public static extern int64 QGraphicsGridLayout_RowAlignment(void* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnAlignment")]
	public static extern void QGraphicsGridLayout_SetColumnAlignment(void* c_this, int32 column, int64 alignment);
	[LinkName("QGraphicsGridLayout_ColumnAlignment")]
	public static extern int64 QGraphicsGridLayout_ColumnAlignment(void* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetAlignment")]
	public static extern void QGraphicsGridLayout_SetAlignment(void* c_this, QGraphicsLayoutItem item, int64 alignment);
	[LinkName("QGraphicsGridLayout_Alignment")]
	public static extern int64 QGraphicsGridLayout_Alignment(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsGridLayout_RowCount")]
	public static extern int32 QGraphicsGridLayout_RowCount(void* c_this);
	[LinkName("QGraphicsGridLayout_ColumnCount")]
	public static extern int32 QGraphicsGridLayout_ColumnCount(void* c_this);
	[LinkName("QGraphicsGridLayout_ItemAt")]
	public static extern QGraphicsLayoutItem QGraphicsGridLayout_ItemAt(void* c_this, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_Count")]
	public static extern int32 QGraphicsGridLayout_Count(void* c_this);
	[LinkName("QGraphicsGridLayout_ItemAtWithIndex")]
	public static extern QGraphicsLayoutItem QGraphicsGridLayout_ItemAtWithIndex(void* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveAt")]
	public static extern void QGraphicsGridLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveItem")]
	public static extern void QGraphicsGridLayout_RemoveItem(void* c_this, QGraphicsLayoutItem item);
	[LinkName("QGraphicsGridLayout_Invalidate")]
	public static extern void QGraphicsGridLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsGridLayout_SetGeometry")]
	public static extern void QGraphicsGridLayout_SetGeometry(void* c_this, QRectF rect);
	[LinkName("QGraphicsGridLayout_SizeHint")]
	public static extern QSizeF QGraphicsGridLayout_SizeHint(void* c_this, int64 which, QSizeF constraint);
	[LinkName("QGraphicsGridLayout_AddItem6")]
	public static extern void QGraphicsGridLayout_AddItem6(void* c_this, QGraphicsLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment);
	[LinkName("QGraphicsGridLayout_AddItem4")]
	public static extern void QGraphicsGridLayout_AddItem4(void* c_this, QGraphicsLayoutItem item, int32 row, int32 column, int64 alignment);
}