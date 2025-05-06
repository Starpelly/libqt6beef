using System;
using System.Interop;
namespace Qt;

public struct QAbstractNativeEventFilter
{
	[LinkName("QAbstractNativeEventFilter_new")]
	public static extern void* QAbstractNativeEventFilter_new();
	[LinkName("QAbstractNativeEventFilter_NativeEventFilter")]
	public static extern bool QAbstractNativeEventFilter_NativeEventFilter(void* c_this, uint8[] eventType, void message, c_uintptr result);
}