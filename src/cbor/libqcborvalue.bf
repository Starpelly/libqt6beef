using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCborValue__EncodingOption
{
	SortKeysInMaps = 1,
	UseFloat = 2,
	UseFloat16 = 6,
	UseIntegers = 8,
	NoTransformation = 0,
}
[AllowDuplicates]
public enum QCborValue__DiagnosticNotationOption
{
	Compact = 0,
	LineWrapped = 1,
	ExtendedFormat = 2,
}
[AllowDuplicates]
public enum QCborValue__Type
{
	Integer = 0,
	ByteArray = 64,
	String = 96,
	Array = 128,
	Map = 160,
	Tag = 192,
	SimpleType = 256,
	False = 276,
	True = 277,
	Null = 278,
	Undefined = 279,
	Double = 514,
	DateTime = 65536,
	Url = 65568,
	RegularExpression = 65571,
	Uuid = 65573,
	Invalid = -1,
}
public struct QCborParserError
{
	[LinkName("QCborParserError_new")]
	public static extern void* QCborParserError_new(QCborParserError other);
	[LinkName("QCborParserError_new2")]
	public static extern void* QCborParserError_new2(QCborParserError other);
	[LinkName("QCborParserError_ErrorString")]
	public static extern char8[] QCborParserError_ErrorString(void* c_this);
}
public struct QCborValue
{
	[LinkName("QCborValue_new")]
	public static extern void* QCborValue_new();
	[LinkName("QCborValue_new2")]
	public static extern void* QCborValue_new2(int64 t_);
	[LinkName("QCborValue_new3")]
	public static extern void* QCborValue_new3(bool b_);
	[LinkName("QCborValue_new4")]
	public static extern void* QCborValue_new4(int32 i);
	[LinkName("QCborValue_new5")]
	public static extern void* QCborValue_new5(uint32 u);
	[LinkName("QCborValue_new6")]
	public static extern void* QCborValue_new6(int64 i);
	[LinkName("QCborValue_new7")]
	public static extern void* QCborValue_new7(double v);
	[LinkName("QCborValue_new8")]
	public static extern void* QCborValue_new8(void st);
	[LinkName("QCborValue_new9")]
	public static extern void* QCborValue_new9(uint8[] ba);
	[LinkName("QCborValue_new10")]
	public static extern void* QCborValue_new10(char8[] s);
	[LinkName("QCborValue_new11")]
	public static extern void* QCborValue_new11(char8[] s);
	[LinkName("QCborValue_new12")]
	public static extern void* QCborValue_new12(QCborArray a);
	[LinkName("QCborValue_new13")]
	public static extern void* QCborValue_new13(QCborMap m);
	[LinkName("QCborValue_new14")]
	public static extern void* QCborValue_new14(void tag);
	[LinkName("QCborValue_new15")]
	public static extern void* QCborValue_new15(void t_);
	[LinkName("QCborValue_new16")]
	public static extern void* QCborValue_new16(QDateTime dt);
	[LinkName("QCborValue_new17")]
	public static extern void* QCborValue_new17(QUrl url);
	[LinkName("QCborValue_new18")]
	public static extern void* QCborValue_new18(QRegularExpression rx);
	[LinkName("QCborValue_new19")]
	public static extern void* QCborValue_new19(QUuid uuid);
	[LinkName("QCborValue_new20")]
	public static extern void* QCborValue_new20(QCborValue other);
	[LinkName("QCborValue_new21")]
	public static extern void* QCborValue_new21(void tag, QCborValue taggedValue);
	[LinkName("QCborValue_new22")]
	public static extern void* QCborValue_new22(void t_, QCborValue tv);
	[LinkName("QCborValue_OperatorAssign")]
	public static extern void QCborValue_OperatorAssign(void* c_this, QCborValue other);
	[LinkName("QCborValue_Swap")]
	public static extern void QCborValue_Swap(void* c_this, QCborValue other);
	[LinkName("QCborValue_Type")]
	public static extern int64 QCborValue_Type(void* c_this);
	[LinkName("QCborValue_IsInteger")]
	public static extern bool QCborValue_IsInteger(void* c_this);
	[LinkName("QCborValue_IsByteArray")]
	public static extern bool QCborValue_IsByteArray(void* c_this);
	[LinkName("QCborValue_IsString")]
	public static extern bool QCborValue_IsString(void* c_this);
	[LinkName("QCborValue_IsArray")]
	public static extern bool QCborValue_IsArray(void* c_this);
	[LinkName("QCborValue_IsMap")]
	public static extern bool QCborValue_IsMap(void* c_this);
	[LinkName("QCborValue_IsTag")]
	public static extern bool QCborValue_IsTag(void* c_this);
	[LinkName("QCborValue_IsFalse")]
	public static extern bool QCborValue_IsFalse(void* c_this);
	[LinkName("QCborValue_IsTrue")]
	public static extern bool QCborValue_IsTrue(void* c_this);
	[LinkName("QCborValue_IsBool")]
	public static extern bool QCborValue_IsBool(void* c_this);
	[LinkName("QCborValue_IsNull")]
	public static extern bool QCborValue_IsNull(void* c_this);
	[LinkName("QCborValue_IsUndefined")]
	public static extern bool QCborValue_IsUndefined(void* c_this);
	[LinkName("QCborValue_IsDouble")]
	public static extern bool QCborValue_IsDouble(void* c_this);
	[LinkName("QCborValue_IsDateTime")]
	public static extern bool QCborValue_IsDateTime(void* c_this);
	[LinkName("QCborValue_IsUrl")]
	public static extern bool QCborValue_IsUrl(void* c_this);
	[LinkName("QCborValue_IsRegularExpression")]
	public static extern bool QCborValue_IsRegularExpression(void* c_this);
	[LinkName("QCborValue_IsUuid")]
	public static extern bool QCborValue_IsUuid(void* c_this);
	[LinkName("QCborValue_IsInvalid")]
	public static extern bool QCborValue_IsInvalid(void* c_this);
	[LinkName("QCborValue_IsContainer")]
	public static extern bool QCborValue_IsContainer(void* c_this);
	[LinkName("QCborValue_IsSimpleType")]
	public static extern bool QCborValue_IsSimpleType(void* c_this);
	[LinkName("QCborValue_IsSimpleTypeWithSt")]
	public static extern bool QCborValue_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValue_ToSimpleType")]
	public static extern void QCborValue_ToSimpleType(void* c_this);
	[LinkName("QCborValue_ToInteger")]
	public static extern int64 QCborValue_ToInteger(void* c_this);
	[LinkName("QCborValue_ToBool")]
	public static extern bool QCborValue_ToBool(void* c_this);
	[LinkName("QCborValue_ToDouble")]
	public static extern double QCborValue_ToDouble(void* c_this);
	[LinkName("QCborValue_Tag")]
	public static extern void QCborValue_Tag(void* c_this);
	[LinkName("QCborValue_TaggedValue")]
	public static extern QCborValue QCborValue_TaggedValue(void* c_this);
	[LinkName("QCborValue_ToByteArray")]
	public static extern uint8[] QCborValue_ToByteArray(void* c_this);
	[LinkName("QCborValue_ToString")]
	public static extern char8[] QCborValue_ToString(void* c_this);
	[LinkName("QCborValue_ToDateTime")]
	public static extern QDateTime QCborValue_ToDateTime(void* c_this);
	[LinkName("QCborValue_ToUrl")]
	public static extern QUrl QCborValue_ToUrl(void* c_this);
	[LinkName("QCborValue_ToRegularExpression")]
	public static extern QRegularExpression QCborValue_ToRegularExpression(void* c_this);
	[LinkName("QCborValue_ToUuid")]
	public static extern QUuid QCborValue_ToUuid(void* c_this);
	[LinkName("QCborValue_ToArray")]
	public static extern QCborArray QCborValue_ToArray(void* c_this);
	[LinkName("QCborValue_ToArrayWithDefaultValue")]
	public static extern QCborArray QCborValue_ToArrayWithDefaultValue(void* c_this, QCborArray defaultValue);
	[LinkName("QCborValue_ToMap")]
	public static extern QCborMap QCborValue_ToMap(void* c_this);
	[LinkName("QCborValue_ToMapWithDefaultValue")]
	public static extern QCborMap QCborValue_ToMapWithDefaultValue(void* c_this, QCborMap defaultValue);
	[LinkName("QCborValue_OperatorSubscript")]
	public static extern QCborValue QCborValue_OperatorSubscript(void* c_this, char8[] key);
	[LinkName("QCborValue_OperatorSubscript2")]
	public static extern QCborValue QCborValue_OperatorSubscript2(void* c_this, int64 key);
	[LinkName("QCborValue_OperatorSubscript3")]
	public static extern QCborValueRef QCborValue_OperatorSubscript3(void* c_this, int64 key);
	[LinkName("QCborValue_OperatorSubscript5")]
	public static extern QCborValueRef QCborValue_OperatorSubscript5(void* c_this, char8[] key);
	[LinkName("QCborValue_Compare")]
	public static extern int32 QCborValue_Compare(void* c_this, QCborValue other);
	[LinkName("QCborValue_OperatorEqual")]
	public static extern bool QCborValue_OperatorEqual(void* c_this, QCborValue other);
	[LinkName("QCborValue_OperatorNotEqual")]
	public static extern bool QCborValue_OperatorNotEqual(void* c_this, QCborValue other);
	[LinkName("QCborValue_OperatorLesser")]
	public static extern bool QCborValue_OperatorLesser(void* c_this, QCborValue other);
	[LinkName("QCborValue_FromVariant")]
	public static extern QCborValue QCborValue_FromVariant(QVariant variant);
	[LinkName("QCborValue_ToVariant")]
	public static extern QVariant QCborValue_ToVariant(void* c_this);
	[LinkName("QCborValue_FromJsonValue")]
	public static extern QCborValue QCborValue_FromJsonValue(QJsonValue v);
	[LinkName("QCborValue_ToJsonValue")]
	public static extern QJsonValue QCborValue_ToJsonValue(void* c_this);
	[LinkName("QCborValue_FromCbor")]
	public static extern QCborValue QCborValue_FromCbor(QCborStreamReader reader);
	[LinkName("QCborValue_FromCborWithBa")]
	public static extern QCborValue QCborValue_FromCborWithBa(uint8[] ba);
	[LinkName("QCborValue_FromCbor2")]
	public static extern QCborValue QCborValue_FromCbor2(char8[] data, int32 lenVal);
	[LinkName("QCborValue_FromCbor3")]
	public static extern QCborValue QCborValue_FromCbor3(uint8 data, int32 lenVal);
	[LinkName("QCborValue_ToCbor")]
	public static extern uint8[] QCborValue_ToCbor(void* c_this);
	[LinkName("QCborValue_ToCborWithWriter")]
	public static extern void QCborValue_ToCborWithWriter(void* c_this, QCborStreamWriter writer);
	[LinkName("QCborValue_ToDiagnosticNotation")]
	public static extern char8[] QCborValue_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValue_ToSimpleType1")]
	public static extern void QCborValue_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValue_ToInteger1")]
	public static extern int64 QCborValue_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValue_ToBool1")]
	public static extern bool QCborValue_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValue_ToDouble1")]
	public static extern double QCborValue_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValue_Tag1")]
	public static extern void QCborValue_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValue_TaggedValue1")]
	public static extern QCborValue QCborValue_TaggedValue1(void* c_this, QCborValue defaultValue);
	[LinkName("QCborValue_ToByteArray1")]
	public static extern uint8[] QCborValue_ToByteArray1(void* c_this, uint8[] defaultValue);
	[LinkName("QCborValue_ToString1")]
	public static extern char8[] QCborValue_ToString1(void* c_this, char8[] defaultValue);
	[LinkName("QCborValue_ToDateTime1")]
	public static extern QDateTime QCborValue_ToDateTime1(void* c_this, QDateTime defaultValue);
	[LinkName("QCborValue_ToUrl1")]
	public static extern QUrl QCborValue_ToUrl1(void* c_this, QUrl defaultValue);
	[LinkName("QCborValue_ToRegularExpression1")]
	public static extern QRegularExpression QCborValue_ToRegularExpression1(void* c_this, QRegularExpression defaultValue);
	[LinkName("QCborValue_ToUuid1")]
	public static extern QUuid QCborValue_ToUuid1(void* c_this, QUuid defaultValue);
	[LinkName("QCborValue_FromCbor22")]
	public static extern QCborValue QCborValue_FromCbor22(uint8[] ba, QCborParserError errorVal);
	[LinkName("QCborValue_FromCbor32")]
	public static extern QCborValue QCborValue_FromCbor32(char8[] data, int32 lenVal, QCborParserError errorVal);
	[LinkName("QCborValue_FromCbor33")]
	public static extern QCborValue QCborValue_FromCbor33(uint8 data, int32 lenVal, QCborParserError errorVal);
	[LinkName("QCborValue_ToCbor1")]
	public static extern uint8[] QCborValue_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValue_ToCbor2")]
	public static extern void QCborValue_ToCbor2(void* c_this, QCborStreamWriter writer, int64 opt);
	[LinkName("QCborValue_ToDiagnosticNotation1")]
	public static extern char8[] QCborValue_ToDiagnosticNotation1(void* c_this, int64 opts);
}
public struct QCborValueConstRef
{
	[LinkName("QCborValueConstRef_new")]
	public static extern void* QCborValueConstRef_new(QCborValueConstRef other);
	[LinkName("QCborValueConstRef_new2")]
	public static extern void* QCborValueConstRef_new2(QCborValueConstRef param1);
	[LinkName("QCborValueConstRef_ToQCborValue")]
	public static extern QCborValue QCborValueConstRef_ToQCborValue(void* c_this);
	[LinkName("QCborValueConstRef_Type")]
	public static extern int64 QCborValueConstRef_Type(void* c_this);
	[LinkName("QCborValueConstRef_IsInteger")]
	public static extern bool QCborValueConstRef_IsInteger(void* c_this);
	[LinkName("QCborValueConstRef_IsByteArray")]
	public static extern bool QCborValueConstRef_IsByteArray(void* c_this);
	[LinkName("QCborValueConstRef_IsString")]
	public static extern bool QCborValueConstRef_IsString(void* c_this);
	[LinkName("QCborValueConstRef_IsArray")]
	public static extern bool QCborValueConstRef_IsArray(void* c_this);
	[LinkName("QCborValueConstRef_IsMap")]
	public static extern bool QCborValueConstRef_IsMap(void* c_this);
	[LinkName("QCborValueConstRef_IsTag")]
	public static extern bool QCborValueConstRef_IsTag(void* c_this);
	[LinkName("QCborValueConstRef_IsFalse")]
	public static extern bool QCborValueConstRef_IsFalse(void* c_this);
	[LinkName("QCborValueConstRef_IsTrue")]
	public static extern bool QCborValueConstRef_IsTrue(void* c_this);
	[LinkName("QCborValueConstRef_IsBool")]
	public static extern bool QCborValueConstRef_IsBool(void* c_this);
	[LinkName("QCborValueConstRef_IsNull")]
	public static extern bool QCborValueConstRef_IsNull(void* c_this);
	[LinkName("QCborValueConstRef_IsUndefined")]
	public static extern bool QCborValueConstRef_IsUndefined(void* c_this);
	[LinkName("QCborValueConstRef_IsDouble")]
	public static extern bool QCborValueConstRef_IsDouble(void* c_this);
	[LinkName("QCborValueConstRef_IsDateTime")]
	public static extern bool QCborValueConstRef_IsDateTime(void* c_this);
	[LinkName("QCborValueConstRef_IsUrl")]
	public static extern bool QCborValueConstRef_IsUrl(void* c_this);
	[LinkName("QCborValueConstRef_IsRegularExpression")]
	public static extern bool QCborValueConstRef_IsRegularExpression(void* c_this);
	[LinkName("QCborValueConstRef_IsUuid")]
	public static extern bool QCborValueConstRef_IsUuid(void* c_this);
	[LinkName("QCborValueConstRef_IsInvalid")]
	public static extern bool QCborValueConstRef_IsInvalid(void* c_this);
	[LinkName("QCborValueConstRef_IsContainer")]
	public static extern bool QCborValueConstRef_IsContainer(void* c_this);
	[LinkName("QCborValueConstRef_IsSimpleType")]
	public static extern bool QCborValueConstRef_IsSimpleType(void* c_this);
	[LinkName("QCborValueConstRef_IsSimpleTypeWithSt")]
	public static extern bool QCborValueConstRef_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValueConstRef_ToSimpleType")]
	public static extern void QCborValueConstRef_ToSimpleType(void* c_this);
	[LinkName("QCborValueConstRef_Tag")]
	public static extern void QCborValueConstRef_Tag(void* c_this);
	[LinkName("QCborValueConstRef_TaggedValue")]
	public static extern QCborValue QCborValueConstRef_TaggedValue(void* c_this);
	[LinkName("QCborValueConstRef_ToInteger")]
	public static extern int64 QCborValueConstRef_ToInteger(void* c_this);
	[LinkName("QCborValueConstRef_ToBool")]
	public static extern bool QCborValueConstRef_ToBool(void* c_this);
	[LinkName("QCborValueConstRef_ToDouble")]
	public static extern double QCborValueConstRef_ToDouble(void* c_this);
	[LinkName("QCborValueConstRef_ToByteArray")]
	public static extern uint8[] QCborValueConstRef_ToByteArray(void* c_this);
	[LinkName("QCborValueConstRef_ToString")]
	public static extern char8[] QCborValueConstRef_ToString(void* c_this);
	[LinkName("QCborValueConstRef_ToDateTime")]
	public static extern QDateTime QCborValueConstRef_ToDateTime(void* c_this);
	[LinkName("QCborValueConstRef_ToUrl")]
	public static extern QUrl QCborValueConstRef_ToUrl(void* c_this);
	[LinkName("QCborValueConstRef_ToRegularExpression")]
	public static extern QRegularExpression QCborValueConstRef_ToRegularExpression(void* c_this);
	[LinkName("QCborValueConstRef_ToUuid")]
	public static extern QUuid QCborValueConstRef_ToUuid(void* c_this);
	[LinkName("QCborValueConstRef_ToArray")]
	public static extern QCborArray QCborValueConstRef_ToArray(void* c_this);
	[LinkName("QCborValueConstRef_ToArrayWithQCborArray")]
	public static extern QCborArray QCborValueConstRef_ToArrayWithQCborArray(void* c_this, QCborArray a);
	[LinkName("QCborValueConstRef_ToMap")]
	public static extern QCborMap QCborValueConstRef_ToMap(void* c_this);
	[LinkName("QCborValueConstRef_ToMapWithQCborMap")]
	public static extern QCborMap QCborValueConstRef_ToMapWithQCborMap(void* c_this, QCborMap m);
	[LinkName("QCborValueConstRef_OperatorSubscript")]
	public static extern QCborValue QCborValueConstRef_OperatorSubscript(void* c_this, char8[] key);
	[LinkName("QCborValueConstRef_OperatorSubscript2")]
	public static extern QCborValue QCborValueConstRef_OperatorSubscript2(void* c_this, int64 key);
	[LinkName("QCborValueConstRef_Compare")]
	public static extern int32 QCborValueConstRef_Compare(void* c_this, QCborValue other);
	[LinkName("QCborValueConstRef_OperatorEqual")]
	public static extern bool QCborValueConstRef_OperatorEqual(void* c_this, QCborValue other);
	[LinkName("QCborValueConstRef_OperatorNotEqual")]
	public static extern bool QCborValueConstRef_OperatorNotEqual(void* c_this, QCborValue other);
	[LinkName("QCborValueConstRef_OperatorLesser")]
	public static extern bool QCborValueConstRef_OperatorLesser(void* c_this, QCborValue other);
	[LinkName("QCborValueConstRef_ToVariant")]
	public static extern QVariant QCborValueConstRef_ToVariant(void* c_this);
	[LinkName("QCborValueConstRef_ToJsonValue")]
	public static extern QJsonValue QCborValueConstRef_ToJsonValue(void* c_this);
	[LinkName("QCborValueConstRef_ToCbor")]
	public static extern uint8[] QCborValueConstRef_ToCbor(void* c_this);
	[LinkName("QCborValueConstRef_ToCborWithWriter")]
	public static extern void QCborValueConstRef_ToCborWithWriter(void* c_this, QCborStreamWriter writer);
	[LinkName("QCborValueConstRef_ToDiagnosticNotation")]
	public static extern char8[] QCborValueConstRef_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValueConstRef_ToSimpleType1")]
	public static extern void QCborValueConstRef_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValueConstRef_Tag1")]
	public static extern void QCborValueConstRef_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValueConstRef_TaggedValue1")]
	public static extern QCborValue QCborValueConstRef_TaggedValue1(void* c_this, QCborValue defaultValue);
	[LinkName("QCborValueConstRef_ToInteger1")]
	public static extern int64 QCborValueConstRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValueConstRef_ToBool1")]
	public static extern bool QCborValueConstRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValueConstRef_ToDouble1")]
	public static extern double QCborValueConstRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValueConstRef_ToByteArray1")]
	public static extern uint8[] QCborValueConstRef_ToByteArray1(void* c_this, uint8[] defaultValue);
	[LinkName("QCborValueConstRef_ToString1")]
	public static extern char8[] QCborValueConstRef_ToString1(void* c_this, char8[] defaultValue);
	[LinkName("QCborValueConstRef_ToDateTime1")]
	public static extern QDateTime QCborValueConstRef_ToDateTime1(void* c_this, QDateTime defaultValue);
	[LinkName("QCborValueConstRef_ToUrl1")]
	public static extern QUrl QCborValueConstRef_ToUrl1(void* c_this, QUrl defaultValue);
	[LinkName("QCborValueConstRef_ToRegularExpression1")]
	public static extern QRegularExpression QCborValueConstRef_ToRegularExpression1(void* c_this, QRegularExpression defaultValue);
	[LinkName("QCborValueConstRef_ToUuid1")]
	public static extern QUuid QCborValueConstRef_ToUuid1(void* c_this, QUuid defaultValue);
	[LinkName("QCborValueConstRef_ToCbor1")]
	public static extern uint8[] QCborValueConstRef_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValueConstRef_ToCbor2")]
	public static extern void QCborValueConstRef_ToCbor2(void* c_this, QCborStreamWriter writer, int64 opt);
	[LinkName("QCborValueConstRef_ToDiagnosticNotation1")]
	public static extern char8[] QCborValueConstRef_ToDiagnosticNotation1(void* c_this, int64 opt);
}
public struct QCborValueRef
{
	[LinkName("QCborValueRef_new")]
	public static extern void* QCborValueRef_new(QCborValueRef other);
	[LinkName("QCborValueRef_new2")]
	public static extern void* QCborValueRef_new2(QCborValueRef other);
	[LinkName("QCborValueRef_new3")]
	public static extern void* QCborValueRef_new3(QCborValueRef param1);
	[LinkName("QCborValueRef_OperatorAssign")]
	public static extern void QCborValueRef_OperatorAssign(void* c_this, QCborValue other);
	[LinkName("QCborValueRef_OperatorAssignWithOther")]
	public static extern void QCborValueRef_OperatorAssignWithOther(void* c_this, QCborValueRef other);
	[LinkName("QCborValueRef_OperatorSubscript")]
	public static extern QCborValueRef QCborValueRef_OperatorSubscript(void* c_this, int64 key);
	[LinkName("QCborValueRef_OperatorSubscript2")]
	public static extern QCborValueRef QCborValueRef_OperatorSubscript2(void* c_this, char8[] key);
	[LinkName("QCborValueRef_ToQCborValue")]
	public static extern QCborValue QCborValueRef_ToQCborValue(void* c_this);
	[LinkName("QCborValueRef_Type")]
	public static extern int64 QCborValueRef_Type(void* c_this);
	[LinkName("QCborValueRef_IsInteger")]
	public static extern bool QCborValueRef_IsInteger(void* c_this);
	[LinkName("QCborValueRef_IsByteArray")]
	public static extern bool QCborValueRef_IsByteArray(void* c_this);
	[LinkName("QCborValueRef_IsString")]
	public static extern bool QCborValueRef_IsString(void* c_this);
	[LinkName("QCborValueRef_IsArray")]
	public static extern bool QCborValueRef_IsArray(void* c_this);
	[LinkName("QCborValueRef_IsMap")]
	public static extern bool QCborValueRef_IsMap(void* c_this);
	[LinkName("QCborValueRef_IsTag")]
	public static extern bool QCborValueRef_IsTag(void* c_this);
	[LinkName("QCborValueRef_IsFalse")]
	public static extern bool QCborValueRef_IsFalse(void* c_this);
	[LinkName("QCborValueRef_IsTrue")]
	public static extern bool QCborValueRef_IsTrue(void* c_this);
	[LinkName("QCborValueRef_IsBool")]
	public static extern bool QCborValueRef_IsBool(void* c_this);
	[LinkName("QCborValueRef_IsNull")]
	public static extern bool QCborValueRef_IsNull(void* c_this);
	[LinkName("QCborValueRef_IsUndefined")]
	public static extern bool QCborValueRef_IsUndefined(void* c_this);
	[LinkName("QCborValueRef_IsDouble")]
	public static extern bool QCborValueRef_IsDouble(void* c_this);
	[LinkName("QCborValueRef_IsDateTime")]
	public static extern bool QCborValueRef_IsDateTime(void* c_this);
	[LinkName("QCborValueRef_IsUrl")]
	public static extern bool QCborValueRef_IsUrl(void* c_this);
	[LinkName("QCborValueRef_IsRegularExpression")]
	public static extern bool QCborValueRef_IsRegularExpression(void* c_this);
	[LinkName("QCborValueRef_IsUuid")]
	public static extern bool QCborValueRef_IsUuid(void* c_this);
	[LinkName("QCborValueRef_IsInvalid")]
	public static extern bool QCborValueRef_IsInvalid(void* c_this);
	[LinkName("QCborValueRef_IsContainer")]
	public static extern bool QCborValueRef_IsContainer(void* c_this);
	[LinkName("QCborValueRef_IsSimpleType")]
	public static extern bool QCborValueRef_IsSimpleType(void* c_this);
	[LinkName("QCborValueRef_IsSimpleTypeWithSt")]
	public static extern bool QCborValueRef_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborValueRef_ToSimpleType")]
	public static extern void QCborValueRef_ToSimpleType(void* c_this);
	[LinkName("QCborValueRef_Tag")]
	public static extern void QCborValueRef_Tag(void* c_this);
	[LinkName("QCborValueRef_TaggedValue")]
	public static extern QCborValue QCborValueRef_TaggedValue(void* c_this);
	[LinkName("QCborValueRef_ToInteger")]
	public static extern int64 QCborValueRef_ToInteger(void* c_this);
	[LinkName("QCborValueRef_ToBool")]
	public static extern bool QCborValueRef_ToBool(void* c_this);
	[LinkName("QCborValueRef_ToDouble")]
	public static extern double QCborValueRef_ToDouble(void* c_this);
	[LinkName("QCborValueRef_ToByteArray")]
	public static extern uint8[] QCborValueRef_ToByteArray(void* c_this);
	[LinkName("QCborValueRef_ToString")]
	public static extern char8[] QCborValueRef_ToString(void* c_this);
	[LinkName("QCborValueRef_ToDateTime")]
	public static extern QDateTime QCborValueRef_ToDateTime(void* c_this);
	[LinkName("QCborValueRef_ToUrl")]
	public static extern QUrl QCborValueRef_ToUrl(void* c_this);
	[LinkName("QCborValueRef_ToRegularExpression")]
	public static extern QRegularExpression QCborValueRef_ToRegularExpression(void* c_this);
	[LinkName("QCborValueRef_ToUuid")]
	public static extern QUuid QCborValueRef_ToUuid(void* c_this);
	[LinkName("QCborValueRef_ToArray")]
	public static extern QCborArray QCborValueRef_ToArray(void* c_this);
	[LinkName("QCborValueRef_ToArrayWithQCborArray")]
	public static extern QCborArray QCborValueRef_ToArrayWithQCborArray(void* c_this, QCborArray a);
	[LinkName("QCborValueRef_ToMap")]
	public static extern QCborMap QCborValueRef_ToMap(void* c_this);
	[LinkName("QCborValueRef_ToMapWithQCborMap")]
	public static extern QCborMap QCborValueRef_ToMapWithQCborMap(void* c_this, QCborMap m);
	[LinkName("QCborValueRef_OperatorSubscript3")]
	public static extern QCborValue QCborValueRef_OperatorSubscript3(void* c_this, char8[] key);
	[LinkName("QCborValueRef_OperatorSubscript5")]
	public static extern QCborValue QCborValueRef_OperatorSubscript5(void* c_this, int64 key);
	[LinkName("QCborValueRef_Compare")]
	public static extern int32 QCborValueRef_Compare(void* c_this, QCborValue other);
	[LinkName("QCborValueRef_OperatorEqual")]
	public static extern bool QCborValueRef_OperatorEqual(void* c_this, QCborValue other);
	[LinkName("QCborValueRef_OperatorNotEqual")]
	public static extern bool QCborValueRef_OperatorNotEqual(void* c_this, QCborValue other);
	[LinkName("QCborValueRef_OperatorLesser")]
	public static extern bool QCborValueRef_OperatorLesser(void* c_this, QCborValue other);
	[LinkName("QCborValueRef_ToVariant")]
	public static extern QVariant QCborValueRef_ToVariant(void* c_this);
	[LinkName("QCborValueRef_ToJsonValue")]
	public static extern QJsonValue QCborValueRef_ToJsonValue(void* c_this);
	[LinkName("QCborValueRef_ToCbor")]
	public static extern uint8[] QCborValueRef_ToCbor(void* c_this);
	[LinkName("QCborValueRef_ToCborWithWriter")]
	public static extern void QCborValueRef_ToCborWithWriter(void* c_this, QCborStreamWriter writer);
	[LinkName("QCborValueRef_ToDiagnosticNotation")]
	public static extern char8[] QCborValueRef_ToDiagnosticNotation(void* c_this);
	[LinkName("QCborValueRef_ToSimpleType1")]
	public static extern void QCborValueRef_ToSimpleType1(void* c_this, void defaultValue);
	[LinkName("QCborValueRef_Tag1")]
	public static extern void QCborValueRef_Tag1(void* c_this, void defaultValue);
	[LinkName("QCborValueRef_TaggedValue1")]
	public static extern QCborValue QCborValueRef_TaggedValue1(void* c_this, QCborValue defaultValue);
	[LinkName("QCborValueRef_ToInteger1")]
	public static extern int64 QCborValueRef_ToInteger1(void* c_this, int64 defaultValue);
	[LinkName("QCborValueRef_ToBool1")]
	public static extern bool QCborValueRef_ToBool1(void* c_this, bool defaultValue);
	[LinkName("QCborValueRef_ToDouble1")]
	public static extern double QCborValueRef_ToDouble1(void* c_this, double defaultValue);
	[LinkName("QCborValueRef_ToByteArray1")]
	public static extern uint8[] QCborValueRef_ToByteArray1(void* c_this, uint8[] defaultValue);
	[LinkName("QCborValueRef_ToString1")]
	public static extern char8[] QCborValueRef_ToString1(void* c_this, char8[] defaultValue);
	[LinkName("QCborValueRef_ToDateTime1")]
	public static extern QDateTime QCborValueRef_ToDateTime1(void* c_this, QDateTime defaultValue);
	[LinkName("QCborValueRef_ToUrl1")]
	public static extern QUrl QCborValueRef_ToUrl1(void* c_this, QUrl defaultValue);
	[LinkName("QCborValueRef_ToRegularExpression1")]
	public static extern QRegularExpression QCborValueRef_ToRegularExpression1(void* c_this, QRegularExpression defaultValue);
	[LinkName("QCborValueRef_ToUuid1")]
	public static extern QUuid QCborValueRef_ToUuid1(void* c_this, QUuid defaultValue);
	[LinkName("QCborValueRef_ToCbor1")]
	public static extern uint8[] QCborValueRef_ToCbor1(void* c_this, int64 opt);
	[LinkName("QCborValueRef_ToCbor2")]
	public static extern void QCborValueRef_ToCbor2(void* c_this, QCborStreamWriter writer, int64 opt);
	[LinkName("QCborValueRef_ToDiagnosticNotation1")]
	public static extern char8[] QCborValueRef_ToDiagnosticNotation1(void* c_this, int64 opt);
}