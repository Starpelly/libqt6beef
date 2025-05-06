using System;
using System.Interop;
namespace Qt;

public struct QLayoutItem
{
	[LinkName("QLayoutItem_new")]
	public static extern void* QLayoutItem_new();
	[LinkName("QLayoutItem_new2")]
	public static extern void* QLayoutItem_new2(QLayoutItem param1);
	[LinkName("QLayoutItem_new3")]
	public static extern void* QLayoutItem_new3(int64 alignment);
	[LinkName("QLayoutItem_SizeHint")]
	public static extern QSize QLayoutItem_SizeHint(void* c_this);
	[LinkName("QLayoutItem_MinimumSize")]
	public static extern QSize QLayoutItem_MinimumSize(void* c_this);
	[LinkName("QLayoutItem_MaximumSize")]
	public static extern QSize QLayoutItem_MaximumSize(void* c_this);
	[LinkName("QLayoutItem_ExpandingDirections")]
	public static extern int64 QLayoutItem_ExpandingDirections(void* c_this);
	[LinkName("QLayoutItem_SetGeometry")]
	public static extern void QLayoutItem_SetGeometry(void* c_this, QRect geometry);
	[LinkName("QLayoutItem_Geometry")]
	public static extern QRect QLayoutItem_Geometry(void* c_this);
	[LinkName("QLayoutItem_IsEmpty")]
	public static extern bool QLayoutItem_IsEmpty(void* c_this);
	[LinkName("QLayoutItem_HasHeightForWidth")]
	public static extern bool QLayoutItem_HasHeightForWidth(void* c_this);
	[LinkName("QLayoutItem_HeightForWidth")]
	public static extern int32 QLayoutItem_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QLayoutItem_MinimumHeightForWidth")]
	public static extern int32 QLayoutItem_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QLayoutItem_Invalidate")]
	public static extern void QLayoutItem_Invalidate(void* c_this);
	[LinkName("QLayoutItem_Widget")]
	public static extern QWidget QLayoutItem_Widget(void* c_this);
	[LinkName("QLayoutItem_Layout")]
	public static extern QLayout QLayoutItem_Layout(void* c_this);
	[LinkName("QLayoutItem_SpacerItem")]
	public static extern QSpacerItem QLayoutItem_SpacerItem(void* c_this);
	[LinkName("QLayoutItem_Alignment")]
	public static extern int64 QLayoutItem_Alignment(void* c_this);
	[LinkName("QLayoutItem_SetAlignment")]
	public static extern void QLayoutItem_SetAlignment(void* c_this, int64 a);
	[LinkName("QLayoutItem_ControlTypes")]
	public static extern int64 QLayoutItem_ControlTypes(void* c_this);
	[LinkName("QLayoutItem_OperatorAssign")]
	public static extern void QLayoutItem_OperatorAssign(void* c_this, QLayoutItem param1);
}
public struct QSpacerItem
{
	[LinkName("QSpacerItem_new")]
	public static extern void* QSpacerItem_new(int32 w, int32 h);
	[LinkName("QSpacerItem_new2")]
	public static extern void* QSpacerItem_new2(QSpacerItem param1);
	[LinkName("QSpacerItem_new3")]
	public static extern void* QSpacerItem_new3(int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_new4")]
	public static extern void* QSpacerItem_new4(int32 w, int32 h, int64 hData, int64 vData);
	[LinkName("QSpacerItem_ChangeSize")]
	public static extern void QSpacerItem_ChangeSize(void* c_this, int32 w, int32 h);
	[LinkName("QSpacerItem_SizeHint")]
	public static extern QSize QSpacerItem_SizeHint(void* c_this);
	[LinkName("QSpacerItem_MinimumSize")]
	public static extern QSize QSpacerItem_MinimumSize(void* c_this);
	[LinkName("QSpacerItem_MaximumSize")]
	public static extern QSize QSpacerItem_MaximumSize(void* c_this);
	[LinkName("QSpacerItem_ExpandingDirections")]
	public static extern int64 QSpacerItem_ExpandingDirections(void* c_this);
	[LinkName("QSpacerItem_IsEmpty")]
	public static extern bool QSpacerItem_IsEmpty(void* c_this);
	[LinkName("QSpacerItem_SetGeometry")]
	public static extern void QSpacerItem_SetGeometry(void* c_this, QRect geometry);
	[LinkName("QSpacerItem_Geometry")]
	public static extern QRect QSpacerItem_Geometry(void* c_this);
	[LinkName("QSpacerItem_SpacerItem")]
	public static extern QSpacerItem QSpacerItem_SpacerItem(void* c_this);
	[LinkName("QSpacerItem_SizePolicy")]
	public static extern QSizePolicy QSpacerItem_SizePolicy(void* c_this);
	[LinkName("QSpacerItem_ChangeSize3")]
	public static extern void QSpacerItem_ChangeSize3(void* c_this, int32 w, int32 h, int64 hData);
	[LinkName("QSpacerItem_ChangeSize4")]
	public static extern void QSpacerItem_ChangeSize4(void* c_this, int32 w, int32 h, int64 hData, int64 vData);
}
public struct QWidgetItem
{
	[LinkName("QWidgetItem_new")]
	public static extern void* QWidgetItem_new(QWidget w);
	[LinkName("QWidgetItem_SizeHint")]
	public static extern QSize QWidgetItem_SizeHint(void* c_this);
	[LinkName("QWidgetItem_MinimumSize")]
	public static extern QSize QWidgetItem_MinimumSize(void* c_this);
	[LinkName("QWidgetItem_MaximumSize")]
	public static extern QSize QWidgetItem_MaximumSize(void* c_this);
	[LinkName("QWidgetItem_ExpandingDirections")]
	public static extern int64 QWidgetItem_ExpandingDirections(void* c_this);
	[LinkName("QWidgetItem_IsEmpty")]
	public static extern bool QWidgetItem_IsEmpty(void* c_this);
	[LinkName("QWidgetItem_SetGeometry")]
	public static extern void QWidgetItem_SetGeometry(void* c_this, QRect geometry);
	[LinkName("QWidgetItem_Geometry")]
	public static extern QRect QWidgetItem_Geometry(void* c_this);
	[LinkName("QWidgetItem_Widget")]
	public static extern QWidget QWidgetItem_Widget(void* c_this);
	[LinkName("QWidgetItem_HasHeightForWidth")]
	public static extern bool QWidgetItem_HasHeightForWidth(void* c_this);
	[LinkName("QWidgetItem_HeightForWidth")]
	public static extern int32 QWidgetItem_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidgetItem_MinimumHeightForWidth")]
	public static extern int32 QWidgetItem_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QWidgetItem_ControlTypes")]
	public static extern int64 QWidgetItem_ControlTypes(void* c_this);
}
public struct QWidgetItemV2
{
	[LinkName("QWidgetItemV2_new")]
	public static extern void* QWidgetItemV2_new(QWidget widget);
	[LinkName("QWidgetItemV2_SizeHint")]
	public static extern QSize QWidgetItemV2_SizeHint(void* c_this);
	[LinkName("QWidgetItemV2_MinimumSize")]
	public static extern QSize QWidgetItemV2_MinimumSize(void* c_this);
	[LinkName("QWidgetItemV2_MaximumSize")]
	public static extern QSize QWidgetItemV2_MaximumSize(void* c_this);
	[LinkName("QWidgetItemV2_HeightForWidth")]
	public static extern int32 QWidgetItemV2_HeightForWidth(void* c_this, int32 width);
}