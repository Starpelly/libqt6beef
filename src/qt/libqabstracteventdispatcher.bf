using System;
using System.Interop;
namespace Qt;

public interface IQAbstractEventDispatcher
{
	void* NativePtr { get; }
}
public struct QAbstractEventDispatcherPtr : IQAbstractEventDispatcher, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QAbstractEventDispatcher_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QAbstractEventDispatcher_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QAbstractEventDispatcher_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QAbstractEventDispatcher_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAbstractEventDispatcher_Tr(s);
	}
	
	public static void* Instance()
	{
		return CQt.QAbstractEventDispatcher_Instance();
	}
	
	public bool ProcessEvents(int64 flags)
	{
		return CQt.QAbstractEventDispatcher_ProcessEvents(this.nativePtr, flags);
	}
	
	public void RegisterSocketNotifier(IQSocketNotifier notifier)
	{
		CQt.QAbstractEventDispatcher_RegisterSocketNotifier(this.nativePtr, (notifier == default || notifier.NativePtr == default) ? default : notifier.NativePtr);
	}
	
	public void UnregisterSocketNotifier(IQSocketNotifier notifier)
	{
		CQt.QAbstractEventDispatcher_UnregisterSocketNotifier(this.nativePtr, (notifier == default || notifier.NativePtr == default) ? default : notifier.NativePtr);
	}
	
	public int32 RegisterTimer(int64 interval, int64 timerType, IQObject object)
	{
		return CQt.QAbstractEventDispatcher_RegisterTimer(this.nativePtr, interval, (int64)timerType, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public void RegisterTimer2(int32 timerId, int64 interval, int64 timerType, IQObject object)
	{
		CQt.QAbstractEventDispatcher_RegisterTimer2(this.nativePtr, timerId, interval, (int64)timerType, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public bool UnregisterTimer(int32 timerId)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimer(this.nativePtr, timerId);
	}
	
	public bool UnregisterTimers(IQObject object)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimers(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public void[] RegisteredTimers(IQObject object)
	{
		return CQt.QAbstractEventDispatcher_RegisteredTimers(this.nativePtr, (object == default || object.NativePtr == default) ? default : object.NativePtr);
	}
	
	public int32 RemainingTime(int32 timerId)
	{
		return CQt.QAbstractEventDispatcher_RemainingTime(this.nativePtr, timerId);
	}
	
	public void WakeUp()
	{
		CQt.QAbstractEventDispatcher_WakeUp(this.nativePtr);
	}
	
	public void Interrupt()
	{
		CQt.QAbstractEventDispatcher_Interrupt(this.nativePtr);
	}
	
	public void StartingUp()
	{
		CQt.QAbstractEventDispatcher_StartingUp(this.nativePtr);
	}
	
	public void ClosingDown()
	{
		CQt.QAbstractEventDispatcher_ClosingDown(this.nativePtr);
	}
	
	public void InstallNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		CQt.QAbstractEventDispatcher_InstallNativeEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		CQt.QAbstractEventDispatcher_RemoveNativeEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public bool FilterNativeEvent(String eventType, void* message, c_uintptr* result)
	{
		return CQt.QAbstractEventDispatcher_FilterNativeEvent(this.nativePtr, libqt_string(eventType), message, result);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAbstractEventDispatcher_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAbstractEventDispatcher_Tr3(s, c, n);
	}
	
	public static void* Instance1(IQThread thread)
	{
		return CQt.QAbstractEventDispatcher_Instance1((thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
public class QAbstractEventDispatcher
{
	public QAbstractEventDispatcherPtr handle;
	
	public static implicit operator QAbstractEventDispatcherPtr(Self self)
	{
		return self.handle;
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
		return QAbstractEventDispatcherPtr.Tr(s);
	}
	
	public static void* Instance()
	{
		return QAbstractEventDispatcherPtr.Instance();
	}
	
	public virtual bool ProcessEvents(int64 flags)
	{
		return this.handle.ProcessEvents(flags);
	}
	
	public virtual void RegisterSocketNotifier(IQSocketNotifier notifier)
	{
		this.handle.RegisterSocketNotifier(notifier);
	}
	
	public virtual void UnregisterSocketNotifier(IQSocketNotifier notifier)
	{
		this.handle.UnregisterSocketNotifier(notifier);
	}
	
	public int32 RegisterTimer(int64 interval, int64 timerType, IQObject object)
	{
		return this.handle.RegisterTimer(interval, timerType, object);
	}
	
	public virtual void RegisterTimer2(int32 timerId, int64 interval, int64 timerType, IQObject object)
	{
		this.handle.RegisterTimer2(timerId, interval, timerType, object);
	}
	
	public virtual bool UnregisterTimer(int32 timerId)
	{
		return this.handle.UnregisterTimer(timerId);
	}
	
	public virtual bool UnregisterTimers(IQObject object)
	{
		return this.handle.UnregisterTimers(object);
	}
	
	public virtual void[] RegisteredTimers(IQObject object)
	{
		return this.handle.RegisteredTimers(object);
	}
	
	public virtual int32 RemainingTime(int32 timerId)
	{
		return this.handle.RemainingTime(timerId);
	}
	
	public virtual void WakeUp()
	{
		this.handle.WakeUp();
	}
	
	public virtual void Interrupt()
	{
		this.handle.Interrupt();
	}
	
	public virtual void StartingUp()
	{
		this.handle.StartingUp();
	}
	
	public virtual void ClosingDown()
	{
		this.handle.ClosingDown();
	}
	
	public void InstallNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		this.handle.InstallNativeEventFilter(filterObj);
	}
	
	public void RemoveNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		this.handle.RemoveNativeEventFilter(filterObj);
	}
	
	public bool FilterNativeEvent(String eventType, void* message, c_uintptr* result)
	{
		return this.handle.FilterNativeEvent(eventType, message, result);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QAbstractEventDispatcherPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QAbstractEventDispatcherPtr.Tr3(s, c, n);
	}
	
	public static void* Instance1(IQThread thread)
	{
		return QAbstractEventDispatcherPtr.Instance1(thread);
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
		QAbstractEventDispatcherPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QAbstractEventDispatcherPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QAbstractEventDispatcherPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QAbstractEventDispatcherPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAbstractEventDispatcher_MetaObject")]
	public static extern void* QAbstractEventDispatcher_MetaObject(void* c_this);
	[LinkName("QAbstractEventDispatcher_Metacast")]
	public static extern void* QAbstractEventDispatcher_Metacast(void* c_this, char8* param1);
	[LinkName("QAbstractEventDispatcher_Metacall")]
	public static extern int32 QAbstractEventDispatcher_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAbstractEventDispatcher_Tr")]
	public static extern libqt_string QAbstractEventDispatcher_Tr(char8* s);
	[LinkName("QAbstractEventDispatcher_Instance")]
	public static extern void* QAbstractEventDispatcher_Instance();
	[LinkName("QAbstractEventDispatcher_ProcessEvents")]
	public static extern bool QAbstractEventDispatcher_ProcessEvents(void* c_this, int64 flags);
	[LinkName("QAbstractEventDispatcher_RegisterSocketNotifier")]
	public static extern void QAbstractEventDispatcher_RegisterSocketNotifier(void* c_this, void* notifier);
	[LinkName("QAbstractEventDispatcher_UnregisterSocketNotifier")]
	public static extern void QAbstractEventDispatcher_UnregisterSocketNotifier(void* c_this, void* notifier);
	[LinkName("QAbstractEventDispatcher_RegisterTimer")]
	public static extern int32 QAbstractEventDispatcher_RegisterTimer(void* c_this, int64 interval, int64 timerType, void* object);
	[LinkName("QAbstractEventDispatcher_RegisterTimer2")]
	public static extern void QAbstractEventDispatcher_RegisterTimer2(void* c_this, int32 timerId, int64 interval, int64 timerType, void* object);
	[LinkName("QAbstractEventDispatcher_UnregisterTimer")]
	public static extern bool QAbstractEventDispatcher_UnregisterTimer(void* c_this, int32 timerId);
	[LinkName("QAbstractEventDispatcher_UnregisterTimers")]
	public static extern bool QAbstractEventDispatcher_UnregisterTimers(void* c_this, void* object);
	[LinkName("QAbstractEventDispatcher_RegisteredTimers")]
	public static extern void[] QAbstractEventDispatcher_RegisteredTimers(void* c_this, void* object);
	[LinkName("QAbstractEventDispatcher_RemainingTime")]
	public static extern int32 QAbstractEventDispatcher_RemainingTime(void* c_this, int32 timerId);
	[LinkName("QAbstractEventDispatcher_WakeUp")]
	public static extern void QAbstractEventDispatcher_WakeUp(void* c_this);
	[LinkName("QAbstractEventDispatcher_Interrupt")]
	public static extern void QAbstractEventDispatcher_Interrupt(void* c_this);
	[LinkName("QAbstractEventDispatcher_StartingUp")]
	public static extern void QAbstractEventDispatcher_StartingUp(void* c_this);
	[LinkName("QAbstractEventDispatcher_ClosingDown")]
	public static extern void QAbstractEventDispatcher_ClosingDown(void* c_this);
	[LinkName("QAbstractEventDispatcher_InstallNativeEventFilter")]
	public static extern void QAbstractEventDispatcher_InstallNativeEventFilter(void* c_this, void* filterObj);
	[LinkName("QAbstractEventDispatcher_RemoveNativeEventFilter")]
	public static extern void QAbstractEventDispatcher_RemoveNativeEventFilter(void* c_this, void* filterObj);
	[LinkName("QAbstractEventDispatcher_FilterNativeEvent")]
	public static extern bool QAbstractEventDispatcher_FilterNativeEvent(void* c_this, libqt_string eventType, void* message, c_uintptr* result);
	[LinkName("QAbstractEventDispatcher_Connect_AboutToBlock")]
	public static extern void QAbstractEventDispatcher_Connect_AboutToBlock(void* c_this, c_intptr slot);
	[LinkName("QAbstractEventDispatcher_Connect_Awake")]
	public static extern void QAbstractEventDispatcher_Connect_Awake(void* c_this, c_intptr slot);
	[LinkName("QAbstractEventDispatcher_Tr2")]
	public static extern libqt_string QAbstractEventDispatcher_Tr2(char8* s, char8* c);
	[LinkName("QAbstractEventDispatcher_Tr3")]
	public static extern libqt_string QAbstractEventDispatcher_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QAbstractEventDispatcher_Instance1")]
	public static extern void* QAbstractEventDispatcher_Instance1(void* thread);
	/// Delete this object from C++ memory
	[LinkName("QAbstractEventDispatcher_Delete")]
	public static extern void QAbstractEventDispatcher_Delete(void* self);
}
public interface IQAbstractEventDispatcher__TimerInfo
{
	void* NativePtr { get; }
}
public struct QAbstractEventDispatcher__TimerInfoPtr : IQAbstractEventDispatcher__TimerInfo, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(QAbstractEventDispatcher__TimerInfoPtr other)
	{
		return .(CQt.QAbstractEventDispatcher__TimerInfo_new((other == default || other.NativePtr == default) ? default : other.NativePtr));
	}
	public void Dispose()
	{
		CQt.QAbstractEventDispatcher__TimerInfo_Delete(this.nativePtr);
	}
}
public class QAbstractEventDispatcher__TimerInfo
{
	public QAbstractEventDispatcher__TimerInfoPtr handle;
	
	public static implicit operator QAbstractEventDispatcher__TimerInfoPtr(Self self)
	{
		return self.handle;
	}
	
	public this(QAbstractEventDispatcher__TimerInfoPtr other)
	{
		this.handle = QAbstractEventDispatcher__TimerInfoPtr.New(other);
	}
	public ~this()
	{
		this.handle.Dispose();
	}
}
extension CQt
{
	[LinkName("QAbstractEventDispatcher__TimerInfo_new")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new(void* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new2")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new2(void* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new3")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new3(int32 id, int32 i, int64 t);
	/// Delete this object from C++ memory
	[LinkName("QAbstractEventDispatcher__TimerInfo_Delete")]
	public static extern void QAbstractEventDispatcher__TimerInfo_Delete(void* self);
}