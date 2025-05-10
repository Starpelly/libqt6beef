using System;
using System.Interop;
namespace Qt;

public class QMessageAuthenticationCode
{
	protected void* nativePtr;
	
	public this(int64 method)
	{
		this.nativePtr = CQt.QMessageAuthenticationCode_new(method);
	}
	
	public ~this()
	{
		CQt.QMessageAuthenticationCode_Delete(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QMessageAuthenticationCode_Reset(this.nativePtr);
	}
	
	public void SetKey(libqt_string key)
	{
		CQt.QMessageAuthenticationCode_SetKey(this.nativePtr, key);
	}
	
	public void AddData(char8[] data, int32 length)
	{
		CQt.QMessageAuthenticationCode_AddData(this.nativePtr, data, length);
	}
	
	public void AddDataWithData(libqt_string data)
	{
		CQt.QMessageAuthenticationCode_AddDataWithData(this.nativePtr, data);
	}
	
	public bool AddDataWithDevice(void* device)
	{
		return CQt.QMessageAuthenticationCode_AddDataWithDevice(this.nativePtr, device);
	}
	
	public libqt_string Result()
	{
		return CQt.QMessageAuthenticationCode_Result(this.nativePtr);
	}
	
	public static libqt_string Hash(libqt_string message, libqt_string key, int64 method)
	{
		return CQt.QMessageAuthenticationCode_Hash(message, key, method);
	}
	
}
extension CQt
{
	[LinkName("QMessageAuthenticationCode_new")]
	public static extern void* QMessageAuthenticationCode_new(int64 method);
	[LinkName("QMessageAuthenticationCode_new2")]
	public static extern void* QMessageAuthenticationCode_new2(int64 method, libqt_string key);
	[LinkName("QMessageAuthenticationCode_Reset")]
	public static extern void QMessageAuthenticationCode_Reset(void* c_this);
	[LinkName("QMessageAuthenticationCode_SetKey")]
	public static extern void QMessageAuthenticationCode_SetKey(void* c_this, libqt_string key);
	[LinkName("QMessageAuthenticationCode_AddData")]
	public static extern void QMessageAuthenticationCode_AddData(void* c_this, char8[] data, int32 length);
	[LinkName("QMessageAuthenticationCode_AddDataWithData")]
	public static extern void QMessageAuthenticationCode_AddDataWithData(void* c_this, libqt_string data);
	[LinkName("QMessageAuthenticationCode_AddDataWithDevice")]
	public static extern bool QMessageAuthenticationCode_AddDataWithDevice(void* c_this, void* device);
	[LinkName("QMessageAuthenticationCode_Result")]
	public static extern libqt_string QMessageAuthenticationCode_Result(void* c_this);
	[LinkName("QMessageAuthenticationCode_Hash")]
	public static extern libqt_string QMessageAuthenticationCode_Hash(libqt_string message, libqt_string key, int64 method);
	/// Delete this object from C++ memory
	[LinkName("QMessageAuthenticationCode_Delete")]
	public static extern void QMessageAuthenticationCode_Delete(void* self);
}