using System;
using System.Interop;
namespace Qt;

public struct QMessageAuthenticationCode
{
	[LinkName("QMessageAuthenticationCode_new")]
	public static extern QMessageAuthenticationCode* QMessageAuthenticationCode_new(int64 method);
	[LinkName("QMessageAuthenticationCode_new2")]
	public static extern QMessageAuthenticationCode* QMessageAuthenticationCode_new2(int64 method, libqt_string key);
	[LinkName("QMessageAuthenticationCode_Reset")]
	public static extern void QMessageAuthenticationCode_Reset(Self* c_this);
	[LinkName("QMessageAuthenticationCode_SetKey")]
	public static extern void QMessageAuthenticationCode_SetKey(Self* c_this, libqt_string key);
	[LinkName("QMessageAuthenticationCode_AddData")]
	public static extern void QMessageAuthenticationCode_AddData(Self* c_this, char8[] data, int32 length);
	[LinkName("QMessageAuthenticationCode_AddDataWithData")]
	public static extern void QMessageAuthenticationCode_AddDataWithData(Self* c_this, libqt_string data);
	[LinkName("QMessageAuthenticationCode_AddDataWithDevice")]
	public static extern bool QMessageAuthenticationCode_AddDataWithDevice(Self* c_this, QIODevice* device);
	[LinkName("QMessageAuthenticationCode_Result")]
	public static extern libqt_string QMessageAuthenticationCode_Result(Self* c_this);
	[LinkName("QMessageAuthenticationCode_Hash")]
	public static extern libqt_string QMessageAuthenticationCode_Hash(libqt_string message, libqt_string key, int64 method);
}