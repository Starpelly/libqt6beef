using System;
using System.Interop;
namespace Qt;

public class QSignalMapper
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSignalMapper_new();
	}
	
	public ~this()
	{
		CQt.QSignalMapper_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSignalMapper_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSignalMapper_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSignalMapper_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSignalMapper_Tr(s);
	}
	
	public void SetMapping(void* sender, int32 id)
	{
		CQt.QSignalMapper_SetMapping(this.nativePtr, sender, id);
	}
	
	public void SetMapping2(void* sender, libqt_string text)
	{
		CQt.QSignalMapper_SetMapping2(this.nativePtr, sender, text);
	}
	
	public void SetMapping3(void* sender, void* object)
	{
		CQt.QSignalMapper_SetMapping3(this.nativePtr, sender, object);
	}
	
	public void RemoveMappings(void* sender)
	{
		CQt.QSignalMapper_RemoveMappings(this.nativePtr, sender);
	}
	
	public void* Mapping(int32 id)
	{
		return CQt.QSignalMapper_Mapping(this.nativePtr, id);
	}
	
	public void* MappingWithText(libqt_string text)
	{
		return CQt.QSignalMapper_MappingWithText(this.nativePtr, text);
	}
	
	public void* MappingWithObject(void* object)
	{
		return CQt.QSignalMapper_MappingWithObject(this.nativePtr, object);
	}
	
	public void Map()
	{
		CQt.QSignalMapper_Map(this.nativePtr);
	}
	
	public void MapWithSender(void* sender)
	{
		CQt.QSignalMapper_MapWithSender(this.nativePtr, sender);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSignalMapper_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSignalMapper_Tr3(s, c, n);
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
	[LinkName("QSignalMapper_new")]
	public static extern void* QSignalMapper_new();
	[LinkName("QSignalMapper_new2")]
	public static extern void* QSignalMapper_new2(void* parent);
	[LinkName("QSignalMapper_MetaObject")]
	public static extern void* QSignalMapper_MetaObject(void* c_this);
	[LinkName("QSignalMapper_Metacast")]
	public static extern void* QSignalMapper_Metacast(void* c_this, char8[] param1);
	[LinkName("QSignalMapper_Metacall")]
	public static extern int32 QSignalMapper_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSignalMapper_Tr")]
	public static extern libqt_string QSignalMapper_Tr(char8[] s);
	[LinkName("QSignalMapper_SetMapping")]
	public static extern void QSignalMapper_SetMapping(void* c_this, void* sender, int32 id);
	[LinkName("QSignalMapper_SetMapping2")]
	public static extern void QSignalMapper_SetMapping2(void* c_this, void* sender, libqt_string text);
	[LinkName("QSignalMapper_SetMapping3")]
	public static extern void QSignalMapper_SetMapping3(void* c_this, void* sender, void* object);
	[LinkName("QSignalMapper_RemoveMappings")]
	public static extern void QSignalMapper_RemoveMappings(void* c_this, void* sender);
	[LinkName("QSignalMapper_Mapping")]
	public static extern void* QSignalMapper_Mapping(void* c_this, int32 id);
	[LinkName("QSignalMapper_MappingWithText")]
	public static extern void* QSignalMapper_MappingWithText(void* c_this, libqt_string text);
	[LinkName("QSignalMapper_MappingWithObject")]
	public static extern void* QSignalMapper_MappingWithObject(void* c_this, void* object);
	[LinkName("QSignalMapper_Connect_MappedInt")]
	public static extern void QSignalMapper_Connect_MappedInt(void* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Connect_MappedString")]
	public static extern void QSignalMapper_Connect_MappedString(void* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Connect_MappedObject")]
	public static extern void QSignalMapper_Connect_MappedObject(void* c_this, c_intptr slot);
	[LinkName("QSignalMapper_Map")]
	public static extern void QSignalMapper_Map(void* c_this);
	[LinkName("QSignalMapper_MapWithSender")]
	public static extern void QSignalMapper_MapWithSender(void* c_this, void* sender);
	[LinkName("QSignalMapper_Tr2")]
	public static extern libqt_string QSignalMapper_Tr2(char8[] s, char8[] c);
	[LinkName("QSignalMapper_Tr3")]
	public static extern libqt_string QSignalMapper_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSignalMapper_Delete")]
	public static extern void QSignalMapper_Delete(void* self);
}