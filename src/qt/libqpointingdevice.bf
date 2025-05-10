using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QPointingDevice__PointerType
{
	Unknown = 0,
	Generic = 1,
	Finger = 2,
	Pen = 4,
	Eraser = 8,
	Cursor = 16,
	AllPointerTypes = 32767,
}
[AllowDuplicates]
public enum QPointingDevice__GrabTransition
{
	GrabPassive = 1,
	UngrabPassive = 2,
	CancelGrabPassive = 3,
	OverrideGrabPassive = 4,
	GrabExclusive = 16,
	UngrabExclusive = 32,
	CancelGrabExclusive = 48,
}
public interface IQPointingDeviceUniqueId
{
	void* NativePtr { get; }
}
public class QPointingDeviceUniqueId : IQPointingDeviceUniqueId
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQPointingDeviceUniqueId other)
	{
		this.nativePtr = CQt.QPointingDeviceUniqueId_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QPointingDeviceUniqueId_Delete(this.nativePtr);
	}
	
	public static void FromNumericId(int64 id)
	{
		CQt.QPointingDeviceUniqueId_FromNumericId(id);
	}
	
	public bool IsValid()
	{
		return CQt.QPointingDeviceUniqueId_IsValid(this.nativePtr);
	}
	
	public int64 NumericId()
	{
		return CQt.QPointingDeviceUniqueId_NumericId(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QPointingDeviceUniqueId_new")]
	public static extern void* QPointingDeviceUniqueId_new(void* other);
	[LinkName("QPointingDeviceUniqueId_new2")]
	public static extern void* QPointingDeviceUniqueId_new2(void* other);
	[LinkName("QPointingDeviceUniqueId_new3")]
	public static extern void* QPointingDeviceUniqueId_new3();
	[LinkName("QPointingDeviceUniqueId_new4")]
	public static extern void* QPointingDeviceUniqueId_new4(void* param1);
	[LinkName("QPointingDeviceUniqueId_FromNumericId")]
	public static extern void QPointingDeviceUniqueId_FromNumericId(int64 id);
	[LinkName("QPointingDeviceUniqueId_IsValid")]
	public static extern bool QPointingDeviceUniqueId_IsValid(void* c_this);
	[LinkName("QPointingDeviceUniqueId_NumericId")]
	public static extern int64 QPointingDeviceUniqueId_NumericId(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPointingDeviceUniqueId_Delete")]
	public static extern void QPointingDeviceUniqueId_Delete(void* self);
}
public interface IQPointingDevice
{
	void* NativePtr { get; }
}
public class QPointingDevice : IQPointingDevice, IQInputDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPointingDevice_new();
	}
	
	public ~this()
	{
		CQt.QPointingDevice_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPointingDevice_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QPointingDevice_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPointingDevice_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QPointingDevice_Tr(s);
	}
	
	public void SetType(int64 devType)
	{
		CQt.QPointingDevice_SetType(this.nativePtr, devType);
	}
	
	public void SetCapabilities(int64 caps)
	{
		CQt.QPointingDevice_SetCapabilities(this.nativePtr, caps);
	}
	
	public void SetMaximumTouchPoints(int32 c)
	{
		CQt.QPointingDevice_SetMaximumTouchPoints(this.nativePtr, c);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointingDevice_PointerType(this.nativePtr);
	}
	
	public int32 MaximumPoints()
	{
		return CQt.QPointingDevice_MaximumPoints(this.nativePtr);
	}
	
	public int32 ButtonCount()
	{
		return CQt.QPointingDevice_ButtonCount(this.nativePtr);
	}
	
	public void UniqueId()
	{
		CQt.QPointingDevice_UniqueId(this.nativePtr);
	}
	
	public static void* PrimaryPointingDevice()
	{
		return CQt.QPointingDevice_PrimaryPointingDevice();
	}
	
	public bool OperatorEqual(IQPointingDevice other)
	{
		return CQt.QPointingDevice_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QPointingDevice_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QPointingDevice_Tr3(s, c, n);
	}
	
	public static void* PrimaryPointingDevice1(String seatName)
	{
		return CQt.QPointingDevice_PrimaryPointingDevice1(libqt_string(seatName));
	}
	
	public libqt_string Name()
	{
		return CQt.QInputDevice_Name(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QInputDevice_Type(this.nativePtr);
	}
	
	public int64 Capabilities()
	{
		return CQt.QInputDevice_Capabilities(this.nativePtr);
	}
	
	public bool HasCapability(int64 cap)
	{
		return CQt.QInputDevice_HasCapability(this.nativePtr, cap);
	}
	
	public int64 SystemId()
	{
		return CQt.QInputDevice_SystemId(this.nativePtr);
	}
	
	public libqt_string SeatName()
	{
		return CQt.QInputDevice_SeatName(this.nativePtr);
	}
	
	public void AvailableVirtualGeometry()
	{
		CQt.QInputDevice_AvailableVirtualGeometry(this.nativePtr);
	}
	
	public static libqt_string[] SeatNames()
	{
		return CQt.QInputDevice_SeatNames();
	}
	
	public static void*[] Devices()
	{
		return CQt.QInputDevice_Devices();
	}
	
	public static void* PrimaryKeyboard()
	{
		return CQt.QInputDevice_PrimaryKeyboard();
	}
	
	public static void* PrimaryKeyboard1(String seatName)
	{
		return CQt.QInputDevice_PrimaryKeyboard1(libqt_string(seatName));
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
	[LinkName("QPointingDevice_new")]
	public static extern void* QPointingDevice_new();
	[LinkName("QPointingDevice_new2")]
	public static extern void* QPointingDevice_new2(libqt_string name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount);
	[LinkName("QPointingDevice_new3")]
	public static extern void* QPointingDevice_new3(void* parent);
	[LinkName("QPointingDevice_new4")]
	public static extern void* QPointingDevice_new4(libqt_string name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, libqt_string seatName);
	[LinkName("QPointingDevice_new5")]
	public static extern void* QPointingDevice_new5(libqt_string name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, libqt_string seatName, void uniqueId);
	[LinkName("QPointingDevice_new6")]
	public static extern void* QPointingDevice_new6(libqt_string name, int64 systemId, int64 devType, int64 pType, int64 caps, int32 maxPoints, int32 buttonCount, libqt_string seatName, void uniqueId, void* parent);
	[LinkName("QPointingDevice_MetaObject")]
	public static extern void* QPointingDevice_MetaObject(void* c_this);
	[LinkName("QPointingDevice_Metacast")]
	public static extern void* QPointingDevice_Metacast(void* c_this, char8* param1);
	[LinkName("QPointingDevice_Metacall")]
	public static extern int32 QPointingDevice_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QPointingDevice_Tr")]
	public static extern libqt_string QPointingDevice_Tr(char8* s);
	[LinkName("QPointingDevice_SetType")]
	public static extern void QPointingDevice_SetType(void* c_this, int64 devType);
	[LinkName("QPointingDevice_SetCapabilities")]
	public static extern void QPointingDevice_SetCapabilities(void* c_this, int64 caps);
	[LinkName("QPointingDevice_SetMaximumTouchPoints")]
	public static extern void QPointingDevice_SetMaximumTouchPoints(void* c_this, int32 c);
	[LinkName("QPointingDevice_PointerType")]
	public static extern int64 QPointingDevice_PointerType(void* c_this);
	[LinkName("QPointingDevice_MaximumPoints")]
	public static extern int32 QPointingDevice_MaximumPoints(void* c_this);
	[LinkName("QPointingDevice_ButtonCount")]
	public static extern int32 QPointingDevice_ButtonCount(void* c_this);
	[LinkName("QPointingDevice_UniqueId")]
	public static extern void QPointingDevice_UniqueId(void* c_this);
	[LinkName("QPointingDevice_PrimaryPointingDevice")]
	public static extern void* QPointingDevice_PrimaryPointingDevice();
	[LinkName("QPointingDevice_OperatorEqual")]
	public static extern bool QPointingDevice_OperatorEqual(void* c_this, void* other);
	[LinkName("QPointingDevice_Connect_GrabChanged")]
	public static extern void QPointingDevice_Connect_GrabChanged(void* c_this, c_intptr slot);
	[LinkName("QPointingDevice_Tr2")]
	public static extern libqt_string QPointingDevice_Tr2(char8* s, char8* c);
	[LinkName("QPointingDevice_Tr3")]
	public static extern libqt_string QPointingDevice_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QPointingDevice_PrimaryPointingDevice1")]
	public static extern void* QPointingDevice_PrimaryPointingDevice1(libqt_string seatName);
	/// Delete this object from C++ memory
	[LinkName("QPointingDevice_Delete")]
	public static extern void QPointingDevice_Delete(void* self);
}