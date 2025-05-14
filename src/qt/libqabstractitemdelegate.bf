using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemDelegate__EndEditHint
{
	NoHint = 0,
	EditNextItem = 1,
	EditPreviousItem = 2,
	SubmitModelCache = 3,
	RevertModelCache = 4,
}
public interface IQAbstractItemDelegate
{
	void* NativePtr { get; }
}
public struct QAbstractItemDelegatePtr : IQAbstractItemDelegate, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QAbstractItemDelegate_new());
	}
	
	public void Dispose()
	{
		CQt.QAbstractItemDelegate_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QAbstractItemDelegate_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QAbstractItemDelegate_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QAbstractItemDelegate_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QAbstractItemDelegate_Tr(s);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_SizeHint(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_CreateEditor(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_DestroyEditor(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_SetEditorData(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_SetModelData(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		CQt.QAbstractItemDelegate_UpdateEditorGeometry(this.nativePtr, (editor == default || editor.NativePtr == default) ? default : editor.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_EditorEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return CQt.QAbstractItemDelegate_HelpEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr, (view == default || view.NativePtr == default) ? default : view.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int32[] PaintingRoles()
	{
		return CQt.QAbstractItemDelegate_PaintingRoles(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QAbstractItemDelegate_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QAbstractItemDelegate_Tr3(s, c, n);
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
public class QAbstractItemDelegate
{
	public QAbstractItemDelegatePtr handle;
	
	public static implicit operator QAbstractItemDelegatePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QAbstractItemDelegatePtr.New();
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
		return QAbstractItemDelegatePtr.Tr(s);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.Paint(painter, option, index);
	}
	
	public virtual void SizeHint(IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.SizeHint(option, index);
	}
	
	public virtual void* CreateEditor(IQWidget parent, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.CreateEditor(parent, option, index);
	}
	
	public virtual void DestroyEditor(IQWidget editor, IQModelIndex index)
	{
		this.handle.DestroyEditor(editor, index);
	}
	
	public virtual void SetEditorData(IQWidget editor, IQModelIndex index)
	{
		this.handle.SetEditorData(editor, index);
	}
	
	public virtual void SetModelData(IQWidget editor, IQAbstractItemModel model, IQModelIndex index)
	{
		this.handle.SetModelData(editor, model, index);
	}
	
	public virtual void UpdateEditorGeometry(IQWidget editor, IQStyleOptionViewItem option, IQModelIndex index)
	{
		this.handle.UpdateEditorGeometry(editor, option, index);
	}
	
	public virtual bool EditorEvent(IQEvent event, IQAbstractItemModel model, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.EditorEvent(event, model, option, index);
	}
	
	public virtual bool HelpEvent(IQHelpEvent event, IQAbstractItemView view, IQStyleOptionViewItem option, IQModelIndex index)
	{
		return this.handle.HelpEvent(event, view, option, index);
	}
	
	public virtual int32[] PaintingRoles()
	{
		return this.handle.PaintingRoles();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QAbstractItemDelegatePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QAbstractItemDelegatePtr.Tr3(s, c, n);
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
		QAbstractItemDelegatePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QAbstractItemDelegatePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QAbstractItemDelegatePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QAbstractItemDelegatePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QAbstractItemDelegate_new")]
	public static extern void* QAbstractItemDelegate_new();
	[LinkName("QAbstractItemDelegate_new2")]
	public static extern void* QAbstractItemDelegate_new2(void* parent);
	[LinkName("QAbstractItemDelegate_MetaObject")]
	public static extern void* QAbstractItemDelegate_MetaObject(void* c_this);
	[LinkName("QAbstractItemDelegate_Metacast")]
	public static extern void* QAbstractItemDelegate_Metacast(void* c_this, char8* param1);
	[LinkName("QAbstractItemDelegate_Metacall")]
	public static extern int32 QAbstractItemDelegate_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QAbstractItemDelegate_Tr")]
	public static extern libqt_string QAbstractItemDelegate_Tr(char8* s);
	[LinkName("QAbstractItemDelegate_Paint")]
	public static extern void QAbstractItemDelegate_Paint(void* c_this, void* painter, void* option, void* index);
	[LinkName("QAbstractItemDelegate_SizeHint")]
	public static extern void QAbstractItemDelegate_SizeHint(void* c_this, void* option, void* index);
	[LinkName("QAbstractItemDelegate_CreateEditor")]
	public static extern void* QAbstractItemDelegate_CreateEditor(void* c_this, void* parent, void* option, void* index);
	[LinkName("QAbstractItemDelegate_DestroyEditor")]
	public static extern void QAbstractItemDelegate_DestroyEditor(void* c_this, void* editor, void* index);
	[LinkName("QAbstractItemDelegate_SetEditorData")]
	public static extern void QAbstractItemDelegate_SetEditorData(void* c_this, void* editor, void* index);
	[LinkName("QAbstractItemDelegate_SetModelData")]
	public static extern void QAbstractItemDelegate_SetModelData(void* c_this, void* editor, void* model, void* index);
	[LinkName("QAbstractItemDelegate_UpdateEditorGeometry")]
	public static extern void QAbstractItemDelegate_UpdateEditorGeometry(void* c_this, void* editor, void* option, void* index);
	[LinkName("QAbstractItemDelegate_EditorEvent")]
	public static extern bool QAbstractItemDelegate_EditorEvent(void* c_this, void* event, void* model, void* option, void* index);
	[LinkName("QAbstractItemDelegate_HelpEvent")]
	public static extern bool QAbstractItemDelegate_HelpEvent(void* c_this, void* event, void* view, void* option, void* index);
	[LinkName("QAbstractItemDelegate_PaintingRoles")]
	public static extern int32[] QAbstractItemDelegate_PaintingRoles(void* c_this);
	[LinkName("QAbstractItemDelegate_Connect_CommitData")]
	public static extern void QAbstractItemDelegate_Connect_CommitData(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Connect_CloseEditor")]
	public static extern void QAbstractItemDelegate_Connect_CloseEditor(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Connect_SizeHintChanged")]
	public static extern void QAbstractItemDelegate_Connect_SizeHintChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemDelegate_Tr2")]
	public static extern libqt_string QAbstractItemDelegate_Tr2(char8* s, char8* c);
	[LinkName("QAbstractItemDelegate_Tr3")]
	public static extern libqt_string QAbstractItemDelegate_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QAbstractItemDelegate_Connect_CloseEditor2")]
	public static extern void QAbstractItemDelegate_Connect_CloseEditor2(void* c_this, c_intptr slot);
	/// Delete this object from C++ memory
	[LinkName("QAbstractItemDelegate_Delete")]
	public static extern void QAbstractItemDelegate_Delete(void* self);
}