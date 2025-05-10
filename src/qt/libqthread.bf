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
public interface IQThread
{
	void* NativePtr { get; }
}
public class QThread : IQThread, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QThread_new();
	}
	
	public ~this()
	{
		CQt.QThread_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QThread_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QThread_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QThread_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QThread_Tr(s);
	}
	
	public static void* CurrentThreadId()
	{
		return CQt.QThread_CurrentThreadId();
	}
	
	public static void* CurrentThread()
	{
		return CQt.QThread_CurrentThread();
	}
	
	public static int32 IdealThreadCount()
	{
		return CQt.QThread_IdealThreadCount();
	}
	
	public static void YieldCurrentThread()
	{
		CQt.QThread_YieldCurrentThread();
	}
	
	public void SetPriority(int64 priority)
	{
		CQt.QThread_SetPriority(this.nativePtr, priority);
	}
	
	public int64 Priority()
	{
		return CQt.QThread_Priority(this.nativePtr);
	}
	
	public bool IsFinished()
	{
		return CQt.QThread_IsFinished(this.nativePtr);
	}
	
	public bool IsRunning()
	{
		return CQt.QThread_IsRunning(this.nativePtr);
	}
	
	public void RequestInterruption()
	{
		CQt.QThread_RequestInterruption(this.nativePtr);
	}
	
	public bool IsInterruptionRequested()
	{
		return CQt.QThread_IsInterruptionRequested(this.nativePtr);
	}
	
	public void SetStackSize(uint32 stackSize)
	{
		CQt.QThread_SetStackSize(this.nativePtr, stackSize);
	}
	
	public uint32 StackSize()
	{
		return CQt.QThread_StackSize(this.nativePtr);
	}
	
	public void* EventDispatcher()
	{
		return CQt.QThread_EventDispatcher(this.nativePtr);
	}
	
	public void SetEventDispatcher(IQAbstractEventDispatcher eventDispatcher)
	{
		CQt.QThread_SetEventDispatcher(this.nativePtr, (eventDispatcher == null) ? null : (void*)eventDispatcher.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QThread_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public int32 LoopLevel()
	{
		return CQt.QThread_LoopLevel(this.nativePtr);
	}
	
	public void Start()
	{
		CQt.QThread_Start(this.nativePtr);
	}
	
	public void Terminate()
	{
		CQt.QThread_Terminate(this.nativePtr);
	}
	
	public void Exit()
	{
		CQt.QThread_Exit(this.nativePtr);
	}
	
	public void Quit()
	{
		CQt.QThread_Quit(this.nativePtr);
	}
	
	public bool Wait()
	{
		return CQt.QThread_Wait(this.nativePtr);
	}
	
	public bool WaitWithTime(c_ulong time)
	{
		return CQt.QThread_WaitWithTime(this.nativePtr, time);
	}
	
	public static void Sleep(c_ulong param1)
	{
		CQt.QThread_Sleep(param1);
	}
	
	public static void Msleep(c_ulong param1)
	{
		CQt.QThread_Msleep(param1);
	}
	
	public static void Usleep(c_ulong param1)
	{
		CQt.QThread_Usleep(param1);
	}
	
	public virtual void Run()
	{
		CQt.QThread_Run(this.nativePtr);
	}
	
	public int32 Exec()
	{
		return CQt.QThread_Exec(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QThread_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QThread_Tr3(s, c, n);
	}
	
	public void Start1(int64 param1)
	{
		CQt.QThread_Start1(this.nativePtr, param1);
	}
	
	public void Exit1(int32 retcode)
	{
		CQt.QThread_Exit1(this.nativePtr, retcode);
	}
	
	public bool Wait1(IQDeadlineTimer deadline)
	{
		return CQt.QThread_Wait1(this.nativePtr, (deadline == default) ? default : (void)deadline.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QThread_new")]
	public static extern void* QThread_new();
	[LinkName("QThread_new2")]
	public static extern void* QThread_new2(void* parent);
	[LinkName("QThread_MetaObject")]
	public static extern void* QThread_MetaObject(void* c_this);
	[LinkName("QThread_Metacast")]
	public static extern void* QThread_Metacast(void* c_this, char8* param1);
	[LinkName("QThread_Metacall")]
	public static extern int32 QThread_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QThread_Tr")]
	public static extern libqt_string QThread_Tr(char8* s);
	[LinkName("QThread_CurrentThreadId")]
	public static extern void* QThread_CurrentThreadId();
	[LinkName("QThread_CurrentThread")]
	public static extern void* QThread_CurrentThread();
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
	public static extern void* QThread_EventDispatcher(void* c_this);
	[LinkName("QThread_SetEventDispatcher")]
	public static extern void QThread_SetEventDispatcher(void* c_this, void* eventDispatcher);
	[LinkName("QThread_Event")]
	public static extern bool QThread_Event(void* c_this, void* event);
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
	public static extern libqt_string QThread_Tr2(char8* s, char8* c);
	[LinkName("QThread_Tr3")]
	public static extern libqt_string QThread_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QThread_Start1")]
	public static extern void QThread_Start1(void* c_this, int64 param1);
	[LinkName("QThread_Exit1")]
	public static extern void QThread_Exit1(void* c_this, int32 retcode);
	[LinkName("QThread_Wait1")]
	public static extern bool QThread_Wait1(void* c_this, void deadline);
	/// Delete this object from C++ memory
	[LinkName("QThread_Delete")]
	public static extern void QThread_Delete(void* self);
}