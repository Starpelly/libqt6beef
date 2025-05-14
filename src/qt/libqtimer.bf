using System;
using System.Interop;
namespace Qt;

public interface IQTimer
{
	void* NativePtr { get; }
}
public struct QTimerPtr : IQTimer, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTimer_new());
	}
	
	public void Dispose()
	{
		CQt.QTimer_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTimer_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTimer_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTimer_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
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
		CQt.QTimer_SetTimerType(this.nativePtr, (int64)atype);
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
	
	public void TimerEvent(IQTimerEvent param1)
	{
		CQt.QTimer_TimerEvent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTimer_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTimer_Tr3(s, c, n);
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
public class QTimer
{
	public QTimerPtr handle;
	
	public static implicit operator QTimerPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTimerPtr.New();
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
		return QTimerPtr.Tr(s);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public int32 TimerId()
	{
		return this.handle.TimerId();
	}
	
	public void SetInterval(int32 msec)
	{
		this.handle.SetInterval(msec);
	}
	
	public int32 Interval()
	{
		return this.handle.Interval();
	}
	
	public int32 RemainingTime()
	{
		return this.handle.RemainingTime();
	}
	
	public void SetTimerType(int64 atype)
	{
		this.handle.SetTimerType(atype);
	}
	
	public int64 TimerType()
	{
		return this.handle.TimerType();
	}
	
	public void SetSingleShot(bool singleShot)
	{
		this.handle.SetSingleShot(singleShot);
	}
	
	public bool IsSingleShot()
	{
		return this.handle.IsSingleShot();
	}
	
	public void Start(int32 msec)
	{
		this.handle.Start(msec);
	}
	
	public void Start2()
	{
		this.handle.Start2();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public virtual void TimerEvent(IQTimerEvent param1)
	{
		this.handle.TimerEvent(param1);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTimerPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTimerPtr.Tr3(s, c, n);
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
		QTimerPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTimerPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTimerPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTimerPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QTimer_Metacast(void* c_this, char8* param1);
	[LinkName("QTimer_Metacall")]
	public static extern int32 QTimer_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTimer_Tr")]
	public static extern libqt_string QTimer_Tr(char8* s);
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
	public static extern libqt_string QTimer_Tr2(char8* s, char8* c);
	[LinkName("QTimer_Tr3")]
	public static extern libqt_string QTimer_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTimer_Delete")]
	public static extern void QTimer_Delete(void* self);
}