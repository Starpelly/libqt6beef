using System;
using System.Interop;
namespace Qt;

public interface IQTemporaryDir
{
	void* NativePtr { get; }
}
public struct QTemporaryDirPtr : IQTemporaryDir, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTemporaryDir_new());
	}
	
	public void Dispose()
	{
		CQt.QTemporaryDir_Delete(this.nativePtr);
	}
	
	public void Swap(IQTemporaryDir other)
	{
		CQt.QTemporaryDir_Swap(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
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
public class QTemporaryDir
{
	public QTemporaryDirPtr handle;
	
	public static implicit operator QTemporaryDirPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTemporaryDirPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Swap(IQTemporaryDir other)
	{
		this.handle.Swap(other);
	}
	
	public bool IsValid()
	{
		return this.handle.IsValid();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public bool AutoRemove()
	{
		return this.handle.AutoRemove();
	}
	
	public void SetAutoRemove(bool b)
	{
		this.handle.SetAutoRemove(b);
	}
	
	public bool Remove()
	{
		return this.handle.Remove();
	}
	
	public libqt_string Path()
	{
		return this.handle.Path();
	}
	
	public libqt_string FilePath(String fileName)
	{
		return this.handle.FilePath(fileName);
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