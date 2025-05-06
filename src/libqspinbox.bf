using System;
using System.Interop;
namespace Qt;

public struct QSpinBox
{
	[LinkName("QSpinBox_new")]
	public static extern void* QSpinBox_new(QWidget parent);
	[LinkName("QSpinBox_new2")]
	public static extern void* QSpinBox_new2();
	[LinkName("QSpinBox_MetaObject")]
	public static extern QMetaObject QSpinBox_MetaObject(void* c_this);
	[LinkName("QSpinBox_Metacast")]
	public static extern void QSpinBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QSpinBox_Metacall")]
	public static extern int32 QSpinBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSpinBox_Tr")]
	public static extern char8[] QSpinBox_Tr(char8[] s);
	[LinkName("QSpinBox_Value")]
	public static extern int32 QSpinBox_Value(void* c_this);
	[LinkName("QSpinBox_Prefix")]
	public static extern char8[] QSpinBox_Prefix(void* c_this);
	[LinkName("QSpinBox_SetPrefix")]
	public static extern void QSpinBox_SetPrefix(void* c_this, char8[] prefix);
	[LinkName("QSpinBox_Suffix")]
	public static extern char8[] QSpinBox_Suffix(void* c_this);
	[LinkName("QSpinBox_SetSuffix")]
	public static extern void QSpinBox_SetSuffix(void* c_this, char8[] suffix);
	[LinkName("QSpinBox_CleanText")]
	public static extern char8[] QSpinBox_CleanText(void* c_this);
	[LinkName("QSpinBox_SingleStep")]
	public static extern int32 QSpinBox_SingleStep(void* c_this);
	[LinkName("QSpinBox_SetSingleStep")]
	public static extern void QSpinBox_SetSingleStep(void* c_this, int32 val);
	[LinkName("QSpinBox_Minimum")]
	public static extern int32 QSpinBox_Minimum(void* c_this);
	[LinkName("QSpinBox_SetMinimum")]
	public static extern void QSpinBox_SetMinimum(void* c_this, int32 min);
	[LinkName("QSpinBox_Maximum")]
	public static extern int32 QSpinBox_Maximum(void* c_this);
	[LinkName("QSpinBox_SetMaximum")]
	public static extern void QSpinBox_SetMaximum(void* c_this, int32 max);
	[LinkName("QSpinBox_SetRange")]
	public static extern void QSpinBox_SetRange(void* c_this, int32 min, int32 max);
	[LinkName("QSpinBox_StepType")]
	public static extern int64 QSpinBox_StepType(void* c_this);
	[LinkName("QSpinBox_SetStepType")]
	public static extern void QSpinBox_SetStepType(void* c_this, int64 stepType);
	[LinkName("QSpinBox_DisplayIntegerBase")]
	public static extern int32 QSpinBox_DisplayIntegerBase(void* c_this);
	[LinkName("QSpinBox_SetDisplayIntegerBase")]
	public static extern void QSpinBox_SetDisplayIntegerBase(void* c_this, int32 _base);
	[LinkName("QSpinBox_Event")]
	public static extern bool QSpinBox_Event(void* c_this, QEvent event);
	[LinkName("QSpinBox_Validate")]
	public static extern int64 QSpinBox_Validate(void* c_this, char8[] input, int32 pos);
	[LinkName("QSpinBox_ValueFromText")]
	public static extern int32 QSpinBox_ValueFromText(void* c_this, char8[] text);
	[LinkName("QSpinBox_TextFromValue")]
	public static extern char8[] QSpinBox_TextFromValue(void* c_this, int32 val);
	[LinkName("QSpinBox_Fixup")]
	public static extern void QSpinBox_Fixup(void* c_this, char8[] str);
	[LinkName("QSpinBox_SetValue")]
	public static extern void QSpinBox_SetValue(void* c_this, int32 val);
	[LinkName("QSpinBox_ValueChanged")]
	public static extern void QSpinBox_ValueChanged(void* c_this, int32 param1);
	[LinkName("QSpinBox_TextChanged")]
	public static extern void QSpinBox_TextChanged(void* c_this, char8[] param1);
	[LinkName("QSpinBox_Tr2")]
	public static extern char8[] QSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QSpinBox_Tr3")]
	public static extern char8[] QSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDoubleSpinBox
{
	[LinkName("QDoubleSpinBox_new")]
	public static extern void* QDoubleSpinBox_new(QWidget parent);
	[LinkName("QDoubleSpinBox_new2")]
	public static extern void* QDoubleSpinBox_new2();
	[LinkName("QDoubleSpinBox_MetaObject")]
	public static extern QMetaObject QDoubleSpinBox_MetaObject(void* c_this);
	[LinkName("QDoubleSpinBox_Metacast")]
	public static extern void QDoubleSpinBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QDoubleSpinBox_Metacall")]
	public static extern int32 QDoubleSpinBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDoubleSpinBox_Tr")]
	public static extern char8[] QDoubleSpinBox_Tr(char8[] s);
	[LinkName("QDoubleSpinBox_Value")]
	public static extern double QDoubleSpinBox_Value(void* c_this);
	[LinkName("QDoubleSpinBox_Prefix")]
	public static extern char8[] QDoubleSpinBox_Prefix(void* c_this);
	[LinkName("QDoubleSpinBox_SetPrefix")]
	public static extern void QDoubleSpinBox_SetPrefix(void* c_this, char8[] prefix);
	[LinkName("QDoubleSpinBox_Suffix")]
	public static extern char8[] QDoubleSpinBox_Suffix(void* c_this);
	[LinkName("QDoubleSpinBox_SetSuffix")]
	public static extern void QDoubleSpinBox_SetSuffix(void* c_this, char8[] suffix);
	[LinkName("QDoubleSpinBox_CleanText")]
	public static extern char8[] QDoubleSpinBox_CleanText(void* c_this);
	[LinkName("QDoubleSpinBox_SingleStep")]
	public static extern double QDoubleSpinBox_SingleStep(void* c_this);
	[LinkName("QDoubleSpinBox_SetSingleStep")]
	public static extern void QDoubleSpinBox_SetSingleStep(void* c_this, double val);
	[LinkName("QDoubleSpinBox_Minimum")]
	public static extern double QDoubleSpinBox_Minimum(void* c_this);
	[LinkName("QDoubleSpinBox_SetMinimum")]
	public static extern void QDoubleSpinBox_SetMinimum(void* c_this, double min);
	[LinkName("QDoubleSpinBox_Maximum")]
	public static extern double QDoubleSpinBox_Maximum(void* c_this);
	[LinkName("QDoubleSpinBox_SetMaximum")]
	public static extern void QDoubleSpinBox_SetMaximum(void* c_this, double max);
	[LinkName("QDoubleSpinBox_SetRange")]
	public static extern void QDoubleSpinBox_SetRange(void* c_this, double min, double max);
	[LinkName("QDoubleSpinBox_StepType")]
	public static extern int64 QDoubleSpinBox_StepType(void* c_this);
	[LinkName("QDoubleSpinBox_SetStepType")]
	public static extern void QDoubleSpinBox_SetStepType(void* c_this, int64 stepType);
	[LinkName("QDoubleSpinBox_Decimals")]
	public static extern int32 QDoubleSpinBox_Decimals(void* c_this);
	[LinkName("QDoubleSpinBox_SetDecimals")]
	public static extern void QDoubleSpinBox_SetDecimals(void* c_this, int32 prec);
	[LinkName("QDoubleSpinBox_Validate")]
	public static extern int64 QDoubleSpinBox_Validate(void* c_this, char8[] input, int32 pos);
	[LinkName("QDoubleSpinBox_ValueFromText")]
	public static extern double QDoubleSpinBox_ValueFromText(void* c_this, char8[] text);
	[LinkName("QDoubleSpinBox_TextFromValue")]
	public static extern char8[] QDoubleSpinBox_TextFromValue(void* c_this, double val);
	[LinkName("QDoubleSpinBox_Fixup")]
	public static extern void QDoubleSpinBox_Fixup(void* c_this, char8[] str);
	[LinkName("QDoubleSpinBox_SetValue")]
	public static extern void QDoubleSpinBox_SetValue(void* c_this, double val);
	[LinkName("QDoubleSpinBox_ValueChanged")]
	public static extern void QDoubleSpinBox_ValueChanged(void* c_this, double param1);
	[LinkName("QDoubleSpinBox_TextChanged")]
	public static extern void QDoubleSpinBox_TextChanged(void* c_this, char8[] param1);
	[LinkName("QDoubleSpinBox_Tr2")]
	public static extern char8[] QDoubleSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QDoubleSpinBox_Tr3")]
	public static extern char8[] QDoubleSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}