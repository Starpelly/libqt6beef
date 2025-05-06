using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QJsonValue__Type
{
	Null = 0,
	Bool = 1,
	Double = 2,
	String = 3,
	Array = 4,
	Object = 5,
	Undefined = 128,
}
public struct QJsonValue
{
	[LinkName("QJsonValue_new")]
	public static extern QJsonValue* QJsonValue_new();
	[LinkName("QJsonValue_new2")]
	public static extern QJsonValue* QJsonValue_new2(bool b);
	[LinkName("QJsonValue_new3")]
	public static extern QJsonValue* QJsonValue_new3(double n);
	[LinkName("QJsonValue_new4")]
	public static extern QJsonValue* QJsonValue_new4(int32 n);
	[LinkName("QJsonValue_new5")]
	public static extern QJsonValue* QJsonValue_new5(int64 v);
	[LinkName("QJsonValue_new6")]
	public static extern QJsonValue* QJsonValue_new6(libqt_string s);
	[LinkName("QJsonValue_new7")]
	public static extern QJsonValue* QJsonValue_new7(char8[] s);
	[LinkName("QJsonValue_new8")]
	public static extern QJsonValue* QJsonValue_new8(QJsonArray* a);
	[LinkName("QJsonValue_new9")]
	public static extern QJsonValue* QJsonValue_new9(QJsonObject* o);
	[LinkName("QJsonValue_new10")]
	public static extern QJsonValue* QJsonValue_new10(QJsonValue* other);
	[LinkName("QJsonValue_new11")]
	public static extern QJsonValue* QJsonValue_new11(int64 param1);
	[LinkName("QJsonValue_OperatorAssign")]
	public static extern void QJsonValue_OperatorAssign(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValue_Swap")]
	public static extern void QJsonValue_Swap(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValue_FromVariant")]
	public static extern QJsonValue QJsonValue_FromVariant(QVariant* variant);
	[LinkName("QJsonValue_ToVariant")]
	public static extern QVariant QJsonValue_ToVariant(Self* c_this);
	[LinkName("QJsonValue_Type")]
	public static extern int64 QJsonValue_Type(Self* c_this);
	[LinkName("QJsonValue_IsNull")]
	public static extern bool QJsonValue_IsNull(Self* c_this);
	[LinkName("QJsonValue_IsBool")]
	public static extern bool QJsonValue_IsBool(Self* c_this);
	[LinkName("QJsonValue_IsDouble")]
	public static extern bool QJsonValue_IsDouble(Self* c_this);
	[LinkName("QJsonValue_IsString")]
	public static extern bool QJsonValue_IsString(Self* c_this);
	[LinkName("QJsonValue_IsArray")]
	public static extern bool QJsonValue_IsArray(Self* c_this);
	[LinkName("QJsonValue_IsObject")]
	public static extern bool QJsonValue_IsObject(Self* c_this);
	[LinkName("QJsonValue_IsUndefined")]
	public static extern bool QJsonValue_IsUndefined(Self* c_this);
	[LinkName("QJsonValue_ToBool")]
	public static extern bool QJsonValue_ToBool(Self* c_this);
	[LinkName("QJsonValue_ToInt")]
	public static extern int32 QJsonValue_ToInt(Self* c_this);
	[LinkName("QJsonValue_ToInteger")]
	public static extern int64 QJsonValue_ToInteger(Self* c_this);
	[LinkName("QJsonValue_ToDouble")]
	public static extern double QJsonValue_ToDouble(Self* c_this);
	[LinkName("QJsonValue_ToString")]
	public static extern libqt_string QJsonValue_ToString(Self* c_this);
	[LinkName("QJsonValue_ToStringWithDefaultValue")]
	public static extern libqt_string QJsonValue_ToStringWithDefaultValue(Self* c_this, libqt_string defaultValue);
	[LinkName("QJsonValue_ToArray")]
	public static extern QJsonArray QJsonValue_ToArray(Self* c_this);
	[LinkName("QJsonValue_ToArrayWithDefaultValue")]
	public static extern QJsonArray QJsonValue_ToArrayWithDefaultValue(Self* c_this, QJsonArray* defaultValue);
	[LinkName("QJsonValue_ToObject")]
	public static extern QJsonObject QJsonValue_ToObject(Self* c_this);
	[LinkName("QJsonValue_ToObjectWithDefaultValue")]
	public static extern QJsonObject QJsonValue_ToObjectWithDefaultValue(Self* c_this, QJsonObject* defaultValue);
	[LinkName("QJsonValue_OperatorSubscript")]
	public static extern QJsonValue QJsonValue_OperatorSubscript(Self* c_this, libqt_string key);
	[LinkName("QJsonValue_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonValue_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QJsonValue_OperatorEqual")]
	public static extern bool QJsonValue_OperatorEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValue_OperatorNotEqual")]
	public static extern bool QJsonValue_OperatorNotEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValue_ToBool1")]
	public static extern bool QJsonValue_ToBool1(Self* c_this, bool defaultValue);
	[LinkName("QJsonValue_ToInt1")]
	public static extern int32 QJsonValue_ToInt1(Self* c_this, int32 defaultValue);
	[LinkName("QJsonValue_ToInteger1")]
	public static extern int64 QJsonValue_ToInteger1(Self* c_this, int64 defaultValue);
	[LinkName("QJsonValue_ToDouble1")]
	public static extern double QJsonValue_ToDouble1(Self* c_this, double defaultValue);
}
public struct QJsonValueConstRef
{
	[LinkName("QJsonValueConstRef_new")]
	public static extern QJsonValueConstRef* QJsonValueConstRef_new(QJsonValueConstRef* other);
	[LinkName("QJsonValueConstRef_new2")]
	public static extern QJsonValueConstRef* QJsonValueConstRef_new2(QJsonValueConstRef* param1);
	[LinkName("QJsonValueConstRef_ToQJsonValue")]
	public static extern QJsonValue QJsonValueConstRef_ToQJsonValue(Self* c_this);
	[LinkName("QJsonValueConstRef_ToVariant")]
	public static extern QVariant QJsonValueConstRef_ToVariant(Self* c_this);
	[LinkName("QJsonValueConstRef_Type")]
	public static extern int64 QJsonValueConstRef_Type(Self* c_this);
	[LinkName("QJsonValueConstRef_IsNull")]
	public static extern bool QJsonValueConstRef_IsNull(Self* c_this);
	[LinkName("QJsonValueConstRef_IsBool")]
	public static extern bool QJsonValueConstRef_IsBool(Self* c_this);
	[LinkName("QJsonValueConstRef_IsDouble")]
	public static extern bool QJsonValueConstRef_IsDouble(Self* c_this);
	[LinkName("QJsonValueConstRef_IsString")]
	public static extern bool QJsonValueConstRef_IsString(Self* c_this);
	[LinkName("QJsonValueConstRef_IsArray")]
	public static extern bool QJsonValueConstRef_IsArray(Self* c_this);
	[LinkName("QJsonValueConstRef_IsObject")]
	public static extern bool QJsonValueConstRef_IsObject(Self* c_this);
	[LinkName("QJsonValueConstRef_IsUndefined")]
	public static extern bool QJsonValueConstRef_IsUndefined(Self* c_this);
	[LinkName("QJsonValueConstRef_ToBool")]
	public static extern bool QJsonValueConstRef_ToBool(Self* c_this);
	[LinkName("QJsonValueConstRef_ToInt")]
	public static extern int32 QJsonValueConstRef_ToInt(Self* c_this);
	[LinkName("QJsonValueConstRef_ToInteger")]
	public static extern int64 QJsonValueConstRef_ToInteger(Self* c_this);
	[LinkName("QJsonValueConstRef_ToDouble")]
	public static extern double QJsonValueConstRef_ToDouble(Self* c_this);
	[LinkName("QJsonValueConstRef_ToString")]
	public static extern libqt_string QJsonValueConstRef_ToString(Self* c_this);
	[LinkName("QJsonValueConstRef_ToArray")]
	public static extern QJsonArray QJsonValueConstRef_ToArray(Self* c_this);
	[LinkName("QJsonValueConstRef_ToObject")]
	public static extern QJsonObject QJsonValueConstRef_ToObject(Self* c_this);
	[LinkName("QJsonValueConstRef_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonValueConstRef_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QJsonValueConstRef_OperatorEqual")]
	public static extern bool QJsonValueConstRef_OperatorEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValueConstRef_OperatorNotEqual")]
	public static extern bool QJsonValueConstRef_OperatorNotEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValueConstRef_ToBool1")]
	public static extern bool QJsonValueConstRef_ToBool1(Self* c_this, bool defaultValue);
	[LinkName("QJsonValueConstRef_ToInt1")]
	public static extern int32 QJsonValueConstRef_ToInt1(Self* c_this, int32 defaultValue);
	[LinkName("QJsonValueConstRef_ToInteger1")]
	public static extern int64 QJsonValueConstRef_ToInteger1(Self* c_this, int64 defaultValue);
	[LinkName("QJsonValueConstRef_ToDouble1")]
	public static extern double QJsonValueConstRef_ToDouble1(Self* c_this, double defaultValue);
	[LinkName("QJsonValueConstRef_ToString1")]
	public static extern libqt_string QJsonValueConstRef_ToString1(Self* c_this, libqt_string defaultValue);
}
public struct QJsonValueRef : QJsonValueConstRef
{
	[LinkName("QJsonValueRef_new")]
	public static extern QJsonValueRef* QJsonValueRef_new(QJsonValueRef* other);
	[LinkName("QJsonValueRef_new2")]
	public static extern QJsonValueRef* QJsonValueRef_new2(QJsonValueRef* param1);
	[LinkName("QJsonValueRef_new3")]
	public static extern QJsonValueRef* QJsonValueRef_new3(QJsonArray* array, int32 idx);
	[LinkName("QJsonValueRef_new4")]
	public static extern QJsonValueRef* QJsonValueRef_new4(QJsonObject* object, int32 idx);
	[LinkName("QJsonValueRef_OperatorAssign")]
	public static extern void QJsonValueRef_OperatorAssign(Self* c_this, QJsonValue* val);
	[LinkName("QJsonValueRef_OperatorAssignWithVal")]
	public static extern void QJsonValueRef_OperatorAssignWithVal(Self* c_this, QJsonValueRef* val);
	[LinkName("QJsonValueRef_ToQJsonValue")]
	public static extern QJsonValue QJsonValueRef_ToQJsonValue(Self* c_this);
	[LinkName("QJsonValueRef_ToVariant")]
	public static extern QVariant QJsonValueRef_ToVariant(Self* c_this);
	[LinkName("QJsonValueRef_Type")]
	public static extern int64 QJsonValueRef_Type(Self* c_this);
	[LinkName("QJsonValueRef_IsNull")]
	public static extern bool QJsonValueRef_IsNull(Self* c_this);
	[LinkName("QJsonValueRef_IsBool")]
	public static extern bool QJsonValueRef_IsBool(Self* c_this);
	[LinkName("QJsonValueRef_IsDouble")]
	public static extern bool QJsonValueRef_IsDouble(Self* c_this);
	[LinkName("QJsonValueRef_IsString")]
	public static extern bool QJsonValueRef_IsString(Self* c_this);
	[LinkName("QJsonValueRef_IsArray")]
	public static extern bool QJsonValueRef_IsArray(Self* c_this);
	[LinkName("QJsonValueRef_IsObject")]
	public static extern bool QJsonValueRef_IsObject(Self* c_this);
	[LinkName("QJsonValueRef_IsUndefined")]
	public static extern bool QJsonValueRef_IsUndefined(Self* c_this);
	[LinkName("QJsonValueRef_ToBool")]
	public static extern bool QJsonValueRef_ToBool(Self* c_this);
	[LinkName("QJsonValueRef_ToInt")]
	public static extern int32 QJsonValueRef_ToInt(Self* c_this);
	[LinkName("QJsonValueRef_ToInteger")]
	public static extern int64 QJsonValueRef_ToInteger(Self* c_this);
	[LinkName("QJsonValueRef_ToDouble")]
	public static extern double QJsonValueRef_ToDouble(Self* c_this);
	[LinkName("QJsonValueRef_ToString")]
	public static extern libqt_string QJsonValueRef_ToString(Self* c_this);
	[LinkName("QJsonValueRef_ToArray")]
	public static extern QJsonArray QJsonValueRef_ToArray(Self* c_this);
	[LinkName("QJsonValueRef_ToObject")]
	public static extern QJsonObject QJsonValueRef_ToObject(Self* c_this);
	[LinkName("QJsonValueRef_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonValueRef_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QJsonValueRef_OperatorEqual")]
	public static extern bool QJsonValueRef_OperatorEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValueRef_OperatorNotEqual")]
	public static extern bool QJsonValueRef_OperatorNotEqual(Self* c_this, QJsonValue* other);
	[LinkName("QJsonValueRef_ToBool1")]
	public static extern bool QJsonValueRef_ToBool1(Self* c_this, bool defaultValue);
	[LinkName("QJsonValueRef_ToInt1")]
	public static extern int32 QJsonValueRef_ToInt1(Self* c_this, int32 defaultValue);
	[LinkName("QJsonValueRef_ToInteger1")]
	public static extern int64 QJsonValueRef_ToInteger1(Self* c_this, int64 defaultValue);
	[LinkName("QJsonValueRef_ToDouble1")]
	public static extern double QJsonValueRef_ToDouble1(Self* c_this, double defaultValue);
	[LinkName("QJsonValueRef_ToString1")]
	public static extern libqt_string QJsonValueRef_ToString1(Self* c_this, libqt_string defaultValue);
}