using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QCborStreamReader__Type
{
	UnsignedInteger = 0,
	NegativeInteger = 32,
	ByteString = 64,
	ByteArray = 64,
	TextString = 96,
	String = 96,
	Array = 128,
	Map = 160,
	Tag = 192,
	SimpleType = 224,
	HalfFloat = 249,
	Float16 = 249,
	Float = 250,
	Double = 251,
	Invalid = 255,
}
[AllowDuplicates]
public enum QCborStreamReader__StringResultCode
{
	EndOfString = 0,
	Ok = 1,
	Error = -1,
}
public struct QCborStreamReader
{
	[LinkName("QCborStreamReader_new")]
	public static extern void* QCborStreamReader_new();
	[LinkName("QCborStreamReader_new2")]
	public static extern void* QCborStreamReader_new2(char8[] data, int32 lenVal);
	[LinkName("QCborStreamReader_new3")]
	public static extern void* QCborStreamReader_new3(uint8 data, int32 lenVal);
	[LinkName("QCborStreamReader_new4")]
	public static extern void* QCborStreamReader_new4(uint8[] data);
	[LinkName("QCborStreamReader_new5")]
	public static extern void* QCborStreamReader_new5(QIODevice device);
	[LinkName("QCborStreamReader_SetDevice")]
	public static extern void QCborStreamReader_SetDevice(void* c_this, QIODevice device);
	[LinkName("QCborStreamReader_Device")]
	public static extern QIODevice QCborStreamReader_Device(void* c_this);
	[LinkName("QCborStreamReader_AddData")]
	public static extern void QCborStreamReader_AddData(void* c_this, uint8[] data);
	[LinkName("QCborStreamReader_AddData2")]
	public static extern void QCborStreamReader_AddData2(void* c_this, char8[] data, int32 lenVal);
	[LinkName("QCborStreamReader_AddData3")]
	public static extern void QCborStreamReader_AddData3(void* c_this, uint8 data, int32 lenVal);
	[LinkName("QCborStreamReader_Reparse")]
	public static extern void QCborStreamReader_Reparse(void* c_this);
	[LinkName("QCborStreamReader_Clear")]
	public static extern void QCborStreamReader_Clear(void* c_this);
	[LinkName("QCborStreamReader_Reset")]
	public static extern void QCborStreamReader_Reset(void* c_this);
	[LinkName("QCborStreamReader_LastError")]
	public static extern QCborError QCborStreamReader_LastError(void* c_this);
	[LinkName("QCborStreamReader_CurrentOffset")]
	public static extern int64 QCborStreamReader_CurrentOffset(void* c_this);
	[LinkName("QCborStreamReader_IsValid")]
	public static extern bool QCborStreamReader_IsValid(void* c_this);
	[LinkName("QCborStreamReader_ContainerDepth")]
	public static extern int32 QCborStreamReader_ContainerDepth(void* c_this);
	[LinkName("QCborStreamReader_ParentContainerType")]
	public static extern int64 QCborStreamReader_ParentContainerType(void* c_this);
	[LinkName("QCborStreamReader_HasNext")]
	public static extern bool QCborStreamReader_HasNext(void* c_this);
	[LinkName("QCborStreamReader_Next")]
	public static extern bool QCborStreamReader_Next(void* c_this);
	[LinkName("QCborStreamReader_Type")]
	public static extern int64 QCborStreamReader_Type(void* c_this);
	[LinkName("QCborStreamReader_IsUnsignedInteger")]
	public static extern bool QCborStreamReader_IsUnsignedInteger(void* c_this);
	[LinkName("QCborStreamReader_IsNegativeInteger")]
	public static extern bool QCborStreamReader_IsNegativeInteger(void* c_this);
	[LinkName("QCborStreamReader_IsInteger")]
	public static extern bool QCborStreamReader_IsInteger(void* c_this);
	[LinkName("QCborStreamReader_IsByteArray")]
	public static extern bool QCborStreamReader_IsByteArray(void* c_this);
	[LinkName("QCborStreamReader_IsString")]
	public static extern bool QCborStreamReader_IsString(void* c_this);
	[LinkName("QCborStreamReader_IsArray")]
	public static extern bool QCborStreamReader_IsArray(void* c_this);
	[LinkName("QCborStreamReader_IsMap")]
	public static extern bool QCborStreamReader_IsMap(void* c_this);
	[LinkName("QCborStreamReader_IsTag")]
	public static extern bool QCborStreamReader_IsTag(void* c_this);
	[LinkName("QCborStreamReader_IsSimpleType")]
	public static extern bool QCborStreamReader_IsSimpleType(void* c_this);
	[LinkName("QCborStreamReader_IsFloat16")]
	public static extern bool QCborStreamReader_IsFloat16(void* c_this);
	[LinkName("QCborStreamReader_IsFloat")]
	public static extern bool QCborStreamReader_IsFloat(void* c_this);
	[LinkName("QCborStreamReader_IsDouble")]
	public static extern bool QCborStreamReader_IsDouble(void* c_this);
	[LinkName("QCborStreamReader_IsInvalid")]
	public static extern bool QCborStreamReader_IsInvalid(void* c_this);
	[LinkName("QCborStreamReader_IsSimpleTypeWithSt")]
	public static extern bool QCborStreamReader_IsSimpleTypeWithSt(void* c_this, void st);
	[LinkName("QCborStreamReader_IsFalse")]
	public static extern bool QCborStreamReader_IsFalse(void* c_this);
	[LinkName("QCborStreamReader_IsTrue")]
	public static extern bool QCborStreamReader_IsTrue(void* c_this);
	[LinkName("QCborStreamReader_IsBool")]
	public static extern bool QCborStreamReader_IsBool(void* c_this);
	[LinkName("QCborStreamReader_IsNull")]
	public static extern bool QCborStreamReader_IsNull(void* c_this);
	[LinkName("QCborStreamReader_IsUndefined")]
	public static extern bool QCborStreamReader_IsUndefined(void* c_this);
	[LinkName("QCborStreamReader_IsLengthKnown")]
	public static extern bool QCborStreamReader_IsLengthKnown(void* c_this);
	[LinkName("QCborStreamReader_Length")]
	public static extern uint64 QCborStreamReader_Length(void* c_this);
	[LinkName("QCborStreamReader_IsContainer")]
	public static extern bool QCborStreamReader_IsContainer(void* c_this);
	[LinkName("QCborStreamReader_EnterContainer")]
	public static extern bool QCborStreamReader_EnterContainer(void* c_this);
	[LinkName("QCborStreamReader_LeaveContainer")]
	public static extern bool QCborStreamReader_LeaveContainer(void* c_this);
	[LinkName("QCborStreamReader_CurrentStringChunkSize")]
	public static extern int32 QCborStreamReader_CurrentStringChunkSize(void* c_this);
	[LinkName("QCborStreamReader_ToBool")]
	public static extern bool QCborStreamReader_ToBool(void* c_this);
	[LinkName("QCborStreamReader_ToTag")]
	public static extern void QCborStreamReader_ToTag(void* c_this);
	[LinkName("QCborStreamReader_ToUnsignedInteger")]
	public static extern uint64 QCborStreamReader_ToUnsignedInteger(void* c_this);
	[LinkName("QCborStreamReader_ToNegativeInteger")]
	public static extern void QCborStreamReader_ToNegativeInteger(void* c_this);
	[LinkName("QCborStreamReader_ToSimpleType")]
	public static extern void QCborStreamReader_ToSimpleType(void* c_this);
	[LinkName("QCborStreamReader_ToFloat")]
	public static extern float QCborStreamReader_ToFloat(void* c_this);
	[LinkName("QCborStreamReader_ToDouble")]
	public static extern double QCborStreamReader_ToDouble(void* c_this);
	[LinkName("QCborStreamReader_ToInteger")]
	public static extern int64 QCborStreamReader_ToInteger(void* c_this);
	[LinkName("QCborStreamReader_Next1")]
	public static extern bool QCborStreamReader_Next1(void* c_this, int32 maxRecursion);
}