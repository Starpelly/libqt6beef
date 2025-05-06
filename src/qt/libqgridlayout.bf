using System;
using System.Interop;
namespace Qt;

public struct QGridLayout : QLayout
{
	[LinkName("QGridLayout_new")]
	public static extern QGridLayout* QGridLayout_new(QWidget* parent);
	[LinkName("QGridLayout_new2")]
	public static extern QGridLayout* QGridLayout_new2();
	[LinkName("QGridLayout_MetaObject")]
	public static extern QMetaObject* QGridLayout_MetaObject(Self* c_this);
	[LinkName("QGridLayout_Metacast")]
	public static extern void* QGridLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QGridLayout_Metacall")]
	public static extern int32 QGridLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGridLayout_Tr")]
	public static extern libqt_string QGridLayout_Tr(char8[] s);
	[LinkName("QGridLayout_SizeHint")]
	public static extern QSize QGridLayout_SizeHint(Self* c_this);
	[LinkName("QGridLayout_MinimumSize")]
	public static extern QSize QGridLayout_MinimumSize(Self* c_this);
	[LinkName("QGridLayout_MaximumSize")]
	public static extern QSize QGridLayout_MaximumSize(Self* c_this);
	[LinkName("QGridLayout_SetHorizontalSpacing")]
	public static extern void QGridLayout_SetHorizontalSpacing(Self* c_this, int32 spacing);
	[LinkName("QGridLayout_HorizontalSpacing")]
	public static extern int32 QGridLayout_HorizontalSpacing(Self* c_this);
	[LinkName("QGridLayout_SetVerticalSpacing")]
	public static extern void QGridLayout_SetVerticalSpacing(Self* c_this, int32 spacing);
	[LinkName("QGridLayout_VerticalSpacing")]
	public static extern int32 QGridLayout_VerticalSpacing(Self* c_this);
	[LinkName("QGridLayout_SetSpacing")]
	public static extern void QGridLayout_SetSpacing(Self* c_this, int32 spacing);
	[LinkName("QGridLayout_Spacing")]
	public static extern int32 QGridLayout_Spacing(Self* c_this);
	[LinkName("QGridLayout_SetRowStretch")]
	public static extern void QGridLayout_SetRowStretch(Self* c_this, int32 row, int32 stretch);
	[LinkName("QGridLayout_SetColumnStretch")]
	public static extern void QGridLayout_SetColumnStretch(Self* c_this, int32 column, int32 stretch);
	[LinkName("QGridLayout_RowStretch")]
	public static extern int32 QGridLayout_RowStretch(Self* c_this, int32 row);
	[LinkName("QGridLayout_ColumnStretch")]
	public static extern int32 QGridLayout_ColumnStretch(Self* c_this, int32 column);
	[LinkName("QGridLayout_SetRowMinimumHeight")]
	public static extern void QGridLayout_SetRowMinimumHeight(Self* c_this, int32 row, int32 minSize);
	[LinkName("QGridLayout_SetColumnMinimumWidth")]
	public static extern void QGridLayout_SetColumnMinimumWidth(Self* c_this, int32 column, int32 minSize);
	[LinkName("QGridLayout_RowMinimumHeight")]
	public static extern int32 QGridLayout_RowMinimumHeight(Self* c_this, int32 row);
	[LinkName("QGridLayout_ColumnMinimumWidth")]
	public static extern int32 QGridLayout_ColumnMinimumWidth(Self* c_this, int32 column);
	[LinkName("QGridLayout_ColumnCount")]
	public static extern int32 QGridLayout_ColumnCount(Self* c_this);
	[LinkName("QGridLayout_RowCount")]
	public static extern int32 QGridLayout_RowCount(Self* c_this);
	[LinkName("QGridLayout_CellRect")]
	public static extern QRect QGridLayout_CellRect(Self* c_this, int32 row, int32 column);
	[LinkName("QGridLayout_HasHeightForWidth")]
	public static extern bool QGridLayout_HasHeightForWidth(Self* c_this);
	[LinkName("QGridLayout_HeightForWidth")]
	public static extern int32 QGridLayout_HeightForWidth(Self* c_this, int32 param1);
	[LinkName("QGridLayout_MinimumHeightForWidth")]
	public static extern int32 QGridLayout_MinimumHeightForWidth(Self* c_this, int32 param1);
	[LinkName("QGridLayout_ExpandingDirections")]
	public static extern int64 QGridLayout_ExpandingDirections(Self* c_this);
	[LinkName("QGridLayout_Invalidate")]
	public static extern void QGridLayout_Invalidate(Self* c_this);
	[LinkName("QGridLayout_AddWidget")]
	public static extern void QGridLayout_AddWidget(Self* c_this, QWidget* w);
	[LinkName("QGridLayout_AddWidget2")]
	public static extern void QGridLayout_AddWidget2(Self* c_this, QWidget* param1, int32 row, int32 column);
	[LinkName("QGridLayout_AddWidget3")]
	public static extern void QGridLayout_AddWidget3(Self* c_this, QWidget* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_AddLayout")]
	public static extern void QGridLayout_AddLayout(Self* c_this, QLayout* param1, int32 row, int32 column);
	[LinkName("QGridLayout_AddLayout2")]
	public static extern void QGridLayout_AddLayout2(Self* c_this, QLayout* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_SetOriginCorner")]
	public static extern void QGridLayout_SetOriginCorner(Self* c_this, int64 originCorner);
	[LinkName("QGridLayout_OriginCorner")]
	public static extern int64 QGridLayout_OriginCorner(Self* c_this);
	[LinkName("QGridLayout_ItemAt")]
	public static extern QLayoutItem* QGridLayout_ItemAt(Self* c_this, int32 index);
	[LinkName("QGridLayout_ItemAtPosition")]
	public static extern QLayoutItem* QGridLayout_ItemAtPosition(Self* c_this, int32 row, int32 column);
	[LinkName("QGridLayout_TakeAt")]
	public static extern QLayoutItem* QGridLayout_TakeAt(Self* c_this, int32 index);
	[LinkName("QGridLayout_Count")]
	public static extern int32 QGridLayout_Count(Self* c_this);
	[LinkName("QGridLayout_SetGeometry")]
	public static extern void QGridLayout_SetGeometry(Self* c_this, QRect* geometry);
	[LinkName("QGridLayout_AddItem")]
	public static extern void QGridLayout_AddItem(Self* c_this, QLayoutItem* item, int32 row, int32 column);
	[LinkName("QGridLayout_SetDefaultPositioning")]
	public static extern void QGridLayout_SetDefaultPositioning(Self* c_this, int32 n, int64 orient);
	[LinkName("QGridLayout_GetItemPosition")]
	public static extern void QGridLayout_GetItemPosition(Self* c_this, int32 idx, int32* row, int32* column, int32* rowSpan, int32* columnSpan);
	[LinkName("QGridLayout_AddItemWithQLayoutItem")]
	public static extern void QGridLayout_AddItemWithQLayoutItem(Self* c_this, QLayoutItem* param1);
	[LinkName("QGridLayout_Tr2")]
	public static extern libqt_string QGridLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QGridLayout_Tr3")]
	public static extern libqt_string QGridLayout_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGridLayout_AddWidget4")]
	public static extern void QGridLayout_AddWidget4(Self* c_this, QWidget* param1, int32 row, int32 column, int64 param4);
	[LinkName("QGridLayout_AddWidget6")]
	public static extern void QGridLayout_AddWidget6(Self* c_this, QWidget* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
	[LinkName("QGridLayout_AddLayout4")]
	public static extern void QGridLayout_AddLayout4(Self* c_this, QLayout* param1, int32 row, int32 column, int64 param4);
	[LinkName("QGridLayout_AddLayout6")]
	public static extern void QGridLayout_AddLayout6(Self* c_this, QLayout* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
	[LinkName("QGridLayout_AddItem4")]
	public static extern void QGridLayout_AddItem4(Self* c_this, QLayoutItem* item, int32 row, int32 column, int32 rowSpan);
	[LinkName("QGridLayout_AddItem5")]
	public static extern void QGridLayout_AddItem5(Self* c_this, QLayoutItem* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_AddItem6")]
	public static extern void QGridLayout_AddItem6(Self* c_this, QLayoutItem* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
}