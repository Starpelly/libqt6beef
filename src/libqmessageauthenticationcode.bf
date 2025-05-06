using System;
using System.Interop;
namespace Qt;

public struct QMessageAuthenticationCode
{
	[LinkName("QMessageAuthenticationCode_new")]
	public static extern void* QMessageAuthenticationCode_new(int64 method);
	[LinkName("QMessageAuthenticationCode_new2")]
	public static extern void* QMessageAuthenticationCode_new2(int64 method, uint8[] key);
	[LinkName("QMessageAuthenticationCode_Reset")]
	public static extern void QMessageAuthenticationCode_Reset(void* c_this);
	[LinkName("QMessageAuthenticationCode_SetKey")]
	public static extern void QMessageAuthenticationCode_SetKey(void* c_this, uint8[] key);
	[LinkName("QMessageAuthenticationCode_AddData")]
	public static extern void QMessageAuthenticationCode_AddData(void* c_this, char8[] data, int32 length);
	[LinkName("QMessageAuthenticationCode_AddDataWithData")]
	public static extern void QMessageAuthenticationCode_AddDataWithData(void* c_this, uint8[] data);
	[LinkName("QMessageAuthenticationCode_AddDataWithDevice")]
	public static extern bool QMessageAuthenticationCode_AddDataWithDevice(void* c_this, QIODevice device);
	[LinkName("QMessageAuthenticationCode_Result")]
	public static extern uint8[] QMessageAuthenticationCode_Result(void* c_this);
	[LinkName("QMessageAuthenticationCode_Hash")]
	public static extern uint8[] QMessageAuthenticationCode_Hash(uint8[] message, uint8[] key, int64 method);
}