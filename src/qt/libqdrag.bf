using System;
using System.Interop;
namespace Qt;

public interface IQDrag
{
	void* NativePtr { get; }
}
public class QDrag : IQDrag, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQObject dragSource)
	{
		this.nativePtr = CQt.QDrag_new((dragSource == null) ? null : (void*)dragSource.NativePtr);
	}
	
	public ~this()
	{
		CQt.QDrag_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QDrag_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QDrag_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QDrag_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QDrag_Tr(s);
	}
	
	public void SetMimeData(IQMimeData data)
	{
		CQt.QDrag_SetMimeData(this.nativePtr, (data == null) ? null : (void*)data.NativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QDrag_MimeData(this.nativePtr);
	}
	
	public void SetPixmap(IQPixmap pixmap)
	{
		CQt.QDrag_SetPixmap(this.nativePtr, (pixmap == default) ? default : (void*)pixmap.NativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QDrag_Pixmap(this.nativePtr);
	}
	
	public void SetHotSpot(IQPoint hotspot)
	{
		CQt.QDrag_SetHotSpot(this.nativePtr, (hotspot == default) ? default : (void*)hotspot.NativePtr);
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
	
	public void SetDragCursor(IQPixmap cursor, int64 action)
	{
		CQt.QDrag_SetDragCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr, action);
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
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QDrag_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QDrag_Tr3(s, c, n);
	}
	
	public int64 Exec1(int64 supportedActions)
	{
		return CQt.QDrag_Exec1(this.nativePtr, supportedActions);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QDrag_new")]
	public static extern void* QDrag_new(void* dragSource);
	[LinkName("QDrag_MetaObject")]
	public static extern void* QDrag_MetaObject(void* c_this);
	[LinkName("QDrag_Metacast")]
	public static extern void* QDrag_Metacast(void* c_this, char8* param1);
	[LinkName("QDrag_Metacall")]
	public static extern int32 QDrag_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QDrag_Tr")]
	public static extern libqt_string QDrag_Tr(char8* s);
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
	public static extern libqt_string QDrag_Tr2(char8* s, char8* c);
	[LinkName("QDrag_Tr3")]
	public static extern libqt_string QDrag_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QDrag_Exec1")]
	public static extern int64 QDrag_Exec1(void* c_this, int64 supportedActions);
	/// Delete this object from C++ memory
	[LinkName("QDrag_Delete")]
	public static extern void QDrag_Delete(void* self);
}