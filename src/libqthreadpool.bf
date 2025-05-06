using System;
using System.Interop;
namespace Qt;

public struct QThreadPool
{
	[LinkName("QThreadPool_new")]
	public static extern void* QThreadPool_new();
	[LinkName("QThreadPool_new2")]
	public static extern void* QThreadPool_new2(QObject parent);
	[LinkName("QThreadPool_MetaObject")]
	public static extern QMetaObject QThreadPool_MetaObject(void* c_this);
	[LinkName("QThreadPool_Metacast")]
	public static extern void QThreadPool_Metacast(void* c_this, char8[] param1);
	[LinkName("QThreadPool_Metacall")]
	public static extern int32 QThreadPool_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QThreadPool_Tr")]
	public static extern char8[] QThreadPool_Tr(char8[] s);
	[LinkName("QThreadPool_GlobalInstance")]
	public static extern QThreadPool QThreadPool_GlobalInstance();
	[LinkName("QThreadPool_Start")]
	public static extern void QThreadPool_Start(void* c_this, QRunnable runnable);
	[LinkName("QThreadPool_TryStart")]
	public static extern bool QThreadPool_TryStart(void* c_this, QRunnable runnable);
	[LinkName("QThreadPool_StartOnReservedThread")]
	public static extern void QThreadPool_StartOnReservedThread(void* c_this, QRunnable runnable);
	[LinkName("QThreadPool_ExpiryTimeout")]
	public static extern int32 QThreadPool_ExpiryTimeout(void* c_this);
	[LinkName("QThreadPool_SetExpiryTimeout")]
	public static extern void QThreadPool_SetExpiryTimeout(void* c_this, int32 expiryTimeout);
	[LinkName("QThreadPool_MaxThreadCount")]
	public static extern int32 QThreadPool_MaxThreadCount(void* c_this);
	[LinkName("QThreadPool_SetMaxThreadCount")]
	public static extern void QThreadPool_SetMaxThreadCount(void* c_this, int32 maxThreadCount);
	[LinkName("QThreadPool_ActiveThreadCount")]
	public static extern int32 QThreadPool_ActiveThreadCount(void* c_this);
	[LinkName("QThreadPool_SetStackSize")]
	public static extern void QThreadPool_SetStackSize(void* c_this, uint32 stackSize);
	[LinkName("QThreadPool_StackSize")]
	public static extern uint32 QThreadPool_StackSize(void* c_this);
	[LinkName("QThreadPool_SetThreadPriority")]
	public static extern void QThreadPool_SetThreadPriority(void* c_this, int64 priority);
	[LinkName("QThreadPool_ThreadPriority")]
	public static extern int64 QThreadPool_ThreadPriority(void* c_this);
	[LinkName("QThreadPool_ReserveThread")]
	public static extern void QThreadPool_ReserveThread(void* c_this);
	[LinkName("QThreadPool_ReleaseThread")]
	public static extern void QThreadPool_ReleaseThread(void* c_this);
	[LinkName("QThreadPool_WaitForDone")]
	public static extern bool QThreadPool_WaitForDone(void* c_this);
	[LinkName("QThreadPool_Clear")]
	public static extern void QThreadPool_Clear(void* c_this);
	[LinkName("QThreadPool_Contains")]
	public static extern bool QThreadPool_Contains(void* c_this, QThread thread);
	[LinkName("QThreadPool_TryTake")]
	public static extern bool QThreadPool_TryTake(void* c_this, QRunnable runnable);
	[LinkName("QThreadPool_Tr2")]
	public static extern char8[] QThreadPool_Tr2(char8[] s, char8[] c);
	[LinkName("QThreadPool_Tr3")]
	public static extern char8[] QThreadPool_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QThreadPool_Start2")]
	public static extern void QThreadPool_Start2(void* c_this, QRunnable runnable, int32 priority);
	[LinkName("QThreadPool_WaitForDone1")]
	public static extern bool QThreadPool_WaitForDone1(void* c_this, int32 msecs);
}