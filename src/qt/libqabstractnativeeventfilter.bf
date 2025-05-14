using System;
using System.Interop;
namespace Qt;

public interface IQAbstractNativeEventFilter
{
	void* NativePtr { get; }
}
public struct QAbstractNativeEventFilterPtr : IQAbstractNativeEventFilter, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAbstractNativeEventFilter_new());
	}
	
	public void Dispose()
	{
		CQt.QAbstractNativeEventFilter_Delete(this.nativePtr);
	}
	
	public bool NativeEventFilter(String eventType, void* message, c_uintptr* result)
	{
		return CQt.QAbstractNativeEventFilter_NativeEventFilter(this.nativePtr, libqt_string(eventType), message, result);
	}
	
}
public class QAbstractNativeEventFilter
{
	public QAbstractNativeEventFilterPtr handle;
	
	public static implicit operator QAbstractNativeEventFilterPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAbstractNativeEventFilterPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual bool NativeEventFilter(String eventType, void* message, c_uintptr* result)
	{
		return this.handle.NativeEventFilter(eventType, message, result);
	}
	
}
extension CQt
{
	[LinkName("QAbstractNativeEventFilter_new")]
	public static extern void* QAbstractNativeEventFilter_new();
	[LinkName("QAbstractNativeEventFilter_NativeEventFilter")]
	public static extern bool QAbstractNativeEventFilter_NativeEventFilter(void* c_this, libqt_string eventType, void* message, c_uintptr* result);
	/// Delete this object from C++ memory
	[LinkName("QAbstractNativeEventFilter_Delete")]
	public static extern void QAbstractNativeEventFilter_Delete(void* self);
}