using System;
using System.Interop;
namespace Qt;

public class QCborStreamWriter
{
	protected void* nativePtr;
	
	public this(void* device)
	{
		this.nativePtr = CQt.QCborStreamWriter_new(device);
	}
	
	public ~this()
	{
		CQt.QCborStreamWriter_Delete(this.nativePtr);
	}
	
	public void SetDevice(void* device)
	{
		CQt.QCborStreamWriter_SetDevice(this.nativePtr, device);
	}
	
	public void* Device()
	{
		return CQt.QCborStreamWriter_Device(this.nativePtr);
	}
	
	public void Append(uint64 u)
	{
		CQt.QCborStreamWriter_Append(this.nativePtr, u);
	}
	
	public void AppendWithQint64(int64 i)
	{
		CQt.QCborStreamWriter_AppendWithQint64(this.nativePtr, i);
	}
	
	public void AppendWithQCborNegativeInteger(void n)
	{
		CQt.QCborStreamWriter_AppendWithQCborNegativeInteger(this.nativePtr, n);
	}
	
	public void AppendWithBa(libqt_string ba)
	{
		CQt.QCborStreamWriter_AppendWithBa(this.nativePtr, ba);
	}
	
	public void AppendWithTag(void tag)
	{
		CQt.QCborStreamWriter_AppendWithTag(this.nativePtr, tag);
	}
	
	public void Append3(void tag)
	{
		CQt.QCborStreamWriter_Append3(this.nativePtr, tag);
	}
	
	public void AppendWithSt(void st)
	{
		CQt.QCborStreamWriter_AppendWithSt(this.nativePtr, st);
	}
	
	public void AppendWithFloat(float f)
	{
		CQt.QCborStreamWriter_AppendWithFloat(this.nativePtr, f);
	}
	
	public void AppendWithDouble(double d)
	{
		CQt.QCborStreamWriter_AppendWithDouble(this.nativePtr, d);
	}
	
	public void AppendByteString(char8[] data, int32 lenVal)
	{
		CQt.QCborStreamWriter_AppendByteString(this.nativePtr, data, lenVal);
	}
	
	public void AppendTextString(char8[] utf8, int32 lenVal)
	{
		CQt.QCborStreamWriter_AppendTextString(this.nativePtr, utf8, lenVal);
	}
	
	public void AppendWithBool(bool b)
	{
		CQt.QCborStreamWriter_AppendWithBool(this.nativePtr, b);
	}
	
	public void AppendNull()
	{
		CQt.QCborStreamWriter_AppendNull(this.nativePtr);
	}
	
	public void AppendUndefined()
	{
		CQt.QCborStreamWriter_AppendUndefined(this.nativePtr);
	}
	
	public void AppendWithInt(int32 i)
	{
		CQt.QCborStreamWriter_AppendWithInt(this.nativePtr, i);
	}
	
	public void AppendWithUint(uint32 u)
	{
		CQt.QCborStreamWriter_AppendWithUint(this.nativePtr, u);
	}
	
	public void Append4(char8[] str)
	{
		CQt.QCborStreamWriter_Append4(this.nativePtr, str);
	}
	
	public void StartArray()
	{
		CQt.QCborStreamWriter_StartArray(this.nativePtr);
	}
	
	public void StartArrayWithCount(uint64 count)
	{
		CQt.QCborStreamWriter_StartArrayWithCount(this.nativePtr, count);
	}
	
	public bool EndArray()
	{
		return CQt.QCborStreamWriter_EndArray(this.nativePtr);
	}
	
	public void StartMap()
	{
		CQt.QCborStreamWriter_StartMap(this.nativePtr);
	}
	
	public void StartMapWithCount(uint64 count)
	{
		CQt.QCborStreamWriter_StartMapWithCount(this.nativePtr, count);
	}
	
	public bool EndMap()
	{
		return CQt.QCborStreamWriter_EndMap(this.nativePtr);
	}
	
	public void Append22(char8[] str, int32 size)
	{
		CQt.QCborStreamWriter_Append22(this.nativePtr, str, size);
	}
	
}
extension CQt
{
	[LinkName("QCborStreamWriter_new")]
	public static extern void* QCborStreamWriter_new(void* device);
	[LinkName("QCborStreamWriter_SetDevice")]
	public static extern void QCborStreamWriter_SetDevice(void* c_this, void* device);
	[LinkName("QCborStreamWriter_Device")]
	public static extern void* QCborStreamWriter_Device(void* c_this);
	[LinkName("QCborStreamWriter_Append")]
	public static extern void QCborStreamWriter_Append(void* c_this, uint64 u);
	[LinkName("QCborStreamWriter_AppendWithQint64")]
	public static extern void QCborStreamWriter_AppendWithQint64(void* c_this, int64 i);
	[LinkName("QCborStreamWriter_AppendWithQCborNegativeInteger")]
	public static extern void QCborStreamWriter_AppendWithQCborNegativeInteger(void* c_this, void n);
	[LinkName("QCborStreamWriter_AppendWithBa")]
	public static extern void QCborStreamWriter_AppendWithBa(void* c_this, libqt_string ba);
	[LinkName("QCborStreamWriter_AppendWithTag")]
	public static extern void QCborStreamWriter_AppendWithTag(void* c_this, void tag);
	[LinkName("QCborStreamWriter_Append3")]
	public static extern void QCborStreamWriter_Append3(void* c_this, void tag);
	[LinkName("QCborStreamWriter_AppendWithSt")]
	public static extern void QCborStreamWriter_AppendWithSt(void* c_this, void st);
	[LinkName("QCborStreamWriter_AppendWithFloat")]
	public static extern void QCborStreamWriter_AppendWithFloat(void* c_this, float f);
	[LinkName("QCborStreamWriter_AppendWithDouble")]
	public static extern void QCborStreamWriter_AppendWithDouble(void* c_this, double d);
	[LinkName("QCborStreamWriter_AppendByteString")]
	public static extern void QCborStreamWriter_AppendByteString(void* c_this, char8[] data, int32 lenVal);
	[LinkName("QCborStreamWriter_AppendTextString")]
	public static extern void QCborStreamWriter_AppendTextString(void* c_this, char8[] utf8, int32 lenVal);
	[LinkName("QCborStreamWriter_AppendWithBool")]
	public static extern void QCborStreamWriter_AppendWithBool(void* c_this, bool b);
	[LinkName("QCborStreamWriter_AppendNull")]
	public static extern void QCborStreamWriter_AppendNull(void* c_this);
	[LinkName("QCborStreamWriter_AppendUndefined")]
	public static extern void QCborStreamWriter_AppendUndefined(void* c_this);
	[LinkName("QCborStreamWriter_AppendWithInt")]
	public static extern void QCborStreamWriter_AppendWithInt(void* c_this, int32 i);
	[LinkName("QCborStreamWriter_AppendWithUint")]
	public static extern void QCborStreamWriter_AppendWithUint(void* c_this, uint32 u);
	[LinkName("QCborStreamWriter_Append4")]
	public static extern void QCborStreamWriter_Append4(void* c_this, char8[] str);
	[LinkName("QCborStreamWriter_StartArray")]
	public static extern void QCborStreamWriter_StartArray(void* c_this);
	[LinkName("QCborStreamWriter_StartArrayWithCount")]
	public static extern void QCborStreamWriter_StartArrayWithCount(void* c_this, uint64 count);
	[LinkName("QCborStreamWriter_EndArray")]
	public static extern bool QCborStreamWriter_EndArray(void* c_this);
	[LinkName("QCborStreamWriter_StartMap")]
	public static extern void QCborStreamWriter_StartMap(void* c_this);
	[LinkName("QCborStreamWriter_StartMapWithCount")]
	public static extern void QCborStreamWriter_StartMapWithCount(void* c_this, uint64 count);
	[LinkName("QCborStreamWriter_EndMap")]
	public static extern bool QCborStreamWriter_EndMap(void* c_this);
	[LinkName("QCborStreamWriter_Append22")]
	public static extern void QCborStreamWriter_Append22(void* c_this, char8[] str, int32 size);
	/// Delete this object from C++ memory
	[LinkName("QCborStreamWriter_Delete")]
	public static extern void QCborStreamWriter_Delete(void* self);
}