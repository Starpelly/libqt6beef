using System;
using System.Interop;
namespace Qt;

public class QThreadPool
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QThreadPool_new();
	}
	
	public ~this()
	{
		CQt.QThreadPool_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QThreadPool_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QThreadPool_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QThreadPool_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QThreadPool_Tr(s);
	}
	
	public static void* GlobalInstance()
	{
		return CQt.QThreadPool_GlobalInstance();
	}
	
	public void Start(void* runnable)
	{
		CQt.QThreadPool_Start(this.nativePtr, runnable);
	}
	
	public bool TryStart(void* runnable)
	{
		return CQt.QThreadPool_TryStart(this.nativePtr, runnable);
	}
	
	public void StartOnReservedThread(void* runnable)
	{
		CQt.QThreadPool_StartOnReservedThread(this.nativePtr, runnable);
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
		CQt.QThreadPool_SetThreadPriority(this.nativePtr, priority);
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
	
	public bool Contains(void* thread)
	{
		return CQt.QThreadPool_Contains(this.nativePtr, thread);
	}
	
	public bool TryTake(void* runnable)
	{
		return CQt.QThreadPool_TryTake(this.nativePtr, runnable);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QThreadPool_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QThreadPool_Tr3(s, c, n);
	}
	
	public void Start2(void* runnable, int32 priority)
	{
		CQt.QThreadPool_Start2(this.nativePtr, runnable, priority);
	}
	
	public bool WaitForDone1(int32 msecs)
	{
		return CQt.QThreadPool_WaitForDone1(this.nativePtr, msecs);
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
	[LinkName("QThreadPool_new")]
	public static extern void* QThreadPool_new();
	[LinkName("QThreadPool_new2")]
	public static extern void* QThreadPool_new2(void* parent);
	[LinkName("QThreadPool_MetaObject")]
	public static extern void* QThreadPool_MetaObject(void* c_this);
	[LinkName("QThreadPool_Metacast")]
	public static extern void* QThreadPool_Metacast(void* c_this, char8[] param1);
	[LinkName("QThreadPool_Metacall")]
	public static extern int32 QThreadPool_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QThreadPool_Tr")]
	public static extern libqt_string QThreadPool_Tr(char8[] s);
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
	public static extern libqt_string QThreadPool_Tr2(char8[] s, char8[] c);
	[LinkName("QThreadPool_Tr3")]
	public static extern libqt_string QThreadPool_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QThreadPool_Start2")]
	public static extern void QThreadPool_Start2(void* c_this, void* runnable, int32 priority);
	[LinkName("QThreadPool_WaitForDone1")]
	public static extern bool QThreadPool_WaitForDone1(void* c_this, int32 msecs);
	/// Delete this object from C++ memory
	[LinkName("QThreadPool_Delete")]
	public static extern void QThreadPool_Delete(void* self);
}