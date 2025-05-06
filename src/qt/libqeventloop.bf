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
public struct QEventLoop : QObject
{
	[LinkName("QEventLoop_new")]
	public static extern QEventLoop* QEventLoop_new();
	[LinkName("QEventLoop_new2")]
	public static extern QEventLoop* QEventLoop_new2(QObject* parent);
	[LinkName("QEventLoop_MetaObject")]
	public static extern QMetaObject* QEventLoop_MetaObject(Self* c_this);
	[LinkName("QEventLoop_Metacast")]
	public static extern void* QEventLoop_Metacast(Self* c_this, char8[] param1);
	[LinkName("QEventLoop_Metacall")]
	public static extern int32 QEventLoop_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QEventLoop_Tr")]
	public static extern libqt_string QEventLoop_Tr(char8[] s);
	[LinkName("QEventLoop_ProcessEvents")]
	public static extern bool QEventLoop_ProcessEvents(Self* c_this);
	[LinkName("QEventLoop_ProcessEvents2")]
	public static extern void QEventLoop_ProcessEvents2(Self* c_this, int64 flags, int32 maximumTime);
	[LinkName("QEventLoop_Exec")]
	public static extern int32 QEventLoop_Exec(Self* c_this);
	[LinkName("QEventLoop_IsRunning")]
	public static extern bool QEventLoop_IsRunning(Self* c_this);
	[LinkName("QEventLoop_WakeUp")]
	public static extern void QEventLoop_WakeUp(Self* c_this);
	[LinkName("QEventLoop_Event")]
	public static extern bool QEventLoop_Event(Self* c_this, QEvent* event);
	[LinkName("QEventLoop_Exit")]
	public static extern void QEventLoop_Exit(Self* c_this);
	[LinkName("QEventLoop_Quit")]
	public static extern void QEventLoop_Quit(Self* c_this);
	[LinkName("QEventLoop_Tr2")]
	public static extern libqt_string QEventLoop_Tr2(char8[] s, char8[] c);
	[LinkName("QEventLoop_Tr3")]
	public static extern libqt_string QEventLoop_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QEventLoop_ProcessEvents1")]
	public static extern bool QEventLoop_ProcessEvents1(Self* c_this, int64 flags);
	[LinkName("QEventLoop_Exec1")]
	public static extern int32 QEventLoop_Exec1(Self* c_this, int64 flags);
	[LinkName("QEventLoop_Exit1")]
	public static extern void QEventLoop_Exit1(Self* c_this, int32 returnCode);
}
public struct QEventLoopLocker
{
	[LinkName("QEventLoopLocker_new")]
	public static extern QEventLoopLocker* QEventLoopLocker_new();
	[LinkName("QEventLoopLocker_new2")]
	public static extern QEventLoopLocker* QEventLoopLocker_new2(QEventLoop* loop);
	[LinkName("QEventLoopLocker_new3")]
	public static extern QEventLoopLocker* QEventLoopLocker_new3(QThread* thread);
}