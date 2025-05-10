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
public class QGesture : IQGesture, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGesture_new();
	}
	
	public ~this()
	{
		CQt.QGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
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
public class QPanGesture : IQPanGesture, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPanGesture_new();
	}
	
	public ~this()
	{
		CQt.QPanGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPanGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QPanGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPanGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QPanGesture_SetLastOffset(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void SetOffset(IQPointF value)
	{
		CQt.QPanGesture_SetOffset(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QPinchGesture : IQPinchGesture, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPinchGesture_new();
	}
	
	public ~this()
	{
		CQt.QPinchGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPinchGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QPinchGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPinchGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QPinchGesture_SetStartCenterPoint(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void SetLastCenterPoint(IQPointF value)
	{
		CQt.QPinchGesture_SetLastCenterPoint(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void SetCenterPoint(IQPointF value)
	{
		CQt.QPinchGesture_SetCenterPoint(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QSwipeGesture : IQSwipeGesture, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSwipeGesture_new();
	}
	
	public ~this()
	{
		CQt.QSwipeGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSwipeGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QSwipeGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSwipeGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QTapGesture : IQTapGesture, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTapGesture_new();
	}
	
	public ~this()
	{
		CQt.QTapGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTapGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTapGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTapGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QTapGesture_SetPosition(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QTapAndHoldGesture : IQTapAndHoldGesture, IQGesture
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTapAndHoldGesture_new();
	}
	
	public ~this()
	{
		CQt.QTapAndHoldGesture_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTapAndHoldGesture_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QTapAndHoldGesture_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTapAndHoldGesture_Metacall(this.nativePtr, param1, param2, param3);
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
		CQt.QTapAndHoldGesture_SetPosition(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
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
		CQt.QGesture_SetHotSpot(this.nativePtr, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGesture_SetGestureCancelPolicy(this.nativePtr, policy);
	}
	
	public int64 GestureCancelPolicy()
	{
		return CQt.QGesture_GestureCancelPolicy(this.nativePtr);
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
public class QGestureEvent : IQGestureEvent, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQGesture[] gestures)
	{
		this.nativePtr = CQt.QGestureEvent_new(null);
	}
	
	public ~this()
	{
		CQt.QGestureEvent_Delete(this.nativePtr);
	}
	
	public void*[] Gestures()
	{
		return CQt.QGestureEvent_Gestures(this.nativePtr);
	}
	
	public void* Gesture(int64 typeVal)
	{
		return CQt.QGestureEvent_Gesture(this.nativePtr, typeVal);
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
		CQt.QGestureEvent_SetAccepted(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, param2);
	}
	
	public void Accept(IQGesture param1)
	{
		CQt.QGestureEvent_Accept(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void Ignore(IQGesture param1)
	{
		CQt.QGestureEvent_Ignore(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public bool IsAccepted(IQGesture param1)
	{
		return CQt.QGestureEvent_IsAccepted(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void SetAccepted2(int64 param1, bool param2)
	{
		CQt.QGestureEvent_SetAccepted2(this.nativePtr, param1, param2);
	}
	
	public void AcceptWithQtGestureType(int64 param1)
	{
		CQt.QGestureEvent_AcceptWithQtGestureType(this.nativePtr, param1);
	}
	
	public void IgnoreWithQtGestureType(int64 param1)
	{
		CQt.QGestureEvent_IgnoreWithQtGestureType(this.nativePtr, param1);
	}
	
	public bool IsAcceptedWithQtGestureType(int64 param1)
	{
		return CQt.QGestureEvent_IsAcceptedWithQtGestureType(this.nativePtr, param1);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGestureEvent_SetWidget(this.nativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGestureEvent_Widget(this.nativePtr);
	}
	
	public void MapToGraphicsScene(IQPointF gesturePoint)
	{
		CQt.QGestureEvent_MapToGraphicsScene(this.nativePtr, (gesturePoint == default) ? default : (void*)gesturePoint.NativePtr);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
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