using System;
using System.Interop;
namespace Qt;

public class QShortcut
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QShortcut_new(parent);
	}
	
	public ~this()
	{
		CQt.QShortcut_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QShortcut_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QShortcut_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QShortcut_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QShortcut_Tr(s);
	}
	
	public void SetKey(void* key)
	{
		CQt.QShortcut_SetKey(this.nativePtr, key);
	}
	
	public void Key()
	{
		CQt.QShortcut_Key(this.nativePtr);
	}
	
	public void SetKeys(int64 key)
	{
		CQt.QShortcut_SetKeys(this.nativePtr, key);
	}
	
	public void SetKeysWithKeys(void[] keys)
	{
		CQt.QShortcut_SetKeysWithKeys(this.nativePtr, keys);
	}
	
	public void[] Keys()
	{
		return CQt.QShortcut_Keys(this.nativePtr);
	}
	
	public void SetEnabled(bool enable)
	{
		CQt.QShortcut_SetEnabled(this.nativePtr, enable);
	}
	
	public bool IsEnabled()
	{
		return CQt.QShortcut_IsEnabled(this.nativePtr);
	}
	
	public void SetContext(int64 context)
	{
		CQt.QShortcut_SetContext(this.nativePtr, context);
	}
	
	public int64 Context()
	{
		return CQt.QShortcut_Context(this.nativePtr);
	}
	
	public void SetAutoRepeat(bool on)
	{
		CQt.QShortcut_SetAutoRepeat(this.nativePtr, on);
	}
	
	public bool AutoRepeat()
	{
		return CQt.QShortcut_AutoRepeat(this.nativePtr);
	}
	
	public int32 Id()
	{
		return CQt.QShortcut_Id(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string text)
	{
		CQt.QShortcut_SetWhatsThis(this.nativePtr, text);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QShortcut_WhatsThis(this.nativePtr);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QShortcut_Event(this.nativePtr, e);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QShortcut_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QShortcut_Tr3(s, c, n);
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
	[LinkName("QShortcut_new")]
	public static extern void* QShortcut_new(void* parent);
	[LinkName("QShortcut_new2")]
	public static extern void* QShortcut_new2(void* key, void* parent);
	[LinkName("QShortcut_new3")]
	public static extern void* QShortcut_new3(int64 key, void* parent);
	[LinkName("QShortcut_new4")]
	public static extern void* QShortcut_new4(void* key, void* parent, char8[] member);
	[LinkName("QShortcut_new5")]
	public static extern void* QShortcut_new5(void* key, void* parent, char8[] member, char8[] ambiguousMember);
	[LinkName("QShortcut_new6")]
	public static extern void* QShortcut_new6(void* key, void* parent, char8[] member, char8[] ambiguousMember, int64 context);
	[LinkName("QShortcut_new7")]
	public static extern void* QShortcut_new7(int64 key, void* parent, char8[] member);
	[LinkName("QShortcut_new8")]
	public static extern void* QShortcut_new8(int64 key, void* parent, char8[] member, char8[] ambiguousMember);
	[LinkName("QShortcut_new9")]
	public static extern void* QShortcut_new9(int64 key, void* parent, char8[] member, char8[] ambiguousMember, int64 context);
	[LinkName("QShortcut_MetaObject")]
	public static extern void* QShortcut_MetaObject(void* c_this);
	[LinkName("QShortcut_Metacast")]
	public static extern void* QShortcut_Metacast(void* c_this, char8[] param1);
	[LinkName("QShortcut_Metacall")]
	public static extern int32 QShortcut_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QShortcut_Tr")]
	public static extern libqt_string QShortcut_Tr(char8[] s);
	[LinkName("QShortcut_SetKey")]
	public static extern void QShortcut_SetKey(void* c_this, void* key);
	[LinkName("QShortcut_Key")]
	public static extern void QShortcut_Key(void* c_this);
	[LinkName("QShortcut_SetKeys")]
	public static extern void QShortcut_SetKeys(void* c_this, int64 key);
	[LinkName("QShortcut_SetKeysWithKeys")]
	public static extern void QShortcut_SetKeysWithKeys(void* c_this, void[] keys);
	[LinkName("QShortcut_Keys")]
	public static extern void[] QShortcut_Keys(void* c_this);
	[LinkName("QShortcut_SetEnabled")]
	public static extern void QShortcut_SetEnabled(void* c_this, bool enable);
	[LinkName("QShortcut_IsEnabled")]
	public static extern bool QShortcut_IsEnabled(void* c_this);
	[LinkName("QShortcut_SetContext")]
	public static extern void QShortcut_SetContext(void* c_this, int64 context);
	[LinkName("QShortcut_Context")]
	public static extern int64 QShortcut_Context(void* c_this);
	[LinkName("QShortcut_SetAutoRepeat")]
	public static extern void QShortcut_SetAutoRepeat(void* c_this, bool on);
	[LinkName("QShortcut_AutoRepeat")]
	public static extern bool QShortcut_AutoRepeat(void* c_this);
	[LinkName("QShortcut_Id")]
	public static extern int32 QShortcut_Id(void* c_this);
	[LinkName("QShortcut_SetWhatsThis")]
	public static extern void QShortcut_SetWhatsThis(void* c_this, libqt_string text);
	[LinkName("QShortcut_WhatsThis")]
	public static extern libqt_string QShortcut_WhatsThis(void* c_this);
	[LinkName("QShortcut_Connect_Activated")]
	public static extern void QShortcut_Connect_Activated(void* c_this, c_intptr slot);
	[LinkName("QShortcut_Connect_ActivatedAmbiguously")]
	public static extern void QShortcut_Connect_ActivatedAmbiguously(void* c_this, c_intptr slot);
	[LinkName("QShortcut_Event")]
	public static extern bool QShortcut_Event(void* c_this, void* e);
	[LinkName("QShortcut_Tr2")]
	public static extern libqt_string QShortcut_Tr2(char8[] s, char8[] c);
	[LinkName("QShortcut_Tr3")]
	public static extern libqt_string QShortcut_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QShortcut_Delete")]
	public static extern void QShortcut_Delete(void* self);
}