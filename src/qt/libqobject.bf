using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QObjectData__
{
	CheckForParentChildLoopsWarnDepth = 4096,
}
public class QObjectData
{
	protected void* nativePtr;
	
	public ~this()
	{
		CQt.QObjectData_Delete(this.nativePtr);
	}
	
	public void* DynamicMetaObject()
	{
		return CQt.QObjectData_DynamicMetaObject(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QObjectData_DynamicMetaObject")]
	public static extern void* QObjectData_DynamicMetaObject(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QObjectData_Delete")]
	public static extern void QObjectData_Delete(void* self);
}
public class QObject
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QObject_new();
	}
	
	public ~this()
	{
		CQt.QObject_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QObject_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QObject_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QObject_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QObject_Tr(s);
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
	
	public void* Sender()
	{
		return CQt.QObject_Sender(this.nativePtr);
	}
	
	public int32 SenderSignalIndex()
	{
		return CQt.QObject_SenderSignalIndex(this.nativePtr);
	}
	
	public int32 Receivers(char8[] signal)
	{
		return CQt.QObject_Receivers(this.nativePtr, signal);
	}
	
	public bool IsSignalConnected(void* signal)
	{
		return CQt.QObject_IsSignalConnected(this.nativePtr, signal);
	}
	
	public virtual void TimerEvent(void* event)
	{
		CQt.QObject_TimerEvent(this.nativePtr, event);
	}
	
	public virtual void ChildEvent(void* event)
	{
		CQt.QObject_ChildEvent(this.nativePtr, event);
	}
	
	public virtual void CustomEvent(void* event)
	{
		CQt.QObject_CustomEvent(this.nativePtr, event);
	}
	
	public virtual void ConnectNotify(void* signal)
	{
		CQt.QObject_ConnectNotify(this.nativePtr, signal);
	}
	
	public virtual void DisconnectNotify(void* signal)
	{
		CQt.QObject_DisconnectNotify(this.nativePtr, signal);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QObject_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QObject_Tr3(s, c, n);
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
	[LinkName("QObject_new")]
	public static extern void* QObject_new();
	[LinkName("QObject_new2")]
	public static extern void* QObject_new2(void* parent);
	[LinkName("QObject_MetaObject")]
	public static extern void* QObject_MetaObject(void* c_this);
	[LinkName("QObject_Metacast")]
	public static extern void* QObject_Metacast(void* c_this, char8[] param1);
	[LinkName("QObject_Metacall")]
	public static extern int32 QObject_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QObject_Tr")]
	public static extern libqt_string QObject_Tr(char8[] s);
	[LinkName("QObject_Event")]
	public static extern bool QObject_Event(void* c_this, void* event);
	[LinkName("QObject_EventFilter")]
	public static extern bool QObject_EventFilter(void* c_this, void* watched, void* event);
	[LinkName("QObject_ObjectName")]
	public static extern libqt_string QObject_ObjectName(void* c_this);
	[LinkName("QObject_SetObjectName")]
	public static extern void QObject_SetObjectName(void* c_this, void name);
	[LinkName("QObject_IsWidgetType")]
	public static extern bool QObject_IsWidgetType(void* c_this);
	[LinkName("QObject_IsWindowType")]
	public static extern bool QObject_IsWindowType(void* c_this);
	[LinkName("QObject_IsQuickItemType")]
	public static extern bool QObject_IsQuickItemType(void* c_this);
	[LinkName("QObject_SignalsBlocked")]
	public static extern bool QObject_SignalsBlocked(void* c_this);
	[LinkName("QObject_BlockSignals")]
	public static extern bool QObject_BlockSignals(void* c_this, bool b);
	[LinkName("QObject_Thread")]
	public static extern void* QObject_Thread(void* c_this);
	[LinkName("QObject_MoveToThread")]
	public static extern void QObject_MoveToThread(void* c_this, void* thread);
	[LinkName("QObject_StartTimer")]
	public static extern int32 QObject_StartTimer(void* c_this, int32 interval);
	[LinkName("QObject_KillTimer")]
	public static extern void QObject_KillTimer(void* c_this, int32 id);
	[LinkName("QObject_Children")]
	public static extern void*[] QObject_Children(void* c_this);
	[LinkName("QObject_SetParent")]
	public static extern void QObject_SetParent(void* c_this, void* parent);
	[LinkName("QObject_InstallEventFilter")]
	public static extern void QObject_InstallEventFilter(void* c_this, void* filterObj);
	[LinkName("QObject_RemoveEventFilter")]
	public static extern void QObject_RemoveEventFilter(void* c_this, void* obj);
	[LinkName("QObject_Connect")]
	public static extern QMetaObject__Connection QObject_Connect(void* sender, void* signal, void* receiver, void* method);
	[LinkName("QObject_Connect2")]
	public static extern QMetaObject__Connection QObject_Connect2(void* c_this, void* sender, char8[] signal, char8[] member);
	[LinkName("QObject_Disconnect")]
	public static extern bool QObject_Disconnect(void* sender, void* signal, void* receiver, void* member);
	[LinkName("QObject_DisconnectWithQMetaObjectConnection")]
	public static extern bool QObject_DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1);
	[LinkName("QObject_DumpObjectTree")]
	public static extern void QObject_DumpObjectTree(void* c_this);
	[LinkName("QObject_DumpObjectInfo")]
	public static extern void QObject_DumpObjectInfo(void* c_this);
	[LinkName("QObject_SetProperty")]
	public static extern bool QObject_SetProperty(void* c_this, char8[] name, void* value);
	[LinkName("QObject_Property")]
	public static extern void QObject_Property(void* c_this, char8[] name);
	[LinkName("QObject_DynamicPropertyNames")]
	public static extern libqt_string[] QObject_DynamicPropertyNames(void* c_this);
	[LinkName("QObject_BindingStorage")]
	public static extern void* QObject_BindingStorage(void* c_this);
	[LinkName("QObject_BindingStorage2")]
	public static extern void* QObject_BindingStorage2(void* c_this);
	[LinkName("QObject_Connect_Destroyed")]
	public static extern void QObject_Connect_Destroyed(void* c_this, c_intptr slot);
	[LinkName("QObject_Parent")]
	public static extern void* QObject_Parent(void* c_this);
	[LinkName("QObject_Inherits")]
	public static extern bool QObject_Inherits(void* c_this, char8[] classname);
	[LinkName("QObject_DeleteLater")]
	public static extern void QObject_DeleteLater(void* c_this);
	[LinkName("QObject_Sender")]
	public static extern void* QObject_Sender(void* c_this);
	[LinkName("QObject_SenderSignalIndex")]
	public static extern int32 QObject_SenderSignalIndex(void* c_this);
	[LinkName("QObject_Receivers")]
	public static extern int32 QObject_Receivers(void* c_this, char8[] signal);
	[LinkName("QObject_IsSignalConnected")]
	public static extern bool QObject_IsSignalConnected(void* c_this, void* signal);
	[LinkName("QObject_TimerEvent")]
	public static extern void QObject_TimerEvent(void* c_this, void* event);
	[LinkName("QObject_ChildEvent")]
	public static extern void QObject_ChildEvent(void* c_this, void* event);
	[LinkName("QObject_CustomEvent")]
	public static extern void QObject_CustomEvent(void* c_this, void* event);
	[LinkName("QObject_ConnectNotify")]
	public static extern void QObject_ConnectNotify(void* c_this, void* signal);
	[LinkName("QObject_DisconnectNotify")]
	public static extern void QObject_DisconnectNotify(void* c_this, void* signal);
	[LinkName("QObject_Tr2")]
	public static extern libqt_string QObject_Tr2(char8[] s, char8[] c);
	[LinkName("QObject_Tr3")]
	public static extern libqt_string QObject_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QObject_StartTimer2")]
	public static extern int32 QObject_StartTimer2(void* c_this, int32 interval, int64 timerType);
	[LinkName("QObject_Connect5")]
	public static extern QMetaObject__Connection QObject_Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal);
	[LinkName("QObject_Connect4")]
	public static extern QMetaObject__Connection QObject_Connect4(void* c_this, void* sender, char8[] signal, char8[] member, int64 typeVal);
	[LinkName("QObject_Connect_Destroyed1")]
	public static extern void QObject_Connect_Destroyed1(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QObject_Delete")]
	public static extern void QObject_Delete(void* self);
}
public class QSignalBlocker
{
	protected void* nativePtr;
	
	public this(void* o)
	{
		this.nativePtr = CQt.QSignalBlocker_new(o);
	}
	
	public ~this()
	{
		CQt.QSignalBlocker_Delete(this.nativePtr);
	}
	
	public void Reblock()
	{
		CQt.QSignalBlocker_Reblock(this.nativePtr);
	}
	
	public void Unblock()
	{
		CQt.QSignalBlocker_Unblock(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QSignalBlocker_new")]
	public static extern void* QSignalBlocker_new(void* o);
	[LinkName("QSignalBlocker_new2")]
	public static extern void* QSignalBlocker_new2(void* o);
	[LinkName("QSignalBlocker_Reblock")]
	public static extern void QSignalBlocker_Reblock(void* c_this);
	[LinkName("QSignalBlocker_Unblock")]
	public static extern void QSignalBlocker_Unblock(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QSignalBlocker_Delete")]
	public static extern void QSignalBlocker_Delete(void* self);
}