using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLibrary__LoadHint
{
	ResolveAllSymbolsHint = 1,
	ExportExternalSymbolsHint = 2,
	LoadArchiveMemberHint = 4,
	PreventUnloadHint = 8,
	DeepBindHint = 16,
}
public class QLibrary
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QLibrary_new();
	}
	
	public ~this()
	{
		CQt.QLibrary_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QLibrary_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QLibrary_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QLibrary_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QLibrary_Tr(s);
	}
	
	public bool Load()
	{
		return CQt.QLibrary_Load(this.nativePtr);
	}
	
	public bool Unload()
	{
		return CQt.QLibrary_Unload(this.nativePtr);
	}
	
	public bool IsLoaded()
	{
		return CQt.QLibrary_IsLoaded(this.nativePtr);
	}
	
	public static bool IsLibrary(libqt_string fileName)
	{
		return CQt.QLibrary_IsLibrary(fileName);
	}
	
	public void SetFileName(libqt_string fileName)
	{
		CQt.QLibrary_SetFileName(this.nativePtr, fileName);
	}
	
	public libqt_string FileName()
	{
		return CQt.QLibrary_FileName(this.nativePtr);
	}
	
	public void SetFileNameAndVersion(libqt_string fileName, int32 verNum)
	{
		CQt.QLibrary_SetFileNameAndVersion(this.nativePtr, fileName, verNum);
	}
	
	public void SetFileNameAndVersion2(libqt_string fileName, libqt_string version)
	{
		CQt.QLibrary_SetFileNameAndVersion2(this.nativePtr, fileName, version);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QLibrary_ErrorString(this.nativePtr);
	}
	
	public void SetLoadHints(int64 hints)
	{
		CQt.QLibrary_SetLoadHints(this.nativePtr, hints);
	}
	
	public int64 LoadHints()
	{
		return CQt.QLibrary_LoadHints(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QLibrary_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QLibrary_Tr3(s, c, n);
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
	[LinkName("QLibrary_new")]
	public static extern void* QLibrary_new();
	[LinkName("QLibrary_new2")]
	public static extern void* QLibrary_new2(libqt_string fileName);
	[LinkName("QLibrary_new3")]
	public static extern void* QLibrary_new3(libqt_string fileName, int32 verNum);
	[LinkName("QLibrary_new4")]
	public static extern void* QLibrary_new4(libqt_string fileName, libqt_string version);
	[LinkName("QLibrary_new5")]
	public static extern void* QLibrary_new5(void* parent);
	[LinkName("QLibrary_new6")]
	public static extern void* QLibrary_new6(libqt_string fileName, void* parent);
	[LinkName("QLibrary_new7")]
	public static extern void* QLibrary_new7(libqt_string fileName, int32 verNum, void* parent);
	[LinkName("QLibrary_new8")]
	public static extern void* QLibrary_new8(libqt_string fileName, libqt_string version, void* parent);
	[LinkName("QLibrary_MetaObject")]
	public static extern void* QLibrary_MetaObject(void* c_this);
	[LinkName("QLibrary_Metacast")]
	public static extern void* QLibrary_Metacast(void* c_this, char8[] param1);
	[LinkName("QLibrary_Metacall")]
	public static extern int32 QLibrary_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QLibrary_Tr")]
	public static extern libqt_string QLibrary_Tr(char8[] s);
	[LinkName("QLibrary_Load")]
	public static extern bool QLibrary_Load(void* c_this);
	[LinkName("QLibrary_Unload")]
	public static extern bool QLibrary_Unload(void* c_this);
	[LinkName("QLibrary_IsLoaded")]
	public static extern bool QLibrary_IsLoaded(void* c_this);
	[LinkName("QLibrary_IsLibrary")]
	public static extern bool QLibrary_IsLibrary(libqt_string fileName);
	[LinkName("QLibrary_SetFileName")]
	public static extern void QLibrary_SetFileName(void* c_this, libqt_string fileName);
	[LinkName("QLibrary_FileName")]
	public static extern libqt_string QLibrary_FileName(void* c_this);
	[LinkName("QLibrary_SetFileNameAndVersion")]
	public static extern void QLibrary_SetFileNameAndVersion(void* c_this, libqt_string fileName, int32 verNum);
	[LinkName("QLibrary_SetFileNameAndVersion2")]
	public static extern void QLibrary_SetFileNameAndVersion2(void* c_this, libqt_string fileName, libqt_string version);
	[LinkName("QLibrary_ErrorString")]
	public static extern libqt_string QLibrary_ErrorString(void* c_this);
	[LinkName("QLibrary_SetLoadHints")]
	public static extern void QLibrary_SetLoadHints(void* c_this, int64 hints);
	[LinkName("QLibrary_LoadHints")]
	public static extern int64 QLibrary_LoadHints(void* c_this);
	[LinkName("QLibrary_Tr2")]
	public static extern libqt_string QLibrary_Tr2(char8[] s, char8[] c);
	[LinkName("QLibrary_Tr3")]
	public static extern libqt_string QLibrary_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QLibrary_Delete")]
	public static extern void QLibrary_Delete(void* self);
}