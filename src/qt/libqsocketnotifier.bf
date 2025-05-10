using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSocketNotifier__Type
{
	Read = 0,
	Write = 1,
	Exception = 2,
}
public interface IQSocketNotifier
{
	void* NativePtr { get; }
}
public class QSocketNotifier : IQSocketNotifier, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(int64 param1)
	{
		this.nativePtr = CQt.QSocketNotifier_new(param1);
	}
	
	public ~this()
	{
		CQt.QSocketNotifier_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSocketNotifier_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QSocketNotifier_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSocketNotifier_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSocketNotifier_Tr(s);
	}
	
	public void SetSocket(c_uintptr socket)
	{
		CQt.QSocketNotifier_SetSocket(this.nativePtr, socket);
	}
	
	public c_uintptr Socket()
	{
		return CQt.QSocketNotifier_Socket(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QSocketNotifier_Type(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QSocketNotifier_IsValid(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QSocketNotifier_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QSocketNotifier_SetEnabled(this.nativePtr, enabled);
	}
	
	public virtual bool Event(IQEvent param1)
	{
		return CQt.QSocketNotifier_Event(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSocketNotifier_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSocketNotifier_Tr3(s, c, n);
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
	[LinkName("QSocketNotifier_new")]
	public static extern void* QSocketNotifier_new(int64 param1);
	[LinkName("QSocketNotifier_new2")]
	public static extern void* QSocketNotifier_new2(c_uintptr socket, int64 param2);
	[LinkName("QSocketNotifier_new3")]
	public static extern void* QSocketNotifier_new3(int64 param1, void* parent);
	[LinkName("QSocketNotifier_new4")]
	public static extern void* QSocketNotifier_new4(c_uintptr socket, int64 param2, void* parent);
	[LinkName("QSocketNotifier_MetaObject")]
	public static extern void* QSocketNotifier_MetaObject(void* c_this);
	[LinkName("QSocketNotifier_Metacast")]
	public static extern void* QSocketNotifier_Metacast(void* c_this, char8* param1);
	[LinkName("QSocketNotifier_Metacall")]
	public static extern int32 QSocketNotifier_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSocketNotifier_Tr")]
	public static extern libqt_string QSocketNotifier_Tr(char8* s);
	[LinkName("QSocketNotifier_SetSocket")]
	public static extern void QSocketNotifier_SetSocket(void* c_this, c_uintptr socket);
	[LinkName("QSocketNotifier_Socket")]
	public static extern c_uintptr QSocketNotifier_Socket(void* c_this);
	[LinkName("QSocketNotifier_Type")]
	public static extern int64 QSocketNotifier_Type(void* c_this);
	[LinkName("QSocketNotifier_IsValid")]
	public static extern bool QSocketNotifier_IsValid(void* c_this);
	[LinkName("QSocketNotifier_IsEnabled")]
	public static extern bool QSocketNotifier_IsEnabled(void* c_this);
	[LinkName("QSocketNotifier_SetEnabled")]
	public static extern void QSocketNotifier_SetEnabled(void* c_this, bool enabled);
	[LinkName("QSocketNotifier_Event")]
	public static extern bool QSocketNotifier_Event(void* c_this, void* param1);
	[LinkName("QSocketNotifier_Tr2")]
	public static extern libqt_string QSocketNotifier_Tr2(char8* s, char8* c);
	[LinkName("QSocketNotifier_Tr3")]
	public static extern libqt_string QSocketNotifier_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSocketNotifier_Delete")]
	public static extern void QSocketNotifier_Delete(void* self);
}
public interface IQSocketDescriptor
{
	void* NativePtr { get; }
}
public class QSocketDescriptor : IQSocketDescriptor
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQSocketDescriptor other)
	{
		this.nativePtr = CQt.QSocketDescriptor_new((other == default) ? default : (void*)other.NativePtr);
	}
	
	public ~this()
	{
		CQt.QSocketDescriptor_Delete(this.nativePtr);
	}
	
	public int32 ToInt()
	{
		return CQt.QSocketDescriptor_ToInt(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QSocketDescriptor_IsValid(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QSocketDescriptor_new")]
	public static extern void* QSocketDescriptor_new(void* other);
	[LinkName("QSocketDescriptor_new2")]
	public static extern void* QSocketDescriptor_new2(void* other);
	[LinkName("QSocketDescriptor_new3")]
	public static extern void* QSocketDescriptor_new3();
	[LinkName("QSocketDescriptor_new4")]
	public static extern void* QSocketDescriptor_new4(void* param1);
	[LinkName("QSocketDescriptor_new5")]
	public static extern void* QSocketDescriptor_new5(int32 descriptor);
	[LinkName("QSocketDescriptor_ToInt")]
	public static extern int32 QSocketDescriptor_ToInt(void* c_this);
	[LinkName("QSocketDescriptor_IsValid")]
	public static extern bool QSocketDescriptor_IsValid(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSocketDescriptor_Delete")]
	public static extern void QSocketDescriptor_Delete(void* self);
}