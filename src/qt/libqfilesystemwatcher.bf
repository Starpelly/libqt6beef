using System;
using System.Interop;
namespace Qt;

public class QFileSystemWatcher
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QFileSystemWatcher_new();
	}
	
	public ~this()
	{
		CQt.QFileSystemWatcher_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QFileSystemWatcher_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QFileSystemWatcher_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QFileSystemWatcher_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QFileSystemWatcher_Tr(s);
	}
	
	public bool AddPath(libqt_string file)
	{
		return CQt.QFileSystemWatcher_AddPath(this.nativePtr, file);
	}
	
	public libqt_string[] AddPaths(libqt_string[] files)
	{
		return CQt.QFileSystemWatcher_AddPaths(this.nativePtr, files);
	}
	
	public bool RemovePath(libqt_string file)
	{
		return CQt.QFileSystemWatcher_RemovePath(this.nativePtr, file);
	}
	
	public libqt_string[] RemovePaths(libqt_string[] files)
	{
		return CQt.QFileSystemWatcher_RemovePaths(this.nativePtr, files);
	}
	
	public libqt_string[] Files()
	{
		return CQt.QFileSystemWatcher_Files(this.nativePtr);
	}
	
	public libqt_string[] Directories()
	{
		return CQt.QFileSystemWatcher_Directories(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QFileSystemWatcher_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QFileSystemWatcher_Tr3(s, c, n);
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
	[LinkName("QFileSystemWatcher_new")]
	public static extern void* QFileSystemWatcher_new();
	[LinkName("QFileSystemWatcher_new2")]
	public static extern void* QFileSystemWatcher_new2(libqt_string[] paths);
	[LinkName("QFileSystemWatcher_new3")]
	public static extern void* QFileSystemWatcher_new3(void* parent);
	[LinkName("QFileSystemWatcher_new4")]
	public static extern void* QFileSystemWatcher_new4(libqt_string[] paths, void* parent);
	[LinkName("QFileSystemWatcher_MetaObject")]
	public static extern void* QFileSystemWatcher_MetaObject(void* c_this);
	[LinkName("QFileSystemWatcher_Metacast")]
	public static extern void* QFileSystemWatcher_Metacast(void* c_this, char8[] param1);
	[LinkName("QFileSystemWatcher_Metacall")]
	public static extern int32 QFileSystemWatcher_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFileSystemWatcher_Tr")]
	public static extern libqt_string QFileSystemWatcher_Tr(char8[] s);
	[LinkName("QFileSystemWatcher_AddPath")]
	public static extern bool QFileSystemWatcher_AddPath(void* c_this, libqt_string file);
	[LinkName("QFileSystemWatcher_AddPaths")]
	public static extern libqt_string[] QFileSystemWatcher_AddPaths(void* c_this, libqt_string[] files);
	[LinkName("QFileSystemWatcher_RemovePath")]
	public static extern bool QFileSystemWatcher_RemovePath(void* c_this, libqt_string file);
	[LinkName("QFileSystemWatcher_RemovePaths")]
	public static extern libqt_string[] QFileSystemWatcher_RemovePaths(void* c_this, libqt_string[] files);
	[LinkName("QFileSystemWatcher_Files")]
	public static extern libqt_string[] QFileSystemWatcher_Files(void* c_this);
	[LinkName("QFileSystemWatcher_Directories")]
	public static extern libqt_string[] QFileSystemWatcher_Directories(void* c_this);
	[LinkName("QFileSystemWatcher_Tr2")]
	public static extern libqt_string QFileSystemWatcher_Tr2(char8[] s, char8[] c);
	[LinkName("QFileSystemWatcher_Tr3")]
	public static extern libqt_string QFileSystemWatcher_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QFileSystemWatcher_Delete")]
	public static extern void QFileSystemWatcher_Delete(void* self);
}