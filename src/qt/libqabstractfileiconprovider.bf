using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractFileIconProvider__IconType
{
	Computer = 0,
	Desktop = 1,
	Trashcan = 2,
	Network = 3,
	Drive = 4,
	Folder = 5,
	File = 6,
}
[AllowDuplicates]
public enum QAbstractFileIconProvider__Option
{
	DontUseCustomDirectoryIcons = 1,
}
public interface IQAbstractFileIconProvider
{
	void* NativePtr { get; }
}
public struct QAbstractFileIconProviderPtr : IQAbstractFileIconProvider, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAbstractFileIconProvider_new());
	}
	
	public void Dispose()
	{
		CQt.QAbstractFileIconProvider_Delete(this.nativePtr);
	}
	
	public void Icon(int64 param1)
	{
		CQt.QAbstractFileIconProvider_Icon(this.nativePtr, (int64)param1);
	}
	
	public void IconWithQFileInfo(IQFileInfo param1)
	{
		CQt.QAbstractFileIconProvider_IconWithQFileInfo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public libqt_string Type(IQFileInfo param1)
	{
		return CQt.QAbstractFileIconProvider_Type(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetOptions(int64 options)
	{
		CQt.QAbstractFileIconProvider_SetOptions(this.nativePtr, options);
	}
	
	public int64 Options()
	{
		return CQt.QAbstractFileIconProvider_Options(this.nativePtr);
	}
	
}
public class QAbstractFileIconProvider
{
	public QAbstractFileIconProviderPtr handle;
	
	public static implicit operator QAbstractFileIconProviderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAbstractFileIconProviderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Icon(int64 param1)
	{
		this.handle.Icon(param1);
	}
	
	public virtual void IconWithQFileInfo(IQFileInfo param1)
	{
		this.handle.IconWithQFileInfo(param1);
	}
	
	public virtual libqt_string Type(IQFileInfo param1)
	{
		return this.handle.Type(param1);
	}
	
	public virtual void SetOptions(int64 options)
	{
		this.handle.SetOptions(options);
	}
	
	public virtual int64 Options()
	{
		return this.handle.Options();
	}
	
}
extension CQt
{
	[LinkName("QAbstractFileIconProvider_new")]
	public static extern void* QAbstractFileIconProvider_new();
	[LinkName("QAbstractFileIconProvider_Icon")]
	public static extern void QAbstractFileIconProvider_Icon(void* c_this, int64 param1);
	[LinkName("QAbstractFileIconProvider_IconWithQFileInfo")]
	public static extern void QAbstractFileIconProvider_IconWithQFileInfo(void* c_this, void* param1);
	[LinkName("QAbstractFileIconProvider_Type")]
	public static extern libqt_string QAbstractFileIconProvider_Type(void* c_this, void* param1);
	[LinkName("QAbstractFileIconProvider_SetOptions")]
	public static extern void QAbstractFileIconProvider_SetOptions(void* c_this, int64 options);
	[LinkName("QAbstractFileIconProvider_Options")]
	public static extern int64 QAbstractFileIconProvider_Options(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QAbstractFileIconProvider_Delete")]
	public static extern void QAbstractFileIconProvider_Delete(void* self);
}