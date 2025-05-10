using System;
using System.Interop;
namespace Qt;

public class QGraphicsTransform
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsTransform_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsTransform_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsTransform_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsTransform_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsTransform_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsTransform_Tr(s);
	}
	
	public virtual void ApplyTo(void* matrix)
	{
		CQt.QGraphicsTransform_ApplyTo(this.nativePtr, matrix);
	}
	
	public void Update()
	{
		CQt.QGraphicsTransform_Update(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsTransform_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsTransform_Tr3(s, c, n);
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
	[LinkName("QGraphicsTransform_new")]
	public static extern void* QGraphicsTransform_new();
	[LinkName("QGraphicsTransform_new2")]
	public static extern void* QGraphicsTransform_new2(void* parent);
	[LinkName("QGraphicsTransform_MetaObject")]
	public static extern void* QGraphicsTransform_MetaObject(void* c_this);
	[LinkName("QGraphicsTransform_Metacast")]
	public static extern void* QGraphicsTransform_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsTransform_Metacall")]
	public static extern int32 QGraphicsTransform_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsTransform_Tr")]
	public static extern libqt_string QGraphicsTransform_Tr(char8[] s);
	[LinkName("QGraphicsTransform_ApplyTo")]
	public static extern void QGraphicsTransform_ApplyTo(void* c_this, void* matrix);
	[LinkName("QGraphicsTransform_Update")]
	public static extern void QGraphicsTransform_Update(void* c_this);
	[LinkName("QGraphicsTransform_Tr2")]
	public static extern libqt_string QGraphicsTransform_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsTransform_Tr3")]
	public static extern libqt_string QGraphicsTransform_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsTransform_Delete")]
	public static extern void QGraphicsTransform_Delete(void* self);
}
public class QGraphicsScale
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsScale_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsScale_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsScale_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsScale_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsScale_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsScale_Tr(s);
	}
	
	public void Origin()
	{
		CQt.QGraphicsScale_Origin(this.nativePtr);
	}
	
	public void SetOrigin(void* point)
	{
		CQt.QGraphicsScale_SetOrigin(this.nativePtr, point);
	}
	
	public double XScale()
	{
		return CQt.QGraphicsScale_XScale(this.nativePtr);
	}
	
	public void SetXScale(double xScale)
	{
		CQt.QGraphicsScale_SetXScale(this.nativePtr, xScale);
	}
	
	public double YScale()
	{
		return CQt.QGraphicsScale_YScale(this.nativePtr);
	}
	
	public void SetYScale(double yScale)
	{
		CQt.QGraphicsScale_SetYScale(this.nativePtr, yScale);
	}
	
	public double ZScale()
	{
		return CQt.QGraphicsScale_ZScale(this.nativePtr);
	}
	
	public void SetZScale(double zScale)
	{
		CQt.QGraphicsScale_SetZScale(this.nativePtr, zScale);
	}
	
	public virtual void ApplyTo(void* matrix)
	{
		CQt.QGraphicsScale_ApplyTo(this.nativePtr, matrix);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsScale_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsScale_Tr3(s, c, n);
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
	[LinkName("QGraphicsScale_new")]
	public static extern void* QGraphicsScale_new();
	[LinkName("QGraphicsScale_new2")]
	public static extern void* QGraphicsScale_new2(void* parent);
	[LinkName("QGraphicsScale_MetaObject")]
	public static extern void* QGraphicsScale_MetaObject(void* c_this);
	[LinkName("QGraphicsScale_Metacast")]
	public static extern void* QGraphicsScale_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsScale_Metacall")]
	public static extern int32 QGraphicsScale_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsScale_Tr")]
	public static extern libqt_string QGraphicsScale_Tr(char8[] s);
	[LinkName("QGraphicsScale_Origin")]
	public static extern void QGraphicsScale_Origin(void* c_this);
	[LinkName("QGraphicsScale_SetOrigin")]
	public static extern void QGraphicsScale_SetOrigin(void* c_this, void* point);
	[LinkName("QGraphicsScale_XScale")]
	public static extern double QGraphicsScale_XScale(void* c_this);
	[LinkName("QGraphicsScale_SetXScale")]
	public static extern void QGraphicsScale_SetXScale(void* c_this, double xScale);
	[LinkName("QGraphicsScale_YScale")]
	public static extern double QGraphicsScale_YScale(void* c_this);
	[LinkName("QGraphicsScale_SetYScale")]
	public static extern void QGraphicsScale_SetYScale(void* c_this, double yScale);
	[LinkName("QGraphicsScale_ZScale")]
	public static extern double QGraphicsScale_ZScale(void* c_this);
	[LinkName("QGraphicsScale_SetZScale")]
	public static extern void QGraphicsScale_SetZScale(void* c_this, double zScale);
	[LinkName("QGraphicsScale_ApplyTo")]
	public static extern void QGraphicsScale_ApplyTo(void* c_this, void* matrix);
	[LinkName("QGraphicsScale_Connect_OriginChanged")]
	public static extern void QGraphicsScale_Connect_OriginChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScale_Connect_XScaleChanged")]
	public static extern void QGraphicsScale_Connect_XScaleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScale_Connect_YScaleChanged")]
	public static extern void QGraphicsScale_Connect_YScaleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScale_Connect_ZScaleChanged")]
	public static extern void QGraphicsScale_Connect_ZScaleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScale_Connect_ScaleChanged")]
	public static extern void QGraphicsScale_Connect_ScaleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScale_Tr2")]
	public static extern libqt_string QGraphicsScale_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsScale_Tr3")]
	public static extern libqt_string QGraphicsScale_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsScale_Delete")]
	public static extern void QGraphicsScale_Delete(void* self);
}
public class QGraphicsRotation
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsRotation_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsRotation_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsRotation_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsRotation_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsRotation_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsRotation_Tr(s);
	}
	
	public void Origin()
	{
		CQt.QGraphicsRotation_Origin(this.nativePtr);
	}
	
	public void SetOrigin(void* point)
	{
		CQt.QGraphicsRotation_SetOrigin(this.nativePtr, point);
	}
	
	public double Angle()
	{
		return CQt.QGraphicsRotation_Angle(this.nativePtr);
	}
	
	public void SetAngle(double angle)
	{
		CQt.QGraphicsRotation_SetAngle(this.nativePtr, angle);
	}
	
	public void Axis()
	{
		CQt.QGraphicsRotation_Axis(this.nativePtr);
	}
	
	public void SetAxis(void* axis)
	{
		CQt.QGraphicsRotation_SetAxis(this.nativePtr, axis);
	}
	
	public void SetAxisWithAxis(int64 axis)
	{
		CQt.QGraphicsRotation_SetAxisWithAxis(this.nativePtr, axis);
	}
	
	public virtual void ApplyTo(void* matrix)
	{
		CQt.QGraphicsRotation_ApplyTo(this.nativePtr, matrix);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsRotation_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsRotation_Tr3(s, c, n);
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
	[LinkName("QGraphicsRotation_new")]
	public static extern void* QGraphicsRotation_new();
	[LinkName("QGraphicsRotation_new2")]
	public static extern void* QGraphicsRotation_new2(void* parent);
	[LinkName("QGraphicsRotation_MetaObject")]
	public static extern void* QGraphicsRotation_MetaObject(void* c_this);
	[LinkName("QGraphicsRotation_Metacast")]
	public static extern void* QGraphicsRotation_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsRotation_Metacall")]
	public static extern int32 QGraphicsRotation_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsRotation_Tr")]
	public static extern libqt_string QGraphicsRotation_Tr(char8[] s);
	[LinkName("QGraphicsRotation_Origin")]
	public static extern void QGraphicsRotation_Origin(void* c_this);
	[LinkName("QGraphicsRotation_SetOrigin")]
	public static extern void QGraphicsRotation_SetOrigin(void* c_this, void* point);
	[LinkName("QGraphicsRotation_Angle")]
	public static extern double QGraphicsRotation_Angle(void* c_this);
	[LinkName("QGraphicsRotation_SetAngle")]
	public static extern void QGraphicsRotation_SetAngle(void* c_this, double angle);
	[LinkName("QGraphicsRotation_Axis")]
	public static extern void QGraphicsRotation_Axis(void* c_this);
	[LinkName("QGraphicsRotation_SetAxis")]
	public static extern void QGraphicsRotation_SetAxis(void* c_this, void* axis);
	[LinkName("QGraphicsRotation_SetAxisWithAxis")]
	public static extern void QGraphicsRotation_SetAxisWithAxis(void* c_this, int64 axis);
	[LinkName("QGraphicsRotation_ApplyTo")]
	public static extern void QGraphicsRotation_ApplyTo(void* c_this, void* matrix);
	[LinkName("QGraphicsRotation_Connect_OriginChanged")]
	public static extern void QGraphicsRotation_Connect_OriginChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsRotation_Connect_AngleChanged")]
	public static extern void QGraphicsRotation_Connect_AngleChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsRotation_Connect_AxisChanged")]
	public static extern void QGraphicsRotation_Connect_AxisChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsRotation_Tr2")]
	public static extern libqt_string QGraphicsRotation_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsRotation_Tr3")]
	public static extern libqt_string QGraphicsRotation_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsRotation_Delete")]
	public static extern void QGraphicsRotation_Delete(void* self);
}