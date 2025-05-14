using System;
using System.Interop;
namespace Qt;

public interface IQDrag
{
	void* NativePtr { get; }
}
public struct QDragPtr : IQDrag, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQObject dragSource)
	{
		return .(CQt.QDrag_new((dragSource == default || dragSource.NativePtr == default) ? default : dragSource.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QDrag_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QDrag_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QDrag_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QDrag_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QDrag_Tr(s);
	}
	
	public void SetMimeData(IQMimeData data)
	{
		CQt.QDrag_SetMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QDrag_MimeData(this.nativePtr);
	}
	
	public void SetPixmap(IQPixmap pixmap)
	{
		CQt.QDrag_SetPixmap(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void Pixmap()
	{
		CQt.QDrag_Pixmap(this.nativePtr);
	}
	
	public void SetHotSpot(IQPoint hotspot)
	{
		CQt.QDrag_SetHotSpot(this.nativePtr, (hotspot == default || hotspot.NativePtr == default) ? default : hotspot.NativePtr);
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
		return CQt.QDrag_Exec2(this.nativePtr, supportedActions, (int64)defaultAction);
	}
	
	public void SetDragCursor(IQPixmap cursor, int64 action)
	{
		CQt.QDrag_SetDragCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr, (int64)action);
	}
	
	public void DragCursor(int64 action)
	{
		CQt.QDrag_DragCursor(this.nativePtr, (int64)action);
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
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
public class QDrag
{
	public QDragPtr handle;
	
	public static implicit operator QDragPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQObject dragSource)
	{
		this.handle = QDragPtr.New(dragSource);
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
		return QDragPtr.Tr(s);
	}
	
	public void SetMimeData(IQMimeData data)
	{
		this.handle.SetMimeData(data);
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public void SetPixmap(IQPixmap pixmap)
	{
		this.handle.SetPixmap(pixmap);
	}
	
	public void Pixmap()
	{
		this.handle.Pixmap();
	}
	
	public void SetHotSpot(IQPoint hotspot)
	{
		this.handle.SetHotSpot(hotspot);
	}
	
	public void HotSpot()
	{
		this.handle.HotSpot();
	}
	
	public void* Source()
	{
		return this.handle.Source();
	}
	
	public void* Target()
	{
		return this.handle.Target();
	}
	
	public int64 Exec()
	{
		return this.handle.Exec();
	}
	
	public int64 Exec2(int64 supportedActions, int64 defaultAction)
	{
		return this.handle.Exec2(supportedActions, defaultAction);
	}
	
	public void SetDragCursor(IQPixmap cursor, int64 action)
	{
		this.handle.SetDragCursor(cursor, action);
	}
	
	public void DragCursor(int64 action)
	{
		this.handle.DragCursor(action);
	}
	
	public int64 SupportedActions()
	{
		return this.handle.SupportedActions();
	}
	
	public int64 DefaultAction()
	{
		return this.handle.DefaultAction();
	}
	
	public static void Cancel()
	{
		QDragPtr.Cancel();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QDragPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QDragPtr.Tr3(s, c, n);
	}
	
	public int64 Exec1(int64 supportedActions)
	{
		return this.handle.Exec1(supportedActions);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QDragPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QDragPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QDragPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QDragPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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