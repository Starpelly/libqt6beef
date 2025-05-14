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
public struct QEventLoopPtr : IQEventLoop, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QEventLoop_new());
	}
	
	public void Dispose()
	{
		CQt.QEventLoop_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QEventLoop_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QEventLoop_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QEventLoop_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QEventLoop_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QEventLoop
{
	public QEventLoopPtr handle;
	
	public static implicit operator QEventLoopPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QEventLoopPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QEventLoopPtr.Tr(s);
	}
	
	public bool ProcessEvents()
	{
		return this.handle.ProcessEvents();
	}
	
	public void ProcessEvents2(int64 flags, int32 maximumTime)
	{
		this.handle.ProcessEvents2(flags, maximumTime);
	}
	
	public int32 Exec()
	{
		return this.handle.Exec();
	}
	
	public bool IsRunning()
	{
		return this.handle.IsRunning();
	}
	
	public void WakeUp()
	{
		this.handle.WakeUp();
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public void Exit()
	{
		this.handle.Exit();
	}
	
	public void Quit()
	{
		this.handle.Quit();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QEventLoopPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QEventLoopPtr.Tr3(s, c, n);
	}
	
	public bool ProcessEvents1(int64 flags)
	{
		return this.handle.ProcessEvents1(flags);
	}
	
	public int32 Exec1(int64 flags)
	{
		return this.handle.Exec1(flags);
	}
	
	public void Exit1(int32 returnCode)
	{
		this.handle.Exit1(returnCode);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QEventLoopPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QEventLoopPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QEventLoopPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QEventLoopPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
public struct QEventLoopLockerPtr : IQEventLoopLocker, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QEventLoopLocker_new());
	}
	public void Dispose()
	{
		CQt.QEventLoopLocker_Delete(this.nativePtr);
	}
}
public class QEventLoopLocker
{
	public QEventLoopLockerPtr handle;
	
	public static implicit operator QEventLoopLockerPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QEventLoopLockerPtr.New();
	}
	public ~this()
	{
		this.handle.Dispose();
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