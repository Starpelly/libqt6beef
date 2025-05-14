using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSettings__Status
{
	NoError = 0,
	AccessError = 1,
	FormatError = 2,
}
[AllowDuplicates]
public enum QSettings__Format
{
	NativeFormat = 0,
	IniFormat = 1,
	InvalidFormat = 16,
	CustomFormat1 = 17,
	CustomFormat2 = 18,
	CustomFormat3 = 19,
	CustomFormat4 = 20,
	CustomFormat5 = 21,
	CustomFormat6 = 22,
	CustomFormat7 = 23,
	CustomFormat8 = 24,
	CustomFormat9 = 25,
	CustomFormat10 = 26,
	CustomFormat11 = 27,
	CustomFormat12 = 28,
	CustomFormat13 = 29,
	CustomFormat14 = 30,
	CustomFormat15 = 31,
	CustomFormat16 = 32,
}
[AllowDuplicates]
public enum QSettings__Scope
{
	UserScope = 0,
	SystemScope = 1,
}
public interface IQSettings
{
	void* NativePtr { get; }
}
public struct QSettingsPtr : IQSettings, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String organization)
	{
		return .(CQt.QSettings_new(libqt_string(organization)));
	}
	
	public void Dispose()
	{
		CQt.QSettings_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSettings_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSettings_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSettings_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSettings_Tr(s);
	}
	
	public void Clear()
	{
		CQt.QSettings_Clear(this.nativePtr);
	}
	
	public void Sync()
	{
		CQt.QSettings_Sync(this.nativePtr);
	}
	
	public int64 Status()
	{
		return CQt.QSettings_Status(this.nativePtr);
	}
	
	public bool IsAtomicSyncRequired()
	{
		return CQt.QSettings_IsAtomicSyncRequired(this.nativePtr);
	}
	
	public void SetAtomicSyncRequired(bool enable)
	{
		CQt.QSettings_SetAtomicSyncRequired(this.nativePtr, enable);
	}
	
	public void BeginGroup(char8* prefix)
	{
		CQt.QSettings_BeginGroup(this.nativePtr, prefix);
	}
	
	public void EndGroup()
	{
		CQt.QSettings_EndGroup(this.nativePtr);
	}
	
	public libqt_string Group()
	{
		return CQt.QSettings_Group(this.nativePtr);
	}
	
	public int32 BeginReadArray(char8* prefix)
	{
		return CQt.QSettings_BeginReadArray(this.nativePtr, prefix);
	}
	
	public void BeginWriteArray(char8* prefix)
	{
		CQt.QSettings_BeginWriteArray(this.nativePtr, prefix);
	}
	
	public void EndArray()
	{
		CQt.QSettings_EndArray(this.nativePtr);
	}
	
	public void SetArrayIndex(int32 i)
	{
		CQt.QSettings_SetArrayIndex(this.nativePtr, i);
	}
	
	public libqt_string[] AllKeys()
	{
		return CQt.QSettings_AllKeys(this.nativePtr);
	}
	
	public libqt_string[] ChildKeys()
	{
		return CQt.QSettings_ChildKeys(this.nativePtr);
	}
	
	public libqt_string[] ChildGroups()
	{
		return CQt.QSettings_ChildGroups(this.nativePtr);
	}
	
	public bool IsWritable()
	{
		return CQt.QSettings_IsWritable(this.nativePtr);
	}
	
	public void SetValue(char8* key, IQVariant value)
	{
		CQt.QSettings_SetValue(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Value(char8* key, IQVariant defaultValue)
	{
		CQt.QSettings_Value(this.nativePtr, key, (defaultValue == default || defaultValue.NativePtr == default) ? default : defaultValue.NativePtr);
	}
	
	public void ValueWithKey(char8* key)
	{
		CQt.QSettings_ValueWithKey(this.nativePtr, key);
	}
	
	public void Remove(char8* key)
	{
		CQt.QSettings_Remove(this.nativePtr, key);
	}
	
	public bool Contains(char8* key)
	{
		return CQt.QSettings_Contains(this.nativePtr, key);
	}
	
	public void SetFallbacksEnabled(bool b)
	{
		CQt.QSettings_SetFallbacksEnabled(this.nativePtr, b);
	}
	
	public bool FallbacksEnabled()
	{
		return CQt.QSettings_FallbacksEnabled(this.nativePtr);
	}
	
	public libqt_string FileName()
	{
		return CQt.QSettings_FileName(this.nativePtr);
	}
	
	public int64 Format()
	{
		return CQt.QSettings_Format(this.nativePtr);
	}
	
	public int64 Scope()
	{
		return CQt.QSettings_Scope(this.nativePtr);
	}
	
	public libqt_string OrganizationName()
	{
		return CQt.QSettings_OrganizationName(this.nativePtr);
	}
	
	public libqt_string ApplicationName()
	{
		return CQt.QSettings_ApplicationName(this.nativePtr);
	}
	
	public static void SetDefaultFormat(int64 format)
	{
		CQt.QSettings_SetDefaultFormat((int64)format);
	}
	
	public static int64 DefaultFormat()
	{
		return CQt.QSettings_DefaultFormat();
	}
	
	public static void SetPath(int64 format, int64 _scope, String path)
	{
		CQt.QSettings_SetPath((int64)format, (int64)_scope, libqt_string(path));
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QSettings_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSettings_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSettings_Tr3(s, c, n);
	}
	
	public void BeginWriteArray2(char8* prefix, int32 size)
	{
		CQt.QSettings_BeginWriteArray2(this.nativePtr, prefix, size);
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
public class QSettings
{
	public QSettingsPtr handle;
	
	public static implicit operator QSettingsPtr(Self self)
	{
		return self.handle;
	}
	
	public this(String organization)
	{
		this.handle = QSettingsPtr.New(organization);
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
		return QSettingsPtr.Tr(s);
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public void Sync()
	{
		this.handle.Sync();
	}
	
	public int64 Status()
	{
		return this.handle.Status();
	}
	
	public bool IsAtomicSyncRequired()
	{
		return this.handle.IsAtomicSyncRequired();
	}
	
	public void SetAtomicSyncRequired(bool enable)
	{
		this.handle.SetAtomicSyncRequired(enable);
	}
	
	public void BeginGroup(char8* prefix)
	{
		this.handle.BeginGroup(prefix);
	}
	
	public void EndGroup()
	{
		this.handle.EndGroup();
	}
	
	public libqt_string Group()
	{
		return this.handle.Group();
	}
	
	public int32 BeginReadArray(char8* prefix)
	{
		return this.handle.BeginReadArray(prefix);
	}
	
	public void BeginWriteArray(char8* prefix)
	{
		this.handle.BeginWriteArray(prefix);
	}
	
	public void EndArray()
	{
		this.handle.EndArray();
	}
	
	public void SetArrayIndex(int32 i)
	{
		this.handle.SetArrayIndex(i);
	}
	
	public libqt_string[] AllKeys()
	{
		return this.handle.AllKeys();
	}
	
	public libqt_string[] ChildKeys()
	{
		return this.handle.ChildKeys();
	}
	
	public libqt_string[] ChildGroups()
	{
		return this.handle.ChildGroups();
	}
	
	public bool IsWritable()
	{
		return this.handle.IsWritable();
	}
	
	public void SetValue(char8* key, IQVariant value)
	{
		this.handle.SetValue(key, value);
	}
	
	public void Value(char8* key, IQVariant defaultValue)
	{
		this.handle.Value(key, defaultValue);
	}
	
	public void ValueWithKey(char8* key)
	{
		this.handle.ValueWithKey(key);
	}
	
	public void Remove(char8* key)
	{
		this.handle.Remove(key);
	}
	
	public bool Contains(char8* key)
	{
		return this.handle.Contains(key);
	}
	
	public void SetFallbacksEnabled(bool b)
	{
		this.handle.SetFallbacksEnabled(b);
	}
	
	public bool FallbacksEnabled()
	{
		return this.handle.FallbacksEnabled();
	}
	
	public libqt_string FileName()
	{
		return this.handle.FileName();
	}
	
	public int64 Format()
	{
		return this.handle.Format();
	}
	
	public int64 Scope()
	{
		return this.handle.Scope();
	}
	
	public libqt_string OrganizationName()
	{
		return this.handle.OrganizationName();
	}
	
	public libqt_string ApplicationName()
	{
		return this.handle.ApplicationName();
	}
	
	public static void SetDefaultFormat(int64 format)
	{
		QSettingsPtr.SetDefaultFormat(format);
	}
	
	public static int64 DefaultFormat()
	{
		return QSettingsPtr.DefaultFormat();
	}
	
	public static void SetPath(int64 format, int64 _scope, String path)
	{
		QSettingsPtr.SetPath(format, _scope, path);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSettingsPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSettingsPtr.Tr3(s, c, n);
	}
	
	public void BeginWriteArray2(char8* prefix, int32 size)
	{
		this.handle.BeginWriteArray2(prefix, size);
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
		QSettingsPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSettingsPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSettingsPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSettingsPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSettings_new")]
	public static extern void* QSettings_new(libqt_string organization);
	[LinkName("QSettings_new2")]
	public static extern void* QSettings_new2(int64 _scope, libqt_string organization);
	[LinkName("QSettings_new3")]
	public static extern void* QSettings_new3(int64 format, int64 _scope, libqt_string organization);
	[LinkName("QSettings_new4")]
	public static extern void* QSettings_new4(libqt_string fileName, int64 format);
	[LinkName("QSettings_new5")]
	public static extern void* QSettings_new5();
	[LinkName("QSettings_new6")]
	public static extern void* QSettings_new6(int64 _scope);
	[LinkName("QSettings_new7")]
	public static extern void* QSettings_new7(libqt_string organization, libqt_string application);
	[LinkName("QSettings_new8")]
	public static extern void* QSettings_new8(libqt_string organization, libqt_string application, void* parent);
	[LinkName("QSettings_new9")]
	public static extern void* QSettings_new9(int64 _scope, libqt_string organization, libqt_string application);
	[LinkName("QSettings_new10")]
	public static extern void* QSettings_new10(int64 _scope, libqt_string organization, libqt_string application, void* parent);
	[LinkName("QSettings_new11")]
	public static extern void* QSettings_new11(int64 format, int64 _scope, libqt_string organization, libqt_string application);
	[LinkName("QSettings_new12")]
	public static extern void* QSettings_new12(int64 format, int64 _scope, libqt_string organization, libqt_string application, void* parent);
	[LinkName("QSettings_new13")]
	public static extern void* QSettings_new13(libqt_string fileName, int64 format, void* parent);
	[LinkName("QSettings_new14")]
	public static extern void* QSettings_new14(void* parent);
	[LinkName("QSettings_new15")]
	public static extern void* QSettings_new15(int64 _scope, void* parent);
	[LinkName("QSettings_MetaObject")]
	public static extern void* QSettings_MetaObject(void* c_this);
	[LinkName("QSettings_Metacast")]
	public static extern void* QSettings_Metacast(void* c_this, char8* param1);
	[LinkName("QSettings_Metacall")]
	public static extern int32 QSettings_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSettings_Tr")]
	public static extern libqt_string QSettings_Tr(char8* s);
	[LinkName("QSettings_Clear")]
	public static extern void QSettings_Clear(void* c_this);
	[LinkName("QSettings_Sync")]
	public static extern void QSettings_Sync(void* c_this);
	[LinkName("QSettings_Status")]
	public static extern int64 QSettings_Status(void* c_this);
	[LinkName("QSettings_IsAtomicSyncRequired")]
	public static extern bool QSettings_IsAtomicSyncRequired(void* c_this);
	[LinkName("QSettings_SetAtomicSyncRequired")]
	public static extern void QSettings_SetAtomicSyncRequired(void* c_this, bool enable);
	[LinkName("QSettings_BeginGroup")]
	public static extern void QSettings_BeginGroup(void* c_this, char8* prefix);
	[LinkName("QSettings_EndGroup")]
	public static extern void QSettings_EndGroup(void* c_this);
	[LinkName("QSettings_Group")]
	public static extern libqt_string QSettings_Group(void* c_this);
	[LinkName("QSettings_BeginReadArray")]
	public static extern int32 QSettings_BeginReadArray(void* c_this, char8* prefix);
	[LinkName("QSettings_BeginWriteArray")]
	public static extern void QSettings_BeginWriteArray(void* c_this, char8* prefix);
	[LinkName("QSettings_EndArray")]
	public static extern void QSettings_EndArray(void* c_this);
	[LinkName("QSettings_SetArrayIndex")]
	public static extern void QSettings_SetArrayIndex(void* c_this, int32 i);
	[LinkName("QSettings_AllKeys")]
	public static extern libqt_string[] QSettings_AllKeys(void* c_this);
	[LinkName("QSettings_ChildKeys")]
	public static extern libqt_string[] QSettings_ChildKeys(void* c_this);
	[LinkName("QSettings_ChildGroups")]
	public static extern libqt_string[] QSettings_ChildGroups(void* c_this);
	[LinkName("QSettings_IsWritable")]
	public static extern bool QSettings_IsWritable(void* c_this);
	[LinkName("QSettings_SetValue")]
	public static extern void QSettings_SetValue(void* c_this, char8* key, void* value);
	[LinkName("QSettings_Value")]
	public static extern void QSettings_Value(void* c_this, char8* key, void* defaultValue);
	[LinkName("QSettings_ValueWithKey")]
	public static extern void QSettings_ValueWithKey(void* c_this, char8* key);
	[LinkName("QSettings_Remove")]
	public static extern void QSettings_Remove(void* c_this, char8* key);
	[LinkName("QSettings_Contains")]
	public static extern bool QSettings_Contains(void* c_this, char8* key);
	[LinkName("QSettings_SetFallbacksEnabled")]
	public static extern void QSettings_SetFallbacksEnabled(void* c_this, bool b);
	[LinkName("QSettings_FallbacksEnabled")]
	public static extern bool QSettings_FallbacksEnabled(void* c_this);
	[LinkName("QSettings_FileName")]
	public static extern libqt_string QSettings_FileName(void* c_this);
	[LinkName("QSettings_Format")]
	public static extern int64 QSettings_Format(void* c_this);
	[LinkName("QSettings_Scope")]
	public static extern int64 QSettings_Scope(void* c_this);
	[LinkName("QSettings_OrganizationName")]
	public static extern libqt_string QSettings_OrganizationName(void* c_this);
	[LinkName("QSettings_ApplicationName")]
	public static extern libqt_string QSettings_ApplicationName(void* c_this);
	[LinkName("QSettings_SetDefaultFormat")]
	public static extern void QSettings_SetDefaultFormat(int64 format);
	[LinkName("QSettings_DefaultFormat")]
	public static extern int64 QSettings_DefaultFormat();
	[LinkName("QSettings_SetPath")]
	public static extern void QSettings_SetPath(int64 format, int64 _scope, libqt_string path);
	[LinkName("QSettings_Event")]
	public static extern bool QSettings_Event(void* c_this, void* event);
	[LinkName("QSettings_Tr2")]
	public static extern libqt_string QSettings_Tr2(char8* s, char8* c);
	[LinkName("QSettings_Tr3")]
	public static extern libqt_string QSettings_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QSettings_BeginWriteArray2")]
	public static extern void QSettings_BeginWriteArray2(void* c_this, char8* prefix, int32 size);
	/// Delete this object from C++ memory
	[LinkName("QSettings_Delete")]
	public static extern void QSettings_Delete(void* self);
}