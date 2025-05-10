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
public class QInputDevice
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QInputDevice_new();
	}
	
	public ~this()
	{
		CQt.QInputDevice_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QInputDevice_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QInputDevice_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QInputDevice_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public bool OperatorEqual(void* other)
	{
		return CQt.QInputDevice_OperatorEqual(this.nativePtr, other);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QInputDevice_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QInputDevice_Tr3(s, c, n);
	}
	
	public static void* PrimaryKeyboard1(libqt_string seatName)
	{
		return CQt.QInputDevice_PrimaryKeyboard1(seatName);
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
	public static extern void* QInputDevice_Metacast(void* c_this, char8[] param1);
	[LinkName("QInputDevice_Metacall")]
	public static extern int32 QInputDevice_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QInputDevice_Tr")]
	public static extern libqt_string QInputDevice_Tr(char8[] s);
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
	public static extern libqt_string QInputDevice_Tr2(char8[] s, char8[] c);
	[LinkName("QInputDevice_Tr3")]
	public static extern libqt_string QInputDevice_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QInputDevice_PrimaryKeyboard1")]
	public static extern void* QInputDevice_PrimaryKeyboard1(libqt_string seatName);
	/// Delete this object from C++ memory
	[LinkName("QInputDevice_Delete")]
	public static extern void QInputDevice_Delete(void* self);
}