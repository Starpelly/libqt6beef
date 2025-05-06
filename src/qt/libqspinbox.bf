using System;
using System.Interop;
namespace Qt;

public struct QSpinBox : QAbstractSpinBox
{
	[LinkName("QSpinBox_new")]
	public static extern QSpinBox* QSpinBox_new(QWidget* parent);
	[LinkName("QSpinBox_new2")]
	public static extern QSpinBox* QSpinBox_new2();
	[LinkName("QSpinBox_MetaObject")]
	public static extern QMetaObject* QSpinBox_MetaObject(Self* c_this);
	[LinkName("QSpinBox_Metacast")]
	public static extern void* QSpinBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSpinBox_Metacall")]
	public static extern int32 QSpinBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSpinBox_Tr")]
	public static extern libqt_string QSpinBox_Tr(char8[] s);
	[LinkName("QSpinBox_Value")]
	public static extern int32 QSpinBox_Value(Self* c_this);
	[LinkName("QSpinBox_Prefix")]
	public static extern libqt_string QSpinBox_Prefix(Self* c_this);
	[LinkName("QSpinBox_SetPrefix")]
	public static extern void QSpinBox_SetPrefix(Self* c_this, libqt_string prefix);
	[LinkName("QSpinBox_Suffix")]
	public static extern libqt_string QSpinBox_Suffix(Self* c_this);
	[LinkName("QSpinBox_SetSuffix")]
	public static extern void QSpinBox_SetSuffix(Self* c_this, libqt_string suffix);
	[LinkName("QSpinBox_CleanText")]
	public static extern libqt_string QSpinBox_CleanText(Self* c_this);
	[LinkName("QSpinBox_SingleStep")]
	public static extern int32 QSpinBox_SingleStep(Self* c_this);
	[LinkName("QSpinBox_SetSingleStep")]
	public static extern void QSpinBox_SetSingleStep(Self* c_this, int32 val);
	[LinkName("QSpinBox_Minimum")]
	public static extern int32 QSpinBox_Minimum(Self* c_this);
	[LinkName("QSpinBox_SetMinimum")]
	public static extern void QSpinBox_SetMinimum(Self* c_this, int32 min);
	[LinkName("QSpinBox_Maximum")]
	public static extern int32 QSpinBox_Maximum(Self* c_this);
	[LinkName("QSpinBox_SetMaximum")]
	public static extern void QSpinBox_SetMaximum(Self* c_this, int32 max);
	[LinkName("QSpinBox_SetRange")]
	public static extern void QSpinBox_SetRange(Self* c_this, int32 min, int32 max);
	[LinkName("QSpinBox_StepType")]
	public static extern int64 QSpinBox_StepType(Self* c_this);
	[LinkName("QSpinBox_SetStepType")]
	public static extern void QSpinBox_SetStepType(Self* c_this, int64 stepType);
	[LinkName("QSpinBox_DisplayIntegerBase")]
	public static extern int32 QSpinBox_DisplayIntegerBase(Self* c_this);
	[LinkName("QSpinBox_SetDisplayIntegerBase")]
	public static extern void QSpinBox_SetDisplayIntegerBase(Self* c_this, int32 _base);
	[LinkName("QSpinBox_Event")]
	public static extern bool QSpinBox_Event(Self* c_this, QEvent* event);
	[LinkName("QSpinBox_Validate")]
	public static extern int64 QSpinBox_Validate(Self* c_this, libqt_string input, int32* pos);
	[LinkName("QSpinBox_ValueFromText")]
	public static extern int32 QSpinBox_ValueFromText(Self* c_this, libqt_string text);
	[LinkName("QSpinBox_TextFromValue")]
	public static extern libqt_string QSpinBox_TextFromValue(Self* c_this, int32 val);
	[LinkName("QSpinBox_Fixup")]
	public static extern void QSpinBox_Fixup(Self* c_this, libqt_string str);
	[LinkName("QSpinBox_SetValue")]
	public static extern void QSpinBox_SetValue(Self* c_this, int32 val);
	[LinkName("QSpinBox_ValueChanged")]
	public static extern void QSpinBox_ValueChanged(Self* c_this, int32 param1);
	[LinkName("QSpinBox_TextChanged")]
	public static extern void QSpinBox_TextChanged(Self* c_this, libqt_string param1);
	[LinkName("QSpinBox_Tr2")]
	public static extern libqt_string QSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QSpinBox_Tr3")]
	public static extern libqt_string QSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDoubleSpinBox : QAbstractSpinBox
{
	[LinkName("QDoubleSpinBox_new")]
	public static extern QDoubleSpinBox* QDoubleSpinBox_new(QWidget* parent);
	[LinkName("QDoubleSpinBox_new2")]
	public static extern QDoubleSpinBox* QDoubleSpinBox_new2();
	[LinkName("QDoubleSpinBox_MetaObject")]
	public static extern QMetaObject* QDoubleSpinBox_MetaObject(Self* c_this);
	[LinkName("QDoubleSpinBox_Metacast")]
	public static extern void* QDoubleSpinBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDoubleSpinBox_Metacall")]
	public static extern int32 QDoubleSpinBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDoubleSpinBox_Tr")]
	public static extern libqt_string QDoubleSpinBox_Tr(char8[] s);
	[LinkName("QDoubleSpinBox_Value")]
	public static extern double QDoubleSpinBox_Value(Self* c_this);
	[LinkName("QDoubleSpinBox_Prefix")]
	public static extern libqt_string QDoubleSpinBox_Prefix(Self* c_this);
	[LinkName("QDoubleSpinBox_SetPrefix")]
	public static extern void QDoubleSpinBox_SetPrefix(Self* c_this, libqt_string prefix);
	[LinkName("QDoubleSpinBox_Suffix")]
	public static extern libqt_string QDoubleSpinBox_Suffix(Self* c_this);
	[LinkName("QDoubleSpinBox_SetSuffix")]
	public static extern void QDoubleSpinBox_SetSuffix(Self* c_this, libqt_string suffix);
	[LinkName("QDoubleSpinBox_CleanText")]
	public static extern libqt_string QDoubleSpinBox_CleanText(Self* c_this);
	[LinkName("QDoubleSpinBox_SingleStep")]
	public static extern double QDoubleSpinBox_SingleStep(Self* c_this);
	[LinkName("QDoubleSpinBox_SetSingleStep")]
	public static extern void QDoubleSpinBox_SetSingleStep(Self* c_this, double val);
	[LinkName("QDoubleSpinBox_Minimum")]
	public static extern double QDoubleSpinBox_Minimum(Self* c_this);
	[LinkName("QDoubleSpinBox_SetMinimum")]
	public static extern void QDoubleSpinBox_SetMinimum(Self* c_this, double min);
	[LinkName("QDoubleSpinBox_Maximum")]
	public static extern double QDoubleSpinBox_Maximum(Self* c_this);
	[LinkName("QDoubleSpinBox_SetMaximum")]
	public static extern void QDoubleSpinBox_SetMaximum(Self* c_this, double max);
	[LinkName("QDoubleSpinBox_SetRange")]
	public static extern void QDoubleSpinBox_SetRange(Self* c_this, double min, double max);
	[LinkName("QDoubleSpinBox_StepType")]
	public static extern int64 QDoubleSpinBox_StepType(Self* c_this);
	[LinkName("QDoubleSpinBox_SetStepType")]
	public static extern void QDoubleSpinBox_SetStepType(Self* c_this, int64 stepType);
	[LinkName("QDoubleSpinBox_Decimals")]
	public static extern int32 QDoubleSpinBox_Decimals(Self* c_this);
	[LinkName("QDoubleSpinBox_SetDecimals")]
	public static extern void QDoubleSpinBox_SetDecimals(Self* c_this, int32 prec);
	[LinkName("QDoubleSpinBox_Validate")]
	public static extern int64 QDoubleSpinBox_Validate(Self* c_this, libqt_string input, int32* pos);
	[LinkName("QDoubleSpinBox_ValueFromText")]
	public static extern double QDoubleSpinBox_ValueFromText(Self* c_this, libqt_string text);
	[LinkName("QDoubleSpinBox_TextFromValue")]
	public static extern libqt_string QDoubleSpinBox_TextFromValue(Self* c_this, double val);
	[LinkName("QDoubleSpinBox_Fixup")]
	public static extern void QDoubleSpinBox_Fixup(Self* c_this, libqt_string str);
	[LinkName("QDoubleSpinBox_SetValue")]
	public static extern void QDoubleSpinBox_SetValue(Self* c_this, double val);
	[LinkName("QDoubleSpinBox_ValueChanged")]
	public static extern void QDoubleSpinBox_ValueChanged(Self* c_this, double param1);
	[LinkName("QDoubleSpinBox_TextChanged")]
	public static extern void QDoubleSpinBox_TextChanged(Self* c_this, libqt_string param1);
	[LinkName("QDoubleSpinBox_Tr2")]
	public static extern libqt_string QDoubleSpinBox_Tr2(char8[] s, char8[] c);
	[LinkName("QDoubleSpinBox_Tr3")]
	public static extern libqt_string QDoubleSpinBox_Tr3(char8[] s, char8[] c, int32 n);
}