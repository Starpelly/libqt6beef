using System;
using System.Interop;
namespace Qt;

public struct QGraphicsGridLayout : QGraphicsLayout
{
	[LinkName("QGraphicsGridLayout_new")]
	public static extern QGraphicsGridLayout* QGraphicsGridLayout_new();
	[LinkName("QGraphicsGridLayout_new2")]
	public static extern QGraphicsGridLayout* QGraphicsGridLayout_new2(QGraphicsLayoutItem* parent);
	[LinkName("QGraphicsGridLayout_AddItem")]
	public static extern void QGraphicsGridLayout_AddItem(Self* c_this, QGraphicsLayoutItem* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGraphicsGridLayout_AddItem2")]
	public static extern void QGraphicsGridLayout_AddItem2(Self* c_this, QGraphicsLayoutItem* item, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_SetHorizontalSpacing")]
	public static extern void QGraphicsGridLayout_SetHorizontalSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_HorizontalSpacing")]
	public static extern double QGraphicsGridLayout_HorizontalSpacing(Self* c_this);
	[LinkName("QGraphicsGridLayout_SetVerticalSpacing")]
	public static extern void QGraphicsGridLayout_SetVerticalSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_VerticalSpacing")]
	public static extern double QGraphicsGridLayout_VerticalSpacing(Self* c_this);
	[LinkName("QGraphicsGridLayout_SetSpacing")]
	public static extern void QGraphicsGridLayout_SetSpacing(Self* c_this, double spacing);
	[LinkName("QGraphicsGridLayout_SetRowSpacing")]
	public static extern void QGraphicsGridLayout_SetRowSpacing(Self* c_this, int32 row, double spacing);
	[LinkName("QGraphicsGridLayout_RowSpacing")]
	public static extern double QGraphicsGridLayout_RowSpacing(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnSpacing")]
	public static extern void QGraphicsGridLayout_SetColumnSpacing(Self* c_this, int32 column, double spacing);
	[LinkName("QGraphicsGridLayout_ColumnSpacing")]
	public static extern double QGraphicsGridLayout_ColumnSpacing(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowStretchFactor")]
	public static extern void QGraphicsGridLayout_SetRowStretchFactor(Self* c_this, int32 row, int32 stretch);
	[LinkName("QGraphicsGridLayout_RowStretchFactor")]
	public static extern int32 QGraphicsGridLayout_RowStretchFactor(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnStretchFactor")]
	public static extern void QGraphicsGridLayout_SetColumnStretchFactor(Self* c_this, int32 column, int32 stretch);
	[LinkName("QGraphicsGridLayout_ColumnStretchFactor")]
	public static extern int32 QGraphicsGridLayout_ColumnStretchFactor(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetRowMinimumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMinimumHeight(Self* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMinimumHeight")]
	public static extern double QGraphicsGridLayout_RowMinimumHeight(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowPreferredHeight")]
	public static extern void QGraphicsGridLayout_SetRowPreferredHeight(Self* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowPreferredHeight")]
	public static extern double QGraphicsGridLayout_RowPreferredHeight(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowMaximumHeight")]
	public static extern void QGraphicsGridLayout_SetRowMaximumHeight(Self* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_RowMaximumHeight")]
	public static extern double QGraphicsGridLayout_RowMaximumHeight(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetRowFixedHeight")]
	public static extern void QGraphicsGridLayout_SetRowFixedHeight(Self* c_this, int32 row, double height);
	[LinkName("QGraphicsGridLayout_SetColumnMinimumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMinimumWidth(Self* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMinimumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMinimumWidth(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnPreferredWidth")]
	public static extern void QGraphicsGridLayout_SetColumnPreferredWidth(Self* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnPreferredWidth")]
	public static extern double QGraphicsGridLayout_ColumnPreferredWidth(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnMaximumWidth")]
	public static extern void QGraphicsGridLayout_SetColumnMaximumWidth(Self* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_ColumnMaximumWidth")]
	public static extern double QGraphicsGridLayout_ColumnMaximumWidth(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetColumnFixedWidth")]
	public static extern void QGraphicsGridLayout_SetColumnFixedWidth(Self* c_this, int32 column, double width);
	[LinkName("QGraphicsGridLayout_SetRowAlignment")]
	public static extern void QGraphicsGridLayout_SetRowAlignment(Self* c_this, int32 row, int64 alignment);
	[LinkName("QGraphicsGridLayout_RowAlignment")]
	public static extern int64 QGraphicsGridLayout_RowAlignment(Self* c_this, int32 row);
	[LinkName("QGraphicsGridLayout_SetColumnAlignment")]
	public static extern void QGraphicsGridLayout_SetColumnAlignment(Self* c_this, int32 column, int64 alignment);
	[LinkName("QGraphicsGridLayout_ColumnAlignment")]
	public static extern int64 QGraphicsGridLayout_ColumnAlignment(Self* c_this, int32 column);
	[LinkName("QGraphicsGridLayout_SetAlignment")]
	public static extern void QGraphicsGridLayout_SetAlignment(Self* c_this, QGraphicsLayoutItem* item, int64 alignment);
	[LinkName("QGraphicsGridLayout_Alignment")]
	public static extern int64 QGraphicsGridLayout_Alignment(Self* c_this, QGraphicsLayoutItem* item);
	[LinkName("QGraphicsGridLayout_RowCount")]
	public static extern int32 QGraphicsGridLayout_RowCount(Self* c_this);
	[LinkName("QGraphicsGridLayout_ColumnCount")]
	public static extern int32 QGraphicsGridLayout_ColumnCount(Self* c_this);
	[LinkName("QGraphicsGridLayout_ItemAt")]
	public static extern QGraphicsLayoutItem* QGraphicsGridLayout_ItemAt(Self* c_this, int32 row, int32 column);
	[LinkName("QGraphicsGridLayout_Count")]
	public static extern int32 QGraphicsGridLayout_Count(Self* c_this);
	[LinkName("QGraphicsGridLayout_ItemAtWithIndex")]
	public static extern QGraphicsLayoutItem* QGraphicsGridLayout_ItemAtWithIndex(Self* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveAt")]
	public static extern void QGraphicsGridLayout_RemoveAt(Self* c_this, int32 index);
	[LinkName("QGraphicsGridLayout_RemoveItem")]
	public static extern void QGraphicsGridLayout_RemoveItem(Self* c_this, QGraphicsLayoutItem* item);
	[LinkName("QGraphicsGridLayout_Invalidate")]
	public static extern void QGraphicsGridLayout_Invalidate(Self* c_this);
	[LinkName("QGraphicsGridLayout_SetGeometry")]
	public static extern void QGraphicsGridLayout_SetGeometry(Self* c_this, QRectF* rect);
	[LinkName("QGraphicsGridLayout_SizeHint")]
	public static extern QSizeF QGraphicsGridLayout_SizeHint(Self* c_this, int64 which, QSizeF* constraint);
	[LinkName("QGraphicsGridLayout_AddItem6")]
	public static extern void QGraphicsGridLayout_AddItem6(Self* c_this, QGraphicsLayoutItem* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 alignment);
	[LinkName("QGraphicsGridLayout_AddItem4")]
	public static extern void QGraphicsGridLayout_AddItem4(Self* c_this, QGraphicsLayoutItem* item, int32 row, int32 column, int64 alignment);
}