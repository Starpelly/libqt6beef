using System;
using System.Interop;
namespace Qt;

public interface IQAbstractEventDispatcher
{
	void* NativePtr { get; }
}
public class QAbstractEventDispatcher : IQAbstractEventDispatcher, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QAbstractEventDispatcher_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractEventDispatcher_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QAbstractEventDispatcher_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractEventDispatcher_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAbstractEventDispatcher_Tr(s);
	}
	
	public static void* Instance()
	{
		return CQt.QAbstractEventDispatcher_Instance();
	}
	
	public virtual bool ProcessEvents(int64 flags)
	{
		return CQt.QAbstractEventDispatcher_ProcessEvents(this.nativePtr, flags);
	}
	
	public virtual void RegisterSocketNotifier(IQSocketNotifier notifier)
	{
		CQt.QAbstractEventDispatcher_RegisterSocketNotifier(this.nativePtr, (notifier == null) ? null : (void*)notifier.NativePtr);
	}
	
	public virtual void UnregisterSocketNotifier(IQSocketNotifier notifier)
	{
		CQt.QAbstractEventDispatcher_UnregisterSocketNotifier(this.nativePtr, (notifier == null) ? null : (void*)notifier.NativePtr);
	}
	
	public int32 RegisterTimer(int64 interval, int64 timerType, IQObject object)
	{
		return CQt.QAbstractEventDispatcher_RegisterTimer(this.nativePtr, interval, timerType, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public virtual void RegisterTimer2(int32 timerId, int64 interval, int64 timerType, IQObject object)
	{
		CQt.QAbstractEventDispatcher_RegisterTimer2(this.nativePtr, timerId, interval, timerType, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public virtual bool UnregisterTimer(int32 timerId)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimer(this.nativePtr, timerId);
	}
	
	public virtual bool UnregisterTimers(IQObject object)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimers(this.nativePtr, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public virtual void[] RegisteredTimers(IQObject object)
	{
		return CQt.QAbstractEventDispatcher_RegisteredTimers(this.nativePtr, (object == null) ? null : (void*)object.NativePtr);
	}
	
	public virtual int32 RemainingTime(int32 timerId)
	{
		return CQt.QAbstractEventDispatcher_RemainingTime(this.nativePtr, timerId);
	}
	
	public virtual void WakeUp()
	{
		CQt.QAbstractEventDispatcher_WakeUp(this.nativePtr);
	}
	
	public virtual void Interrupt()
	{
		CQt.QAbstractEventDispatcher_Interrupt(this.nativePtr);
	}
	
	public virtual void StartingUp()
	{
		CQt.QAbstractEventDispatcher_StartingUp(this.nativePtr);
	}
	
	public virtual void ClosingDown()
	{
		CQt.QAbstractEventDispatcher_ClosingDown(this.nativePtr);
	}
	
	public void InstallNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		CQt.QAbstractEventDispatcher_InstallNativeEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveNativeEventFilter(IQAbstractNativeEventFilter filterObj)
	{
		CQt.QAbstractEventDispatcher_RemoveNativeEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
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
		return CQt.QAbstractEventDispatcher_Instance1((thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
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
public class QAbstractEventDispatcher__TimerInfo : IQAbstractEventDispatcher__TimerInfo
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(QAbstractEventDispatcher__TimerInfo other)
	{
		this.nativePtr = CQt.QAbstractEventDispatcher__TimerInfo_new((other == default) ? default : (void*)other.NativePtr);
	}
	public ~this()
	{
		CQt.QAbstractEventDispatcher__TimerInfo_Delete(this.nativePtr);
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