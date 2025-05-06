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
public struct QFormLayout
{
	[LinkName("QFormLayout_new")]
	public static extern void* QFormLayout_new(QWidget parent);
	[LinkName("QFormLayout_new2")]
	public static extern void* QFormLayout_new2();
	[LinkName("QFormLayout_MetaObject")]
	public static extern QMetaObject QFormLayout_MetaObject(void* c_this);
	[LinkName("QFormLayout_Metacast")]
	public static extern void QFormLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QFormLayout_Metacall")]
	public static extern int32 QFormLayout_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QFormLayout_Tr")]
	public static extern char8[] QFormLayout_Tr(char8[] s);
	[LinkName("QFormLayout_SetFieldGrowthPolicy")]
	public static extern void QFormLayout_SetFieldGrowthPolicy(void* c_this, int64 policy);
	[LinkName("QFormLayout_FieldGrowthPolicy")]
	public static extern int64 QFormLayout_FieldGrowthPolicy(void* c_this);
	[LinkName("QFormLayout_SetRowWrapPolicy")]
	public static extern void QFormLayout_SetRowWrapPolicy(void* c_this, int64 policy);
	[LinkName("QFormLayout_RowWrapPolicy")]
	public static extern int64 QFormLayout_RowWrapPolicy(void* c_this);
	[LinkName("QFormLayout_SetLabelAlignment")]
	public static extern void QFormLayout_SetLabelAlignment(void* c_this, int64 alignment);
	[LinkName("QFormLayout_LabelAlignment")]
	public static extern int64 QFormLayout_LabelAlignment(void* c_this);
	[LinkName("QFormLayout_SetFormAlignment")]
	public static extern void QFormLayout_SetFormAlignment(void* c_this, int64 alignment);
	[LinkName("QFormLayout_FormAlignment")]
	public static extern int64 QFormLayout_FormAlignment(void* c_this);
	[LinkName("QFormLayout_SetHorizontalSpacing")]
	public static extern void QFormLayout_SetHorizontalSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_HorizontalSpacing")]
	public static extern int32 QFormLayout_HorizontalSpacing(void* c_this);
	[LinkName("QFormLayout_SetVerticalSpacing")]
	public static extern void QFormLayout_SetVerticalSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_VerticalSpacing")]
	public static extern int32 QFormLayout_VerticalSpacing(void* c_this);
	[LinkName("QFormLayout_Spacing")]
	public static extern int32 QFormLayout_Spacing(void* c_this);
	[LinkName("QFormLayout_SetSpacing")]
	public static extern void QFormLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_AddRow")]
	public static extern void QFormLayout_AddRow(void* c_this, QWidget label, QWidget field);
	[LinkName("QFormLayout_AddRow2")]
	public static extern void QFormLayout_AddRow2(void* c_this, QWidget label, QLayout field);
	[LinkName("QFormLayout_AddRow3")]
	public static extern void QFormLayout_AddRow3(void* c_this, char8[] labelText, QWidget field);
	[LinkName("QFormLayout_AddRow4")]
	public static extern void QFormLayout_AddRow4(void* c_this, char8[] labelText, QLayout field);
	[LinkName("QFormLayout_AddRowWithWidget")]
	public static extern void QFormLayout_AddRowWithWidget(void* c_this, QWidget widget);
	[LinkName("QFormLayout_AddRowWithLayout")]
	public static extern void QFormLayout_AddRowWithLayout(void* c_this, QLayout layout);
	[LinkName("QFormLayout_InsertRow")]
	public static extern void QFormLayout_InsertRow(void* c_this, int32 row, QWidget label, QWidget field);
	[LinkName("QFormLayout_InsertRow2")]
	public static extern void QFormLayout_InsertRow2(void* c_this, int32 row, QWidget label, QLayout field);
	[LinkName("QFormLayout_InsertRow3")]
	public static extern void QFormLayout_InsertRow3(void* c_this, int32 row, char8[] labelText, QWidget field);
	[LinkName("QFormLayout_InsertRow4")]
	public static extern void QFormLayout_InsertRow4(void* c_this, int32 row, char8[] labelText, QLayout field);
	[LinkName("QFormLayout_InsertRow5")]
	public static extern void QFormLayout_InsertRow5(void* c_this, int32 row, QWidget widget);
	[LinkName("QFormLayout_InsertRow6")]
	public static extern void QFormLayout_InsertRow6(void* c_this, int32 row, QLayout layout);
	[LinkName("QFormLayout_RemoveRow")]
	public static extern void QFormLayout_RemoveRow(void* c_this, int32 row);
	[LinkName("QFormLayout_RemoveRowWithWidget")]
	public static extern void QFormLayout_RemoveRowWithWidget(void* c_this, QWidget widget);
	[LinkName("QFormLayout_RemoveRowWithLayout")]
	public static extern void QFormLayout_RemoveRowWithLayout(void* c_this, QLayout layout);
	[LinkName("QFormLayout_TakeRow")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRow(void* c_this, int32 row);
	[LinkName("QFormLayout_TakeRowWithWidget")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithWidget(void* c_this, QWidget widget);
	[LinkName("QFormLayout_TakeRowWithLayout")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithLayout(void* c_this, QLayout layout);
	[LinkName("QFormLayout_SetItem")]
	public static extern void QFormLayout_SetItem(void* c_this, int32 row, int64 role, QLayoutItem item);
	[LinkName("QFormLayout_SetWidget")]
	public static extern void QFormLayout_SetWidget(void* c_this, int32 row, int64 role, QWidget widget);
	[LinkName("QFormLayout_SetLayout")]
	public static extern void QFormLayout_SetLayout(void* c_this, int32 row, int64 role, QLayout layout);
	[LinkName("QFormLayout_SetRowVisible")]
	public static extern void QFormLayout_SetRowVisible(void* c_this, int32 row, bool on);
	[LinkName("QFormLayout_SetRowVisible2")]
	public static extern void QFormLayout_SetRowVisible2(void* c_this, QWidget widget, bool on);
	[LinkName("QFormLayout_SetRowVisible3")]
	public static extern void QFormLayout_SetRowVisible3(void* c_this, QLayout layout, bool on);
	[LinkName("QFormLayout_IsRowVisible")]
	public static extern bool QFormLayout_IsRowVisible(void* c_this, int32 row);
	[LinkName("QFormLayout_IsRowVisibleWithWidget")]
	public static extern bool QFormLayout_IsRowVisibleWithWidget(void* c_this, QWidget widget);
	[LinkName("QFormLayout_IsRowVisibleWithLayout")]
	public static extern bool QFormLayout_IsRowVisibleWithLayout(void* c_this, QLayout layout);
	[LinkName("QFormLayout_ItemAt")]
	public static extern QLayoutItem QFormLayout_ItemAt(void* c_this, int32 row, int64 role);
	[LinkName("QFormLayout_LabelForField")]
	public static extern QWidget QFormLayout_LabelForField(void* c_this, QWidget field);
	[LinkName("QFormLayout_LabelForFieldWithField")]
	public static extern QWidget QFormLayout_LabelForFieldWithField(void* c_this, QLayout field);
	[LinkName("QFormLayout_AddItem")]
	public static extern void QFormLayout_AddItem(void* c_this, QLayoutItem item);
	[LinkName("QFormLayout_ItemAtWithIndex")]
	public static extern QLayoutItem QFormLayout_ItemAtWithIndex(void* c_this, int32 index);
	[LinkName("QFormLayout_TakeAt")]
	public static extern QLayoutItem QFormLayout_TakeAt(void* c_this, int32 index);
	[LinkName("QFormLayout_SetGeometry")]
	public static extern void QFormLayout_SetGeometry(void* c_this, QRect rect);
	[LinkName("QFormLayout_MinimumSize")]
	public static extern QSize QFormLayout_MinimumSize(void* c_this);
	[LinkName("QFormLayout_SizeHint")]
	public static extern QSize QFormLayout_SizeHint(void* c_this);
	[LinkName("QFormLayout_Invalidate")]
	public static extern void QFormLayout_Invalidate(void* c_this);
	[LinkName("QFormLayout_HasHeightForWidth")]
	public static extern bool QFormLayout_HasHeightForWidth(void* c_this);
	[LinkName("QFormLayout_HeightForWidth")]
	public static extern int32 QFormLayout_HeightForWidth(void* c_this, int32 width);
	[LinkName("QFormLayout_ExpandingDirections")]
	public static extern int64 QFormLayout_ExpandingDirections(void* c_this);
	[LinkName("QFormLayout_Count")]
	public static extern int32 QFormLayout_Count(void* c_this);
	[LinkName("QFormLayout_RowCount")]
	public static extern int32 QFormLayout_RowCount(void* c_this);
	[LinkName("QFormLayout_Tr2")]
	public static extern char8[] QFormLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QFormLayout_Tr3")]
	public static extern char8[] QFormLayout_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QFormLayout__TakeRowResult
{
}