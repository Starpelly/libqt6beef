using System;
using System.Interop;
namespace Qt;

public interface IQStringListModel
{
	void* NativePtr { get; }
}
public class QStringListModel : IQStringListModel, IQAbstractListModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStringListModel_new();
	}
	
	public ~this()
	{
		CQt.QStringListModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QStringListModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QStringListModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStringListModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QStringListModel_Tr(s);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return CQt.QStringListModel_RowCount(this.nativePtr, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QStringListModel_Sibling(this.nativePtr, row, column, (idx == default) ? default : (void*)idx.NativePtr);
	}
	
	public virtual void Data(IQModelIndex index, int32 role)
	{
		CQt.QStringListModel_Data(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, role);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QStringListModel_SetData(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, (value == default) ? default : (void*)value.NativePtr, role);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return CQt.QStringListModel_ClearItemData(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return CQt.QStringListModel_Flags(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QStringListModel_InsertRows(this.nativePtr, row, count, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QStringListModel_RemoveRows(this.nativePtr, row, count, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QStringListModel_MoveRows(this.nativePtr, (sourceParent == default) ? default : (void*)sourceParent.NativePtr, sourceRow, count, (destinationParent == default) ? default : (void*)destinationParent.NativePtr, destinationChild);
	}
	
	public virtual void* ItemData(IQModelIndex index)
	{
		return CQt.QStringListModel_ItemData(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QStringListModel_SetItemData(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, roles);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QStringListModel_Sort(this.nativePtr, column, order);
	}
	
	public libqt_string[] StringList()
	{
		return CQt.QStringListModel_StringList(this.nativePtr);
	}
	
	public void SetStringList(String[] strings)
	{
		CQt.QStringListModel_SetStringList(this.nativePtr, null);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QStringListModel_SupportedDropActions(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QStringListModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QStringListModel_Tr3(s, c, n);
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QAbstractListModel_Index(this.nativePtr, row, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractListModel_DropMimeData(this.nativePtr, (data == null) ? null : (void*)data.NativePtr, action, row, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual void Parent(IQModelIndex child)
	{
		CQt.QAbstractItemModel_Parent(this.nativePtr, (child == default) ? default : (void*)child.NativePtr);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_ColumnCount(this.nativePtr, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QAbstractItemModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, orientation, (value == default) ? default : (void*)value.NativePtr, role);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QAbstractItemModel_MimeTypes(this.nativePtr);
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QAbstractItemModel_MimeData(this.nativePtr, null);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanDropMimeData(this.nativePtr, (data == null) ? null : (void*)data.NativePtr, action, row, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumns(this.nativePtr, column, count, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumns(this.nativePtr, column, count, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, (sourceParent == default) ? default : (void*)sourceParent.NativePtr, sourceColumn, count, (destinationParent == default) ? default : (void*)destinationParent.NativePtr, destinationChild);
	}
	
	public bool InsertRow(int32 row)
	{
		return CQt.QAbstractItemModel_InsertRow(this.nativePtr, row);
	}
	
	public bool InsertColumn(int32 column)
	{
		return CQt.QAbstractItemModel_InsertColumn(this.nativePtr, column);
	}
	
	public bool RemoveRow(int32 row)
	{
		return CQt.QAbstractItemModel_RemoveRow(this.nativePtr, row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return CQt.QAbstractItemModel_RemoveColumn(this.nativePtr, column);
	}
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, (sourceParent == default) ? default : (void*)sourceParent.NativePtr, sourceRow, (destinationParent == default) ? default : (void*)destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, (sourceParent == default) ? default : (void*)sourceParent.NativePtr, sourceColumn, (destinationParent == default) ? default : (void*)destinationParent.NativePtr, destinationChild);
	}
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		CQt.QAbstractItemModel_FetchMore(this.nativePtr, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanFetchMore(this.nativePtr, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, (start == default) ? default : (void*)start.NativePtr, role, (value == default) ? default : (void*)value.NativePtr, hits, flags);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Span(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void* RoleNames()
	{
		return CQt.QAbstractItemModel_RoleNames(this.nativePtr);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default) ? default : (void*)index.NativePtr);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, (roleDataSpan == default) ? default : (void)roleDataSpan.NativePtr);
	}
	
	public virtual bool Submit()
	{
		return CQt.QAbstractItemModel_Submit(this.nativePtr);
	}
	
	public virtual void Revert()
	{
		CQt.QAbstractItemModel_Revert(this.nativePtr);
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool InsertRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertRow2(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumn2(this.nativePtr, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, (parent == default) ? default : (void*)parent.NativePtr);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, (index == default) ? default : (void*)index.NativePtr, options);
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
	[LinkName("QStringListModel_new")]
	public static extern void* QStringListModel_new();
	[LinkName("QStringListModel_new2")]
	public static extern void* QStringListModel_new2(libqt_string[] strings);
	[LinkName("QStringListModel_new3")]
	public static extern void* QStringListModel_new3(void* parent);
	[LinkName("QStringListModel_new4")]
	public static extern void* QStringListModel_new4(libqt_string[] strings, void* parent);
	[LinkName("QStringListModel_MetaObject")]
	public static extern void* QStringListModel_MetaObject(void* c_this);
	[LinkName("QStringListModel_Metacast")]
	public static extern void* QStringListModel_Metacast(void* c_this, char8* param1);
	[LinkName("QStringListModel_Metacall")]
	public static extern int32 QStringListModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QStringListModel_Tr")]
	public static extern libqt_string QStringListModel_Tr(char8* s);
	[LinkName("QStringListModel_RowCount")]
	public static extern int32 QStringListModel_RowCount(void* c_this, void* parent);
	[LinkName("QStringListModel_Sibling")]
	public static extern void QStringListModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QStringListModel_Data")]
	public static extern void QStringListModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QStringListModel_SetData")]
	public static extern bool QStringListModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QStringListModel_ClearItemData")]
	public static extern bool QStringListModel_ClearItemData(void* c_this, void* index);
	[LinkName("QStringListModel_Flags")]
	public static extern int64 QStringListModel_Flags(void* c_this, void* index);
	[LinkName("QStringListModel_InsertRows")]
	public static extern bool QStringListModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStringListModel_RemoveRows")]
	public static extern bool QStringListModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QStringListModel_MoveRows")]
	public static extern bool QStringListModel_MoveRows(void* c_this, void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild);
	[LinkName("QStringListModel_ItemData")]
	public static extern void* QStringListModel_ItemData(void* c_this, void* index);
	[LinkName("QStringListModel_SetItemData")]
	public static extern bool QStringListModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QStringListModel_Sort")]
	public static extern void QStringListModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QStringListModel_StringList")]
	public static extern libqt_string[] QStringListModel_StringList(void* c_this);
	[LinkName("QStringListModel_SetStringList")]
	public static extern void QStringListModel_SetStringList(void* c_this, libqt_string[] strings);
	[LinkName("QStringListModel_SupportedDropActions")]
	public static extern int64 QStringListModel_SupportedDropActions(void* c_this);
	[LinkName("QStringListModel_Tr2")]
	public static extern libqt_string QStringListModel_Tr2(char8* s, char8* c);
	[LinkName("QStringListModel_Tr3")]
	public static extern libqt_string QStringListModel_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStringListModel_Delete")]
	public static extern void QStringListModel_Delete(void* self);
}