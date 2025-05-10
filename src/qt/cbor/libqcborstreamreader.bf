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
public class QCborStreamReader
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCborStreamReader_new();
	}
	
	public ~this()
	{
		CQt.QCborStreamReader_Delete(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QCborStreamReader_SetDevice(this.nativePtr, device);
	}
	
	public void* Device()
	{
		return CQt.QCborStreamReader_Device(this.nativePtr);
	}
	
	public void AddData(libqt_string data)
	{
		CQt.QCborStreamReader_AddData(this.nativePtr, data);
	}
	
	public void AddData2(char8[] data, int32 lenVal)
	{
		CQt.QCborStreamReader_AddData2(this.nativePtr, data, lenVal);
	}
	
	public void AddData3(uint8* data, int32 lenVal)
	{
		CQt.QCborStreamReader_AddData3(this.nativePtr, data, lenVal);
	}
	
	public void Reparse()
	{
		CQt.QCborStreamReader_Reparse(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QCborStreamReader_Clear(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QCborStreamReader_Reset(this.nativePtr);
	}
	
	public void LastError()
	{
		CQt.QCborStreamReader_LastError(this.nativePtr);
	}
	
	public int64 CurrentOffset()
	{
		return CQt.QCborStreamReader_CurrentOffset(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QCborStreamReader_IsValid(this.nativePtr);
	}
	
	public int32 ContainerDepth()
	{
		return CQt.QCborStreamReader_ContainerDepth(this.nativePtr);
	}
	
	public int64 ParentContainerType()
	{
		return CQt.QCborStreamReader_ParentContainerType(this.nativePtr);
	}
	
	public bool HasNext()
	{
		return CQt.QCborStreamReader_HasNext(this.nativePtr);
	}
	
	public bool Next()
	{
		return CQt.QCborStreamReader_Next(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QCborStreamReader_Type(this.nativePtr);
	}
	
	public bool IsUnsignedInteger()
	{
		return CQt.QCborStreamReader_IsUnsignedInteger(this.nativePtr);
	}
	
	public bool IsNegativeInteger()
	{
		return CQt.QCborStreamReader_IsNegativeInteger(this.nativePtr);
	}
	
	public bool IsInteger()
	{
		return CQt.QCborStreamReader_IsInteger(this.nativePtr);
	}
	
	public bool IsByteArray()
	{
		return CQt.QCborStreamReader_IsByteArray(this.nativePtr);
	}
	
	public bool IsString()
	{
		return CQt.QCborStreamReader_IsString(this.nativePtr);
	}
	
	public bool IsArray()
	{
		return CQt.QCborStreamReader_IsArray(this.nativePtr);
	}
	
	public bool IsMap()
	{
		return CQt.QCborStreamReader_IsMap(this.nativePtr);
	}
	
	public bool IsTag()
	{
		return CQt.QCborStreamReader_IsTag(this.nativePtr);
	}
	
	public bool IsSimpleType()
	{
		return CQt.QCborStreamReader_IsSimpleType(this.nativePtr);
	}
	
	public bool IsFloat16()
	{
		return CQt.QCborStreamReader_IsFloat16(this.nativePtr);
	}
	
	public bool IsFloat()
	{
		return CQt.QCborStreamReader_IsFloat(this.nativePtr);
	}
	
	public bool IsDouble()
	{
		return CQt.QCborStreamReader_IsDouble(this.nativePtr);
	}
	
	public bool IsInvalid()
	{
		return CQt.QCborStreamReader_IsInvalid(this.nativePtr);
	}
	
	public bool IsSimpleTypeWithSt(void st)
	{
		return CQt.QCborStreamReader_IsSimpleTypeWithSt(this.nativePtr, st);
	}
	
	public bool IsFalse()
	{
		return CQt.QCborStreamReader_IsFalse(this.nativePtr);
	}
	
	public bool IsTrue()
	{
		return CQt.QCborStreamReader_IsTrue(this.nativePtr);
	}
	
	public bool IsBool()
	{
		return CQt.QCborStreamReader_IsBool(this.nativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QCborStreamReader_IsNull(this.nativePtr);
	}
	
	public bool IsUndefined()
	{
		return CQt.QCborStreamReader_IsUndefined(this.nativePtr);
	}
	
	public bool IsLengthKnown()
	{
		return CQt.QCborStreamReader_IsLengthKnown(this.nativePtr);
	}
	
	public uint64 Length()
	{
		return CQt.QCborStreamReader_Length(this.nativePtr);
	}
	
	public bool IsContainer()
	{
		return CQt.QCborStreamReader_IsContainer(this.nativePtr);
	}
	
	public bool EnterContainer()
	{
		return CQt.QCborStreamReader_EnterContainer(this.nativePtr);
	}
	
	public bool LeaveContainer()
	{
		return CQt.QCborStreamReader_LeaveContainer(this.nativePtr);
	}
	
	public int32 CurrentStringChunkSize()
	{
		return CQt.QCborStreamReader_CurrentStringChunkSize(this.nativePtr);
	}
	
	public bool ToBool()
	{
		return CQt.QCborStreamReader_ToBool(this.nativePtr);
	}
	
	public void ToTag()
	{
		CQt.QCborStreamReader_ToTag(this.nativePtr);
	}
	
	public uint64 ToUnsignedInteger()
	{
		return CQt.QCborStreamReader_ToUnsignedInteger(this.nativePtr);
	}
	
	public void ToNegativeInteger()
	{
		CQt.QCborStreamReader_ToNegativeInteger(this.nativePtr);
	}
	
	public void ToSimpleType()
	{
		CQt.QCborStreamReader_ToSimpleType(this.nativePtr);
	}
	
	public float ToFloat()
	{
		return CQt.QCborStreamReader_ToFloat(this.nativePtr);
	}
	
	public double ToDouble()
	{
		return CQt.QCborStreamReader_ToDouble(this.nativePtr);
	}
	
	public int64 ToInteger()
	{
		return CQt.QCborStreamReader_ToInteger(this.nativePtr);
	}
	
	public bool Next1(int32 maxRecursion)
	{
		return CQt.QCborStreamReader_Next1(this.nativePtr, maxRecursion);
	}
	
}
extension CQt
{
	[LinkName("QCborStreamReader_new")]
	public static extern void* QCborStreamReader_new();
	[LinkName("QCborStreamReader_new2")]
	public static extern void* QCborStreamReader_new2(char8[] data, int32 lenVal);
	[LinkName("QCborStreamReader_new3")]
	public static extern void* QCborStreamReader_new3(uint8* data, int32 lenVal);
	[LinkName("QCborStreamReader_new4")]
	public static extern void* QCborStreamReader_new4(libqt_string data);
	[LinkName("QCborStreamReader_new5")]
	public static extern void* QCborStreamReader_new5(void* device);
	[LinkName("QCborStreamReader_SetDevice")]
	public static extern void QCborStreamReader_SetDevice(void* c_this, void* device);
	[LinkName("QCborStreamReader_Device")]
	public static extern void* QCborStreamReader_Device(void* c_this);
	[LinkName("QCborStreamReader_AddData")]
	public static extern void QCborStreamReader_AddData(void* c_this, libqt_string data);
	[LinkName("QCborStreamReader_AddData2")]
	public static extern void QCborStreamReader_AddData2(void* c_this, char8[] data, int32 lenVal);
	[LinkName("QCborStreamReader_AddData3")]
	public static extern void QCborStreamReader_AddData3(void* c_this, uint8* data, int32 lenVal);
	[LinkName("QCborStreamReader_Reparse")]
	public static extern void QCborStreamReader_Reparse(void* c_this);
	[LinkName("QCborStreamReader_Clear")]
	public static extern void QCborStreamReader_Clear(void* c_this);
	[LinkName("QCborStreamReader_Reset")]
	public static extern void QCborStreamReader_Reset(void* c_this);
	[LinkName("QCborStreamReader_LastError")]
	public static extern void QCborStreamReader_LastError(void* c_this);
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
	/// Delete this object from C++ memory
	[LinkName("QCborStreamReader_Delete")]
	public static extern void QCborStreamReader_Delete(void* self);
}