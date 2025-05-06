using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QJsonParseError__ParseError
{
	NoError = 0,
	UnterminatedObject = 1,
	MissingNameSeparator = 2,
	UnterminatedArray = 3,
	MissingValueSeparator = 4,
	IllegalValue = 5,
	TerminationByNumber = 6,
	IllegalNumber = 7,
	IllegalEscapeSequence = 8,
	IllegalUTF8String = 9,
	UnterminatedString = 10,
	MissingObject = 11,
	DeepNesting = 12,
	DocumentTooLarge = 13,
	GarbageAtEnd = 14,
}
[AllowDuplicates]
public enum QJsonDocument__JsonFormat
{
	Indented = 0,
	Compact = 1,
}
public struct QJsonParseError
{
	[LinkName("QJsonParseError_new")]
	public static extern QJsonParseError* QJsonParseError_new(QJsonParseError* other);
	[LinkName("QJsonParseError_new2")]
	public static extern QJsonParseError* QJsonParseError_new2(QJsonParseError* other);
	[LinkName("QJsonParseError_ErrorString")]
	public static extern libqt_string QJsonParseError_ErrorString(Self* c_this);
}
public struct QJsonDocument
{
	[LinkName("QJsonDocument_new")]
	public static extern QJsonDocument* QJsonDocument_new();
	[LinkName("QJsonDocument_new2")]
	public static extern QJsonDocument* QJsonDocument_new2(QJsonObject* object);
	[LinkName("QJsonDocument_new3")]
	public static extern QJsonDocument* QJsonDocument_new3(QJsonArray* array);
	[LinkName("QJsonDocument_new4")]
	public static extern QJsonDocument* QJsonDocument_new4(QJsonDocument* other);
	[LinkName("QJsonDocument_OperatorAssign")]
	public static extern void QJsonDocument_OperatorAssign(Self* c_this, QJsonDocument* other);
	[LinkName("QJsonDocument_Swap")]
	public static extern void QJsonDocument_Swap(Self* c_this, QJsonDocument* other);
	[LinkName("QJsonDocument_FromVariant")]
	public static extern QJsonDocument QJsonDocument_FromVariant(QVariant* variant);
	[LinkName("QJsonDocument_ToVariant")]
	public static extern QVariant QJsonDocument_ToVariant(Self* c_this);
	[LinkName("QJsonDocument_FromJson")]
	public static extern QJsonDocument QJsonDocument_FromJson(libqt_string json);
	[LinkName("QJsonDocument_ToJson")]
	public static extern libqt_string QJsonDocument_ToJson(Self* c_this);
	[LinkName("QJsonDocument_IsEmpty")]
	public static extern bool QJsonDocument_IsEmpty(Self* c_this);
	[LinkName("QJsonDocument_IsArray")]
	public static extern bool QJsonDocument_IsArray(Self* c_this);
	[LinkName("QJsonDocument_IsObject")]
	public static extern bool QJsonDocument_IsObject(Self* c_this);
	[LinkName("QJsonDocument_Object")]
	public static extern QJsonObject QJsonDocument_Object(Self* c_this);
	[LinkName("QJsonDocument_Array")]
	public static extern QJsonArray QJsonDocument_Array(Self* c_this);
	[LinkName("QJsonDocument_SetObject")]
	public static extern void QJsonDocument_SetObject(Self* c_this, QJsonObject* object);
	[LinkName("QJsonDocument_SetArray")]
	public static extern void QJsonDocument_SetArray(Self* c_this, QJsonArray* array);
	[LinkName("QJsonDocument_OperatorSubscript")]
	public static extern QJsonValue QJsonDocument_OperatorSubscript(Self* c_this, libqt_string key);
	[LinkName("QJsonDocument_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonDocument_OperatorSubscriptWithQsizetype(Self* c_this, int32 i);
	[LinkName("QJsonDocument_OperatorEqual")]
	public static extern bool QJsonDocument_OperatorEqual(Self* c_this, QJsonDocument* other);
	[LinkName("QJsonDocument_OperatorNotEqual")]
	public static extern bool QJsonDocument_OperatorNotEqual(Self* c_this, QJsonDocument* other);
	[LinkName("QJsonDocument_IsNull")]
	public static extern bool QJsonDocument_IsNull(Self* c_this);
	[LinkName("QJsonDocument_FromJson2")]
	public static extern QJsonDocument QJsonDocument_FromJson2(libqt_string json, QJsonParseError* errorVal);
	[LinkName("QJsonDocument_ToJson1")]
	public static extern libqt_string QJsonDocument_ToJson1(Self* c_this, int64 format);
}