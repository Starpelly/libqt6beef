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
public interface IQSharedMemory
{
	void* NativePtr { get; }
}
public struct QSharedMemoryPtr : IQSharedMemory, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSharedMemory_new());
	}
	
	public void Dispose()
	{
		CQt.QSharedMemory_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSharedMemory_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSharedMemory_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSharedMemory_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSharedMemory_Tr(s);
	}
	
	public void SetKey(String key)
	{
		CQt.QSharedMemory_SetKey(this.nativePtr, libqt_string(key));
	}
	
	public libqt_string Key()
	{
		return CQt.QSharedMemory_Key(this.nativePtr);
	}
	
	public void SetNativeKey(String key)
	{
		CQt.QSharedMemory_SetNativeKey(this.nativePtr, libqt_string(key));
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
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSharedMemory_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSharedMemory_Tr3(s, c, n);
	}
	
	public bool Create2(int32 size, int64 mode)
	{
		return CQt.QSharedMemory_Create2(this.nativePtr, size, (int64)mode);
	}
	
	public bool Attach1(int64 mode)
	{
		return CQt.QSharedMemory_Attach1(this.nativePtr, (int64)mode);
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
public class QSharedMemory
{
	public QSharedMemoryPtr handle;
	
	public static implicit operator QSharedMemoryPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSharedMemoryPtr.New();
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
		return QSharedMemoryPtr.Tr(s);
	}
	
	public void SetKey(String key)
	{
		this.handle.SetKey(key);
	}
	
	public libqt_string Key()
	{
		return this.handle.Key();
	}
	
	public void SetNativeKey(String key)
	{
		this.handle.SetNativeKey(key);
	}
	
	public libqt_string NativeKey()
	{
		return this.handle.NativeKey();
	}
	
	public bool Create(int32 size)
	{
		return this.handle.Create(size);
	}
	
	public int32 Size()
	{
		return this.handle.Size();
	}
	
	public bool Attach()
	{
		return this.handle.Attach();
	}
	
	public bool IsAttached()
	{
		return this.handle.IsAttached();
	}
	
	public bool Detach()
	{
		return this.handle.Detach();
	}
	
	public void* Data()
	{
		return this.handle.Data();
	}
	
	public void* ConstData()
	{
		return this.handle.ConstData();
	}
	
	public void* Data2()
	{
		return this.handle.Data2();
	}
	
	public bool Lock()
	{
		return this.handle.Lock();
	}
	
	public bool Unlock()
	{
		return this.handle.Unlock();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSharedMemoryPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSharedMemoryPtr.Tr3(s, c, n);
	}
	
	public bool Create2(int32 size, int64 mode)
	{
		return this.handle.Create2(size, mode);
	}
	
	public bool Attach1(int64 mode)
	{
		return this.handle.Attach1(mode);
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
		QSharedMemoryPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSharedMemoryPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSharedMemoryPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSharedMemoryPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QSharedMemory_Metacast(void* c_this, char8* param1);
	[LinkName("QSharedMemory_Metacall")]
	public static extern int32 QSharedMemory_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSharedMemory_Tr")]
	public static extern libqt_string QSharedMemory_Tr(char8* s);
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
	public static extern libqt_string QSharedMemory_Tr2(char8* s, char8* c);
	[LinkName("QSharedMemory_Tr3")]
	public static extern libqt_string QSharedMemory_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QSharedMemory_Create2")]
	public static extern bool QSharedMemory_Create2(void* c_this, int32 size, int64 mode);
	[LinkName("QSharedMemory_Attach1")]
	public static extern bool QSharedMemory_Attach1(void* c_this, int64 mode);
	/// Delete this object from C++ memory
	[LinkName("QSharedMemory_Delete")]
	public static extern void QSharedMemory_Delete(void* self);
}