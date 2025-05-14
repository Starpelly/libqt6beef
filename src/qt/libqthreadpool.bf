using System;
using System.Interop;
namespace Qt;

public interface IQThreadPool
{
	void* NativePtr { get; }
}
public struct QThreadPoolPtr : IQThreadPool, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QThreadPool_new());
	}
	
	public void Dispose()
	{
		CQt.QThreadPool_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QThreadPool_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QThreadPool_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QThreadPool_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QThreadPool_Tr(s);
	}
	
	public static void* GlobalInstance()
	{
		return CQt.QThreadPool_GlobalInstance();
	}
	
	public void Start(IQRunnable runnable)
	{
		CQt.QThreadPool_Start(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr);
	}
	
	public bool TryStart(IQRunnable runnable)
	{
		return CQt.QThreadPool_TryStart(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr);
	}
	
	public void StartOnReservedThread(IQRunnable runnable)
	{
		CQt.QThreadPool_StartOnReservedThread(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr);
	}
	
	public int32 ExpiryTimeout()
	{
		return CQt.QThreadPool_ExpiryTimeout(this.nativePtr);
	}
	
	public void SetExpiryTimeout(int32 expiryTimeout)
	{
		CQt.QThreadPool_SetExpiryTimeout(this.nativePtr, expiryTimeout);
	}
	
	public int32 MaxThreadCount()
	{
		return CQt.QThreadPool_MaxThreadCount(this.nativePtr);
	}
	
	public void SetMaxThreadCount(int32 maxThreadCount)
	{
		CQt.QThreadPool_SetMaxThreadCount(this.nativePtr, maxThreadCount);
	}
	
	public int32 ActiveThreadCount()
	{
		return CQt.QThreadPool_ActiveThreadCount(this.nativePtr);
	}
	
	public void SetStackSize(uint32 stackSize)
	{
		CQt.QThreadPool_SetStackSize(this.nativePtr, stackSize);
	}
	
	public uint32 StackSize()
	{
		return CQt.QThreadPool_StackSize(this.nativePtr);
	}
	
	public void SetThreadPriority(int64 priority)
	{
		CQt.QThreadPool_SetThreadPriority(this.nativePtr, (int64)priority);
	}
	
	public int64 ThreadPriority()
	{
		return CQt.QThreadPool_ThreadPriority(this.nativePtr);
	}
	
	public void ReserveThread()
	{
		CQt.QThreadPool_ReserveThread(this.nativePtr);
	}
	
	public void ReleaseThread()
	{
		CQt.QThreadPool_ReleaseThread(this.nativePtr);
	}
	
	public bool WaitForDone()
	{
		return CQt.QThreadPool_WaitForDone(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QThreadPool_Clear(this.nativePtr);
	}
	
	public bool Contains(IQThread thread)
	{
		return CQt.QThreadPool_Contains(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
	}
	
	public bool TryTake(IQRunnable runnable)
	{
		return CQt.QThreadPool_TryTake(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QThreadPool_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QThreadPool_Tr3(s, c, n);
	}
	
	public void Start2(IQRunnable runnable, int32 priority)
	{
		CQt.QThreadPool_Start2(this.nativePtr, (runnable == default || runnable.NativePtr == default) ? default : runnable.NativePtr, priority);
	}
	
	public bool WaitForDone1(int32 msecs)
	{
		return CQt.QThreadPool_WaitForDone1(this.nativePtr, msecs);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QThreadPool
{
	public QThreadPoolPtr handle;
	
	public static implicit operator QThreadPoolPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QThreadPoolPtr.New();
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
		return QThreadPoolPtr.Tr(s);
	}
	
	public static void* GlobalInstance()
	{
		return QThreadPoolPtr.GlobalInstance();
	}
	
	public void Start(IQRunnable runnable)
	{
		this.handle.Start(runnable);
	}
	
	public bool TryStart(IQRunnable runnable)
	{
		return this.handle.TryStart(runnable);
	}
	
	public void StartOnReservedThread(IQRunnable runnable)
	{
		this.handle.StartOnReservedThread(runnable);
	}
	
	public int32 ExpiryTimeout()
	{
		return this.handle.ExpiryTimeout();
	}
	
	public void SetExpiryTimeout(int32 expiryTimeout)
	{
		this.handle.SetExpiryTimeout(expiryTimeout);
	}
	
	public int32 MaxThreadCount()
	{
		return this.handle.MaxThreadCount();
	}
	
	public void SetMaxThreadCount(int32 maxThreadCount)
	{
		this.handle.SetMaxThreadCount(maxThreadCount);
	}
	
	public int32 ActiveThreadCount()
	{
		return this.handle.ActiveThreadCount();
	}
	
	public void SetStackSize(uint32 stackSize)
	{
		this.handle.SetStackSize(stackSize);
	}
	
	public uint32 StackSize()
	{
		return this.handle.StackSize();
	}
	
	public void SetThreadPriority(int64 priority)
	{
		this.handle.SetThreadPriority(priority);
	}
	
	public int64 ThreadPriority()
	{
		return this.handle.ThreadPriority();
	}
	
	public void ReserveThread()
	{
		this.handle.ReserveThread();
	}
	
	public void ReleaseThread()
	{
		this.handle.ReleaseThread();
	}
	
	public bool WaitForDone()
	{
		return this.handle.WaitForDone();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public bool Contains(IQThread thread)
	{
		return this.handle.Contains(thread);
	}
	
	public bool TryTake(IQRunnable runnable)
	{
		return this.handle.TryTake(runnable);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QThreadPoolPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QThreadPoolPtr.Tr3(s, c, n);
	}
	
	public void Start2(IQRunnable runnable, int32 priority)
	{
		this.handle.Start2(runnable, priority);
	}
	
	public bool WaitForDone1(int32 msecs)
	{
		return this.handle.WaitForDone1(msecs);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QThreadPoolPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QThreadPoolPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QThreadPoolPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QThreadPoolPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QThreadPool_new")]
	public static extern void* QThreadPool_new();
	[LinkName("QThreadPool_new2")]
	public static extern void* QThreadPool_new2(void* parent);
	[LinkName("QThreadPool_MetaObject")]
	public static extern void* QThreadPool_MetaObject(void* c_this);
	[LinkName("QThreadPool_Metacast")]
	public static extern void* QThreadPool_Metacast(void* c_this, char8* param1);
	[LinkName("QThreadPool_Metacall")]
	public static extern int32 QThreadPool_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QThreadPool_Tr")]
	public static extern libqt_string QThreadPool_Tr(char8* s);
	[LinkName("QThreadPool_GlobalInstance")]
	public static extern void* QThreadPool_GlobalInstance();
	[LinkName("QThreadPool_Start")]
	public static extern void QThreadPool_Start(void* c_this, void* runnable);
	[LinkName("QThreadPool_TryStart")]
	public static extern bool QThreadPool_TryStart(void* c_this, void* runnable);
	[LinkName("QThreadPool_StartOnReservedThread")]
	public static extern void QThreadPool_StartOnReservedThread(void* c_this, void* runnable);
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
	public static extern bool QThreadPool_Contains(void* c_this, void* thread);
	[LinkName("QThreadPool_TryTake")]
	public static extern bool QThreadPool_TryTake(void* c_this, void* runnable);
	[LinkName("QThreadPool_Tr2")]
	public static extern libqt_string QThreadPool_Tr2(char8* s, char8* c);
	[LinkName("QThreadPool_Tr3")]
	public static extern libqt_string QThreadPool_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QThreadPool_Start2")]
	public static extern void QThreadPool_Start2(void* c_this, void* runnable, int32 priority);
	[LinkName("QThreadPool_WaitForDone1")]
	public static extern bool QThreadPool_WaitForDone1(void* c_this, int32 msecs);
	/// Delete this object from C++ memory
	[LinkName("QThreadPool_Delete")]
	public static extern void QThreadPool_Delete(void* self);
}