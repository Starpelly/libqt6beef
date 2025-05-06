using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputDialog__InputDialogOption
{
	NoButtons = 1,
	UseListViewForComboBoxItems = 2,
	UsePlainTextEditForTextInput = 4,
}
[AllowDuplicates]
public enum QInputDialog__InputMode
{
	TextInput = 0,
	IntInput = 1,
	DoubleInput = 2,
}
public struct QInputDialog
{
	[LinkName("QInputDialog_new")]
	public static extern void* QInputDialog_new(QWidget parent);
	[LinkName("QInputDialog_new2")]
	public static extern void* QInputDialog_new2();
	[LinkName("QInputDialog_new3")]
	public static extern void* QInputDialog_new3(QWidget parent, int64 flags);
	[LinkName("QInputDialog_MetaObject")]
	public static extern QMetaObject QInputDialog_MetaObject(void* c_this);
	[LinkName("QInputDialog_Metacast")]
	public static extern void QInputDialog_Metacast(void* c_this, char8[] param1);
	[LinkName("QInputDialog_Metacall")]
	public static extern int32 QInputDialog_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QInputDialog_Tr")]
	public static extern char8[] QInputDialog_Tr(char8[] s);
	[LinkName("QInputDialog_SetInputMode")]
	public static extern void QInputDialog_SetInputMode(void* c_this, int64 mode);
	[LinkName("QInputDialog_InputMode")]
	public static extern int64 QInputDialog_InputMode(void* c_this);
	[LinkName("QInputDialog_SetLabelText")]
	public static extern void QInputDialog_SetLabelText(void* c_this, char8[] text);
	[LinkName("QInputDialog_LabelText")]
	public static extern char8[] QInputDialog_LabelText(void* c_this);
	[LinkName("QInputDialog_SetOption")]
	public static extern void QInputDialog_SetOption(void* c_this, int64 option);
	[LinkName("QInputDialog_TestOption")]
	public static extern bool QInputDialog_TestOption(void* c_this, int64 option);
	[LinkName("QInputDialog_SetOptions")]
	public static extern void QInputDialog_SetOptions(void* c_this, int64 options);
	[LinkName("QInputDialog_Options")]
	public static extern int64 QInputDialog_Options(void* c_this);
	[LinkName("QInputDialog_SetTextValue")]
	public static extern void QInputDialog_SetTextValue(void* c_this, char8[] text);
	[LinkName("QInputDialog_TextValue")]
	public static extern char8[] QInputDialog_TextValue(void* c_this);
	[LinkName("QInputDialog_SetTextEchoMode")]
	public static extern void QInputDialog_SetTextEchoMode(void* c_this, int64 mode);
	[LinkName("QInputDialog_TextEchoMode")]
	public static extern int64 QInputDialog_TextEchoMode(void* c_this);
	[LinkName("QInputDialog_SetComboBoxEditable")]
	public static extern void QInputDialog_SetComboBoxEditable(void* c_this, bool editable);
	[LinkName("QInputDialog_IsComboBoxEditable")]
	public static extern bool QInputDialog_IsComboBoxEditable(void* c_this);
	[LinkName("QInputDialog_SetComboBoxItems")]
	public static extern void QInputDialog_SetComboBoxItems(void* c_this, char8[][] items);
	[LinkName("QInputDialog_ComboBoxItems")]
	public static extern char8[][] QInputDialog_ComboBoxItems(void* c_this);
	[LinkName("QInputDialog_SetIntValue")]
	public static extern void QInputDialog_SetIntValue(void* c_this, int32 value);
	[LinkName("QInputDialog_IntValue")]
	public static extern int32 QInputDialog_IntValue(void* c_this);
	[LinkName("QInputDialog_SetIntMinimum")]
	public static extern void QInputDialog_SetIntMinimum(void* c_this, int32 min);
	[LinkName("QInputDialog_IntMinimum")]
	public static extern int32 QInputDialog_IntMinimum(void* c_this);
	[LinkName("QInputDialog_SetIntMaximum")]
	public static extern void QInputDialog_SetIntMaximum(void* c_this, int32 max);
	[LinkName("QInputDialog_IntMaximum")]
	public static extern int32 QInputDialog_IntMaximum(void* c_this);
	[LinkName("QInputDialog_SetIntRange")]
	public static extern void QInputDialog_SetIntRange(void* c_this, int32 min, int32 max);
	[LinkName("QInputDialog_SetIntStep")]
	public static extern void QInputDialog_SetIntStep(void* c_this, int32 step);
	[LinkName("QInputDialog_IntStep")]
	public static extern int32 QInputDialog_IntStep(void* c_this);
	[LinkName("QInputDialog_SetDoubleValue")]
	public static extern void QInputDialog_SetDoubleValue(void* c_this, double value);
	[LinkName("QInputDialog_DoubleValue")]
	public static extern double QInputDialog_DoubleValue(void* c_this);
	[LinkName("QInputDialog_SetDoubleMinimum")]
	public static extern void QInputDialog_SetDoubleMinimum(void* c_this, double min);
	[LinkName("QInputDialog_DoubleMinimum")]
	public static extern double QInputDialog_DoubleMinimum(void* c_this);
	[LinkName("QInputDialog_SetDoubleMaximum")]
	public static extern void QInputDialog_SetDoubleMaximum(void* c_this, double max);
	[LinkName("QInputDialog_DoubleMaximum")]
	public static extern double QInputDialog_DoubleMaximum(void* c_this);
	[LinkName("QInputDialog_SetDoubleRange")]
	public static extern void QInputDialog_SetDoubleRange(void* c_this, double min, double max);
	[LinkName("QInputDialog_SetDoubleDecimals")]
	public static extern void QInputDialog_SetDoubleDecimals(void* c_this, int32 decimals);
	[LinkName("QInputDialog_DoubleDecimals")]
	public static extern int32 QInputDialog_DoubleDecimals(void* c_this);
	[LinkName("QInputDialog_SetOkButtonText")]
	public static extern void QInputDialog_SetOkButtonText(void* c_this, char8[] text);
	[LinkName("QInputDialog_OkButtonText")]
	public static extern char8[] QInputDialog_OkButtonText(void* c_this);
	[LinkName("QInputDialog_SetCancelButtonText")]
	public static extern void QInputDialog_SetCancelButtonText(void* c_this, char8[] text);
	[LinkName("QInputDialog_CancelButtonText")]
	public static extern char8[] QInputDialog_CancelButtonText(void* c_this);
	[LinkName("QInputDialog_MinimumSizeHint")]
	public static extern QSize QInputDialog_MinimumSizeHint(void* c_this);
	[LinkName("QInputDialog_SizeHint")]
	public static extern QSize QInputDialog_SizeHint(void* c_this);
	[LinkName("QInputDialog_SetVisible")]
	public static extern void QInputDialog_SetVisible(void* c_this, bool visible);
	[LinkName("QInputDialog_GetText")]
	public static extern char8[] QInputDialog_GetText(QWidget parent, char8[] title, char8[] label);
	[LinkName("QInputDialog_GetMultiLineText")]
	public static extern char8[] QInputDialog_GetMultiLineText(QWidget parent, char8[] title, char8[] label);
	[LinkName("QInputDialog_GetItem")]
	public static extern char8[] QInputDialog_GetItem(QWidget parent, char8[] title, char8[] label, char8[][] items);
	[LinkName("QInputDialog_GetInt")]
	public static extern int32 QInputDialog_GetInt(QWidget parent, char8[] title, char8[] label);
	[LinkName("QInputDialog_GetDouble")]
	public static extern double QInputDialog_GetDouble(QWidget parent, char8[] title, char8[] label);
	[LinkName("QInputDialog_SetDoubleStep")]
	public static extern void QInputDialog_SetDoubleStep(void* c_this, double step);
	[LinkName("QInputDialog_DoubleStep")]
	public static extern double QInputDialog_DoubleStep(void* c_this);
	[LinkName("QInputDialog_TextValueChanged")]
	public static extern void QInputDialog_TextValueChanged(void* c_this, char8[] text);
	[LinkName("QInputDialog_TextValueSelected")]
	public static extern void QInputDialog_TextValueSelected(void* c_this, char8[] text);
	[LinkName("QInputDialog_IntValueChanged")]
	public static extern void QInputDialog_IntValueChanged(void* c_this, int32 value);
	[LinkName("QInputDialog_IntValueSelected")]
	public static extern void QInputDialog_IntValueSelected(void* c_this, int32 value);
	[LinkName("QInputDialog_DoubleValueChanged")]
	public static extern void QInputDialog_DoubleValueChanged(void* c_this, double value);
	[LinkName("QInputDialog_DoubleValueSelected")]
	public static extern void QInputDialog_DoubleValueSelected(void* c_this, double value);
	[LinkName("QInputDialog_Done")]
	public static extern void QInputDialog_Done(void* c_this, int32 result);
	[LinkName("QInputDialog_Tr2")]
	public static extern char8[] QInputDialog_Tr2(char8[] s, char8[] c);
	[LinkName("QInputDialog_Tr3")]
	public static extern char8[] QInputDialog_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QInputDialog_SetOption2")]
	public static extern void QInputDialog_SetOption2(void* c_this, int64 option, bool on);
	[LinkName("QInputDialog_GetText4")]
	public static extern char8[] QInputDialog_GetText4(QWidget parent, char8[] title, char8[] label, int64 echo);
	[LinkName("QInputDialog_GetText5")]
	public static extern char8[] QInputDialog_GetText5(QWidget parent, char8[] title, char8[] label, int64 echo, char8[] text);
	[LinkName("QInputDialog_GetText6")]
	public static extern char8[] QInputDialog_GetText6(QWidget parent, char8[] title, char8[] label, int64 echo, char8[] text, bool ok);
	[LinkName("QInputDialog_GetText7")]
	public static extern char8[] QInputDialog_GetText7(QWidget parent, char8[] title, char8[] label, int64 echo, char8[] text, bool ok, int64 flags);
	[LinkName("QInputDialog_GetText8")]
	public static extern char8[] QInputDialog_GetText8(QWidget parent, char8[] title, char8[] label, int64 echo, char8[] text, bool ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetMultiLineText4")]
	public static extern char8[] QInputDialog_GetMultiLineText4(QWidget parent, char8[] title, char8[] label, char8[] text);
	[LinkName("QInputDialog_GetMultiLineText5")]
	public static extern char8[] QInputDialog_GetMultiLineText5(QWidget parent, char8[] title, char8[] label, char8[] text, bool ok);
	[LinkName("QInputDialog_GetMultiLineText6")]
	public static extern char8[] QInputDialog_GetMultiLineText6(QWidget parent, char8[] title, char8[] label, char8[] text, bool ok, int64 flags);
	[LinkName("QInputDialog_GetMultiLineText7")]
	public static extern char8[] QInputDialog_GetMultiLineText7(QWidget parent, char8[] title, char8[] label, char8[] text, bool ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetItem5")]
	public static extern char8[] QInputDialog_GetItem5(QWidget parent, char8[] title, char8[] label, char8[][] items, int32 current);
	[LinkName("QInputDialog_GetItem6")]
	public static extern char8[] QInputDialog_GetItem6(QWidget parent, char8[] title, char8[] label, char8[][] items, int32 current, bool editable);
	[LinkName("QInputDialog_GetItem7")]
	public static extern char8[] QInputDialog_GetItem7(QWidget parent, char8[] title, char8[] label, char8[][] items, int32 current, bool editable, bool ok);
	[LinkName("QInputDialog_GetItem8")]
	public static extern char8[] QInputDialog_GetItem8(QWidget parent, char8[] title, char8[] label, char8[][] items, int32 current, bool editable, bool ok, int64 flags);
	[LinkName("QInputDialog_GetItem9")]
	public static extern char8[] QInputDialog_GetItem9(QWidget parent, char8[] title, char8[] label, char8[][] items, int32 current, bool editable, bool ok, int64 flags, int64 inputMethodHints);
	[LinkName("QInputDialog_GetInt4")]
	public static extern int32 QInputDialog_GetInt4(QWidget parent, char8[] title, char8[] label, int32 value);
	[LinkName("QInputDialog_GetInt5")]
	public static extern int32 QInputDialog_GetInt5(QWidget parent, char8[] title, char8[] label, int32 value, int32 minValue);
	[LinkName("QInputDialog_GetInt6")]
	public static extern int32 QInputDialog_GetInt6(QWidget parent, char8[] title, char8[] label, int32 value, int32 minValue, int32 maxValue);
	[LinkName("QInputDialog_GetInt7")]
	public static extern int32 QInputDialog_GetInt7(QWidget parent, char8[] title, char8[] label, int32 value, int32 minValue, int32 maxValue, int32 step);
	[LinkName("QInputDialog_GetInt8")]
	public static extern int32 QInputDialog_GetInt8(QWidget parent, char8[] title, char8[] label, int32 value, int32 minValue, int32 maxValue, int32 step, bool ok);
	[LinkName("QInputDialog_GetInt9")]
	public static extern int32 QInputDialog_GetInt9(QWidget parent, char8[] title, char8[] label, int32 value, int32 minValue, int32 maxValue, int32 step, bool ok, int64 flags);
	[LinkName("QInputDialog_GetDouble4")]
	public static extern double QInputDialog_GetDouble4(QWidget parent, char8[] title, char8[] label, double value);
	[LinkName("QInputDialog_GetDouble5")]
	public static extern double QInputDialog_GetDouble5(QWidget parent, char8[] title, char8[] label, double value, double minValue);
	[LinkName("QInputDialog_GetDouble6")]
	public static extern double QInputDialog_GetDouble6(QWidget parent, char8[] title, char8[] label, double value, double minValue, double maxValue);
	[LinkName("QInputDialog_GetDouble7")]
	public static extern double QInputDialog_GetDouble7(QWidget parent, char8[] title, char8[] label, double value, double minValue, double maxValue, int32 decimals);
	[LinkName("QInputDialog_GetDouble8")]
	public static extern double QInputDialog_GetDouble8(QWidget parent, char8[] title, char8[] label, double value, double minValue, double maxValue, int32 decimals, bool ok);
	[LinkName("QInputDialog_GetDouble9")]
	public static extern double QInputDialog_GetDouble9(QWidget parent, char8[] title, char8[] label, double value, double minValue, double maxValue, int32 decimals, bool ok, int64 flags);
	[LinkName("QInputDialog_GetDouble10")]
	public static extern double QInputDialog_GetDouble10(QWidget parent, char8[] title, char8[] label, double value, double minValue, double maxValue, int32 decimals, bool ok, int64 flags, double step);
}