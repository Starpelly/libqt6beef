using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGesture__GestureCancelPolicy
{
	CancelNone = 0,
	CancelAllInContext = 1,
}
[AllowDuplicates]
public enum QPinchGesture__ChangeFlag
{
	ScaleFactorChanged = 1,
	RotationAngleChanged = 2,
	CenterPointChanged = 4,
}
[AllowDuplicates]
public enum QSwipeGesture__SwipeDirection
{
	NoDirection = 0,
	Left = 1,
	Right = 2,
	Up = 3,
	Down = 4,
}
public interface IQGesture
{
	void* NativePtr { get; }
}
public struct QGesturePtr : IQGesture, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGesture_Tr(s);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGesture_Tr3(s, c, n);
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
public class QGesture
{
	public QGesturePtr handle;
	
	public static implicit operator QGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGesturePtr.New();
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
		return QGesturePtr.Tr(s);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGesturePtr.Tr3(s, c, n);
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
		QGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QGesture_new")]
	public static extern void* QGesture_new();
	[LinkName("QGesture_new2")]
	public static extern void* QGesture_new2(void* parent);
	[LinkName("QGesture_MetaObject")]
	public static extern void* QGesture_MetaObject(void* c_this);
	[LinkName("QGesture_Metacast")]
	public static extern void* QGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QGesture_Metacall")]
	public static extern int32 QGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGesture_Tr")]
	public static extern libqt_string QGesture_Tr(char8* s);
	[LinkName("QGesture_GestureType")]
	public static extern int64 QGesture_GestureType(void* c_this);
	[LinkName("QGesture_State")]
	public static extern int64 QGesture_State(void* c_this);
	[LinkName("QGesture_HotSpot")]
	public static extern void QGesture_HotSpot(void* c_this);
	[LinkName("QGesture_SetHotSpot")]
	public static extern void QGesture_SetHotSpot(void* c_this, void* value);
	[LinkName("QGesture_HasHotSpot")]
	public static extern bool QGesture_HasHotSpot(void* c_this);
	[LinkName("QGesture_UnsetHotSpot")]
	public static extern void QGesture_UnsetHotSpot(void* c_this);
	[LinkName("QGesture_SetGestureCancelPolicy")]
	public static extern void QGesture_SetGestureCancelPolicy(void* c_this, int64 policy);
	[LinkName("QGesture_GestureCancelPolicy")]
	public static extern int64 QGesture_GestureCancelPolicy(void* c_this);
	[LinkName("QGesture_Tr2")]
	public static extern libqt_string QGesture_Tr2(char8* s, char8* c);
	[LinkName("QGesture_Tr3")]
	public static extern libqt_string QGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGesture_Delete")]
	public static extern void QGesture_Delete(void* self);
}
public interface IQPanGesture
{
	void* NativePtr { get; }
}
public struct QPanGesturePtr : IQPanGesture, IDisposable, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPanGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QPanGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QPanGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QPanGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QPanGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPanGesture_Tr(s);
	}
	
	public void LastOffset()
	{
		CQt.QPanGesture_LastOffset(this.nativePtr);
	}
	
	public void Offset()
	{
		CQt.QPanGesture_Offset(this.nativePtr);
	}
	
	public void Delta()
	{
		CQt.QPanGesture_Delta(this.nativePtr);
	}
	
	public double Acceleration()
	{
		return CQt.QPanGesture_Acceleration(this.nativePtr);
	}
	
	public void SetLastOffset(IQPointF value)
	{
		CQt.QPanGesture_SetLastOffset(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void SetOffset(IQPointF value)
	{
		CQt.QPanGesture_SetOffset(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void SetAcceleration(double value)
	{
		CQt.QPanGesture_SetAcceleration(this.nativePtr, value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QPanGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QPanGesture_Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QPanGesture
{
	public QPanGesturePtr handle;
	
	public static implicit operator QPanGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPanGesturePtr.New();
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
		return QPanGesturePtr.Tr(s);
	}
	
	public void LastOffset()
	{
		this.handle.LastOffset();
	}
	
	public void Offset()
	{
		this.handle.Offset();
	}
	
	public void Delta()
	{
		this.handle.Delta();
	}
	
	public double Acceleration()
	{
		return this.handle.Acceleration();
	}
	
	public void SetLastOffset(IQPointF value)
	{
		this.handle.SetLastOffset(value);
	}
	
	public void SetOffset(IQPointF value)
	{
		this.handle.SetOffset(value);
	}
	
	public void SetAcceleration(double value)
	{
		this.handle.SetAcceleration(value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QPanGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QPanGesturePtr.Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
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
		QPanGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QPanGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QPanGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QPanGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QPanGesture_new")]
	public static extern void* QPanGesture_new();
	[LinkName("QPanGesture_new2")]
	public static extern void* QPanGesture_new2(void* parent);
	[LinkName("QPanGesture_MetaObject")]
	public static extern void* QPanGesture_MetaObject(void* c_this);
	[LinkName("QPanGesture_Metacast")]
	public static extern void* QPanGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QPanGesture_Metacall")]
	public static extern int32 QPanGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QPanGesture_Tr")]
	public static extern libqt_string QPanGesture_Tr(char8* s);
	[LinkName("QPanGesture_LastOffset")]
	public static extern void QPanGesture_LastOffset(void* c_this);
	[LinkName("QPanGesture_Offset")]
	public static extern void QPanGesture_Offset(void* c_this);
	[LinkName("QPanGesture_Delta")]
	public static extern void QPanGesture_Delta(void* c_this);
	[LinkName("QPanGesture_Acceleration")]
	public static extern double QPanGesture_Acceleration(void* c_this);
	[LinkName("QPanGesture_SetLastOffset")]
	public static extern void QPanGesture_SetLastOffset(void* c_this, void* value);
	[LinkName("QPanGesture_SetOffset")]
	public static extern void QPanGesture_SetOffset(void* c_this, void* value);
	[LinkName("QPanGesture_SetAcceleration")]
	public static extern void QPanGesture_SetAcceleration(void* c_this, double value);
	[LinkName("QPanGesture_Tr2")]
	public static extern libqt_string QPanGesture_Tr2(char8* s, char8* c);
	[LinkName("QPanGesture_Tr3")]
	public static extern libqt_string QPanGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QPanGesture_Delete")]
	public static extern void QPanGesture_Delete(void* self);
}
public interface IQPinchGesture
{
	void* NativePtr { get; }
}
public struct QPinchGesturePtr : IQPinchGesture, IDisposable, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QPinchGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QPinchGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QPinchGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QPinchGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QPinchGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPinchGesture_Tr(s);
	}
	
	public int64 TotalChangeFlags()
	{
		return CQt.QPinchGesture_TotalChangeFlags(this.nativePtr);
	}
	
	public void SetTotalChangeFlags(int64 value)
	{
		CQt.QPinchGesture_SetTotalChangeFlags(this.nativePtr, value);
	}
	
	public int64 ChangeFlags()
	{
		return CQt.QPinchGesture_ChangeFlags(this.nativePtr);
	}
	
	public void SetChangeFlags(int64 value)
	{
		CQt.QPinchGesture_SetChangeFlags(this.nativePtr, value);
	}
	
	public void StartCenterPoint()
	{
		CQt.QPinchGesture_StartCenterPoint(this.nativePtr);
	}
	
	public void LastCenterPoint()
	{
		CQt.QPinchGesture_LastCenterPoint(this.nativePtr);
	}
	
	public void CenterPoint()
	{
		CQt.QPinchGesture_CenterPoint(this.nativePtr);
	}
	
	public void SetStartCenterPoint(IQPointF value)
	{
		CQt.QPinchGesture_SetStartCenterPoint(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void SetLastCenterPoint(IQPointF value)
	{
		CQt.QPinchGesture_SetLastCenterPoint(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void SetCenterPoint(IQPointF value)
	{
		CQt.QPinchGesture_SetCenterPoint(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public double TotalScaleFactor()
	{
		return CQt.QPinchGesture_TotalScaleFactor(this.nativePtr);
	}
	
	public double LastScaleFactor()
	{
		return CQt.QPinchGesture_LastScaleFactor(this.nativePtr);
	}
	
	public double ScaleFactor()
	{
		return CQt.QPinchGesture_ScaleFactor(this.nativePtr);
	}
	
	public void SetTotalScaleFactor(double value)
	{
		CQt.QPinchGesture_SetTotalScaleFactor(this.nativePtr, value);
	}
	
	public void SetLastScaleFactor(double value)
	{
		CQt.QPinchGesture_SetLastScaleFactor(this.nativePtr, value);
	}
	
	public void SetScaleFactor(double value)
	{
		CQt.QPinchGesture_SetScaleFactor(this.nativePtr, value);
	}
	
	public double TotalRotationAngle()
	{
		return CQt.QPinchGesture_TotalRotationAngle(this.nativePtr);
	}
	
	public double LastRotationAngle()
	{
		return CQt.QPinchGesture_LastRotationAngle(this.nativePtr);
	}
	
	public double RotationAngle()
	{
		return CQt.QPinchGesture_RotationAngle(this.nativePtr);
	}
	
	public void SetTotalRotationAngle(double value)
	{
		CQt.QPinchGesture_SetTotalRotationAngle(this.nativePtr, value);
	}
	
	public void SetLastRotationAngle(double value)
	{
		CQt.QPinchGesture_SetLastRotationAngle(this.nativePtr, value);
	}
	
	public void SetRotationAngle(double value)
	{
		CQt.QPinchGesture_SetRotationAngle(this.nativePtr, value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QPinchGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QPinchGesture_Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QPinchGesture
{
	public QPinchGesturePtr handle;
	
	public static implicit operator QPinchGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QPinchGesturePtr.New();
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
		return QPinchGesturePtr.Tr(s);
	}
	
	public int64 TotalChangeFlags()
	{
		return this.handle.TotalChangeFlags();
	}
	
	public void SetTotalChangeFlags(int64 value)
	{
		this.handle.SetTotalChangeFlags(value);
	}
	
	public int64 ChangeFlags()
	{
		return this.handle.ChangeFlags();
	}
	
	public void SetChangeFlags(int64 value)
	{
		this.handle.SetChangeFlags(value);
	}
	
	public void StartCenterPoint()
	{
		this.handle.StartCenterPoint();
	}
	
	public void LastCenterPoint()
	{
		this.handle.LastCenterPoint();
	}
	
	public void CenterPoint()
	{
		this.handle.CenterPoint();
	}
	
	public void SetStartCenterPoint(IQPointF value)
	{
		this.handle.SetStartCenterPoint(value);
	}
	
	public void SetLastCenterPoint(IQPointF value)
	{
		this.handle.SetLastCenterPoint(value);
	}
	
	public void SetCenterPoint(IQPointF value)
	{
		this.handle.SetCenterPoint(value);
	}
	
	public double TotalScaleFactor()
	{
		return this.handle.TotalScaleFactor();
	}
	
	public double LastScaleFactor()
	{
		return this.handle.LastScaleFactor();
	}
	
	public double ScaleFactor()
	{
		return this.handle.ScaleFactor();
	}
	
	public void SetTotalScaleFactor(double value)
	{
		this.handle.SetTotalScaleFactor(value);
	}
	
	public void SetLastScaleFactor(double value)
	{
		this.handle.SetLastScaleFactor(value);
	}
	
	public void SetScaleFactor(double value)
	{
		this.handle.SetScaleFactor(value);
	}
	
	public double TotalRotationAngle()
	{
		return this.handle.TotalRotationAngle();
	}
	
	public double LastRotationAngle()
	{
		return this.handle.LastRotationAngle();
	}
	
	public double RotationAngle()
	{
		return this.handle.RotationAngle();
	}
	
	public void SetTotalRotationAngle(double value)
	{
		this.handle.SetTotalRotationAngle(value);
	}
	
	public void SetLastRotationAngle(double value)
	{
		this.handle.SetLastRotationAngle(value);
	}
	
	public void SetRotationAngle(double value)
	{
		this.handle.SetRotationAngle(value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QPinchGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QPinchGesturePtr.Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
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
		QPinchGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QPinchGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QPinchGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QPinchGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QPinchGesture_new")]
	public static extern void* QPinchGesture_new();
	[LinkName("QPinchGesture_new2")]
	public static extern void* QPinchGesture_new2(void* parent);
	[LinkName("QPinchGesture_MetaObject")]
	public static extern void* QPinchGesture_MetaObject(void* c_this);
	[LinkName("QPinchGesture_Metacast")]
	public static extern void* QPinchGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QPinchGesture_Metacall")]
	public static extern int32 QPinchGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QPinchGesture_Tr")]
	public static extern libqt_string QPinchGesture_Tr(char8* s);
	[LinkName("QPinchGesture_TotalChangeFlags")]
	public static extern int64 QPinchGesture_TotalChangeFlags(void* c_this);
	[LinkName("QPinchGesture_SetTotalChangeFlags")]
	public static extern void QPinchGesture_SetTotalChangeFlags(void* c_this, int64 value);
	[LinkName("QPinchGesture_ChangeFlags")]
	public static extern int64 QPinchGesture_ChangeFlags(void* c_this);
	[LinkName("QPinchGesture_SetChangeFlags")]
	public static extern void QPinchGesture_SetChangeFlags(void* c_this, int64 value);
	[LinkName("QPinchGesture_StartCenterPoint")]
	public static extern void QPinchGesture_StartCenterPoint(void* c_this);
	[LinkName("QPinchGesture_LastCenterPoint")]
	public static extern void QPinchGesture_LastCenterPoint(void* c_this);
	[LinkName("QPinchGesture_CenterPoint")]
	public static extern void QPinchGesture_CenterPoint(void* c_this);
	[LinkName("QPinchGesture_SetStartCenterPoint")]
	public static extern void QPinchGesture_SetStartCenterPoint(void* c_this, void* value);
	[LinkName("QPinchGesture_SetLastCenterPoint")]
	public static extern void QPinchGesture_SetLastCenterPoint(void* c_this, void* value);
	[LinkName("QPinchGesture_SetCenterPoint")]
	public static extern void QPinchGesture_SetCenterPoint(void* c_this, void* value);
	[LinkName("QPinchGesture_TotalScaleFactor")]
	public static extern double QPinchGesture_TotalScaleFactor(void* c_this);
	[LinkName("QPinchGesture_LastScaleFactor")]
	public static extern double QPinchGesture_LastScaleFactor(void* c_this);
	[LinkName("QPinchGesture_ScaleFactor")]
	public static extern double QPinchGesture_ScaleFactor(void* c_this);
	[LinkName("QPinchGesture_SetTotalScaleFactor")]
	public static extern void QPinchGesture_SetTotalScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_SetLastScaleFactor")]
	public static extern void QPinchGesture_SetLastScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_SetScaleFactor")]
	public static extern void QPinchGesture_SetScaleFactor(void* c_this, double value);
	[LinkName("QPinchGesture_TotalRotationAngle")]
	public static extern double QPinchGesture_TotalRotationAngle(void* c_this);
	[LinkName("QPinchGesture_LastRotationAngle")]
	public static extern double QPinchGesture_LastRotationAngle(void* c_this);
	[LinkName("QPinchGesture_RotationAngle")]
	public static extern double QPinchGesture_RotationAngle(void* c_this);
	[LinkName("QPinchGesture_SetTotalRotationAngle")]
	public static extern void QPinchGesture_SetTotalRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_SetLastRotationAngle")]
	public static extern void QPinchGesture_SetLastRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_SetRotationAngle")]
	public static extern void QPinchGesture_SetRotationAngle(void* c_this, double value);
	[LinkName("QPinchGesture_Tr2")]
	public static extern libqt_string QPinchGesture_Tr2(char8* s, char8* c);
	[LinkName("QPinchGesture_Tr3")]
	public static extern libqt_string QPinchGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QPinchGesture_Delete")]
	public static extern void QPinchGesture_Delete(void* self);
}
public interface IQSwipeGesture
{
	void* NativePtr { get; }
}
public struct QSwipeGesturePtr : IQSwipeGesture, IDisposable, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSwipeGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QSwipeGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSwipeGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSwipeGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSwipeGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSwipeGesture_Tr(s);
	}
	
	public int64 HorizontalDirection()
	{
		return CQt.QSwipeGesture_HorizontalDirection(this.nativePtr);
	}
	
	public int64 VerticalDirection()
	{
		return CQt.QSwipeGesture_VerticalDirection(this.nativePtr);
	}
	
	public double SwipeAngle()
	{
		return CQt.QSwipeGesture_SwipeAngle(this.nativePtr);
	}
	
	public void SetSwipeAngle(double value)
	{
		CQt.QSwipeGesture_SetSwipeAngle(this.nativePtr, value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSwipeGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSwipeGesture_Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QSwipeGesture
{
	public QSwipeGesturePtr handle;
	
	public static implicit operator QSwipeGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSwipeGesturePtr.New();
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
		return QSwipeGesturePtr.Tr(s);
	}
	
	public int64 HorizontalDirection()
	{
		return this.handle.HorizontalDirection();
	}
	
	public int64 VerticalDirection()
	{
		return this.handle.VerticalDirection();
	}
	
	public double SwipeAngle()
	{
		return this.handle.SwipeAngle();
	}
	
	public void SetSwipeAngle(double value)
	{
		this.handle.SetSwipeAngle(value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSwipeGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSwipeGesturePtr.Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
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
		QSwipeGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSwipeGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSwipeGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSwipeGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSwipeGesture_new")]
	public static extern void* QSwipeGesture_new();
	[LinkName("QSwipeGesture_new2")]
	public static extern void* QSwipeGesture_new2(void* parent);
	[LinkName("QSwipeGesture_MetaObject")]
	public static extern void* QSwipeGesture_MetaObject(void* c_this);
	[LinkName("QSwipeGesture_Metacast")]
	public static extern void* QSwipeGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QSwipeGesture_Metacall")]
	public static extern int32 QSwipeGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSwipeGesture_Tr")]
	public static extern libqt_string QSwipeGesture_Tr(char8* s);
	[LinkName("QSwipeGesture_HorizontalDirection")]
	public static extern int64 QSwipeGesture_HorizontalDirection(void* c_this);
	[LinkName("QSwipeGesture_VerticalDirection")]
	public static extern int64 QSwipeGesture_VerticalDirection(void* c_this);
	[LinkName("QSwipeGesture_SwipeAngle")]
	public static extern double QSwipeGesture_SwipeAngle(void* c_this);
	[LinkName("QSwipeGesture_SetSwipeAngle")]
	public static extern void QSwipeGesture_SetSwipeAngle(void* c_this, double value);
	[LinkName("QSwipeGesture_Tr2")]
	public static extern libqt_string QSwipeGesture_Tr2(char8* s, char8* c);
	[LinkName("QSwipeGesture_Tr3")]
	public static extern libqt_string QSwipeGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSwipeGesture_Delete")]
	public static extern void QSwipeGesture_Delete(void* self);
}
public interface IQTapGesture
{
	void* NativePtr { get; }
}
public struct QTapGesturePtr : IQTapGesture, IDisposable, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTapGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QTapGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTapGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTapGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTapGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTapGesture_Tr(s);
	}
	
	public void Position()
	{
		CQt.QTapGesture_Position(this.nativePtr);
	}
	
	public void SetPosition(IQPointF pos)
	{
		CQt.QTapGesture_SetPosition(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTapGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTapGesture_Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QTapGesture
{
	public QTapGesturePtr handle;
	
	public static implicit operator QTapGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTapGesturePtr.New();
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
		return QTapGesturePtr.Tr(s);
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void SetPosition(IQPointF pos)
	{
		this.handle.SetPosition(pos);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTapGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTapGesturePtr.Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
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
		QTapGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTapGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTapGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTapGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTapGesture_new")]
	public static extern void* QTapGesture_new();
	[LinkName("QTapGesture_new2")]
	public static extern void* QTapGesture_new2(void* parent);
	[LinkName("QTapGesture_MetaObject")]
	public static extern void* QTapGesture_MetaObject(void* c_this);
	[LinkName("QTapGesture_Metacast")]
	public static extern void* QTapGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QTapGesture_Metacall")]
	public static extern int32 QTapGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTapGesture_Tr")]
	public static extern libqt_string QTapGesture_Tr(char8* s);
	[LinkName("QTapGesture_Position")]
	public static extern void QTapGesture_Position(void* c_this);
	[LinkName("QTapGesture_SetPosition")]
	public static extern void QTapGesture_SetPosition(void* c_this, void* pos);
	[LinkName("QTapGesture_Tr2")]
	public static extern libqt_string QTapGesture_Tr2(char8* s, char8* c);
	[LinkName("QTapGesture_Tr3")]
	public static extern libqt_string QTapGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTapGesture_Delete")]
	public static extern void QTapGesture_Delete(void* self);
}
public interface IQTapAndHoldGesture
{
	void* NativePtr { get; }
}
public struct QTapAndHoldGesturePtr : IQTapAndHoldGesture, IDisposable, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTapAndHoldGesture_new());
	}
	
	public void Dispose()
	{
		CQt.QTapAndHoldGesture_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTapAndHoldGesture_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTapAndHoldGesture_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTapAndHoldGesture_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTapAndHoldGesture_Tr(s);
	}
	
	public void Position()
	{
		CQt.QTapAndHoldGesture_Position(this.nativePtr);
	}
	
	public void SetPosition(IQPointF pos)
	{
		CQt.QTapAndHoldGesture_SetPosition(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public static void SetTimeout(int32 msecs)
	{
		CQt.QTapAndHoldGesture_SetTimeout(msecs);
	}
	
	public static int32 Timeout()
	{
		return CQt.QTapAndHoldGesture_Timeout();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTapAndHoldGesture_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTapAndHoldGesture_Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return CQt.QGesture_GestureType(this.nativePtr);
	}
	
	public int64 State()
	{
		return CQt.QGesture_State(this.nativePtr);
	}
	
	public void HotSpot()
	{
		CQt.QGesture_HotSpot(this.nativePtr);
	}
	
	public void SetHotSpot(IQPointF value)
	{
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public bool HasHotSpot()
	{
		return CQt.QGesture_HasHotSpot(this.nativePtr);
	}
	
	public void UnsetHotSpot()
	{
		CQt.QGesture_UnsetHotSpot(this.nativePtr);
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QTapAndHoldGesture
{
	public QTapAndHoldGesturePtr handle;
	
	public static implicit operator QTapAndHoldGesturePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTapAndHoldGesturePtr.New();
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
		return QTapAndHoldGesturePtr.Tr(s);
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void SetPosition(IQPointF pos)
	{
		this.handle.SetPosition(pos);
	}
	
	public static void SetTimeout(int32 msecs)
	{
		QTapAndHoldGesturePtr.SetTimeout(msecs);
	}
	
	public static int32 Timeout()
	{
		return QTapAndHoldGesturePtr.Timeout();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTapAndHoldGesturePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTapAndHoldGesturePtr.Tr3(s, c, n);
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void SetHotSpot(IQPointF value)
	{
		this.handle.SetHotSpot(value);
	}
	
	public bool HasHotSpot()
	{
		return this.handle.HasHotSpot();
	}
	
	public void UnsetHotSpot()
	{
		this.handle.UnsetHotSpot();
	}
	
	public void SetGestureCancelPolicy(int64 policy)
	{
		this.handle.SetGestureCancelPolicy(policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return this.handle.GestureCancelPolicy();
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
		QTapAndHoldGesturePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTapAndHoldGesturePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTapAndHoldGesturePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTapAndHoldGesturePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QTapAndHoldGesture_new")]
	public static extern void* QTapAndHoldGesture_new();
	[LinkName("QTapAndHoldGesture_new2")]
	public static extern void* QTapAndHoldGesture_new2(void* parent);
	[LinkName("QTapAndHoldGesture_MetaObject")]
	public static extern void* QTapAndHoldGesture_MetaObject(void* c_this);
	[LinkName("QTapAndHoldGesture_Metacast")]
	public static extern void* QTapAndHoldGesture_Metacast(void* c_this, char8* param1);
	[LinkName("QTapAndHoldGesture_Metacall")]
	public static extern int32 QTapAndHoldGesture_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTapAndHoldGesture_Tr")]
	public static extern libqt_string QTapAndHoldGesture_Tr(char8* s);
	[LinkName("QTapAndHoldGesture_Position")]
	public static extern void QTapAndHoldGesture_Position(void* c_this);
	[LinkName("QTapAndHoldGesture_SetPosition")]
	public static extern void QTapAndHoldGesture_SetPosition(void* c_this, void* pos);
	[LinkName("QTapAndHoldGesture_SetTimeout")]
	public static extern void QTapAndHoldGesture_SetTimeout(int32 msecs);
	[LinkName("QTapAndHoldGesture_Timeout")]
	public static extern int32 QTapAndHoldGesture_Timeout();
	[LinkName("QTapAndHoldGesture_Tr2")]
	public static extern libqt_string QTapAndHoldGesture_Tr2(char8* s, char8* c);
	[LinkName("QTapAndHoldGesture_Tr3")]
	public static extern libqt_string QTapAndHoldGesture_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTapAndHoldGesture_Delete")]
	public static extern void QTapAndHoldGesture_Delete(void* self);
}
public interface IQGestureEvent
{
	void* NativePtr { get; }
}
public struct QGestureEventPtr : IQGestureEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQGesture[] gestures)
	{
		return .(CQt.QGestureEvent_new(null));
	}
	
	public void Dispose()
	{
		CQt.QGestureEvent_Delete(this.nativePtr);
	}
	
	public void*[] Gestures()
	{
		return CQt.QGestureEvent_Gestures(this.nativePtr);
	}
	
	public void* Gesture(int64 typeVal)
	{
		return CQt.QGestureEvent_Gesture(this.nativePtr, (int64)typeVal);
	}
	
	public void*[] ActiveGestures()
	{
		return CQt.QGestureEvent_ActiveGestures(this.nativePtr);
	}
	
	public void*[] CanceledGestures()
	{
		return CQt.QGestureEvent_CanceledGestures(this.nativePtr);
	}
	
	public void SetAccepted(IQGesture param1, bool param2)
	{
		CQt.QGestureEvent_SetAccepted(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, param2);
	}
	
	public void Accept(IQGesture param1)
	{
		CQt.QGestureEvent_Accept(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Ignore(IQGesture param1)
	{
		CQt.QGestureEvent_Ignore(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool IsAccepted(IQGesture param1)
	{
		return CQt.QGestureEvent_IsAccepted(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetAccepted2(int64 param1, bool param2)
	{
		CQt.QGestureEvent_SetAccepted2(this.nativePtr, (int64)param1, param2);
	}
	
	public void AcceptWithQtGestureType(int64 param1)
	{
		CQt.QGestureEvent_AcceptWithQtGestureType(this.nativePtr, (int64)param1);
	}
	
	public void IgnoreWithQtGestureType(int64 param1)
	{
		CQt.QGestureEvent_IgnoreWithQtGestureType(this.nativePtr, (int64)param1);
	}
	
	public bool IsAcceptedWithQtGestureType(int64 param1)
	{
		return CQt.QGestureEvent_IsAcceptedWithQtGestureType(this.nativePtr, (int64)param1);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGestureEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGestureEvent_Widget(this.nativePtr);
	}
	
	public void MapToGraphicsScene(IQPointF gesturePoint)
	{
		CQt.QGestureEvent_MapToGraphicsScene(this.nativePtr, (gesturePoint == default || gesturePoint.NativePtr == default) ? default : gesturePoint.NativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGestureEvent
{
	public QGestureEventPtr handle;
	
	public static implicit operator QGestureEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQGesture[] gestures)
	{
		this.handle = QGestureEventPtr.New(null);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void*[] Gestures()
	{
		return this.handle.Gestures();
	}
	
	public void* Gesture(int64 typeVal)
	{
		return this.handle.Gesture(typeVal);
	}
	
	public void*[] ActiveGestures()
	{
		return this.handle.ActiveGestures();
	}
	
	public void*[] CanceledGestures()
	{
		return this.handle.CanceledGestures();
	}
	
	public void SetAccepted(IQGesture param1, bool param2)
	{
		this.handle.SetAccepted(param1, param2);
	}
	
	public void Accept(IQGesture param1)
	{
		this.handle.Accept(param1);
	}
	
	public void Ignore(IQGesture param1)
	{
		this.handle.Ignore(param1);
	}
	
	public bool IsAccepted(IQGesture param1)
	{
		return this.handle.IsAccepted(param1);
	}
	
	public void SetAccepted2(int64 param1, bool param2)
	{
		this.handle.SetAccepted2(param1, param2);
	}
	
	public void AcceptWithQtGestureType(int64 param1)
	{
		this.handle.AcceptWithQtGestureType(param1);
	}
	
	public void IgnoreWithQtGestureType(int64 param1)
	{
		this.handle.IgnoreWithQtGestureType(param1);
	}
	
	public bool IsAcceptedWithQtGestureType(int64 param1)
	{
		return this.handle.IsAcceptedWithQtGestureType(param1);
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void MapToGraphicsScene(IQPointF gesturePoint)
	{
		this.handle.MapToGraphicsScene(gesturePoint);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QGestureEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGestureEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGestureEvent_new")]
	public static extern void* QGestureEvent_new(void*[] gestures);
	[LinkName("QGestureEvent_new2")]
	public static extern void* QGestureEvent_new2(void* param1);
	[LinkName("QGestureEvent_Gestures")]
	public static extern void*[] QGestureEvent_Gestures(void* c_this);
	[LinkName("QGestureEvent_Gesture")]
	public static extern void* QGestureEvent_Gesture(void* c_this, int64 typeVal);
	[LinkName("QGestureEvent_ActiveGestures")]
	public static extern void*[] QGestureEvent_ActiveGestures(void* c_this);
	[LinkName("QGestureEvent_CanceledGestures")]
	public static extern void*[] QGestureEvent_CanceledGestures(void* c_this);
	[LinkName("QGestureEvent_SetAccepted")]
	public static extern void QGestureEvent_SetAccepted(void* c_this, void* param1, bool param2);
	[LinkName("QGestureEvent_Accept")]
	public static extern void QGestureEvent_Accept(void* c_this, void* param1);
	[LinkName("QGestureEvent_Ignore")]
	public static extern void QGestureEvent_Ignore(void* c_this, void* param1);
	[LinkName("QGestureEvent_IsAccepted")]
	public static extern bool QGestureEvent_IsAccepted(void* c_this, void* param1);
	[LinkName("QGestureEvent_SetAccepted2")]
	public static extern void QGestureEvent_SetAccepted2(void* c_this, int64 param1, bool param2);
	[LinkName("QGestureEvent_AcceptWithQtGestureType")]
	public static extern void QGestureEvent_AcceptWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_IgnoreWithQtGestureType")]
	public static extern void QGestureEvent_IgnoreWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_IsAcceptedWithQtGestureType")]
	public static extern bool QGestureEvent_IsAcceptedWithQtGestureType(void* c_this, int64 param1);
	[LinkName("QGestureEvent_SetWidget")]
	public static extern void QGestureEvent_SetWidget(void* c_this, void* widget);
	[LinkName("QGestureEvent_Widget")]
	public static extern void* QGestureEvent_Widget(void* c_this);
	[LinkName("QGestureEvent_MapToGraphicsScene")]
	public static extern void QGestureEvent_MapToGraphicsScene(void* c_this, void* gesturePoint);
	/// Delete this object from C++ memory
	[LinkName("QGestureEvent_Delete")]
	public static extern void QGestureEvent_Delete(void* self);
}