using System;
using System.Interop;
namespace Qt;

public struct QLayoutItem
{
	[LinkName("QLayoutItem_new")]
	public static extern QLayoutItem* QLayoutItem_new();
	[LinkName("QLayoutItem_new2")]
	public static extern QLayoutItem* QLayoutItem_new2(QLayoutItem* param1);
	[LinkName("QLayoutItem_new3")]
	public static extern QLayoutItem* QLayoutItem_new3(int64 alignment);
	[LinkName("QLayoutItem_SizeHint")]
	public static extern QSize QLayoutItem_SizeHint(Self* c_this);
	[LinkName("QLayoutItem_MinimumSize")]
	public static extern QSize QLayoutItem_MinimumSize(Self* c_this);
	[LinkName("QLayoutItem_MaximumSize")]
	public static extern QSize QLayoutItem_MaximumSize(Self* c_this);
	[LinkName("QLayoutItem_ExpandingDirections")]
	public static extern int64 QLayoutItem_ExpandingDirections(Self* c_this);
	[LinkName("QLayoutItem_SetGeometry")]
	public static extern void QLayoutItem_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QLayoutItem_Geometry")]
	public static extern QRect QLayoutItem_Geometry(Self* c_this);
	[LinkName("QLayoutItem_IsEmpty")]
	public static extern bool QLayoutItem_IsEmpty(Self* c_this);
	[LinkName("QLayoutItem_HasHeightForWidth")]
	public static extern bool QLayoutItem_HasHeightForWidth(Self* c_this);
	[LinkName("QLayoutItem_HeightForWidth")]
	public static extern int32 QLayoutItem_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QLayoutItem_MinimumHeightForWidth")]
	public static extern int32 QLayoutItem_MinimumHeightForWidth(Self* c_this, int32 param1);
	[LinkName("QLayoutItem_Invalidate")]
	public static extern void QLayoutItem_Invalidate(Self* c_this);
	[LinkName("QLayoutItem_Widget")]
	public static extern QWidget* QLayoutItem_Widget(Self* c_this);
	[LinkName("QLayoutItem_Layout")]
	public static extern QLayout* QLayoutItem_Layout(Self* c_this);
	[LinkName("QLayoutItem_SpacerItem")]
	public static extern QSpacerItem* QLayoutItem_SpacerItem(Self* c_this);
	[LinkName("QLayoutItem_Alignment")]
	public static extern int64 QLayoutItem_Alignment(Self* c_this);
	[LinkName("QLayoutItem_SetAlignment")]
	public static extern void QLayoutItem_SetAlignment(Self* c_this, int64 a);
	[LinkName("QLayoutItem_ControlTypes")]
	public static extern int64 QLayoutItem_ControlTypes(Self* c_this);
	[LinkName("QLayoutItem_OperatorAssign")]
	public static extern void QLayoutItem_OperatorAssign(Self* c_this, QLayoutItem* param1);
}
public struct QSpacerItem : QLayoutItem
{
	[LinkName("QSpacerItem_new")]
	public static extern QSpacerItem* QSpacerItem_new(int32 w, int32 h);
	[LinkName("QSpacerItem_new2")]
	public static extern QSpacerItem* QSpacerItem_new2(QSpacerItem* param1);
	[LinkName("QSpacerItem_new3")]
	public static extern QSpacerItem* QSpacerItem_new3(int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_new4")]
	public static extern QSpacerItem* QSpacerItem_new4(int32 w, int32 h, int64 hData, int64 vData);
	[LinkName("QSpacerItem_ChangeSize")]
	public static extern void QSpacerItem_ChangeSize(Self* c_this, int32 w, int32 h);
	[LinkName("QSpacerItem_SizeHint")]
	public static extern QSize QSpacerItem_SizeHint(Self* c_this);
	[LinkName("QSpacerItem_MinimumSize")]
	public static extern QSize QSpacerItem_MinimumSize(Self* c_this);
	[LinkName("QSpacerItem_MaximumSize")]
	public static extern QSize QSpacerItem_MaximumSize(Self* c_this);
	[LinkName("QSpacerItem_ExpandingDirections")]
	public static extern int64 QSpacerItem_ExpandingDirections(Self* c_this);
	[LinkName("QSpacerItem_IsEmpty")]
	public static extern bool QSpacerItem_IsEmpty(Self* c_this);
	[LinkName("QSpacerItem_SetGeometry")]
	public static extern void QSpacerItem_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QSpacerItem_Geometry")]
	public static extern QRect QSpacerItem_Geometry(Self* c_this);
	[LinkName("QSpacerItem_SpacerItem")]
	public static extern QSpacerItem* QSpacerItem_SpacerItem(Self* c_this);
	[LinkName("QSpacerItem_SizePolicy")]
	public static extern QSizePolicy QSpacerItem_SizePolicy(Self* c_this);
	[LinkName("QSpacerItem_ChangeSize3")]
	public static extern void QSpacerItem_ChangeSize3(Self* c_this, int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_ChangeSize4")]
	public static extern void QSpacerItem_ChangeSize4(Self* c_this, int32 w, int32 h, int64 hData, int64 vData);
}
public struct QWidgetItem : QLayoutItem
{
	[LinkName("QWidgetItem_new")]
	public static extern QWidgetItem* QWidgetItem_new(QWidget* w);
	[LinkName("QWidgetItem_SizeHint")]
	public static extern QSize QWidgetItem_SizeHint(Self* c_this);
	[LinkName("QWidgetItem_MinimumSize")]
	public static extern QSize QWidgetItem_MinimumSize(Self* c_this);
	[LinkName("QWidgetItem_MaximumSize")]
	public static extern QSize QWidgetItem_MaximumSize(Self* c_this);
	[LinkName("QWidgetItem_ExpandingDirections")]
	public static extern int64 QWidgetItem_ExpandingDirections(Self* c_this);
	[LinkName("QWidgetItem_IsEmpty")]
	public static extern bool QWidgetItem_IsEmpty(Self* c_this);
	[LinkName("QWidgetItem_SetGeometry")]
	public static extern void QWidgetItem_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QWidgetItem_Geometry")]
	public static extern QRect QWidgetItem_Geometry(Self* c_this);
	[LinkName("QWidgetItem_Widget")]
	public static extern QWidget* QWidgetItem_Widget(Self* c_this);
	[LinkName("QWidgetItem_HasHeightForWidth")]
	public static extern bool QWidgetItem_HasHeightForWidth(Self* c_this);
	[LinkName("QWidgetItem_HeightForWidth")]
	public static extern int32 QWidgetItem_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QWidgetItem_MinimumHeightForWidth")]
	public static extern int32 QWidgetItem_MinimumHeightForWidth(Self* c_this, int32 param1);
	[LinkName("QWidgetItem_ControlTypes")]
	public static extern int64 QWidgetItem_ControlTypes(Self* c_this);
}
public struct QWidgetItemV2 : QWidgetItem
{
	[LinkName("QWidgetItemV2_new")]
	public static extern QWidgetItemV2* QWidgetItemV2_new(QWidget* widget);
	[LinkName("QWidgetItemV2_SizeHint")]
	public static extern QSize QWidgetItemV2_SizeHint(Self* c_this);
	[LinkName("QWidgetItemV2_MinimumSize")]
	public static extern QSize QWidgetItemV2_MinimumSize(Self* c_this);
	[LinkName("QWidgetItemV2_MaximumSize")]
	public static extern QSize QWidgetItemV2_MaximumSize(Self* c_this);
	[LinkName("QWidgetItemV2_HeightForWidth")]
	public static extern int32 QWidgetItemV2_HeightForWidth(Self* c_this, int32 width);
}