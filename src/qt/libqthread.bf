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
public struct QThread : QObject
{
	[LinkName("QThread_new")]
	public static extern QThread* QThread_new();
	[LinkName("QThread_new2")]
	public static extern QThread* QThread_new2(QObject* parent);
	[LinkName("QThread_MetaObject")]
	public static extern QMetaObject* QThread_MetaObject(Self* c_this);
	[LinkName("QThread_Metacast")]
	public static extern void* QThread_Metacast(Self* c_this, char8[] param1);
	[LinkName("QThread_Metacall")]
	public static extern int32 QThread_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QThread_Tr")]
	public static extern libqt_string QThread_Tr(char8[] s);
	[LinkName("QThread_CurrentThreadId")]
	public static extern void* QThread_CurrentThreadId();
	[LinkName("QThread_CurrentThread")]
	public static extern QThread* QThread_CurrentThread();
	[LinkName("QThread_IdealThreadCount")]
	public static extern int32 QThread_IdealThreadCount();
	[LinkName("QThread_YieldCurrentThread")]
	public static extern void QThread_YieldCurrentThread();
	[LinkName("QThread_SetPriority")]
	public static extern void QThread_SetPriority(Self* c_this, int64 priority);
	[LinkName("QThread_Priority")]
	public static extern int64 QThread_Priority(Self* c_this);
	[LinkName("QThread_IsFinished")]
	public static extern bool QThread_IsFinished(Self* c_this);
	[LinkName("QThread_IsRunning")]
	public static extern bool QThread_IsRunning(Self* c_this);
	[LinkName("QThread_RequestInterruption")]
	public static extern void QThread_RequestInterruption(Self* c_this);
	[LinkName("QThread_IsInterruptionRequested")]
	public static extern bool QThread_IsInterruptionRequested(Self* c_this);
	[LinkName("QThread_SetStackSize")]
	public static extern void QThread_SetStackSize(Self* c_this, uint32 stackSize);
	[LinkName("QThread_StackSize")]
	public static extern uint32 QThread_StackSize(Self* c_this);
	[LinkName("QThread_EventDispatcher")]
	public static extern QAbstractEventDispatcher* QThread_EventDispatcher(Self* c_this);
	[LinkName("QThread_SetEventDispatcher")]
	public static extern void QThread_SetEventDispatcher(Self* c_this, QAbstractEventDispatcher* eventDispatcher);
	[LinkName("QThread_Event")]
	public static extern bool QThread_Event(Self* c_this, QEvent* event);
	[LinkName("QThread_LoopLevel")]
	public static extern int32 QThread_LoopLevel(Self* c_this);
	[LinkName("QThread_Start")]
	public static extern void QThread_Start(Self* c_this);
	[LinkName("QThread_Terminate")]
	public static extern void QThread_Terminate(Self* c_this);
	[LinkName("QThread_Exit")]
	public static extern void QThread_Exit(Self* c_this);
	[LinkName("QThread_Quit")]
	public static extern void QThread_Quit(Self* c_this);
	[LinkName("QThread_Wait")]
	public static extern bool QThread_Wait(Self* c_this);
	[LinkName("QThread_WaitWithTime")]
	public static extern bool QThread_WaitWithTime(Self* c_this, c_ulong time);
	[LinkName("QThread_Sleep")]
	public static extern void QThread_Sleep(c_ulong param1);
	[LinkName("QThread_Msleep")]
	public static extern void QThread_Msleep(c_ulong param1);
	[LinkName("QThread_Usleep")]
	public static extern void QThread_Usleep(c_ulong param1);
	[LinkName("QThread_Run")]
	public static extern void QThread_Run(Self* c_this);
	[LinkName("QThread_Exec")]
	public static extern int32 QThread_Exec(Self* c_this);
	[LinkName("QThread_Tr2")]
	public static extern libqt_string QThread_Tr2(char8[] s, char8[] c);
	[LinkName("QThread_Tr3")]
	public static extern libqt_string QThread_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QThread_Start1")]
	public static extern void QThread_Start1(Self* c_this, int64 param1);
	[LinkName("QThread_Exit1")]
	public static extern void QThread_Exit1(Self* c_this, int32 retcode);
	[LinkName("QThread_Wait1")]
	public static extern bool QThread_Wait1(Self* c_this, QDeadlineTimer deadline);
}