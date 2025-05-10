using System;
using System.Interop;
namespace Qt;

public class QAbstractNativeEventFilter
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractNativeEventFilter_new();
	}
	
	public ~this()
	{
		CQt.QAbstractNativeEventFilter_Delete(this.nativePtr);
	}
	
	public virtual bool NativeEventFilter(libqt_string eventType, void* message, c_uintptr* result)
	{
		return CQt.QAbstractNativeEventFilter_NativeEventFilter(this.nativePtr, eventType, message, result);
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