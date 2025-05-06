using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QValidator__State
{
	Invalid = 0,
	Intermediate = 1,
	Acceptable = 2,
}
[AllowDuplicates]
public enum QDoubleValidator__Notation
{
	StandardNotation = 0,
	ScientificNotation = 1,
}
public struct QValidator
{
	[LinkName("QValidator_new")]
	public static extern void* QValidator_new();
	[LinkName("QValidator_new2")]
	public static extern void* QValidator_new2(QObject parent);
	[LinkName("QValidator_MetaObject")]
	public static extern QMetaObject QValidator_MetaObject(void* c_this);
	[LinkName("QValidator_Metacast")]
	public static extern void QValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QValidator_Metacall")]
	public static extern int32 QValidator_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QValidator_Tr")]
	public static extern char8[] QValidator_Tr(char8[] s);
	[LinkName("QValidator_SetLocale")]
	public static extern void QValidator_SetLocale(void* c_this, QLocale locale);
	[LinkName("QValidator_Locale")]
	public static extern QLocale QValidator_Locale(void* c_this);
	[LinkName("QValidator_Validate")]
	public static extern int64 QValidator_Validate(void* c_this, char8[] param1, int32 param2);
	[LinkName("QValidator_Fixup")]
	public static extern void QValidator_Fixup(void* c_this, char8[] param1);
	[LinkName("QValidator_Changed")]
	public static extern void QValidator_Changed(void* c_this);
	[LinkName("QValidator_Tr2")]
	public static extern char8[] QValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QValidator_Tr3")]
	public static extern char8[] QValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QIntValidator
{
	[LinkName("QIntValidator_new")]
	public static extern void* QIntValidator_new();
	[LinkName("QIntValidator_new2")]
	public static extern void* QIntValidator_new2(int32 bottom, int32 top);
	[LinkName("QIntValidator_new3")]
	public static extern void* QIntValidator_new3(QObject parent);
	[LinkName("QIntValidator_new4")]
	public static extern void* QIntValidator_new4(int32 bottom, int32 top, QObject parent);
	[LinkName("QIntValidator_MetaObject")]
	public static extern QMetaObject QIntValidator_MetaObject(void* c_this);
	[LinkName("QIntValidator_Metacast")]
	public static extern void QIntValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QIntValidator_Metacall")]
	public static extern int32 QIntValidator_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QIntValidator_Tr")]
	public static extern char8[] QIntValidator_Tr(char8[] s);
	[LinkName("QIntValidator_Validate")]
	public static extern int64 QIntValidator_Validate(void* c_this, char8[] param1, int32 param2);
	[LinkName("QIntValidator_Fixup")]
	public static extern void QIntValidator_Fixup(void* c_this, char8[] input);
	[LinkName("QIntValidator_SetBottom")]
	public static extern void QIntValidator_SetBottom(void* c_this, int32 bottom);
	[LinkName("QIntValidator_SetTop")]
	public static extern void QIntValidator_SetTop(void* c_this, int32 top);
	[LinkName("QIntValidator_SetRange")]
	public static extern void QIntValidator_SetRange(void* c_this, int32 bottom, int32 top);
	[LinkName("QIntValidator_Bottom")]
	public static extern int32 QIntValidator_Bottom(void* c_this);
	[LinkName("QIntValidator_Top")]
	public static extern int32 QIntValidator_Top(void* c_this);
	[LinkName("QIntValidator_BottomChanged")]
	public static extern void QIntValidator_BottomChanged(void* c_this, int32 bottom);
	[LinkName("QIntValidator_TopChanged")]
	public static extern void QIntValidator_TopChanged(void* c_this, int32 top);
	[LinkName("QIntValidator_Tr2")]
	public static extern char8[] QIntValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QIntValidator_Tr3")]
	public static extern char8[] QIntValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDoubleValidator
{
	[LinkName("QDoubleValidator_new")]
	public static extern void* QDoubleValidator_new();
	[LinkName("QDoubleValidator_new2")]
	public static extern void* QDoubleValidator_new2(double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_new3")]
	public static extern void* QDoubleValidator_new3(QObject parent);
	[LinkName("QDoubleValidator_new4")]
	public static extern void* QDoubleValidator_new4(double bottom, double top, int32 decimals, QObject parent);
	[LinkName("QDoubleValidator_MetaObject")]
	public static extern QMetaObject QDoubleValidator_MetaObject(void* c_this);
	[LinkName("QDoubleValidator_Metacast")]
	public static extern void QDoubleValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QDoubleValidator_Metacall")]
	public static extern int32 QDoubleValidator_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QDoubleValidator_Tr")]
	public static extern char8[] QDoubleValidator_Tr(char8[] s);
	[LinkName("QDoubleValidator_Validate")]
	public static extern int64 QDoubleValidator_Validate(void* c_this, char8[] param1, int32 param2);
	[LinkName("QDoubleValidator_Fixup")]
	public static extern void QDoubleValidator_Fixup(void* c_this, char8[] input);
	[LinkName("QDoubleValidator_SetRange")]
	public static extern void QDoubleValidator_SetRange(void* c_this, double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_SetRange2")]
	public static extern void QDoubleValidator_SetRange2(void* c_this, double bottom, double top);
	[LinkName("QDoubleValidator_SetBottom")]
	public static extern void QDoubleValidator_SetBottom(void* c_this, double bottom);
	[LinkName("QDoubleValidator_SetTop")]
	public static extern void QDoubleValidator_SetTop(void* c_this, double top);
	[LinkName("QDoubleValidator_SetDecimals")]
	public static extern void QDoubleValidator_SetDecimals(void* c_this, int32 decimals);
	[LinkName("QDoubleValidator_SetNotation")]
	public static extern void QDoubleValidator_SetNotation(void* c_this, int64 notation);
	[LinkName("QDoubleValidator_Bottom")]
	public static extern double QDoubleValidator_Bottom(void* c_this);
	[LinkName("QDoubleValidator_Top")]
	public static extern double QDoubleValidator_Top(void* c_this);
	[LinkName("QDoubleValidator_Decimals")]
	public static extern int32 QDoubleValidator_Decimals(void* c_this);
	[LinkName("QDoubleValidator_Notation")]
	public static extern int64 QDoubleValidator_Notation(void* c_this);
	[LinkName("QDoubleValidator_BottomChanged")]
	public static extern void QDoubleValidator_BottomChanged(void* c_this, double bottom);
	[LinkName("QDoubleValidator_TopChanged")]
	public static extern void QDoubleValidator_TopChanged(void* c_this, double top);
	[LinkName("QDoubleValidator_DecimalsChanged")]
	public static extern void QDoubleValidator_DecimalsChanged(void* c_this, int32 decimals);
	[LinkName("QDoubleValidator_NotationChanged")]
	public static extern void QDoubleValidator_NotationChanged(void* c_this, int64 notation);
	[LinkName("QDoubleValidator_Tr2")]
	public static extern char8[] QDoubleValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QDoubleValidator_Tr3")]
	public static extern char8[] QDoubleValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QRegularExpressionValidator
{
	[LinkName("QRegularExpressionValidator_new")]
	public static extern void* QRegularExpressionValidator_new();
	[LinkName("QRegularExpressionValidator_new2")]
	public static extern void* QRegularExpressionValidator_new2(QRegularExpression re);
	[LinkName("QRegularExpressionValidator_new3")]
	public static extern void* QRegularExpressionValidator_new3(QObject parent);
	[LinkName("QRegularExpressionValidator_new4")]
	public static extern void* QRegularExpressionValidator_new4(QRegularExpression re, QObject parent);
	[LinkName("QRegularExpressionValidator_MetaObject")]
	public static extern QMetaObject QRegularExpressionValidator_MetaObject(void* c_this);
	[LinkName("QRegularExpressionValidator_Metacast")]
	public static extern void QRegularExpressionValidator_Metacast(void* c_this, char8[] param1);
	[LinkName("QRegularExpressionValidator_Metacall")]
	public static extern int32 QRegularExpressionValidator_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QRegularExpressionValidator_Tr")]
	public static extern char8[] QRegularExpressionValidator_Tr(char8[] s);
	[LinkName("QRegularExpressionValidator_Validate")]
	public static extern int64 QRegularExpressionValidator_Validate(void* c_this, char8[] input, int32 pos);
	[LinkName("QRegularExpressionValidator_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionValidator_RegularExpression(void* c_this);
	[LinkName("QRegularExpressionValidator_SetRegularExpression")]
	public static extern void QRegularExpressionValidator_SetRegularExpression(void* c_this, QRegularExpression re);
	[LinkName("QRegularExpressionValidator_RegularExpressionChanged")]
	public static extern void QRegularExpressionValidator_RegularExpressionChanged(void* c_this, QRegularExpression re);
	[LinkName("QRegularExpressionValidator_Tr2")]
	public static extern char8[] QRegularExpressionValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QRegularExpressionValidator_Tr3")]
	public static extern char8[] QRegularExpressionValidator_Tr3(char8[] s, char8[] c, int32 n);
}