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
public struct QValidator : QObject
{
	[LinkName("QValidator_new")]
	public static extern QValidator* QValidator_new();
	[LinkName("QValidator_new2")]
	public static extern QValidator* QValidator_new2(QObject* parent);
	[LinkName("QValidator_MetaObject")]
	public static extern QMetaObject* QValidator_MetaObject(Self* c_this);
	[LinkName("QValidator_Metacast")]
	public static extern void* QValidator_Metacast(Self* c_this, char8[] param1);
	[LinkName("QValidator_Metacall")]
	public static extern int32 QValidator_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QValidator_Tr")]
	public static extern libqt_string QValidator_Tr(char8[] s);
	[LinkName("QValidator_SetLocale")]
	public static extern void QValidator_SetLocale(Self* c_this, QLocale* locale);
	[LinkName("QValidator_Locale")]
	public static extern QLocale QValidator_Locale(Self* c_this);
	[LinkName("QValidator_Validate")]
	public static extern int64 QValidator_Validate(Self* c_this, libqt_string param1, int32* param2);
	[LinkName("QValidator_Fixup")]
	public static extern void QValidator_Fixup(Self* c_this, libqt_string param1);
	[LinkName("QValidator_Connect_Changed")]
	public static extern void QValidator_Connect_Changed(Self* c_this, c_intptr slot);
	[LinkName("QValidator_Tr2")]
	public static extern libqt_string QValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QValidator_Tr3")]
	public static extern libqt_string QValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QIntValidator : QValidator
{
	[LinkName("QIntValidator_new")]
	public static extern QIntValidator* QIntValidator_new();
	[LinkName("QIntValidator_new2")]
	public static extern QIntValidator* QIntValidator_new2(int32 bottom, int32 top);
	[LinkName("QIntValidator_new3")]
	public static extern QIntValidator* QIntValidator_new3(QObject* parent);
	[LinkName("QIntValidator_new4")]
	public static extern QIntValidator* QIntValidator_new4(int32 bottom, int32 top, QObject* parent);
	[LinkName("QIntValidator_MetaObject")]
	public static extern QMetaObject* QIntValidator_MetaObject(Self* c_this);
	[LinkName("QIntValidator_Metacast")]
	public static extern void* QIntValidator_Metacast(Self* c_this, char8[] param1);
	[LinkName("QIntValidator_Metacall")]
	public static extern int32 QIntValidator_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QIntValidator_Tr")]
	public static extern libqt_string QIntValidator_Tr(char8[] s);
	[LinkName("QIntValidator_Validate")]
	public static extern int64 QIntValidator_Validate(Self* c_this, libqt_string param1, int32* param2);
	[LinkName("QIntValidator_Fixup")]
	public static extern void QIntValidator_Fixup(Self* c_this, libqt_string input);
	[LinkName("QIntValidator_SetBottom")]
	public static extern void QIntValidator_SetBottom(Self* c_this, int32 bottom);
	[LinkName("QIntValidator_SetTop")]
	public static extern void QIntValidator_SetTop(Self* c_this, int32 top);
	[LinkName("QIntValidator_SetRange")]
	public static extern void QIntValidator_SetRange(Self* c_this, int32 bottom, int32 top);
	[LinkName("QIntValidator_Bottom")]
	public static extern int32 QIntValidator_Bottom(Self* c_this);
	[LinkName("QIntValidator_Top")]
	public static extern int32 QIntValidator_Top(Self* c_this);
	[LinkName("QIntValidator_Connect_BottomChanged")]
	public static extern void QIntValidator_Connect_BottomChanged(Self* c_this, c_intptr slot);
	[LinkName("QIntValidator_Connect_TopChanged")]
	public static extern void QIntValidator_Connect_TopChanged(Self* c_this, c_intptr slot);
	[LinkName("QIntValidator_Tr2")]
	public static extern libqt_string QIntValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QIntValidator_Tr3")]
	public static extern libqt_string QIntValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QDoubleValidator : QValidator
{
	[LinkName("QDoubleValidator_new")]
	public static extern QDoubleValidator* QDoubleValidator_new();
	[LinkName("QDoubleValidator_new2")]
	public static extern QDoubleValidator* QDoubleValidator_new2(double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_new3")]
	public static extern QDoubleValidator* QDoubleValidator_new3(QObject* parent);
	[LinkName("QDoubleValidator_new4")]
	public static extern QDoubleValidator* QDoubleValidator_new4(double bottom, double top, int32 decimals, QObject* parent);
	[LinkName("QDoubleValidator_MetaObject")]
	public static extern QMetaObject* QDoubleValidator_MetaObject(Self* c_this);
	[LinkName("QDoubleValidator_Metacast")]
	public static extern void* QDoubleValidator_Metacast(Self* c_this, char8[] param1);
	[LinkName("QDoubleValidator_Metacall")]
	public static extern int32 QDoubleValidator_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDoubleValidator_Tr")]
	public static extern libqt_string QDoubleValidator_Tr(char8[] s);
	[LinkName("QDoubleValidator_Validate")]
	public static extern int64 QDoubleValidator_Validate(Self* c_this, libqt_string param1, int32* param2);
	[LinkName("QDoubleValidator_Fixup")]
	public static extern void QDoubleValidator_Fixup(Self* c_this, libqt_string input);
	[LinkName("QDoubleValidator_SetRange")]
	public static extern void QDoubleValidator_SetRange(Self* c_this, double bottom, double top, int32 decimals);
	[LinkName("QDoubleValidator_SetRange2")]
	public static extern void QDoubleValidator_SetRange2(Self* c_this, double bottom, double top);
	[LinkName("QDoubleValidator_SetBottom")]
	public static extern void QDoubleValidator_SetBottom(Self* c_this, double bottom);
	[LinkName("QDoubleValidator_SetTop")]
	public static extern void QDoubleValidator_SetTop(Self* c_this, double top);
	[LinkName("QDoubleValidator_SetDecimals")]
	public static extern void QDoubleValidator_SetDecimals(Self* c_this, int32 decimals);
	[LinkName("QDoubleValidator_SetNotation")]
	public static extern void QDoubleValidator_SetNotation(Self* c_this, int64 notation);
	[LinkName("QDoubleValidator_Bottom")]
	public static extern double QDoubleValidator_Bottom(Self* c_this);
	[LinkName("QDoubleValidator_Top")]
	public static extern double QDoubleValidator_Top(Self* c_this);
	[LinkName("QDoubleValidator_Decimals")]
	public static extern int32 QDoubleValidator_Decimals(Self* c_this);
	[LinkName("QDoubleValidator_Notation")]
	public static extern int64 QDoubleValidator_Notation(Self* c_this);
	[LinkName("QDoubleValidator_Connect_BottomChanged")]
	public static extern void QDoubleValidator_Connect_BottomChanged(Self* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_TopChanged")]
	public static extern void QDoubleValidator_Connect_TopChanged(Self* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_DecimalsChanged")]
	public static extern void QDoubleValidator_Connect_DecimalsChanged(Self* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Connect_NotationChanged")]
	public static extern void QDoubleValidator_Connect_NotationChanged(Self* c_this, c_intptr slot);
	[LinkName("QDoubleValidator_Tr2")]
	public static extern libqt_string QDoubleValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QDoubleValidator_Tr3")]
	public static extern libqt_string QDoubleValidator_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QRegularExpressionValidator : QValidator
{
	[LinkName("QRegularExpressionValidator_new")]
	public static extern QRegularExpressionValidator* QRegularExpressionValidator_new();
	[LinkName("QRegularExpressionValidator_new2")]
	public static extern QRegularExpressionValidator* QRegularExpressionValidator_new2(QRegularExpression* re);
	[LinkName("QRegularExpressionValidator_new3")]
	public static extern QRegularExpressionValidator* QRegularExpressionValidator_new3(QObject* parent);
	[LinkName("QRegularExpressionValidator_new4")]
	public static extern QRegularExpressionValidator* QRegularExpressionValidator_new4(QRegularExpression* re, QObject* parent);
	[LinkName("QRegularExpressionValidator_MetaObject")]
	public static extern QMetaObject* QRegularExpressionValidator_MetaObject(Self* c_this);
	[LinkName("QRegularExpressionValidator_Metacast")]
	public static extern void* QRegularExpressionValidator_Metacast(Self* c_this, char8[] param1);
	[LinkName("QRegularExpressionValidator_Metacall")]
	public static extern int32 QRegularExpressionValidator_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QRegularExpressionValidator_Tr")]
	public static extern libqt_string QRegularExpressionValidator_Tr(char8[] s);
	[LinkName("QRegularExpressionValidator_Validate")]
	public static extern int64 QRegularExpressionValidator_Validate(Self* c_this, libqt_string input, int32* pos);
	[LinkName("QRegularExpressionValidator_RegularExpression")]
	public static extern QRegularExpression QRegularExpressionValidator_RegularExpression(Self* c_this);
	[LinkName("QRegularExpressionValidator_SetRegularExpression")]
	public static extern void QRegularExpressionValidator_SetRegularExpression(Self* c_this, QRegularExpression* re);
	[LinkName("QRegularExpressionValidator_Connect_RegularExpressionChanged")]
	public static extern void QRegularExpressionValidator_Connect_RegularExpressionChanged(Self* c_this, c_intptr slot);
	[LinkName("QRegularExpressionValidator_Tr2")]
	public static extern libqt_string QRegularExpressionValidator_Tr2(char8[] s, char8[] c);
	[LinkName("QRegularExpressionValidator_Tr3")]
	public static extern libqt_string QRegularExpressionValidator_Tr3(char8[] s, char8[] c, int32 n);
}