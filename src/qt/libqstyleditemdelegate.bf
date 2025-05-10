using System;
using System.Interop;
namespace Qt;

public interface IQStyledItemDelegate
{
	void* NativePtr { get; }
}
public class QStyledItemDelegate : IQStyledItemDelegate, IQAbstractItemDelegate
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
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
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QStyledItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStyledItemDelegate_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QStyledItemDelegate_Tr(s);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_Paint(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_SizeHint(this.nativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QStyledItemDelegate_CreateEditor(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_SetEditorData(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_SetModelData(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (model == null) ? null : (void*)model.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_UpdateEditorGeometry(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public void* ItemEditorFactory()
	{
		return CQt.QStyledItemDelegate_ItemEditorFactory(this.nativePtr);
	}
	
	public void SetItemEditorFactory(IQItemEditorFactory factory)
	{
		CQt.QStyledItemDelegate_SetItemEditorFactory(this.nativePtr, (factory == null) ? null : (void*)factory.NativePtr);
	}
	
	public virtual libqt_string DisplayText(IQVariant value, IQLocale locale)
	{
		return CQt.QStyledItemDelegate_DisplayText(this.nativePtr, (value == default) ? default : (void*)value.NativePtr, (locale == default) ? default : (void*)locale.NativePtr);
	}
	
	public virtual void InitStyleOption(IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QStyledItemDelegate_InitStyleOption(this.nativePtr, (option == null) ? null : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject object, IQEvent event)
	{
		return CQt.QStyledItemDelegate_EventFilter(this.nativePtr, (object == null) ? null : (void*)object.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QStyledItemDelegate_EditorEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr, (model == null) ? null : (void*)model.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QStyledItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QStyledItemDelegate_Tr3(s, c, n);
	}
	
	public virtual void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, (editor == null) ? null : (void*)editor.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr, (view == null) ? null : (void*)view.NativePtr, (option == default) ? default : (void*)option.NativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
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
	[LinkName("QStyledItemDelegate_new")]
	public static extern void* QStyledItemDelegate_new();
	[LinkName("QStyledItemDelegate_new2")]
	public static extern void* QStyledItemDelegate_new2(void* parent);
	[LinkName("QStyledItemDelegate_MetaObject")]
	public static extern void* QStyledItemDelegate_MetaObject(void* c_this);
	[LinkName("QStyledItemDelegate_Metacast")]
	public static extern void* QStyledItemDelegate_Metacast(void* c_this, char8* param1);
	[LinkName("QStyledItemDelegate_Metacall")]
	public static extern int32 QStyledItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QStyledItemDelegate_Tr")]
	public static extern libqt_string QStyledItemDelegate_Tr(char8* s);
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
	public static extern libqt_string QStyledItemDelegate_Tr2(char8* s, char8* c);
	[LinkName("QStyledItemDelegate_Tr3")]
	public static extern libqt_string QStyledItemDelegate_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStyledItemDelegate_Delete")]
	public static extern void QStyledItemDelegate_Delete(void* self);
}