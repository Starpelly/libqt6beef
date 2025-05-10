using System;
using System.Interop;
namespace Qt;

public class QDrag
{
	protected void* nativePtr;
	
	public this(void* dragSource)
	{
		this.nativePtr = CQt.QDrag_new(dragSource);
	}
	
	public ~this()
	{
		CQt.QDrag_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDrag_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QDrag_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDrag_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QDrag_Tr(s);
	}
	
	public void SetMimeData(void* data)
	{
		CQt.QDrag_SetMimeData(this.nativePtr, data);
	}
	
	public void* MimeData()
	{
		return CQt.QDrag_MimeData(this.nativePtr);
	}
	
	public void SetPixmap(void* pixmap)
	{
		CQt.QDrag_SetPixmap(this.nativePtr, pixmap);
	}
	
	public void Pixmap()
	{
		CQt.QDrag_Pixmap(this.nativePtr);
	}
	
	public void SetHotSpot(void* hotspot)
	{
		CQt.QDrag_SetHotSpot(this.nativePtr, hotspot);
	}
	
	public void HotSpot()
	{
		CQt.QDrag_HotSpot(this.nativePtr);
	}
	
	public void* Source()
	{
		return CQt.QDrag_Source(this.nativePtr);
	}
	
	public void* Target()
	{
		return CQt.QDrag_Target(this.nativePtr);
	}
	
	public int64 Exec()
	{
		return CQt.QDrag_Exec(this.nativePtr);
	}
	
	public int64 Exec2(int64 supportedActions, int64 defaultAction)
	{
		return CQt.QDrag_Exec2(this.nativePtr, supportedActions, defaultAction);
	}
	
	public void SetDragCursor(void* cursor, int64 action)
	{
		CQt.QDrag_SetDragCursor(this.nativePtr, cursor, action);
	}
	
	public void DragCursor(int64 action)
	{
		CQt.QDrag_DragCursor(this.nativePtr, action);
	}
	
	public int64 SupportedActions()
	{
		return CQt.QDrag_SupportedActions(this.nativePtr);
	}
	
	public int64 DefaultAction()
	{
		return CQt.QDrag_DefaultAction(this.nativePtr);
	}
	
	public static void Cancel()
	{
		CQt.QDrag_Cancel();
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QDrag_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QDrag_Tr3(s, c, n);
	}
	
	public int64 Exec1(int64 supportedActions)
	{
		return CQt.QDrag_Exec1(this.nativePtr, supportedActions);
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
	[LinkName("QDrag_new")]
	public static extern void* QDrag_new(void* dragSource);
	[LinkName("QDrag_MetaObject")]
	public static extern void* QDrag_MetaObject(void* c_this);
	[LinkName("QDrag_Metacast")]
	public static extern void* QDrag_Metacast(void* c_this, char8[] param1);
	[LinkName("QDrag_Metacall")]
	public static extern int32 QDrag_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QDrag_Tr")]
	public static extern libqt_string QDrag_Tr(char8[] s);
	[LinkName("QDrag_SetMimeData")]
	public static extern void QDrag_SetMimeData(void* c_this, void* data);
	[LinkName("QDrag_MimeData")]
	public static extern void* QDrag_MimeData(void* c_this);
	[LinkName("QDrag_SetPixmap")]
	public static extern void QDrag_SetPixmap(void* c_this, void* pixmap);
	[LinkName("QDrag_Pixmap")]
	public static extern void QDrag_Pixmap(void* c_this);
	[LinkName("QDrag_SetHotSpot")]
	public static extern void QDrag_SetHotSpot(void* c_this, void* hotspot);
	[LinkName("QDrag_HotSpot")]
	public static extern void QDrag_HotSpot(void* c_this);
	[LinkName("QDrag_Source")]
	public static extern void* QDrag_Source(void* c_this);
	[LinkName("QDrag_Target")]
	public static extern void* QDrag_Target(void* c_this);
	[LinkName("QDrag_Exec")]
	public static extern int64 QDrag_Exec(void* c_this);
	[LinkName("QDrag_Exec2")]
	public static extern int64 QDrag_Exec2(void* c_this, int64 supportedActions, int64 defaultAction);
	[LinkName("QDrag_SetDragCursor")]
	public static extern void QDrag_SetDragCursor(void* c_this, void* cursor, int64 action);
	[LinkName("QDrag_DragCursor")]
	public static extern void QDrag_DragCursor(void* c_this, int64 action);
	[LinkName("QDrag_SupportedActions")]
	public static extern int64 QDrag_SupportedActions(void* c_this);
	[LinkName("QDrag_DefaultAction")]
	public static extern int64 QDrag_DefaultAction(void* c_this);
	[LinkName("QDrag_Cancel")]
	public static extern void QDrag_Cancel();
	[LinkName("QDrag_Connect_ActionChanged")]
	public static extern void QDrag_Connect_ActionChanged(void* c_this, c_intptr slot);
	[LinkName("QDrag_Connect_TargetChanged")]
	public static extern void QDrag_Connect_TargetChanged(void* c_this, c_intptr slot);
	[LinkName("QDrag_Tr2")]
	public static extern libqt_string QDrag_Tr2(char8[] s, char8[] c);
	[LinkName("QDrag_Tr3")]
	public static extern libqt_string QDrag_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QDrag_Exec1")]
	public static extern int64 QDrag_Exec1(void* c_this, int64 supportedActions);
	/// Delete this object from C++ memory
	[LinkName("QDrag_Delete")]
	public static extern void QDrag_Delete(void* self);
}