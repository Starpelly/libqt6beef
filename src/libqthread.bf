using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QThread__Priority
{
	IdlePriority = 0,
	LowestPriority = 1,
	LowPriority = 2,
	NormalPriority = 3,
	HighPriority = 4,
	HighestPriority = 5,
	TimeCriticalPriority = 6,
	InheritPriority = 7,
}
public struct QThread
{
	[LinkName("QThread_new")]
	public static extern void* QThread_new();
	[LinkName("QThread_new2")]
	public static extern void* QThread_new2(QObject parent);
	[LinkName("QThread_MetaObject")]
	public static extern QMetaObject QThread_MetaObject(void* c_this);
	[LinkName("QThread_Metacast")]
	public static extern void QThread_Metacast(void* c_this, char8[] param1);
	[LinkName("QThread_Metacall")]
	public static extern int32 QThread_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QThread_Tr")]
	public static extern char8[] QThread_Tr(char8[] s);
	[LinkName("QThread_CurrentThreadId")]
	public static extern void QThread_CurrentThreadId();
	[LinkName("QThread_CurrentThread")]
	public static extern QThread QThread_CurrentThread();
	[LinkName("QThread_IdealThreadCount")]
	public static extern int32 QThread_IdealThreadCount();
	[LinkName("QThread_YieldCurrentThread")]
	public static extern void QThread_YieldCurrentThread();
	[LinkName("QThread_SetPriority")]
	public static extern void QThread_SetPriority(void* c_this, int64 priority);
	[LinkName("QThread_Priority")]
	public static extern int64 QThread_Priority(void* c_this);
	[LinkName("QThread_IsFinished")]
	public static extern bool QThread_IsFinished(void* c_this);
	[LinkName("QThread_IsRunning")]
	public static extern bool QThread_IsRunning(void* c_this);
	[LinkName("QThread_RequestInterruption")]
	public static extern void QThread_RequestInterruption(void* c_this);
	[LinkName("QThread_IsInterruptionRequested")]
	public static extern bool QThread_IsInterruptionRequested(void* c_this);
	[LinkName("QThread_SetStackSize")]
	public static extern void QThread_SetStackSize(void* c_this, uint32 stackSize);
	[LinkName("QThread_StackSize")]
	public static extern uint32 QThread_StackSize(void* c_this);
	[LinkName("QThread_EventDispatcher")]
	public static extern QAbstractEventDispatcher QThread_EventDispatcher(void* c_this);
	[LinkName("QThread_SetEventDispatcher")]
	public static extern void QThread_SetEventDispatcher(void* c_this, QAbstractEventDispatcher eventDispatcher);
	[LinkName("QThread_Event")]
	public static extern bool QThread_Event(void* c_this, QEvent event);
	[LinkName("QThread_LoopLevel")]
	public static extern int32 QThread_LoopLevel(void* c_this);
	[LinkName("QThread_Start")]
	public static extern void QThread_Start(void* c_this);
	[LinkName("QThread_Terminate")]
	public static extern void QThread_Terminate(void* c_this);
	[LinkName("QThread_Exit")]
	public static extern void QThread_Exit(void* c_this);
	[LinkName("QThread_Quit")]
	public static extern void QThread_Quit(void* c_this);
	[LinkName("QThread_Wait")]
	public static extern bool QThread_Wait(void* c_this);
	[LinkName("QThread_WaitWithTime")]
	public static extern bool QThread_WaitWithTime(void* c_this, c_ulong time);
	[LinkName("QThread_Sleep")]
	public static extern void QThread_Sleep(c_ulong param1);
	[LinkName("QThread_Msleep")]
	public static extern void QThread_Msleep(c_ulong param1);
	[LinkName("QThread_Usleep")]
	public static extern void QThread_Usleep(c_ulong param1);
	[LinkName("QThread_Run")]
	public static extern void QThread_Run(void* c_this);
	[LinkName("QThread_Exec")]
	public static extern int32 QThread_Exec(void* c_this);
	[LinkName("QThread_Tr2")]
	public static extern char8[] QThread_Tr2(char8[] s, char8[] c);
	[LinkName("QThread_Tr3")]
	public static extern char8[] QThread_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QThread_Start1")]
	public static extern void QThread_Start1(void* c_this, int64 param1);
	[LinkName("QThread_Exit1")]
	public static extern void QThread_Exit1(void* c_this, int32 retcode);
	[LinkName("QThread_Wait1")]
	public static extern bool QThread_Wait1(void* c_this, QDeadlineTimer deadline);
}