using System;
using System.Interop;
namespace Qt;

public interface IQFileIconProvider
{
	void* NativePtr { get; }
}
public struct QFileIconProviderPtr : IQFileIconProvider, IDisposable, IQAbstractFileIconProvider
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QFileIconProvider_new());
	}
	
	public void Dispose()
	{
		CQt.QFileIconProvider_Delete(this.nativePtr);
	}
	
	public void Icon(int64 typeVal)
	{
		CQt.QFileIconProvider_Icon(this.nativePtr, (int64)typeVal);
	}
	
	public void IconWithInfo(IQFileInfo info)
	{
		CQt.QFileIconProvider_IconWithInfo(this.nativePtr, (info == default || info.NativePtr == default) ? default : info.NativePtr);
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
public class QFileIconProvider
{
	public QFileIconProviderPtr handle;
	
	public static implicit operator QFileIconProviderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QFileIconProviderPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void Icon(int64 typeVal)
	{
		this.handle.Icon(typeVal);
	}
	
	public virtual void IconWithInfo(IQFileInfo info)
	{
		this.handle.IconWithInfo(info);
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
	[LinkName("QFileIconProvider_new")]
	public static extern void* QFileIconProvider_new();
	[LinkName("QFileIconProvider_Icon")]
	public static extern void QFileIconProvider_Icon(void* c_this, int64 typeVal);
	[LinkName("QFileIconProvider_IconWithInfo")]
	public static extern void QFileIconProvider_IconWithInfo(void* c_this, void* info);
	/// Delete this object from C++ memory
	[LinkName("QFileIconProvider_Delete")]
	public static extern void QFileIconProvider_Delete(void* self);
}