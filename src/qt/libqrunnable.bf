using System;
using System.Interop;
namespace Qt;

public struct QRunnable
{
	[LinkName("QRunnable_new")]
	public static extern QRunnable* QRunnable_new();
	[LinkName("QRunnable_Run")]
	public static extern void QRunnable_Run(Self* c_this);
	[LinkName("QRunnable_AutoDelete")]
	public static extern bool QRunnable_AutoDelete(Self* c_this);
	[LinkName("QRunnable_SetAutoDelete")]
	public static extern void QRunnable_SetAutoDelete(Self* c_this, bool autoDelete);
}