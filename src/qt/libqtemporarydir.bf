using System;
using System.Interop;
namespace Qt;

public interface IQTemporaryDir
{
	void* NativePtr { get; }
}
public class QTemporaryDir : IQTemporaryDir
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTemporaryDir_new();
	}
	
	public ~this()
	{
		CQt.QTemporaryDir_Delete(this.nativePtr);
	}
	
	public void Swap(IQTemporaryDir other)
	{
		CQt.QTemporaryDir_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QTemporaryDir_IsValid(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QTemporaryDir_ErrorString(this.nativePtr);
	}
	
	public bool AutoRemove()
	{
		return CQt.QTemporaryDir_AutoRemove(this.nativePtr);
	}
	
	public void SetAutoRemove(bool b)
	{
		CQt.QTemporaryDir_SetAutoRemove(this.nativePtr, b);
	}
	
	public bool Remove()
	{
		return CQt.QTemporaryDir_Remove(this.nativePtr);
	}
	
	public libqt_string Path()
	{
		return CQt.QTemporaryDir_Path(this.nativePtr);
	}
	
	public libqt_string FilePath(String fileName)
	{
		return CQt.QTemporaryDir_FilePath(this.nativePtr, libqt_string(fileName));
	}
	
}
extension CQt
{
	[LinkName("QTemporaryDir_new")]
	public static extern void* QTemporaryDir_new();
	[LinkName("QTemporaryDir_new2")]
	public static extern void* QTemporaryDir_new2(libqt_string templateName);
	[LinkName("QTemporaryDir_Swap")]
	public static extern void QTemporaryDir_Swap(void* c_this, void* other);
	[LinkName("QTemporaryDir_IsValid")]
	public static extern bool QTemporaryDir_IsValid(void* c_this);
	[LinkName("QTemporaryDir_ErrorString")]
	public static extern libqt_string QTemporaryDir_ErrorString(void* c_this);
	[LinkName("QTemporaryDir_AutoRemove")]
	public static extern bool QTemporaryDir_AutoRemove(void* c_this);
	[LinkName("QTemporaryDir_SetAutoRemove")]
	public static extern void QTemporaryDir_SetAutoRemove(void* c_this, bool b);
	[LinkName("QTemporaryDir_Remove")]
	public static extern bool QTemporaryDir_Remove(void* c_this);
	[LinkName("QTemporaryDir_Path")]
	public static extern libqt_string QTemporaryDir_Path(void* c_this);
	[LinkName("QTemporaryDir_FilePath")]
	public static extern libqt_string QTemporaryDir_FilePath(void* c_this, libqt_string fileName);
	/// Delete this object from C++ memory
	[LinkName("QTemporaryDir_Delete")]
	public static extern void QTemporaryDir_Delete(void* self);
}