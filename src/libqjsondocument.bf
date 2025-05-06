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
	public static extern void* QJsonParseError_new(QJsonParseError other);
	[LinkName("QJsonParseError_new2")]
	public static extern void* QJsonParseError_new2(QJsonParseError other);
	[LinkName("QJsonParseError_ErrorString")]
	public static extern char8[] QJsonParseError_ErrorString(void* c_this);
}
public struct QJsonDocument
{
	[LinkName("QJsonDocument_new")]
	public static extern void* QJsonDocument_new();
	[LinkName("QJsonDocument_new2")]
	public static extern void* QJsonDocument_new2(QJsonObject object);
	[LinkName("QJsonDocument_new3")]
	public static extern void* QJsonDocument_new3(QJsonArray array);
	[LinkName("QJsonDocument_new4")]
	public static extern void* QJsonDocument_new4(QJsonDocument other);
	[LinkName("QJsonDocument_OperatorAssign")]
	public static extern void QJsonDocument_OperatorAssign(void* c_this, QJsonDocument other);
	[LinkName("QJsonDocument_Swap")]
	public static extern void QJsonDocument_Swap(void* c_this, QJsonDocument other);
	[LinkName("QJsonDocument_FromVariant")]
	public static extern QJsonDocument QJsonDocument_FromVariant(QVariant variant);
	[LinkName("QJsonDocument_ToVariant")]
	public static extern QVariant QJsonDocument_ToVariant(void* c_this);
	[LinkName("QJsonDocument_FromJson")]
	public static extern QJsonDocument QJsonDocument_FromJson(uint8[] json);
	[LinkName("QJsonDocument_ToJson")]
	public static extern uint8[] QJsonDocument_ToJson(void* c_this);
	[LinkName("QJsonDocument_IsEmpty")]
	public static extern bool QJsonDocument_IsEmpty(void* c_this);
	[LinkName("QJsonDocument_IsArray")]
	public static extern bool QJsonDocument_IsArray(void* c_this);
	[LinkName("QJsonDocument_IsObject")]
	public static extern bool QJsonDocument_IsObject(void* c_this);
	[LinkName("QJsonDocument_Object")]
	public static extern QJsonObject QJsonDocument_Object(void* c_this);
	[LinkName("QJsonDocument_Array")]
	public static extern QJsonArray QJsonDocument_Array(void* c_this);
	[LinkName("QJsonDocument_SetObject")]
	public static extern void QJsonDocument_SetObject(void* c_this, QJsonObject object);
	[LinkName("QJsonDocument_SetArray")]
	public static extern void QJsonDocument_SetArray(void* c_this, QJsonArray array);
	[LinkName("QJsonDocument_OperatorSubscript")]
	public static extern QJsonValue QJsonDocument_OperatorSubscript(void* c_this, char8[] key);
	[LinkName("QJsonDocument_OperatorSubscriptWithQsizetype")]
	public static extern QJsonValue QJsonDocument_OperatorSubscriptWithQsizetype(void* c_this, int32 i);
	[LinkName("QJsonDocument_OperatorEqual")]
	public static extern bool QJsonDocument_OperatorEqual(void* c_this, QJsonDocument other);
	[LinkName("QJsonDocument_OperatorNotEqual")]
	public static extern bool QJsonDocument_OperatorNotEqual(void* c_this, QJsonDocument other);
	[LinkName("QJsonDocument_IsNull")]
	public static extern bool QJsonDocument_IsNull(void* c_this);
	[LinkName("QJsonDocument_FromJson2")]
	public static extern QJsonDocument QJsonDocument_FromJson2(uint8[] json, QJsonParseError errorVal);
	[LinkName("QJsonDocument_ToJson1")]
	public static extern uint8[] QJsonDocument_ToJson1(void* c_this, int64 format);
}