using System;
using System.Interop;
namespace Qt;

public class QPluginLoader
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QPluginLoader_new();
	}
	
	public ~this()
	{
		CQt.QPluginLoader_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QPluginLoader_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QPluginLoader_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QPluginLoader_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QPluginLoader_Tr(s);
	}
	
	public void* Instance()
	{
		return CQt.QPluginLoader_Instance(this.nativePtr);
	}
	
	public void MetaData()
	{
		CQt.QPluginLoader_MetaData(this.nativePtr);
	}
	
	public static void*[] StaticInstances()
	{
		return CQt.QPluginLoader_StaticInstances();
	}
	
	public static void[] StaticPlugins()
	{
		return CQt.QPluginLoader_StaticPlugins();
	}
	
	public bool Load()
	{
		return CQt.QPluginLoader_Load(this.nativePtr);
	}
	
	public bool Unload()
	{
		return CQt.QPluginLoader_Unload(this.nativePtr);
	}
	
	public bool IsLoaded()
	{
		return CQt.QPluginLoader_IsLoaded(this.nativePtr);
	}
	
	public void SetFileName(libqt_string fileName)
	{
		CQt.QPluginLoader_SetFileName(this.nativePtr, fileName);
	}
	
	public libqt_string FileName()
	{
		return CQt.QPluginLoader_FileName(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QPluginLoader_ErrorString(this.nativePtr);
	}
	
	public void SetLoadHints(int64 loadHints)
	{
		CQt.QPluginLoader_SetLoadHints(this.nativePtr, loadHints);
	}
	
	public int64 LoadHints()
	{
		return CQt.QPluginLoader_LoadHints(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QPluginLoader_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QPluginLoader_Tr3(s, c, n);
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
	[LinkName("QPluginLoader_new")]
	public static extern void* QPluginLoader_new();
	[LinkName("QPluginLoader_new2")]
	public static extern void* QPluginLoader_new2(libqt_string fileName);
	[LinkName("QPluginLoader_new3")]
	public static extern void* QPluginLoader_new3(void* parent);
	[LinkName("QPluginLoader_new4")]
	public static extern void* QPluginLoader_new4(libqt_string fileName, void* parent);
	[LinkName("QPluginLoader_MetaObject")]
	public static extern void* QPluginLoader_MetaObject(void* c_this);
	[LinkName("QPluginLoader_Metacast")]
	public static extern void* QPluginLoader_Metacast(void* c_this, char8[] param1);
	[LinkName("QPluginLoader_Metacall")]
	public static extern int32 QPluginLoader_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QPluginLoader_Tr")]
	public static extern libqt_string QPluginLoader_Tr(char8[] s);
	[LinkName("QPluginLoader_Instance")]
	public static extern void* QPluginLoader_Instance(void* c_this);
	[LinkName("QPluginLoader_MetaData")]
	public static extern void QPluginLoader_MetaData(void* c_this);
	[LinkName("QPluginLoader_StaticInstances")]
	public static extern void*[] QPluginLoader_StaticInstances();
	[LinkName("QPluginLoader_StaticPlugins")]
	public static extern void[] QPluginLoader_StaticPlugins();
	[LinkName("QPluginLoader_Load")]
	public static extern bool QPluginLoader_Load(void* c_this);
	[LinkName("QPluginLoader_Unload")]
	public static extern bool QPluginLoader_Unload(void* c_this);
	[LinkName("QPluginLoader_IsLoaded")]
	public static extern bool QPluginLoader_IsLoaded(void* c_this);
	[LinkName("QPluginLoader_SetFileName")]
	public static extern void QPluginLoader_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QPluginLoader_FileName")]
	public static extern libqt_string QPluginLoader_FileName(void* c_this);
	[LinkName("QPluginLoader_ErrorString")]
	public static extern libqt_string QPluginLoader_ErrorString(void* c_this);
	[LinkName("QPluginLoader_SetLoadHints")]
	public static extern void QPluginLoader_SetLoadHints(void* c_this, int64 loadHints);
	[LinkName("QPluginLoader_LoadHints")]
	public static extern int64 QPluginLoader_LoadHints(void* c_this);
	[LinkName("QPluginLoader_Tr2")]
	public static extern libqt_string QPluginLoader_Tr2(char8[] s, char8[] c);
	[LinkName("QPluginLoader_Tr3")]
	public static extern libqt_string QPluginLoader_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QPluginLoader_Delete")]
	public static extern void QPluginLoader_Delete(void* self);
}