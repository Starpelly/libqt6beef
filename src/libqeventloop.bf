using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QEventLoop__ProcessEventsFlag
{
	AllEvents = 0,
	ExcludeUserInputEvents = 1,
	ExcludeSocketNotifiers = 2,
	WaitForMoreEvents = 4,
	X11ExcludeTimers = 8,
	EventLoopExec = 32,
	DialogExec = 64,
	ApplicationExec = 128,
}
public struct QEventLoop
{
	[LinkName("QEventLoop_new")]
	public static extern void* QEventLoop_new();
	[LinkName("QEventLoop_new2")]
	public static extern void* QEventLoop_new2(QObject parent);
	[LinkName("QEventLoop_MetaObject")]
	public static extern QMetaObject QEventLoop_MetaObject(void* c_this);
	[LinkName("QEventLoop_Metacast")]
	public static extern void QEventLoop_Metacast(void* c_this, char8[] param1);
	[LinkName("QEventLoop_Metacall")]
	public static extern int32 QEventLoop_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QEventLoop_Tr")]
	public static extern char8[] QEventLoop_Tr(char8[] s);
	[LinkName("QEventLoop_ProcessEvents")]
	public static extern bool QEventLoop_ProcessEvents(void* c_this);
	[LinkName("QEventLoop_ProcessEvents2")]
	public static extern void QEventLoop_ProcessEvents2(void* c_this, int64 flags, int32 maximumTime);
	[LinkName("QEventLoop_Exec")]
	public static extern int32 QEventLoop_Exec(void* c_this);
	[LinkName("QEventLoop_IsRunning")]
	public static extern bool QEventLoop_IsRunning(void* c_this);
	[LinkName("QEventLoop_WakeUp")]
	public static extern void QEventLoop_WakeUp(void* c_this);
	[LinkName("QEventLoop_Event")]
	public static extern bool QEventLoop_Event(void* c_this, QEvent event);
	[LinkName("QEventLoop_Exit")]
	public static extern void QEventLoop_Exit(void* c_this);
	[LinkName("QEventLoop_Quit")]
	public static extern void QEventLoop_Quit(void* c_this);
	[LinkName("QEventLoop_Tr2")]
	public static extern char8[] QEventLoop_Tr2(char8[] s, char8[] c);
	[LinkName("QEventLoop_Tr3")]
	public static extern char8[] QEventLoop_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QEventLoop_ProcessEvents1")]
	public static extern bool QEventLoop_ProcessEvents1(void* c_this, int64 flags);
	[LinkName("QEventLoop_Exec1")]
	public static extern int32 QEventLoop_Exec1(void* c_this, int64 flags);
	[LinkName("QEventLoop_Exit1")]
	public static extern void QEventLoop_Exit1(void* c_this, int32 returnCode);
}
public struct QEventLoopLocker
{
	[LinkName("QEventLoopLocker_new")]
	public static extern void* QEventLoopLocker_new();
	[LinkName("QEventLoopLocker_new2")]
	public static extern void* QEventLoopLocker_new2(QEventLoop loop);
	[LinkName("QEventLoopLocker_new3")]
	public static extern void* QEventLoopLocker_new3(QThread thread);
}