using System;
using System.Interop;
namespace Qt;

public class QAbstractEventDispatcher
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAbstractEventDispatcher_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractEventDispatcher_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractEventDispatcher_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractEventDispatcher_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public virtual void RegisterSocketNotifier(void* notifier)
	{
		CQt.QAbstractEventDispatcher_RegisterSocketNotifier(this.nativePtr, notifier);
	}
	
	public virtual void UnregisterSocketNotifier(void* notifier)
	{
		CQt.QAbstractEventDispatcher_UnregisterSocketNotifier(this.nativePtr, notifier);
	}
	
	public int32 RegisterTimer(int64 interval, int64 timerType, void* object)
	{
		return CQt.QAbstractEventDispatcher_RegisterTimer(this.nativePtr, interval, timerType, object);
	}
	
	public virtual void RegisterTimer2(int32 timerId, int64 interval, int64 timerType, void* object)
	{
		CQt.QAbstractEventDispatcher_RegisterTimer2(this.nativePtr, timerId, interval, timerType, object);
	}
	
	public virtual bool UnregisterTimer(int32 timerId)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimer(this.nativePtr, timerId);
	}
	
	public virtual bool UnregisterTimers(void* object)
	{
		return CQt.QAbstractEventDispatcher_UnregisterTimers(this.nativePtr, object);
	}
	
	public virtual QAbstractEventDispatcher__TimerInfo[] RegisteredTimers(void* object)
	{
		return CQt.QAbstractEventDispatcher_RegisteredTimers(this.nativePtr, object);
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
	
	public void InstallNativeEventFilter(void* filterObj)
	{
		CQt.QAbstractEventDispatcher_InstallNativeEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveNativeEventFilter(void* filterObj)
	{
		CQt.QAbstractEventDispatcher_RemoveNativeEventFilter(this.nativePtr, filterObj);
	}
	
	public bool FilterNativeEvent(libqt_string eventType, void* message, c_uintptr* result)
	{
		return CQt.QAbstractEventDispatcher_FilterNativeEvent(this.nativePtr, eventType, message, result);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractEventDispatcher_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractEventDispatcher_Tr3(s, c, n);
	}
	
	public static void* Instance1(void* thread)
	{
		return CQt.QAbstractEventDispatcher_Instance1(thread);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAbstractEventDispatcher_MetaObject")]
	public static extern void* QAbstractEventDispatcher_MetaObject(void* c_this);
	[LinkName("QAbstractEventDispatcher_Metacast")]
	public static extern void* QAbstractEventDispatcher_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractEventDispatcher_Metacall")]
	public static extern int32 QAbstractEventDispatcher_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractEventDispatcher_Tr")]
	public static extern libqt_string QAbstractEventDispatcher_Tr(char8[] s);
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
	public static extern QAbstractEventDispatcher__TimerInfo[] QAbstractEventDispatcher_RegisteredTimers(void* c_this, void* object);
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
	public static extern libqt_string QAbstractEventDispatcher_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractEventDispatcher_Tr3")]
	public static extern libqt_string QAbstractEventDispatcher_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractEventDispatcher_Instance1")]
	public static extern void* QAbstractEventDispatcher_Instance1(void* thread);
	/// Delete this object from C++ memory
	[LinkName("QAbstractEventDispatcher_Delete")]
	public static extern void QAbstractEventDispatcher_Delete(void* self);
}
public class QAbstractEventDispatcher__TimerInfo
{
	protected void* nativePtr;
	
	public this(QAbstractEventDispatcher__TimerInfo* other)
	{
		this.nativePtr = CQt.QAbstractEventDispatcher__TimerInfo_new(other);
	}
	public ~this()
	{
		CQt.QAbstractEventDispatcher__TimerInfo_Delete(this.nativePtr);
	}
}
extension CQt
{
	[LinkName("QAbstractEventDispatcher__TimerInfo_new")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new(QAbstractEventDispatcher__TimerInfo* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new2")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new2(QAbstractEventDispatcher__TimerInfo* other);
	[LinkName("QAbstractEventDispatcher__TimerInfo_new3")]
	public static extern void* QAbstractEventDispatcher__TimerInfo_new3(int32 id, int32 i, int64 t);
	/// Delete this object from C++ memory
	[LinkName("QAbstractEventDispatcher__TimerInfo_Delete")]
	public static extern void QAbstractEventDispatcher__TimerInfo_Delete(void* self);
}