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
public interface IQEventLoop
{
	void* NativePtr { get; }
}
public class QEventLoop : IQEventLoop, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QEventLoop_new();
	}
	
	public ~this()
	{
		CQt.QEventLoop_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QEventLoop_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QEventLoop_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QEventLoop_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QEventLoop_Tr(s);
	}
	
	public bool ProcessEvents()
	{
		return CQt.QEventLoop_ProcessEvents(this.nativePtr);
	}
	
	public void ProcessEvents2(int64 flags, int32 maximumTime)
	{
		CQt.QEventLoop_ProcessEvents2(this.nativePtr, flags, maximumTime);
	}
	
	public int32 Exec()
	{
		return CQt.QEventLoop_Exec(this.nativePtr);
	}
	
	public bool IsRunning()
	{
		return CQt.QEventLoop_IsRunning(this.nativePtr);
	}
	
	public void WakeUp()
	{
		CQt.QEventLoop_WakeUp(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QEventLoop_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public void Exit()
	{
		CQt.QEventLoop_Exit(this.nativePtr);
	}
	
	public void Quit()
	{
		CQt.QEventLoop_Quit(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QEventLoop_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QEventLoop_Tr3(s, c, n);
	}
	
	public bool ProcessEvents1(int64 flags)
	{
		return CQt.QEventLoop_ProcessEvents1(this.nativePtr, flags);
	}
	
	public int32 Exec1(int64 flags)
	{
		return CQt.QEventLoop_Exec1(this.nativePtr, flags);
	}
	
	public void Exit1(int32 returnCode)
	{
		CQt.QEventLoop_Exit1(this.nativePtr, returnCode);
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
	[LinkName("QEventLoop_new")]
	public static extern void* QEventLoop_new();
	[LinkName("QEventLoop_new2")]
	public static extern void* QEventLoop_new2(void* parent);
	[LinkName("QEventLoop_MetaObject")]
	public static extern void* QEventLoop_MetaObject(void* c_this);
	[LinkName("QEventLoop_Metacast")]
	public static extern void* QEventLoop_Metacast(void* c_this, char8* param1);
	[LinkName("QEventLoop_Metacall")]
	public static extern int32 QEventLoop_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QEventLoop_Tr")]
	public static extern libqt_string QEventLoop_Tr(char8* s);
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
	public static extern bool QEventLoop_Event(void* c_this, void* event);
	[LinkName("QEventLoop_Exit")]
	public static extern void QEventLoop_Exit(void* c_this);
	[LinkName("QEventLoop_Quit")]
	public static extern void QEventLoop_Quit(void* c_this);
	[LinkName("QEventLoop_Tr2")]
	public static extern libqt_string QEventLoop_Tr2(char8* s, char8* c);
	[LinkName("QEventLoop_Tr3")]
	public static extern libqt_string QEventLoop_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QEventLoop_ProcessEvents1")]
	public static extern bool QEventLoop_ProcessEvents1(void* c_this, int64 flags);
	[LinkName("QEventLoop_Exec1")]
	public static extern int32 QEventLoop_Exec1(void* c_this, int64 flags);
	[LinkName("QEventLoop_Exit1")]
	public static extern void QEventLoop_Exit1(void* c_this, int32 returnCode);
	/// Delete this object from C++ memory
	[LinkName("QEventLoop_Delete")]
	public static extern void QEventLoop_Delete(void* self);
}
public interface IQEventLoopLocker
{
	void* NativePtr { get; }
}
public class QEventLoopLocker : IQEventLoopLocker
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QEventLoopLocker_new();
	}
	public ~this()
	{
		CQt.QEventLoopLocker_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QEventLoopLocker_new")]
	public static extern void* QEventLoopLocker_new();
	[LinkName("QEventLoopLocker_new2")]
	public static extern void* QEventLoopLocker_new2(void* loop);
	[LinkName("QEventLoopLocker_new3")]
	public static extern void* QEventLoopLocker_new3(void* thread);
	/// Delete this object from C++ memory
	[LinkName("QEventLoopLocker_Delete")]
	public static extern void QEventLoopLocker_Delete(void* self);
}