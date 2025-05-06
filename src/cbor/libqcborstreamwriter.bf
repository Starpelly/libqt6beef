using System;
using System.Interop;
namespace Qt;

public struct QCborStreamWriter
{
	[LinkName("QCborStreamWriter_new")]
	public static extern void* QCborStreamWriter_new(QIODevice device);
	[LinkName("QCborStreamWriter_SetDevice")]
	public static extern void QCborStreamWriter_SetDevice(void* c_this, QIODevice device);
	[LinkName("QCborStreamWriter_Device")]
	public static extern QIODevice QCborStreamWriter_Device(void* c_this);
	[LinkName("QCborStreamWriter_Append")]
	public static extern void QCborStreamWriter_Append(void* c_this, uint64 u);
	[LinkName("QCborStreamWriter_AppendWithQint64")]
	public static extern void QCborStreamWriter_AppendWithQint64(void* c_this, int64 i);
	[LinkName("QCborStreamWriter_AppendWithQCborNegativeInteger")]
	public static extern void QCborStreamWriter_AppendWithQCborNegativeInteger(void* c_this, void n);
	[LinkName("QCborStreamWriter_AppendWithBa")]
	public static extern void QCborStreamWriter_AppendWithBa(void* c_this, uint8[] ba);
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
}