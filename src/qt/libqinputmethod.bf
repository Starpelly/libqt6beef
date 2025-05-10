using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QInputMethod__Action
{
	Click = 0,
	ContextMenu = 1,
}
public class QInputMethod
{
	protected void* nativePtr;
	
	public virtual void* MetaObject()
	{
		return CQt.QInputMethod_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QInputMethod_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QInputMethod_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QInputMethod_Tr(s);
	}
	
	public void InputItemTransform()
	{
		CQt.QInputMethod_InputItemTransform(this.nativePtr);
	}
	
	public void SetInputItemTransform(void* transform)
	{
		CQt.QInputMethod_SetInputItemTransform(this.nativePtr, transform);
	}
	
	public void InputItemRectangle()
	{
		CQt.QInputMethod_InputItemRectangle(this.nativePtr);
	}
	
	public void SetInputItemRectangle(void* rect)
	{
		CQt.QInputMethod_SetInputItemRectangle(this.nativePtr, rect);
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
	
	public static void QueryFocusObject(int64 query, void* argument)
	{
		CQt.QInputMethod_QueryFocusObject(query, argument);
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
		CQt.QInputMethod_InvokeAction(this.nativePtr, a, cursorPosition);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QInputMethod_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QInputMethod_Tr3(s, c, n);
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
	[LinkName("QInputMethod_MetaObject")]
	public static extern void* QInputMethod_MetaObject(void* c_this);
	[LinkName("QInputMethod_Metacast")]
	public static extern void* QInputMethod_Metacast(void* c_this, char8[] param1);
	[LinkName("QInputMethod_Metacall")]
	public static extern int32 QInputMethod_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QInputMethod_Tr")]
	public static extern libqt_string QInputMethod_Tr(char8[] s);
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
	public static extern libqt_string QInputMethod_Tr2(char8[] s, char8[] c);
	[LinkName("QInputMethod_Tr3")]
	public static extern libqt_string QInputMethod_Tr3(char8[] s, char8[] c, int32 n);
}