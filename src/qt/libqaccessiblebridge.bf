using System;
using System.Interop;
namespace Qt;

public class QAccessibleBridge
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QAccessibleBridge_Delete(this.nativePtr);
	}
	
	public virtual void SetRootObject(void* rootObject)
	{
		CQt.QAccessibleBridge_SetRootObject(this.nativePtr, rootObject);
	}
	
	public virtual void NotifyAccessibilityUpdate(void* event)
	{
		CQt.QAccessibleBridge_NotifyAccessibilityUpdate(this.nativePtr, event);
	}
	
	public void OperatorAssign(void* param1)
	{
		CQt.QAccessibleBridge_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QAccessibleBridge_SetRootObject")]
	public static extern void QAccessibleBridge_SetRootObject(void* c_this, void* rootObject);
	[LinkName("QAccessibleBridge_NotifyAccessibilityUpdate")]
	public static extern void QAccessibleBridge_NotifyAccessibilityUpdate(void* c_this, void* event);
	[LinkName("QAccessibleBridge_OperatorAssign")]
	public static extern void QAccessibleBridge_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleBridge_Delete")]
	public static extern void QAccessibleBridge_Delete(void* self);
}
public class QAccessibleBridgePlugin
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAccessibleBridgePlugin_new();
	}
	
	public ~this()
	{
		CQt.QAccessibleBridgePlugin_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAccessibleBridgePlugin_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAccessibleBridgePlugin_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAccessibleBridgePlugin_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAccessibleBridgePlugin_Tr(s);
	}
	
	public virtual void* Create(libqt_string key)
	{
		return CQt.QAccessibleBridgePlugin_Create(this.nativePtr, key);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAccessibleBridgePlugin_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAccessibleBridgePlugin_Tr3(s, c, n);
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
	[LinkName("QAccessibleBridgePlugin_new")]
	public static extern void* QAccessibleBridgePlugin_new();
	[LinkName("QAccessibleBridgePlugin_new2")]
	public static extern void* QAccessibleBridgePlugin_new2(void* parent);
	[LinkName("QAccessibleBridgePlugin_MetaObject")]
	public static extern void* QAccessibleBridgePlugin_MetaObject(void* c_this);
	[LinkName("QAccessibleBridgePlugin_Metacast")]
	public static extern void* QAccessibleBridgePlugin_Metacast(void* c_this, char8[] param1);
	[LinkName("QAccessibleBridgePlugin_Metacall")]
	public static extern int32 QAccessibleBridgePlugin_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAccessibleBridgePlugin_Tr")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr(char8[] s);
	[LinkName("QAccessibleBridgePlugin_Create")]
	public static extern void* QAccessibleBridgePlugin_Create(void* c_this, libqt_string key);
	[LinkName("QAccessibleBridgePlugin_Tr2")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr2(char8[] s, char8[] c);
	[LinkName("QAccessibleBridgePlugin_Tr3")]
	public static extern libqt_string QAccessibleBridgePlugin_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAccessibleBridgePlugin_Delete")]
	public static extern void QAccessibleBridgePlugin_Delete(void* self);
}