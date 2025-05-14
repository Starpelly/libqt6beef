using System;
using System.Interop;
namespace Qt;

public interface IQConcatenateTablesProxyModel
{
	void* NativePtr { get; }
}
public struct QConcatenateTablesProxyModelPtr : IQConcatenateTablesProxyModel, IDisposable, IQAbstractItemModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QConcatenateTablesProxyModel_new());
	}
	
	public void Dispose()
	{
		CQt.QConcatenateTablesProxyModel_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QConcatenateTablesProxyModel_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QConcatenateTablesProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QConcatenateTablesProxyModel_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QConcatenateTablesProxyModel_Tr(s);
	}
	
	public void*[] SourceModels()
	{
		return CQt.QConcatenateTablesProxyModel_SourceModels(this.nativePtr);
	}
	
	public void AddSourceModel(IQAbstractItemModel sourceModel)
	{
		CQt.QConcatenateTablesProxyModel_AddSourceModel(this.nativePtr, (sourceModel == default || sourceModel.NativePtr == default) ? default : sourceModel.NativePtr);
	}
	
	public void RemoveSourceModel(IQAbstractItemModel sourceModel)
	{
		CQt.QConcatenateTablesProxyModel_RemoveSourceModel(this.nativePtr, (sourceModel == default || sourceModel.NativePtr == default) ? default : sourceModel.NativePtr);
	}
	
	public void MapFromSource(IQModelIndex sourceIndex)
	{
		CQt.QConcatenateTablesProxyModel_MapFromSource(this.nativePtr, (sourceIndex == default || sourceIndex.NativePtr == default) ? default : sourceIndex.NativePtr);
	}
	
	public void MapToSource(IQModelIndex proxyIndex)
	{
		CQt.QConcatenateTablesProxyModel_MapToSource(this.nativePtr, (proxyIndex == default || proxyIndex.NativePtr == default) ? default : proxyIndex.NativePtr);
	}
	
	public void Data(IQModelIndex index, int32 role)
	{
		CQt.QConcatenateTablesProxyModel_Data(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, role);
	}
	
	public bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QConcatenateTablesProxyModel_SetData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void* ItemData(IQModelIndex proxyIndex)
	{
		return CQt.QConcatenateTablesProxyModel_ItemData(this.nativePtr, (proxyIndex == default || proxyIndex.NativePtr == default) ? default : proxyIndex.NativePtr);
	}
	
	public bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QConcatenateTablesProxyModel_SetItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, roles);
	}
	
	public int64 Flags(IQModelIndex index)
	{
		return CQt.QConcatenateTablesProxyModel_Flags(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QConcatenateTablesProxyModel_Index(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Parent(IQModelIndex index)
	{
		CQt.QConcatenateTablesProxyModel_Parent(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int32 RowCount(IQModelIndex parent)
	{
		return CQt.QConcatenateTablesProxyModel_RowCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QConcatenateTablesProxyModel_HeaderData(this.nativePtr, section, (int64)orientation, role);
	}
	
	public int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QConcatenateTablesProxyModel_ColumnCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QConcatenateTablesProxyModel_MimeTypes(this.nativePtr);
	}
	
	public void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QConcatenateTablesProxyModel_MimeData(this.nativePtr, null);
	}
	
	public bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QConcatenateTablesProxyModel_CanDropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QConcatenateTablesProxyModel_DropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Span(IQModelIndex index)
	{
		CQt.QConcatenateTablesProxyModel_Span(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QConcatenateTablesProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QConcatenateTablesProxyModel_Tr3(s, c, n);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QAbstractItemModel_Sibling(this.nativePtr, row, column, (idx == default || idx.NativePtr == default) ? default : idx.NativePtr);
	}
	
	public bool HasChildren(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasChildren(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QAbstractItemModel_SetHeaderData(this.nativePtr, section, (int64)orientation, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public bool ClearItemData(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_ClearItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QAbstractItemModel_SupportedDropActions(this.nativePtr);
	}
	
	public int64 SupportedDragActions()
	{
		return CQt.QAbstractItemModel_SupportedDragActions(this.nativePtr);
	}
	
	public bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRows(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, count, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
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
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceRow, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, (sourceParent == default || sourceParent.NativePtr == default) ? default : sourceParent.NativePtr, sourceColumn, (destinationParent == default || destinationParent.NativePtr == default) ? default : destinationParent.NativePtr, destinationChild);
	}
	
	public void FetchMore(IQModelIndex parent)
	{
		CQt.QAbstractItemModel_FetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_CanFetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Sort(int32 column, int64 order)
	{
		CQt.QAbstractItemModel_Sort(this.nativePtr, column, (int64)order);
	}
	
	public void Buddy(IQModelIndex index)
	{
		CQt.QAbstractItemModel_Buddy(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QAbstractItemModel_Match(this.nativePtr, (start == default || start.NativePtr == default) ? default : start.NativePtr, role, (value == default || value.NativePtr == default) ? default : value.NativePtr, hits, flags);
	}
	
	public void* RoleNames()
	{
		return CQt.QAbstractItemModel_RoleNames(this.nativePtr);
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, default);
	}
	
	public bool Submit()
	{
		return CQt.QAbstractItemModel_Submit(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QAbstractItemModel_Revert(this.nativePtr);
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertRow2(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_InsertColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, options);
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
public class QConcatenateTablesProxyModel
{
	public QConcatenateTablesProxyModelPtr handle;
	
	public static implicit operator QConcatenateTablesProxyModelPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QConcatenateTablesProxyModelPtr.New();
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
		return QConcatenateTablesProxyModelPtr.Tr(s);
	}
	
	public void*[] SourceModels()
	{
		return this.handle.SourceModels();
	}
	
	public void AddSourceModel(IQAbstractItemModel sourceModel)
	{
		this.handle.AddSourceModel(sourceModel);
	}
	
	public void RemoveSourceModel(IQAbstractItemModel sourceModel)
	{
		this.handle.RemoveSourceModel(sourceModel);
	}
	
	public void MapFromSource(IQModelIndex sourceIndex)
	{
		this.handle.MapFromSource(sourceIndex);
	}
	
	public void MapToSource(IQModelIndex proxyIndex)
	{
		this.handle.MapToSource(proxyIndex);
	}
	
	public virtual void Data(IQModelIndex index, int32 role)
	{
		this.handle.Data(index, role);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return this.handle.SetData(index, value, role);
	}
	
	public virtual void* ItemData(IQModelIndex proxyIndex)
	{
		return this.handle.ItemData(proxyIndex);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return this.handle.SetItemData(index, roles);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return this.handle.Flags(index);
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		this.handle.Index(row, column, parent);
	}
	
	public virtual void Parent(IQModelIndex index)
	{
		this.handle.Parent(index);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return this.handle.RowCount(parent);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		this.handle.HeaderData(section, orientation, role);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return this.handle.ColumnCount(parent);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.CanDropMimeData(data, action, row, column, parent);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.DropMimeData(data, action, row, column, parent);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		this.handle.Span(index);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QConcatenateTablesProxyModelPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QConcatenateTablesProxyModelPtr.Tr3(s, c, n);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return this.handle.HasIndex(row, column);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		this.handle.Sibling(row, column, idx);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return this.handle.HasChildren(parent);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return this.handle.SetHeaderData(section, orientation, value, role);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return this.handle.ClearItemData(index);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public virtual int64 SupportedDragActions()
	{
		return this.handle.SupportedDragActions();
	}
	
	public virtual bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertRows(row, count, parent);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.InsertColumns(column, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveRows(row, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return this.handle.RemoveColumns(column, count, parent);
	}
	
	public virtual bool MoveRows(IQModelIndex sourceParent, int32 sourceRow, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool MoveColumns(IQModelIndex sourceParent, int32 sourceColumn, int32 count, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
	}
	
	public bool InsertRow(int32 row)
	{
		return this.handle.InsertRow(row);
	}
	
	public bool InsertColumn(int32 column)
	{
		return this.handle.InsertColumn(column);
	}
	
	public bool RemoveRow(int32 row)
	{
		return this.handle.RemoveRow(row);
	}
	
	public bool RemoveColumn(int32 column)
	{
		return this.handle.RemoveColumn(column);
	}
	
	public bool MoveRow(IQModelIndex sourceParent, int32 sourceRow, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveRow(sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(IQModelIndex sourceParent, int32 sourceColumn, IQModelIndex destinationParent, int32 destinationChild)
	{
		return this.handle.MoveColumn(sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		this.handle.FetchMore(parent);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return this.handle.CanFetchMore(parent);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		this.handle.Sort(column, order);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		this.handle.Buddy(index);
	}
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return this.handle.Match(start, role, value, hits, flags);
	}
	
	public virtual void* RoleNames()
	{
		return this.handle.RoleNames();
	}
	
	public bool CheckIndex(IQModelIndex index)
	{
		return this.handle.CheckIndex(index);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(index, default);
	}
	
	public virtual bool Submit()
	{
		return this.handle.Submit();
	}
	
	public virtual void Revert()
	{
		this.handle.Revert();
	}
	
	public bool HasIndex3(int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.HasIndex3(row, column, parent);
	}
	
	public bool InsertRow2(int32 row, IQModelIndex parent)
	{
		return this.handle.InsertRow2(row, parent);
	}
	
	public bool InsertColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.InsertColumn2(column, parent);
	}
	
	public bool RemoveRow2(int32 row, IQModelIndex parent)
	{
		return this.handle.RemoveRow2(row, parent);
	}
	
	public bool RemoveColumn2(int32 column, IQModelIndex parent)
	{
		return this.handle.RemoveColumn2(column, parent);
	}
	
	public bool CheckIndex2(IQModelIndex index, int64 options)
	{
		return this.handle.CheckIndex2(index, options);
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
		QConcatenateTablesProxyModelPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QConcatenateTablesProxyModelPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QConcatenateTablesProxyModelPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QConcatenateTablesProxyModelPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QConcatenateTablesProxyModel_new")]
	public static extern void* QConcatenateTablesProxyModel_new();
	[LinkName("QConcatenateTablesProxyModel_new2")]
	public static extern void* QConcatenateTablesProxyModel_new2(void* parent);
	[LinkName("QConcatenateTablesProxyModel_MetaObject")]
	public static extern void* QConcatenateTablesProxyModel_MetaObject(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_Metacast")]
	public static extern void* QConcatenateTablesProxyModel_Metacast(void* c_this, char8* param1);
	[LinkName("QConcatenateTablesProxyModel_Metacall")]
	public static extern int32 QConcatenateTablesProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QConcatenateTablesProxyModel_Tr")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr(char8* s);
	[LinkName("QConcatenateTablesProxyModel_SourceModels")]
	public static extern void*[] QConcatenateTablesProxyModel_SourceModels(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_AddSourceModel")]
	public static extern void QConcatenateTablesProxyModel_AddSourceModel(void* c_this, void* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_RemoveSourceModel")]
	public static extern void QConcatenateTablesProxyModel_RemoveSourceModel(void* c_this, void* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_MapFromSource")]
	public static extern void QConcatenateTablesProxyModel_MapFromSource(void* c_this, void* sourceIndex);
	[LinkName("QConcatenateTablesProxyModel_MapToSource")]
	public static extern void QConcatenateTablesProxyModel_MapToSource(void* c_this, void* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_Data")]
	public static extern void QConcatenateTablesProxyModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QConcatenateTablesProxyModel_SetData")]
	public static extern bool QConcatenateTablesProxyModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ItemData")]
	public static extern void* QConcatenateTablesProxyModel_ItemData(void* c_this, void* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_SetItemData")]
	public static extern bool QConcatenateTablesProxyModel_SetItemData(void* c_this, void* index, void* roles);
	[LinkName("QConcatenateTablesProxyModel_Flags")]
	public static extern int64 QConcatenateTablesProxyModel_Flags(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_Index")]
	public static extern void QConcatenateTablesProxyModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_Parent")]
	public static extern void QConcatenateTablesProxyModel_Parent(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_RowCount")]
	public static extern int32 QConcatenateTablesProxyModel_RowCount(void* c_this, void* parent);
	[LinkName("QConcatenateTablesProxyModel_HeaderData")]
	public static extern void QConcatenateTablesProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ColumnCount")]
	public static extern int32 QConcatenateTablesProxyModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QConcatenateTablesProxyModel_MimeTypes")]
	public static extern libqt_string[] QConcatenateTablesProxyModel_MimeTypes(void* c_this);
	[LinkName("QConcatenateTablesProxyModel_MimeData")]
	public static extern void* QConcatenateTablesProxyModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QConcatenateTablesProxyModel_CanDropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_CanDropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_DropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QConcatenateTablesProxyModel_Span")]
	public static extern void QConcatenateTablesProxyModel_Span(void* c_this, void* index);
	[LinkName("QConcatenateTablesProxyModel_Tr2")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr2(char8* s, char8* c);
	[LinkName("QConcatenateTablesProxyModel_Tr3")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QConcatenateTablesProxyModel_Delete")]
	public static extern void QConcatenateTablesProxyModel_Delete(void* self);
}