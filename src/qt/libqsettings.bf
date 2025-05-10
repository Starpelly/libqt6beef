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
public class QSettings
{
	protected void* nativePtr;
	
	public this(libqt_string organization)
	{
		this.nativePtr = CQt.QSettings_new(organization);
	}
	
	public ~this()
	{
		CQt.QSettings_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSettings_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSettings_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSettings_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void BeginGroup(void prefix)
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
	
	public int32 BeginReadArray(void prefix)
	{
		return CQt.QSettings_BeginReadArray(this.nativePtr, prefix);
	}
	
	public void BeginWriteArray(void prefix)
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
	
	public void SetValue(void key, void* value)
	{
		CQt.QSettings_SetValue(this.nativePtr, key, value);
	}
	
	public void Value(void key, void* defaultValue)
	{
		CQt.QSettings_Value(this.nativePtr, key, defaultValue);
	}
	
	public void ValueWithKey(void key)
	{
		CQt.QSettings_ValueWithKey(this.nativePtr, key);
	}
	
	public void Remove(void key)
	{
		CQt.QSettings_Remove(this.nativePtr, key);
	}
	
	public bool Contains(void key)
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
		CQt.QSettings_SetDefaultFormat(format);
	}
	
	public static int64 DefaultFormat()
	{
		return CQt.QSettings_DefaultFormat();
	}
	
	public static void SetPath(int64 format, int64 _scope, libqt_string path)
	{
		CQt.QSettings_SetPath(format, _scope, path);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QSettings_Event(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSettings_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSettings_Tr3(s, c, n);
	}
	
	public void BeginWriteArray2(void prefix, int32 size)
	{
		CQt.QSettings_BeginWriteArray2(this.nativePtr, prefix, size);
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
	public static extern void* QSettings_Metacast(void* c_this, char8[] param1);
	[LinkName("QSettings_Metacall")]
	public static extern int32 QSettings_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSettings_Tr")]
	public static extern libqt_string QSettings_Tr(char8[] s);
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
	public static extern void QSettings_BeginGroup(void* c_this, void prefix);
	[LinkName("QSettings_EndGroup")]
	public static extern void QSettings_EndGroup(void* c_this);
	[LinkName("QSettings_Group")]
	public static extern libqt_string QSettings_Group(void* c_this);
	[LinkName("QSettings_BeginReadArray")]
	public static extern int32 QSettings_BeginReadArray(void* c_this, void prefix);
	[LinkName("QSettings_BeginWriteArray")]
	public static extern void QSettings_BeginWriteArray(void* c_this, void prefix);
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
	public static extern void QSettings_SetValue(void* c_this, void key, void* value);
	[LinkName("QSettings_Value")]
	public static extern void QSettings_Value(void* c_this, void key, void* defaultValue);
	[LinkName("QSettings_ValueWithKey")]
	public static extern void QSettings_ValueWithKey(void* c_this, void key);
	[LinkName("QSettings_Remove")]
	public static extern void QSettings_Remove(void* c_this, void key);
	[LinkName("QSettings_Contains")]
	public static extern bool QSettings_Contains(void* c_this, void key);
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
	public static extern libqt_string QSettings_Tr2(char8[] s, char8[] c);
	[LinkName("QSettings_Tr3")]
	public static extern libqt_string QSettings_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QSettings_BeginWriteArray2")]
	public static extern void QSettings_BeginWriteArray2(void* c_this, void prefix, int32 size);
	/// Delete this object from C++ memory
	[LinkName("QSettings_Delete")]
	public static extern void QSettings_Delete(void* self);
}