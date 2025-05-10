using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSystemSemaphore__AccessMode
{
	Open = 0,
	Create = 1,
}
[AllowDuplicates]
public enum QSystemSemaphore__SystemSemaphoreError
{
	NoError = 0,
	PermissionDenied = 1,
	KeyError = 2,
	AlreadyExists = 3,
	NotFound = 4,
	OutOfResources = 5,
	UnknownError = 6,
}
public interface IQSystemSemaphore
{
	void* NativePtr { get; }
}
public class QSystemSemaphore : IQSystemSemaphore
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(String key)
	{
		this.nativePtr = CQt.QSystemSemaphore_new(libqt_string(key));
	}
	
	public ~this()
	{
		CQt.QSystemSemaphore_Delete(this.nativePtr);
	}
	
	public static libqt_string Tr(char8* sourceText)
	{
		return CQt.QSystemSemaphore_Tr(sourceText);
	}
	
	public void SetKey(String key)
	{
		CQt.QSystemSemaphore_SetKey(this.nativePtr, libqt_string(key));
	}
	
	public libqt_string Key()
	{
		return CQt.QSystemSemaphore_Key(this.nativePtr);
	}
	
	public bool Acquire()
	{
		return CQt.QSystemSemaphore_Acquire(this.nativePtr);
	}
	
	public bool Release()
	{
		return CQt.QSystemSemaphore_Release(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QSystemSemaphore_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QSystemSemaphore_ErrorString(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* sourceText, char8* disambiguation)
	{
		return CQt.QSystemSemaphore_Tr2(sourceText, disambiguation);
	}
	
	public static libqt_string Tr3(char8* sourceText, char8* disambiguation, int32 n)
	{
		return CQt.QSystemSemaphore_Tr3(sourceText, disambiguation, n);
	}
	
	public void SetKey2(String key, int32 initialValue)
	{
		CQt.QSystemSemaphore_SetKey2(this.nativePtr, libqt_string(key), initialValue);
	}
	
	public void SetKey3(String key, int32 initialValue, int64 mode)
	{
		CQt.QSystemSemaphore_SetKey3(this.nativePtr, libqt_string(key), initialValue, mode);
	}
	
	public bool Release1(int32 n)
	{
		return CQt.QSystemSemaphore_Release1(this.nativePtr, n);
	}
	
}
extension CQt
{
	[LinkName("QSystemSemaphore_new")]
	public static extern void* QSystemSemaphore_new(libqt_string key);
	[LinkName("QSystemSemaphore_new2")]
	public static extern void* QSystemSemaphore_new2(libqt_string key, int32 initialValue);
	[LinkName("QSystemSemaphore_new3")]
	public static extern void* QSystemSemaphore_new3(libqt_string key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Tr")]
	public static extern libqt_string QSystemSemaphore_Tr(char8* sourceText);
	[LinkName("QSystemSemaphore_SetKey")]
	public static extern void QSystemSemaphore_SetKey(void* c_this, libqt_string key);
	[LinkName("QSystemSemaphore_Key")]
	public static extern libqt_string QSystemSemaphore_Key(void* c_this);
	[LinkName("QSystemSemaphore_Acquire")]
	public static extern bool QSystemSemaphore_Acquire(void* c_this);
	[LinkName("QSystemSemaphore_Release")]
	public static extern bool QSystemSemaphore_Release(void* c_this);
	[LinkName("QSystemSemaphore_Error")]
	public static extern int64 QSystemSemaphore_Error(void* c_this);
	[LinkName("QSystemSemaphore_ErrorString")]
	public static extern libqt_string QSystemSemaphore_ErrorString(void* c_this);
	[LinkName("QSystemSemaphore_Tr2")]
	public static extern libqt_string QSystemSemaphore_Tr2(char8* sourceText, char8* disambiguation);
	[LinkName("QSystemSemaphore_Tr3")]
	public static extern libqt_string QSystemSemaphore_Tr3(char8* sourceText, char8* disambiguation, int32 n);
	[LinkName("QSystemSemaphore_SetKey2")]
	public static extern void QSystemSemaphore_SetKey2(void* c_this, libqt_string key, int32 initialValue);
	[LinkName("QSystemSemaphore_SetKey3")]
	public static extern void QSystemSemaphore_SetKey3(void* c_this, libqt_string key, int32 initialValue, int64 mode);
	[LinkName("QSystemSemaphore_Release1")]
	public static extern bool QSystemSemaphore_Release1(void* c_this, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSystemSemaphore_Delete")]
	public static extern void QSystemSemaphore_Delete(void* self);
}