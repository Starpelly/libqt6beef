using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSharedMemory__AccessMode
{
	ReadOnly = 0,
	ReadWrite = 1,
}
[AllowDuplicates]
public enum QSharedMemory__SharedMemoryError
{
	NoError = 0,
	PermissionDenied = 1,
	InvalidSize = 2,
	KeyError = 3,
	AlreadyExists = 4,
	NotFound = 5,
	LockError = 6,
	OutOfResources = 7,
	UnknownError = 8,
}
public class QSharedMemory
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSharedMemory_new();
	}
	
	public ~this()
	{
		CQt.QSharedMemory_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSharedMemory_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSharedMemory_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSharedMemory_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSharedMemory_Tr(s);
	}
	
	public void SetKey(libqt_string key)
	{
		CQt.QSharedMemory_SetKey(this.nativePtr, key);
	}
	
	public libqt_string Key()
	{
		return CQt.QSharedMemory_Key(this.nativePtr);
	}
	
	public void SetNativeKey(libqt_string key)
	{
		CQt.QSharedMemory_SetNativeKey(this.nativePtr, key);
	}
	
	public libqt_string NativeKey()
	{
		return CQt.QSharedMemory_NativeKey(this.nativePtr);
	}
	
	public bool Create(int32 size)
	{
		return CQt.QSharedMemory_Create(this.nativePtr, size);
	}
	
	public int32 Size()
	{
		return CQt.QSharedMemory_Size(this.nativePtr);
	}
	
	public bool Attach()
	{
		return CQt.QSharedMemory_Attach(this.nativePtr);
	}
	
	public bool IsAttached()
	{
		return CQt.QSharedMemory_IsAttached(this.nativePtr);
	}
	
	public bool Detach()
	{
		return CQt.QSharedMemory_Detach(this.nativePtr);
	}
	
	public void* Data()
	{
		return CQt.QSharedMemory_Data(this.nativePtr);
	}
	
	public void* ConstData()
	{
		return CQt.QSharedMemory_ConstData(this.nativePtr);
	}
	
	public void* Data2()
	{
		return CQt.QSharedMemory_Data2(this.nativePtr);
	}
	
	public bool Lock()
	{
		return CQt.QSharedMemory_Lock(this.nativePtr);
	}
	
	public bool Unlock()
	{
		return CQt.QSharedMemory_Unlock(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QSharedMemory_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QSharedMemory_ErrorString(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSharedMemory_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSharedMemory_Tr3(s, c, n);
	}
	
	public bool Create2(int32 size, int64 mode)
	{
		return CQt.QSharedMemory_Create2(this.nativePtr, size, mode);
	}
	
	public bool Attach1(int64 mode)
	{
		return CQt.QSharedMemory_Attach1(this.nativePtr, mode);
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
	[LinkName("QSharedMemory_new")]
	public static extern void* QSharedMemory_new();
	[LinkName("QSharedMemory_new2")]
	public static extern void* QSharedMemory_new2(libqt_string key);
	[LinkName("QSharedMemory_new3")]
	public static extern void* QSharedMemory_new3(void* parent);
	[LinkName("QSharedMemory_new4")]
	public static extern void* QSharedMemory_new4(libqt_string key, void* parent);
	[LinkName("QSharedMemory_MetaObject")]
	public static extern void* QSharedMemory_MetaObject(void* c_this);
	[LinkName("QSharedMemory_Metacast")]
	public static extern void* QSharedMemory_Metacast(void* c_this, char8[] param1);
	[LinkName("QSharedMemory_Metacall")]
	public static extern int32 QSharedMemory_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSharedMemory_Tr")]
	public static extern libqt_string QSharedMemory_Tr(char8[] s);
	[LinkName("QSharedMemory_SetKey")]
	public static extern void QSharedMemory_SetKey(void* c_this, libqt_string key);
	[LinkName("QSharedMemory_Key")]
	public static extern libqt_string QSharedMemory_Key(void* c_this);
	[LinkName("QSharedMemory_SetNativeKey")]
	public static extern void QSharedMemory_SetNativeKey(void* c_this, libqt_string key);
	[LinkName("QSharedMemory_NativeKey")]
	public static extern libqt_string QSharedMemory_NativeKey(void* c_this);
	[LinkName("QSharedMemory_Create")]
	public static extern bool QSharedMemory_Create(void* c_this, int32 size);
	[LinkName("QSharedMemory_Size")]
	public static extern int32 QSharedMemory_Size(void* c_this);
	[LinkName("QSharedMemory_Attach")]
	public static extern bool QSharedMemory_Attach(void* c_this);
	[LinkName("QSharedMemory_IsAttached")]
	public static extern bool QSharedMemory_IsAttached(void* c_this);
	[LinkName("QSharedMemory_Detach")]
	public static extern bool QSharedMemory_Detach(void* c_this);
	[LinkName("QSharedMemory_Data")]
	public static extern void* QSharedMemory_Data(void* c_this);
	[LinkName("QSharedMemory_ConstData")]
	public static extern void* QSharedMemory_ConstData(void* c_this);
	[LinkName("QSharedMemory_Data2")]
	public static extern void* QSharedMemory_Data2(void* c_this);
	[LinkName("QSharedMemory_Lock")]
	public static extern bool QSharedMemory_Lock(void* c_this);
	[LinkName("QSharedMemory_Unlock")]
	public static extern bool QSharedMemory_Unlock(void* c_this);
	[LinkName("QSharedMemory_Error")]
	public static extern int64 QSharedMemory_Error(void* c_this);
	[LinkName("QSharedMemory_ErrorString")]
	public static extern libqt_string QSharedMemory_ErrorString(void* c_this);
	[LinkName("QSharedMemory_Tr2")]
	public static extern libqt_string QSharedMemory_Tr2(char8[] s, char8[] c);
	[LinkName("QSharedMemory_Tr3")]
	public static extern libqt_string QSharedMemory_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSharedMemory_Create2")]
	public static extern bool QSharedMemory_Create2(void* c_this, int32 size, int64 mode);
	[LinkName("QSharedMemory_Attach1")]
	public static extern bool QSharedMemory_Attach1(void* c_this, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QSharedMemory_Delete")]
	public static extern void QSharedMemory_Delete(void* self);
}