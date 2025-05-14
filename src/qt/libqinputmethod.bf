using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputMethod__Action
{
	Click = 0,
	ContextMenu = 1,
}
public interface IQInputMethod
{
	void* NativePtr { get; }
}
public struct QInputMethodPtr : IQInputMethod, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void* MetaObject()
	{
		return CQt.QInputMethod_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QInputMethod_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QInputMethod_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QInputMethod_Tr(s);
	}
	
	public void InputItemTransform()
	{
		CQt.QInputMethod_InputItemTransform(this.nativePtr);
	}
	
	public void SetInputItemTransform(IQTransform transform)
	{
		CQt.QInputMethod_SetInputItemTransform(this.nativePtr, (transform == default || transform.NativePtr == default) ? default : transform.NativePtr);
	}
	
	public void InputItemRectangle()
	{
		CQt.QInputMethod_InputItemRectangle(this.nativePtr);
	}
	
	public void SetInputItemRectangle(IQRectF rect)
	{
		CQt.QInputMethod_SetInputItemRectangle(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void CursorRectangle()
	{
		CQt.QInputMethod_CursorRectangle(this.nativePtr);
	}
	
	public void AnchorRectangle()
	{
		CQt.QInputMethod_AnchorRectangle(this.nativePtr);
	}
	
	public void KeyboardRectangle()
	{
		CQt.QInputMethod_KeyboardRectangle(this.nativePtr);
	}
	
	public void InputItemClipRectangle()
	{
		CQt.QInputMethod_InputItemClipRectangle(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QInputMethod_IsVisible(this.nativePtr);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QInputMethod_SetVisible(this.nativePtr, visible);
	}
	
	public bool IsAnimating()
	{
		return CQt.QInputMethod_IsAnimating(this.nativePtr);
	}
	
	public void Locale()
	{
		CQt.QInputMethod_Locale(this.nativePtr);
	}
	
	public int64 InputDirection()
	{
		return CQt.QInputMethod_InputDirection(this.nativePtr);
	}
	
	public static void QueryFocusObject(int64 query, IQVariant argument)
	{
		CQt.QInputMethod_QueryFocusObject((int64)query, (argument == default || argument.NativePtr == default) ? default : argument.NativePtr);
	}
	
	public void Show()
	{
		CQt.QInputMethod_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QInputMethod_Hide(this.nativePtr);
	}
	
	public void Update(int64 queries)
	{
		CQt.QInputMethod_Update(this.nativePtr, queries);
	}
	
	public void Reset()
	{
		CQt.QInputMethod_Reset(this.nativePtr);
	}
	
	public void Commit()
	{
		CQt.QInputMethod_Commit(this.nativePtr);
	}
	
	public void InvokeAction(int64 a, int32 cursorPosition)
	{
		CQt.QInputMethod_InvokeAction(this.nativePtr, (int64)a, cursorPosition);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QInputMethod_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QInputMethod_Tr3(s, c, n);
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
public class QInputMethod
{
	public QInputMethodPtr handle;
	
	public static implicit operator QInputMethodPtr(Self self)
	{
		return self.handle;
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
		return QInputMethodPtr.Tr(s);
	}
	
	public void InputItemTransform()
	{
		this.handle.InputItemTransform();
	}
	
	public void SetInputItemTransform(IQTransform transform)
	{
		this.handle.SetInputItemTransform(transform);
	}
	
	public void InputItemRectangle()
	{
		this.handle.InputItemRectangle();
	}
	
	public void SetInputItemRectangle(IQRectF rect)
	{
		this.handle.SetInputItemRectangle(rect);
	}
	
	public void CursorRectangle()
	{
		this.handle.CursorRectangle();
	}
	
	public void AnchorRectangle()
	{
		this.handle.AnchorRectangle();
	}
	
	public void KeyboardRectangle()
	{
		this.handle.KeyboardRectangle();
	}
	
	public void InputItemClipRectangle()
	{
		this.handle.InputItemClipRectangle();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public bool IsAnimating()
	{
		return this.handle.IsAnimating();
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public int64 InputDirection()
	{
		return this.handle.InputDirection();
	}
	
	public static void QueryFocusObject(int64 query, IQVariant argument)
	{
		QInputMethodPtr.QueryFocusObject(query, argument);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Update(int64 queries)
	{
		this.handle.Update(queries);
	}
	
	public void Reset()
	{
		this.handle.Reset();
	}
	
	public void Commit()
	{
		this.handle.Commit();
	}
	
	public void InvokeAction(int64 a, int32 cursorPosition)
	{
		this.handle.InvokeAction(a, cursorPosition);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QInputMethodPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QInputMethodPtr.Tr3(s, c, n);
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
		QInputMethodPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QInputMethodPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QInputMethodPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QInputMethodPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QInputMethod_MetaObject")]
	public static extern void* QInputMethod_MetaObject(void* c_this);
	[LinkName("QInputMethod_Metacast")]
	public static extern void* QInputMethod_Metacast(void* c_this, char8* param1);
	[LinkName("QInputMethod_Metacall")]
	public static extern int32 QInputMethod_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QInputMethod_Tr")]
	public static extern libqt_string QInputMethod_Tr(char8* s);
	[LinkName("QInputMethod_InputItemTransform")]
	public static extern void QInputMethod_InputItemTransform(void* c_this);
	[LinkName("QInputMethod_SetInputItemTransform")]
	public static extern void QInputMethod_SetInputItemTransform(void* c_this, void* transform);
	[LinkName("QInputMethod_InputItemRectangle")]
	public static extern void QInputMethod_InputItemRectangle(void* c_this);
	[LinkName("QInputMethod_SetInputItemRectangle")]
	public static extern void QInputMethod_SetInputItemRectangle(void* c_this, void* rect);
	[LinkName("QInputMethod_CursorRectangle")]
	public static extern void QInputMethod_CursorRectangle(void* c_this);
	[LinkName("QInputMethod_AnchorRectangle")]
	public static extern void QInputMethod_AnchorRectangle(void* c_this);
	[LinkName("QInputMethod_KeyboardRectangle")]
	public static extern void QInputMethod_KeyboardRectangle(void* c_this);
	[LinkName("QInputMethod_InputItemClipRectangle")]
	public static extern void QInputMethod_InputItemClipRectangle(void* c_this);
	[LinkName("QInputMethod_IsVisible")]
	public static extern bool QInputMethod_IsVisible(void* c_this);
	[LinkName("QInputMethod_SetVisible")]
	public static extern void QInputMethod_SetVisible(void* c_this, bool visible);
	[LinkName("QInputMethod_IsAnimating")]
	public static extern bool QInputMethod_IsAnimating(void* c_this);
	[LinkName("QInputMethod_Locale")]
	public static extern void QInputMethod_Locale(void* c_this);
	[LinkName("QInputMethod_InputDirection")]
	public static extern int64 QInputMethod_InputDirection(void* c_this);
	[LinkName("QInputMethod_QueryFocusObject")]
	public static extern void QInputMethod_QueryFocusObject(int64 query, void* argument);
	[LinkName("QInputMethod_Show")]
	public static extern void QInputMethod_Show(void* c_this);
	[LinkName("QInputMethod_Hide")]
	public static extern void QInputMethod_Hide(void* c_this);
	[LinkName("QInputMethod_Update")]
	public static extern void QInputMethod_Update(void* c_this, int64 queries);
	[LinkName("QInputMethod_Reset")]
	public static extern void QInputMethod_Reset(void* c_this);
	[LinkName("QInputMethod_Commit")]
	public static extern void QInputMethod_Commit(void* c_this);
	[LinkName("QInputMethod_InvokeAction")]
	public static extern void QInputMethod_InvokeAction(void* c_this, int64 a, int32 cursorPosition);
	[LinkName("QInputMethod_Connect_CursorRectangleChanged")]
	public static extern void QInputMethod_Connect_CursorRectangleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_AnchorRectangleChanged")]
	public static extern void QInputMethod_Connect_AnchorRectangleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_KeyboardRectangleChanged")]
	public static extern void QInputMethod_Connect_KeyboardRectangleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_InputItemClipRectangleChanged")]
	public static extern void QInputMethod_Connect_InputItemClipRectangleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_VisibleChanged")]
	public static extern void QInputMethod_Connect_VisibleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_AnimatingChanged")]
	public static extern void QInputMethod_Connect_AnimatingChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_LocaleChanged")]
	public static extern void QInputMethod_Connect_LocaleChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Connect_InputDirectionChanged")]
	public static extern void QInputMethod_Connect_InputDirectionChanged(void* c_this, c_intptr slot);
	[LinkName("QInputMethod_Tr2")]
	public static extern libqt_string QInputMethod_Tr2(char8* s, char8* c);
	[LinkName("QInputMethod_Tr3")]
	public static extern libqt_string QInputMethod_Tr3(char8* s, char8* c, int32 n);
}