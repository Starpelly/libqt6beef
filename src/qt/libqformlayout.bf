using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFormLayout__FieldGrowthPolicy
{
	FieldsStayAtSizeHint = 0,
	ExpandingFieldsGrow = 1,
	AllNonFixedFieldsGrow = 2,
}
[AllowDuplicates]
public enum QFormLayout__RowWrapPolicy
{
	DontWrapRows = 0,
	WrapLongRows = 1,
	WrapAllRows = 2,
}
[AllowDuplicates]
public enum QFormLayout__ItemRole
{
	LabelRole = 0,
	FieldRole = 1,
	SpanningRole = 2,
}
public struct QFormLayout : QLayout
{
	[LinkName("QFormLayout_new")]
	public static extern QFormLayout* QFormLayout_new(QWidget* parent);
	[LinkName("QFormLayout_new2")]
	public static extern QFormLayout* QFormLayout_new2();
	[LinkName("QFormLayout_MetaObject")]
	public static extern QMetaObject* QFormLayout_MetaObject(Self* c_this);
	[LinkName("QFormLayout_Metacast")]
	public static extern void* QFormLayout_Metacast(Self* c_this, char8[] param1);
	[LinkName("QFormLayout_Metacall")]
	public static extern int32 QFormLayout_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFormLayout_Tr")]
	public static extern libqt_string QFormLayout_Tr(char8[] s);
	[LinkName("QFormLayout_SetFieldGrowthPolicy")]
	public static extern void QFormLayout_SetFieldGrowthPolicy(Self* c_this, int64 policy);
	[LinkName("QFormLayout_FieldGrowthPolicy")]
	public static extern int64 QFormLayout_FieldGrowthPolicy(Self* c_this);
	[LinkName("QFormLayout_SetRowWrapPolicy")]
	public static extern void QFormLayout_SetRowWrapPolicy(Self* c_this, int64 policy);
	[LinkName("QFormLayout_RowWrapPolicy")]
	public static extern int64 QFormLayout_RowWrapPolicy(Self* c_this);
	[LinkName("QFormLayout_SetLabelAlignment")]
	public static extern void QFormLayout_SetLabelAlignment(Self* c_this, int64 alignment);
	[LinkName("QFormLayout_LabelAlignment")]
	public static extern int64 QFormLayout_LabelAlignment(Self* c_this);
	[LinkName("QFormLayout_SetFormAlignment")]
	public static extern void QFormLayout_SetFormAlignment(Self* c_this, int64 alignment);
	[LinkName("QFormLayout_FormAlignment")]
	public static extern int64 QFormLayout_FormAlignment(Self* c_this);
	[LinkName("QFormLayout_SetHorizontalSpacing")]
	public static extern void QFormLayout_SetHorizontalSpacing(Self* c_this, int32 spacing);
	[LinkName("QFormLayout_HorizontalSpacing")]
	public static extern int32 QFormLayout_HorizontalSpacing(Self* c_this);
	[LinkName("QFormLayout_SetVerticalSpacing")]
	public static extern void QFormLayout_SetVerticalSpacing(Self* c_this, int32 spacing);
	[LinkName("QFormLayout_VerticalSpacing")]
	public static extern int32 QFormLayout_VerticalSpacing(Self* c_this);
	[LinkName("QFormLayout_Spacing")]
	public static extern int32 QFormLayout_Spacing(Self* c_this);
	[LinkName("QFormLayout_SetSpacing")]
	public static extern void QFormLayout_SetSpacing(Self* c_this, int32 spacing);
	[LinkName("QFormLayout_AddRow")]
	public static extern void QFormLayout_AddRow(Self* c_this, QWidget* label, QWidget* field);
	[LinkName("QFormLayout_AddRow2")]
	public static extern void QFormLayout_AddRow2(Self* c_this, QWidget* label, QLayout* field);
	[LinkName("QFormLayout_AddRow3")]
	public static extern void QFormLayout_AddRow3(Self* c_this, libqt_string labelText, QWidget* field);
	[LinkName("QFormLayout_AddRow4")]
	public static extern void QFormLayout_AddRow4(Self* c_this, libqt_string labelText, QLayout* field);
	[LinkName("QFormLayout_AddRowWithWidget")]
	public static extern void QFormLayout_AddRowWithWidget(Self* c_this, QWidget* widget);
	[LinkName("QFormLayout_AddRowWithLayout")]
	public static extern void QFormLayout_AddRowWithLayout(Self* c_this, QLayout* layout);
	[LinkName("QFormLayout_InsertRow")]
	public static extern void QFormLayout_InsertRow(Self* c_this, int32 row, QWidget* label, QWidget* field);
	[LinkName("QFormLayout_InsertRow2")]
	public static extern void QFormLayout_InsertRow2(Self* c_this, int32 row, QWidget* label, QLayout* field);
	[LinkName("QFormLayout_InsertRow3")]
	public static extern void QFormLayout_InsertRow3(Self* c_this, int32 row, libqt_string labelText, QWidget* field);
	[LinkName("QFormLayout_InsertRow4")]
	public static extern void QFormLayout_InsertRow4(Self* c_this, int32 row, libqt_string labelText, QLayout* field);
	[LinkName("QFormLayout_InsertRow5")]
	public static extern void QFormLayout_InsertRow5(Self* c_this, int32 row, QWidget* widget);
	[LinkName("QFormLayout_InsertRow6")]
	public static extern void QFormLayout_InsertRow6(Self* c_this, int32 row, QLayout* layout);
	[LinkName("QFormLayout_RemoveRow")]
	public static extern void QFormLayout_RemoveRow(Self* c_this, int32 row);
	[LinkName("QFormLayout_RemoveRowWithWidget")]
	public static extern void QFormLayout_RemoveRowWithWidget(Self* c_this, QWidget* widget);
	[LinkName("QFormLayout_RemoveRowWithLayout")]
	public static extern void QFormLayout_RemoveRowWithLayout(Self* c_this, QLayout* layout);
	[LinkName("QFormLayout_TakeRow")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRow(Self* c_this, int32 row);
	[LinkName("QFormLayout_TakeRowWithWidget")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithWidget(Self* c_this, QWidget* widget);
	[LinkName("QFormLayout_TakeRowWithLayout")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithLayout(Self* c_this, QLayout* layout);
	[LinkName("QFormLayout_SetItem")]
	public static extern void QFormLayout_SetItem(Self* c_this, int32 row, int64 role, QLayoutItem* item);
	[LinkName("QFormLayout_SetWidget")]
	public static extern void QFormLayout_SetWidget(Self* c_this, int32 row, int64 role, QWidget* widget);
	[LinkName("QFormLayout_SetLayout")]
	public static extern void QFormLayout_SetLayout(Self* c_this, int32 row, int64 role, QLayout* layout);
	[LinkName("QFormLayout_SetRowVisible")]
	public static extern void QFormLayout_SetRowVisible(Self* c_this, int32 row, bool on);
	[LinkName("QFormLayout_SetRowVisible2")]
	public static extern void QFormLayout_SetRowVisible2(Self* c_this, QWidget* widget, bool on);
	[LinkName("QFormLayout_SetRowVisible3")]
	public static extern void QFormLayout_SetRowVisible3(Self* c_this, QLayout* layout, bool on);
	[LinkName("QFormLayout_IsRowVisible")]
	public static extern bool QFormLayout_IsRowVisible(Self* c_this, int32 row);
	[LinkName("QFormLayout_IsRowVisibleWithWidget")]
	public static extern bool QFormLayout_IsRowVisibleWithWidget(Self* c_this, QWidget* widget);
	[LinkName("QFormLayout_IsRowVisibleWithLayout")]
	public static extern bool QFormLayout_IsRowVisibleWithLayout(Self* c_this, QLayout* layout);
	[LinkName("QFormLayout_ItemAt")]
	public static extern QLayoutItem* QFormLayout_ItemAt(Self* c_this, int32 row, int64 role);
	[LinkName("QFormLayout_LabelForField")]
	public static extern QWidget* QFormLayout_LabelForField(Self* c_this, QWidget* field);
	[LinkName("QFormLayout_LabelForFieldWithField")]
	public static extern QWidget* QFormLayout_LabelForFieldWithField(Self* c_this, QLayout* field);
	[LinkName("QFormLayout_AddItem")]
	public static extern void QFormLayout_AddItem(Self* c_this, QLayoutItem* item);
	[LinkName("QFormLayout_ItemAtWithIndex")]
	public static extern QLayoutItem* QFormLayout_ItemAtWithIndex(Self* c_this, int32 index);
	[LinkName("QFormLayout_TakeAt")]
	public static extern QLayoutItem* QFormLayout_TakeAt(Self* c_this, int32 index);
	[LinkName("QFormLayout_SetGeometry")]
	public static extern void QFormLayout_SetGeometry(Self* c_this, QRect* rect);
	[LinkName("QFormLayout_MinimumSize")]
	public static extern QSize QFormLayout_MinimumSize(Self* c_this);
	[LinkName("QFormLayout_SizeHint")]
	public static extern QSize QFormLayout_SizeHint(Self* c_this);
	[LinkName("QFormLayout_Invalidate")]
	public static extern void QFormLayout_Invalidate(Self* c_this);
	[LinkName("QFormLayout_HasHeightForWidth")]
	public static extern bool QFormLayout_HasHeightForWidth(Self* c_this);
	[LinkName("QFormLayout_HeightForWidth")]
	public static extern int32 QFormLayout_HeightForWidth(Self* c_this, int32 width);
	[LinkName("QFormLayout_ExpandingDirections")]
	public static extern int64 QFormLayout_ExpandingDirections(Self* c_this);
	[LinkName("QFormLayout_Count")]
	public static extern int32 QFormLayout_Count(Self* c_this);
	[LinkName("QFormLayout_RowCount")]
	public static extern int32 QFormLayout_RowCount(Self* c_this);
	[LinkName("QFormLayout_Tr2")]
	public static extern libqt_string QFormLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QFormLayout_Tr3")]
	public static extern libqt_string QFormLayout_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QFormLayout__TakeRowResult
{
}