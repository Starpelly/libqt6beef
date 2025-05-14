using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputDevice__DeviceType
{
	Unknown = 0,
	Mouse = 1,
	TouchScreen = 2,
	TouchPad = 4,
	Puck = 8,
	Stylus = 16,
	Airbrush = 32,
	Keyboard = 4096,
	AllDevices = 2147483647,
}
[AllowDuplicates]
public enum QInputDevice__Capability
{
	None = 0,
	Position = 1,
	Area = 2,
	Pressure = 4,
	Velocity = 8,
	NormalizedPosition = 32,
	MouseEmulation = 64,
	PixelScroll = 128,
	Scroll = 256,
	Hover = 512,
	Rotation = 1024,
	XTilt = 2048,
	YTilt = 4096,
	TangentialPressure = 8192,
	ZPosition = 16384,
	All = 2147483647,
}
public interface IQInputDevice
{
	void* NativePtr { get; }
}
public struct QInputDevicePtr : IQInputDevice, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QInputDevice_new());
	}
	
	public void Dispose()
	{
		CQt.QInputDevice_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QInputDevice_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QInputDevice_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QInputDevice_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QInputDevice_Tr(s);
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
		return CQt.QInputDevice_HasCapability(this.nativePtr, (int64)cap);
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
	
	public bool OperatorEqual(IQInputDevice other)
	{
		return CQt.QInputDevice_OperatorEqual(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QInputDevice_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QInputDevice_Tr3(s, c, n);
	}
	
	public static void* PrimaryKeyboard1(String seatName)
	{
		return CQt.QInputDevice_PrimaryKeyboard1(libqt_string(seatName));
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
public class QInputDevice
{
	public QInputDevicePtr handle;
	
	public static implicit operator QInputDevicePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QInputDevicePtr.New();
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
		return QInputDevicePtr.Tr(s);
	}
	
	public libqt_string Name()
	{
		return this.handle.Name();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public int64 Capabilities()
	{
		return this.handle.Capabilities();
	}
	
	public bool HasCapability(int64 cap)
	{
		return this.handle.HasCapability(cap);
	}
	
	public int64 SystemId()
	{
		return this.handle.SystemId();
	}
	
	public libqt_string SeatName()
	{
		return this.handle.SeatName();
	}
	
	public void AvailableVirtualGeometry()
	{
		this.handle.AvailableVirtualGeometry();
	}
	
	public static libqt_string[] SeatNames()
	{
		return QInputDevicePtr.SeatNames();
	}
	
	public static void*[] Devices()
	{
		return QInputDevicePtr.Devices();
	}
	
	public static void* PrimaryKeyboard()
	{
		return QInputDevicePtr.PrimaryKeyboard();
	}
	
	public bool OperatorEqual(IQInputDevice other)
	{
		return this.handle.OperatorEqual(other);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QInputDevicePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QInputDevicePtr.Tr3(s, c, n);
	}
	
	public static void* PrimaryKeyboard1(String seatName)
	{
		return QInputDevicePtr.PrimaryKeyboard1(seatName);
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
		QInputDevicePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QInputDevicePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QInputDevicePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QInputDevicePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QInputDevice_new")]
	public static extern void* QInputDevice_new();
	[LinkName("QInputDevice_new2")]
	public static extern void* QInputDevice_new2(libqt_string name, int64 systemId, int64 typeVal);
	[LinkName("QInputDevice_new3")]
	public static extern void* QInputDevice_new3(void* parent);
	[LinkName("QInputDevice_new4")]
	public static extern void* QInputDevice_new4(libqt_string name, int64 systemId, int64 typeVal, libqt_string seatName);
	[LinkName("QInputDevice_new5")]
	public static extern void* QInputDevice_new5(libqt_string name, int64 systemId, int64 typeVal, libqt_string seatName, void* parent);
	[LinkName("QInputDevice_MetaObject")]
	public static extern void* QInputDevice_MetaObject(void* c_this);
	[LinkName("QInputDevice_Metacast")]
	public static extern void* QInputDevice_Metacast(void* c_this, char8* param1);
	[LinkName("QInputDevice_Metacall")]
	public static extern int32 QInputDevice_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QInputDevice_Tr")]
	public static extern libqt_string QInputDevice_Tr(char8* s);
	[LinkName("QInputDevice_Name")]
	public static extern libqt_string QInputDevice_Name(void* c_this);
	[LinkName("QInputDevice_Type")]
	public static extern int64 QInputDevice_Type(void* c_this);
	[LinkName("QInputDevice_Capabilities")]
	public static extern int64 QInputDevice_Capabilities(void* c_this);
	[LinkName("QInputDevice_HasCapability")]
	public static extern bool QInputDevice_HasCapability(void* c_this, int64 cap);
	[LinkName("QInputDevice_SystemId")]
	public static extern int64 QInputDevice_SystemId(void* c_this);
	[LinkName("QInputDevice_SeatName")]
	public static extern libqt_string QInputDevice_SeatName(void* c_this);
	[LinkName("QInputDevice_AvailableVirtualGeometry")]
	public static extern void QInputDevice_AvailableVirtualGeometry(void* c_this);
	[LinkName("QInputDevice_SeatNames")]
	public static extern libqt_string[] QInputDevice_SeatNames();
	[LinkName("QInputDevice_Devices")]
	public static extern void*[] QInputDevice_Devices();
	[LinkName("QInputDevice_PrimaryKeyboard")]
	public static extern void* QInputDevice_PrimaryKeyboard();
	[LinkName("QInputDevice_OperatorEqual")]
	public static extern bool QInputDevice_OperatorEqual(void* c_this, void* other);
	[LinkName("QInputDevice_Connect_AvailableVirtualGeometryChanged")]
	public static extern void QInputDevice_Connect_AvailableVirtualGeometryChanged(void* c_this, c_intptr slot);
	[LinkName("QInputDevice_Tr2")]
	public static extern libqt_string QInputDevice_Tr2(char8* s, char8* c);
	[LinkName("QInputDevice_Tr3")]
	public static extern libqt_string QInputDevice_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QInputDevice_PrimaryKeyboard1")]
	public static extern void* QInputDevice_PrimaryKeyboard1(libqt_string seatName);
	/// Delete this object from C++ memory
	[LinkName("QInputDevice_Delete")]
	public static extern void QInputDevice_Delete(void* self);
}