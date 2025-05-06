using System;
using System.Interop;
namespace Qt;

public struct QAbstractNativeEventFilter
{
	[LinkName("QAbstractNativeEventFilter_new")]
	public static extern QAbstractNativeEventFilter* QAbstractNativeEventFilter_new();
	[LinkName("QAbstractNativeEventFilter_NativeEventFilter")]
	public static extern bool QAbstractNativeEventFilter_NativeEventFilter(Self* c_this, libqt_string eventType, void* message, c_uintptr* result);
}