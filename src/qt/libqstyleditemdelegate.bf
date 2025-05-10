using System;
using System.Interop;
namespace Qt;

public class QStyledItemDelegate
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStyledItemDelegate_new();
	}
	
	public ~this()
	{
		CQt.QStyledItemDelegate_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QStyledItemDelegate_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QStyledItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStyledItemDelegate_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QStyledItemDelegate_Tr(s);
	}
	
	public virtual void Paint(void* painter, void* option, void* index)
	{
		CQt.QStyledItemDelegate_Paint(this.nativePtr, painter, option, index);
	}
	
	public virtual void SizeHint(void* option, void* index)
	{
		CQt.QStyledItemDelegate_SizeHint(this.nativePtr, option, index);
	}
	
	public virtual void* CreateEditor(void* parent, void* option, void* index)
	{
		return CQt.QStyledItemDelegate_CreateEditor(this.nativePtr, parent, option, index);
	}
	
	public virtual void SetEditorData(void* editor, void* index)
	{
		CQt.QStyledItemDelegate_SetEditorData(this.nativePtr, editor, index);
	}
	
	public virtual void SetModelData(void* editor, void* model, void* index)
	{
		CQt.QStyledItemDelegate_SetModelData(this.nativePtr, editor, model, index);
	}
	
	public virtual void UpdateEditorGeometry(void* editor, void* option, void* index)
	{
		CQt.QStyledItemDelegate_UpdateEditorGeometry(this.nativePtr, editor, option, index);
	}
	
	public void* ItemEditorFactory()
	{
		return CQt.QStyledItemDelegate_ItemEditorFactory(this.nativePtr);
	}
	
	public void SetItemEditorFactory(void* factory)
	{
		CQt.QStyledItemDelegate_SetItemEditorFactory(this.nativePtr, factory);
	}
	
	public virtual libqt_string DisplayText(void* value, void* locale)
	{
		return CQt.QStyledItemDelegate_DisplayText(this.nativePtr, value, locale);
	}
	
	public virtual void InitStyleOption(void* option, void* index)
	{
		CQt.QStyledItemDelegate_InitStyleOption(this.nativePtr, option, index);
	}
	
	public virtual bool EventFilter(void* object, void* event)
	{
		return CQt.QStyledItemDelegate_EventFilter(this.nativePtr, object, event);
	}
	
	public virtual bool EditorEvent(void* event, void* model, void* option, void* index)
	{
		return CQt.QStyledItemDelegate_EditorEvent(this.nativePtr, event, model, option, index);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QStyledItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QStyledItemDelegate_Tr3(s, c, n);
	}
	
	public virtual void DestroyEditor(void* editor, void* index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, editor, index);
	}
	
	public virtual bool HelpEvent(void* event, void* view, void* option, void* index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, event, view, option, index);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
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
	[LinkName("QStyledItemDelegate_new")]
	public static extern void* QStyledItemDelegate_new();
	[LinkName("QStyledItemDelegate_new2")]
	public static extern void* QStyledItemDelegate_new2(void* parent);
	[LinkName("QStyledItemDelegate_MetaObject")]
	public static extern void* QStyledItemDelegate_MetaObject(void* c_this);
	[LinkName("QStyledItemDelegate_Metacast")]
	public static extern void* QStyledItemDelegate_Metacast(void* c_this, char8[] param1);
	[LinkName("QStyledItemDelegate_Metacall")]
	public static extern int32 QStyledItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStyledItemDelegate_Tr")]
	public static extern libqt_string QStyledItemDelegate_Tr(char8[] s);
	[LinkName("QStyledItemDelegate_Paint")]
	public static extern void QStyledItemDelegate_Paint(void* c_this, void* painter, void* option, void* index);
	[LinkName("QStyledItemDelegate_SizeHint")]
	public static extern void QStyledItemDelegate_SizeHint(void* c_this, void* option, void* index);
	[LinkName("QStyledItemDelegate_CreateEditor")]
	public static extern void* QStyledItemDelegate_CreateEditor(void* c_this, void* parent, void* option, void* index);
	[LinkName("QStyledItemDelegate_SetEditorData")]
	public static extern void QStyledItemDelegate_SetEditorData(void* c_this, void* editor, void* index);
	[LinkName("QStyledItemDelegate_SetModelData")]
	public static extern void QStyledItemDelegate_SetModelData(void* c_this, void* editor, void* model, void* index);
	[LinkName("QStyledItemDelegate_UpdateEditorGeometry")]
	public static extern void QStyledItemDelegate_UpdateEditorGeometry(void* c_this, void* editor, void* option, void* index);
	[LinkName("QStyledItemDelegate_ItemEditorFactory")]
	public static extern void* QStyledItemDelegate_ItemEditorFactory(void* c_this);
	[LinkName("QStyledItemDelegate_SetItemEditorFactory")]
	public static extern void QStyledItemDelegate_SetItemEditorFactory(void* c_this, void* factory);
	[LinkName("QStyledItemDelegate_DisplayText")]
	public static extern libqt_string QStyledItemDelegate_DisplayText(void* c_this, void* value, void* locale);
	[LinkName("QStyledItemDelegate_InitStyleOption")]
	public static extern void QStyledItemDelegate_InitStyleOption(void* c_this, void* option, void* index);
	[LinkName("QStyledItemDelegate_EventFilter")]
	public static extern bool QStyledItemDelegate_EventFilter(void* c_this, void* object, void* event);
	[LinkName("QStyledItemDelegate_EditorEvent")]
	public static extern bool QStyledItemDelegate_EditorEvent(void* c_this, void* event, void* model, void* option, void* index);
	[LinkName("QStyledItemDelegate_Tr2")]
	public static extern libqt_string QStyledItemDelegate_Tr2(char8[] s, char8[] c);
	[LinkName("QStyledItemDelegate_Tr3")]
	public static extern libqt_string QStyledItemDelegate_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStyledItemDelegate_Delete")]
	public static extern void QStyledItemDelegate_Delete(void* self);
}