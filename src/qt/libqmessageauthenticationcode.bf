using System;
using System.Interop;
namespace Qt;

public interface IQMessageAuthenticationCode
{
	void* NativePtr { get; }
}
public struct QMessageAuthenticationCodePtr : IQMessageAuthenticationCode, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 method)
	{
		return .(CQt.QMessageAuthenticationCode_new((int64)method));
	}
	
	public void Dispose()
	{
		CQt.QMessageAuthenticationCode_Delete(this.nativePtr);
	}
	
	public void Reset()
	{
		CQt.QMessageAuthenticationCode_Reset(this.nativePtr);
	}
	
	public void SetKey(String key)
	{
		CQt.QMessageAuthenticationCode_SetKey(this.nativePtr, libqt_string(key));
	}
	
	public void AddData(char8* data, int32 length)
	{
		CQt.QMessageAuthenticationCode_AddData(this.nativePtr, data, length);
	}
	
	public void AddDataWithData(String data)
	{
		CQt.QMessageAuthenticationCode_AddDataWithData(this.nativePtr, libqt_string(data));
	}
	
	public bool AddDataWithDevice(IQIODevice device)
	{
		return CQt.QMessageAuthenticationCode_AddDataWithDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
	}
	
	public libqt_string Result()
	{
		return CQt.QMessageAuthenticationCode_Result(this.nativePtr);
	}
	
	public static libqt_string Hash(String message, String key, int64 method)
	{
		return CQt.QMessageAuthenticationCode_Hash(libqt_string(message), libqt_string(key), (int64)method);
	}
	
}
public class QMessageAuthenticationCode
{
	public QMessageAuthenticationCodePtr handle;
	
	public static implicit operator QMessageAuthenticationCodePtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 method)
	{
		this.handle = QMessageAuthenticationCodePtr.New(method);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Reset()
	{
		this.handle.Reset();
	}
	
	public void SetKey(String key)
	{
		this.handle.SetKey(key);
	}
	
	public void AddData(char8* data, int32 length)
	{
		this.handle.AddData(data, length);
	}
	
	public void AddDataWithData(String data)
	{
		this.handle.AddDataWithData(data);
	}
	
	public bool AddDataWithDevice(IQIODevice device)
	{
		return this.handle.AddDataWithDevice(device);
	}
	
	public libqt_string Result()
	{
		return this.handle.Result();
	}
	
	public static libqt_string Hash(String message, String key, int64 method)
	{
		return QMessageAuthenticationCodePtr.Hash(message, key, method);
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
	public static extern void QMessageAuthenticationCode_AddData(void* c_this, char8* data, int32 length);
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