using System;
using System.Interop;
namespace Qt;

public struct QRunnable
{
	[LinkName("QRunnable_new")]
	public static extern void* QRunnable_new();
	[LinkName("QRunnable_Run")]
	public static extern void QRunnable_Run(void* c_this);
	[LinkName("QRunnable_AutoDelete")]
	public static extern bool QRunnable_AutoDelete(void* c_this);
	[LinkName("QRunnable_SetAutoDelete")]
	public static extern void QRunnable_SetAutoDelete(void* c_this, bool autoDelete);
}