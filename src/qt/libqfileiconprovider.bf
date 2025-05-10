using System;
using System.Interop;
namespace Qt;

public interface IQFileIconProvider
{
	void* NativePtr { get; }
}
public class QFileIconProvider : IQFileIconProvider, IQAbstractFileIconProvider
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QFileIconProvider_new();
	}
	
	public ~this()
	{
		CQt.QFileIconProvider_Delete(this.nativePtr);
	}
	
	public virtual void Icon(int64 typeVal)
	{
		CQt.QFileIconProvider_Icon(this.nativePtr, typeVal);
	}
	
	public virtual void IconWithInfo(IQFileInfo info)
	{
		CQt.QFileIconProvider_IconWithInfo(this.nativePtr, (info == default) ? default : (void*)info.NativePtr);
	}
	
	public virtual void IconWithQFileInfo(IQFileInfo param1)
	{
		CQt.QAbstractFileIconProvider_IconWithQFileInfo(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual libqt_string Type(IQFileInfo param1)
	{
		return CQt.QAbstractFileIconProvider_Type(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public virtual void SetOptions(int64 options)
	{
		CQt.QAbstractFileIconProvider_SetOptions(this.nativePtr, options);
	}
	
	public virtual int64 Options()
	{
		return CQt.QAbstractFileIconProvider_Options(this.nativePtr);
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