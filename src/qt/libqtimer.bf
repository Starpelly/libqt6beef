using System;
using System.Interop;
namespace Qt;

public class QTimer
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTimer_new();
	}
	
	public ~this()
	{
		CQt.QTimer_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTimer_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTimer_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTimer_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTimer_Tr(s);
	}
	
	public bool IsActive()
	{
		return CQt.QTimer_IsActive(this.nativePtr);
	}
	
	public int32 TimerId()
	{
		return CQt.QTimer_TimerId(this.nativePtr);
	}
	
	public void SetInterval(int32 msec)
	{
		CQt.QTimer_SetInterval(this.nativePtr, msec);
	}
	
	public int32 Interval()
	{
		return CQt.QTimer_Interval(this.nativePtr);
	}
	
	public int32 RemainingTime()
	{
		return CQt.QTimer_RemainingTime(this.nativePtr);
	}
	
	public void SetTimerType(int64 atype)
	{
		CQt.QTimer_SetTimerType(this.nativePtr, atype);
	}
	
	public int64 TimerType()
	{
		return CQt.QTimer_TimerType(this.nativePtr);
	}
	
	public void SetSingleShot(bool singleShot)
	{
		CQt.QTimer_SetSingleShot(this.nativePtr, singleShot);
	}
	
	public bool IsSingleShot()
	{
		return CQt.QTimer_IsSingleShot(this.nativePtr);
	}
	
	public void Start(int32 msec)
	{
		CQt.QTimer_Start(this.nativePtr, msec);
	}
	
	public void Start2()
	{
		CQt.QTimer_Start2(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QTimer_Stop(this.nativePtr);
	}
	
	public virtual void TimerEvent(void* param1)
	{
		CQt.QTimer_TimerEvent(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTimer_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTimer_Tr3(s, c, n);
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
	[LinkName("QTimer_new")]
	public static extern void* QTimer_new();
	[LinkName("QTimer_new2")]
	public static extern void* QTimer_new2(void* parent);
	[LinkName("QTimer_MetaObject")]
	public static extern void* QTimer_MetaObject(void* c_this);
	[LinkName("QTimer_Metacast")]
	public static extern void* QTimer_Metacast(void* c_this, char8[] param1);
	[LinkName("QTimer_Metacall")]
	public static extern int32 QTimer_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTimer_Tr")]
	public static extern libqt_string QTimer_Tr(char8[] s);
	[LinkName("QTimer_IsActive")]
	public static extern bool QTimer_IsActive(void* c_this);
	[LinkName("QTimer_TimerId")]
	public static extern int32 QTimer_TimerId(void* c_this);
	[LinkName("QTimer_SetInterval")]
	public static extern void QTimer_SetInterval(void* c_this, int32 msec);
	[LinkName("QTimer_Interval")]
	public static extern int32 QTimer_Interval(void* c_this);
	[LinkName("QTimer_RemainingTime")]
	public static extern int32 QTimer_RemainingTime(void* c_this);
	[LinkName("QTimer_SetTimerType")]
	public static extern void QTimer_SetTimerType(void* c_this, int64 atype);
	[LinkName("QTimer_TimerType")]
	public static extern int64 QTimer_TimerType(void* c_this);
	[LinkName("QTimer_SetSingleShot")]
	public static extern void QTimer_SetSingleShot(void* c_this, bool singleShot);
	[LinkName("QTimer_IsSingleShot")]
	public static extern bool QTimer_IsSingleShot(void* c_this);
	[LinkName("QTimer_Start")]
	public static extern void QTimer_Start(void* c_this, int32 msec);
	[LinkName("QTimer_Start2")]
	public static extern void QTimer_Start2(void* c_this);
	[LinkName("QTimer_Stop")]
	public static extern void QTimer_Stop(void* c_this);
	[LinkName("QTimer_TimerEvent")]
	public static extern void QTimer_TimerEvent(void* c_this, void* param1);
	[LinkName("QTimer_Tr2")]
	public static extern libqt_string QTimer_Tr2(char8[] s, char8[] c);
	[LinkName("QTimer_Tr3")]
	public static extern libqt_string QTimer_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTimer_Delete")]
	public static extern void QTimer_Delete(void* self);
}