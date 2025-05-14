using System;
using System.Interop;
namespace Qt;

public interface IQSortFilterProxyModel
{
	void* NativePtr { get; }
}
public struct QSortFilterProxyModelPtr : IQSortFilterProxyModel, IDisposable, IQAbstractProxyModel
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QSortFilterProxyModel_new());
	}
	
	public void Dispose()
	{
		CQt.QSortFilterProxyModel_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QSortFilterProxyModel_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QSortFilterProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QSortFilterProxyModel_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QSortFilterProxyModel_Tr(s);
	}
	
	public void SetSourceModel(IQAbstractItemModel sourceModel)
	{
		CQt.QSortFilterProxyModel_SetSourceModel(this.nativePtr, (sourceModel == default || sourceModel.NativePtr == default) ? default : sourceModel.NativePtr);
	}
	
	public void MapToSource(IQModelIndex proxyIndex)
	{
		CQt.QSortFilterProxyModel_MapToSource(this.nativePtr, (proxyIndex == default || proxyIndex.NativePtr == default) ? default : proxyIndex.NativePtr);
	}
	
	public void MapFromSource(IQModelIndex sourceIndex)
	{
		CQt.QSortFilterProxyModel_MapFromSource(this.nativePtr, (sourceIndex == default || sourceIndex.NativePtr == default) ? default : sourceIndex.NativePtr);
	}
	
	public void MapSelectionToSource(IQItemSelection proxySelection)
	{
		CQt.QSortFilterProxyModel_MapSelectionToSource(this.nativePtr, (proxySelection == default || proxySelection.NativePtr == default) ? default : proxySelection.NativePtr);
	}
	
	public void MapSelectionFromSource(IQItemSelection sourceSelection)
	{
		CQt.QSortFilterProxyModel_MapSelectionFromSource(this.nativePtr, (sourceSelection == default || sourceSelection.NativePtr == default) ? default : sourceSelection.NativePtr);
	}
	
	public void FilterRegularExpression()
	{
		CQt.QSortFilterProxyModel_FilterRegularExpression(this.nativePtr);
	}
	
	public int32 FilterKeyColumn()
	{
		return CQt.QSortFilterProxyModel_FilterKeyColumn(this.nativePtr);
	}
	
	public void SetFilterKeyColumn(int32 column)
	{
		CQt.QSortFilterProxyModel_SetFilterKeyColumn(this.nativePtr, column);
	}
	
	public int64 FilterCaseSensitivity()
	{
		return CQt.QSortFilterProxyModel_FilterCaseSensitivity(this.nativePtr);
	}
	
	public void SetFilterCaseSensitivity(int64 cs)
	{
		CQt.QSortFilterProxyModel_SetFilterCaseSensitivity(this.nativePtr, (int64)cs);
	}
	
	public int64 SortCaseSensitivity()
	{
		return CQt.QSortFilterProxyModel_SortCaseSensitivity(this.nativePtr);
	}
	
	public void SetSortCaseSensitivity(int64 cs)
	{
		CQt.QSortFilterProxyModel_SetSortCaseSensitivity(this.nativePtr, (int64)cs);
	}
	
	public bool IsSortLocaleAware()
	{
		return CQt.QSortFilterProxyModel_IsSortLocaleAware(this.nativePtr);
	}
	
	public void SetSortLocaleAware(bool on)
	{
		CQt.QSortFilterProxyModel_SetSortLocaleAware(this.nativePtr, on);
	}
	
	public int32 SortColumn()
	{
		return CQt.QSortFilterProxyModel_SortColumn(this.nativePtr);
	}
	
	public int64 SortOrder()
	{
		return CQt.QSortFilterProxyModel_SortOrder(this.nativePtr);
	}
	
	public bool DynamicSortFilter()
	{
		return CQt.QSortFilterProxyModel_DynamicSortFilter(this.nativePtr);
	}
	
	public void SetDynamicSortFilter(bool enable)
	{
		CQt.QSortFilterProxyModel_SetDynamicSortFilter(this.nativePtr, enable);
	}
	
	public int32 SortRole()
	{
		return CQt.QSortFilterProxyModel_SortRole(this.nativePtr);
	}
	
	public void SetSortRole(int32 role)
	{
		CQt.QSortFilterProxyModel_SetSortRole(this.nativePtr, role);
	}
	
	public int32 FilterRole()
	{
		return CQt.QSortFilterProxyModel_FilterRole(this.nativePtr);
	}
	
	public void SetFilterRole(int32 role)
	{
		CQt.QSortFilterProxyModel_SetFilterRole(this.nativePtr, role);
	}
	
	public bool IsRecursiveFilteringEnabled()
	{
		return CQt.QSortFilterProxyModel_IsRecursiveFilteringEnabled(this.nativePtr);
	}
	
	public void SetRecursiveFilteringEnabled(bool recursive)
	{
		CQt.QSortFilterProxyModel_SetRecursiveFilteringEnabled(this.nativePtr, recursive);
	}
	
	public bool AutoAcceptChildRows()
	{
		return CQt.QSortFilterProxyModel_AutoAcceptChildRows(this.nativePtr);
	}
	
	public void SetAutoAcceptChildRows(bool accept)
	{
		CQt.QSortFilterProxyModel_SetAutoAcceptChildRows(this.nativePtr, accept);
	}
	
	public void SetFilterRegularExpression(String pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterRegularExpression(this.nativePtr, libqt_string(pattern));
	}
	
	public void SetFilterRegularExpressionWithRegularExpression(IQRegularExpression regularExpression)
	{
		CQt.QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression(this.nativePtr, (regularExpression == default || regularExpression.NativePtr == default) ? default : regularExpression.NativePtr);
	}
	
	public void SetFilterWildcard(String pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterWildcard(this.nativePtr, libqt_string(pattern));
	}
	
	public void SetFilterFixedString(String pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterFixedString(this.nativePtr, libqt_string(pattern));
	}
	
	public void Invalidate()
	{
		CQt.QSortFilterProxyModel_Invalidate(this.nativePtr);
	}
	
	public bool FilterAcceptsRow(int32 source_row, IQModelIndex source_parent)
	{
		return CQt.QSortFilterProxyModel_FilterAcceptsRow(this.nativePtr, source_row, (source_parent == default || source_parent.NativePtr == default) ? default : source_parent.NativePtr);
	}
	
	public bool FilterAcceptsColumn(int32 source_column, IQModelIndex source_parent)
	{
		return CQt.QSortFilterProxyModel_FilterAcceptsColumn(this.nativePtr, source_column, (source_parent == default || source_parent.NativePtr == default) ? default : source_parent.NativePtr);
	}
	
	public bool LessThan(IQModelIndex source_left, IQModelIndex source_right)
	{
		return CQt.QSortFilterProxyModel_LessThan(this.nativePtr, (source_left == default || source_left.NativePtr == default) ? default : source_left.NativePtr, (source_right == default || source_right.NativePtr == default) ? default : source_right.NativePtr);
	}
	
	public void InvalidateFilter()
	{
		CQt.QSortFilterProxyModel_InvalidateFilter(this.nativePtr);
	}
	
	public void InvalidateRowsFilter()
	{
		CQt.QSortFilterProxyModel_InvalidateRowsFilter(this.nativePtr);
	}
	
	public void InvalidateColumnsFilter()
	{
		CQt.QSortFilterProxyModel_InvalidateColumnsFilter(this.nativePtr);
	}
	
	public void Index(int32 row, int32 column, IQModelIndex parent)
	{
		CQt.QSortFilterProxyModel_Index(this.nativePtr, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Parent(IQModelIndex child)
	{
		CQt.QSortFilterProxyModel_Parent(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		CQt.QSortFilterProxyModel_Sibling(this.nativePtr, row, column, (idx == default || idx.NativePtr == default) ? default : idx.NativePtr);
	}
	
	public int32 RowCount(IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_RowCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int32 ColumnCount(IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_ColumnCount(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool HasChildren(IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_HasChildren(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void Data(IQModelIndex index, int32 role)
	{
		CQt.QSortFilterProxyModel_Data(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, role);
	}
	
	public bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return CQt.QSortFilterProxyModel_SetData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QSortFilterProxyModel_HeaderData(this.nativePtr, section, (int64)orientation, role);
	}
	
	public bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return CQt.QSortFilterProxyModel_SetHeaderData(this.nativePtr, section, (int64)orientation, (value == default || value.NativePtr == default) ? default : value.NativePtr, role);
	}
	
	public void* MimeData(IQModelIndex[] indexes)
	{
		return CQt.QSortFilterProxyModel_MimeData(this.nativePtr, null);
	}
	
	public bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_DropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_InsertRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool InsertColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_InsertColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveRows(int32 row, int32 count, IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_RemoveRows(this.nativePtr, row, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool RemoveColumns(int32 column, int32 count, IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_RemoveColumns(this.nativePtr, column, count, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void FetchMore(IQModelIndex parent)
	{
		CQt.QSortFilterProxyModel_FetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public bool CanFetchMore(IQModelIndex parent)
	{
		return CQt.QSortFilterProxyModel_CanFetchMore(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 Flags(IQModelIndex index)
	{
		return CQt.QSortFilterProxyModel_Flags(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Buddy(IQModelIndex index)
	{
		CQt.QSortFilterProxyModel_Buddy(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return CQt.QSortFilterProxyModel_Match(this.nativePtr, (start == default || start.NativePtr == default) ? default : start.NativePtr, role, (value == default || value.NativePtr == default) ? default : value.NativePtr, hits, flags);
	}
	
	public void Span(IQModelIndex index)
	{
		CQt.QSortFilterProxyModel_Span(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void Sort(int32 column, int64 order)
	{
		CQt.QSortFilterProxyModel_Sort(this.nativePtr, column, (int64)order);
	}
	
	public libqt_string[] MimeTypes()
	{
		return CQt.QSortFilterProxyModel_MimeTypes(this.nativePtr);
	}
	
	public int64 SupportedDropActions()
	{
		return CQt.QSortFilterProxyModel_SupportedDropActions(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QSortFilterProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QSortFilterProxyModel_Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return CQt.QAbstractProxyModel_SourceModel(this.nativePtr);
	}
	
	public bool Submit()
	{
		return CQt.QAbstractProxyModel_Submit(this.nativePtr);
	}
	
	public void Revert()
	{
		CQt.QAbstractProxyModel_Revert(this.nativePtr);
	}
	
	public void* ItemData(IQModelIndex index)
	{
		return CQt.QAbstractProxyModel_ItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool SetItemData(IQModelIndex index, void* roles)
	{
		return CQt.QAbstractProxyModel_SetItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, roles);
	}
	
	public bool ClearItemData(IQModelIndex index)
	{
		return CQt.QAbstractProxyModel_ClearItemData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return CQt.QAbstractProxyModel_CanDropMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr, (int64)action, row, column, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public int64 SupportedDragActions()
	{
		return CQt.QAbstractProxyModel_SupportedDragActions(this.nativePtr);
	}
	
	public void* RoleNames()
	{
		return CQt.QAbstractProxyModel_RoleNames(this.nativePtr);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
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
	
	public bool CheckIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, default);
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
public class QSortFilterProxyModel
{
	public QSortFilterProxyModelPtr handle;
	
	public static implicit operator QSortFilterProxyModelPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QSortFilterProxyModelPtr.New();
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
		return QSortFilterProxyModelPtr.Tr(s);
	}
	
	public virtual void SetSourceModel(IQAbstractItemModel sourceModel)
	{
		this.handle.SetSourceModel(sourceModel);
	}
	
	public virtual void MapToSource(IQModelIndex proxyIndex)
	{
		this.handle.MapToSource(proxyIndex);
	}
	
	public virtual void MapFromSource(IQModelIndex sourceIndex)
	{
		this.handle.MapFromSource(sourceIndex);
	}
	
	public virtual void MapSelectionToSource(IQItemSelection proxySelection)
	{
		this.handle.MapSelectionToSource(proxySelection);
	}
	
	public virtual void MapSelectionFromSource(IQItemSelection sourceSelection)
	{
		this.handle.MapSelectionFromSource(sourceSelection);
	}
	
	public void FilterRegularExpression()
	{
		this.handle.FilterRegularExpression();
	}
	
	public int32 FilterKeyColumn()
	{
		return this.handle.FilterKeyColumn();
	}
	
	public void SetFilterKeyColumn(int32 column)
	{
		this.handle.SetFilterKeyColumn(column);
	}
	
	public int64 FilterCaseSensitivity()
	{
		return this.handle.FilterCaseSensitivity();
	}
	
	public void SetFilterCaseSensitivity(int64 cs)
	{
		this.handle.SetFilterCaseSensitivity(cs);
	}
	
	public int64 SortCaseSensitivity()
	{
		return this.handle.SortCaseSensitivity();
	}
	
	public void SetSortCaseSensitivity(int64 cs)
	{
		this.handle.SetSortCaseSensitivity(cs);
	}
	
	public bool IsSortLocaleAware()
	{
		return this.handle.IsSortLocaleAware();
	}
	
	public void SetSortLocaleAware(bool on)
	{
		this.handle.SetSortLocaleAware(on);
	}
	
	public int32 SortColumn()
	{
		return this.handle.SortColumn();
	}
	
	public int64 SortOrder()
	{
		return this.handle.SortOrder();
	}
	
	public bool DynamicSortFilter()
	{
		return this.handle.DynamicSortFilter();
	}
	
	public void SetDynamicSortFilter(bool enable)
	{
		this.handle.SetDynamicSortFilter(enable);
	}
	
	public int32 SortRole()
	{
		return this.handle.SortRole();
	}
	
	public void SetSortRole(int32 role)
	{
		this.handle.SetSortRole(role);
	}
	
	public int32 FilterRole()
	{
		return this.handle.FilterRole();
	}
	
	public void SetFilterRole(int32 role)
	{
		this.handle.SetFilterRole(role);
	}
	
	public bool IsRecursiveFilteringEnabled()
	{
		return this.handle.IsRecursiveFilteringEnabled();
	}
	
	public void SetRecursiveFilteringEnabled(bool recursive)
	{
		this.handle.SetRecursiveFilteringEnabled(recursive);
	}
	
	public bool AutoAcceptChildRows()
	{
		return this.handle.AutoAcceptChildRows();
	}
	
	public void SetAutoAcceptChildRows(bool accept)
	{
		this.handle.SetAutoAcceptChildRows(accept);
	}
	
	public void SetFilterRegularExpression(String pattern)
	{
		this.handle.SetFilterRegularExpression(pattern);
	}
	
	public void SetFilterRegularExpressionWithRegularExpression(IQRegularExpression regularExpression)
	{
		this.handle.SetFilterRegularExpressionWithRegularExpression(regularExpression);
	}
	
	public void SetFilterWildcard(String pattern)
	{
		this.handle.SetFilterWildcard(pattern);
	}
	
	public void SetFilterFixedString(String pattern)
	{
		this.handle.SetFilterFixedString(pattern);
	}
	
	public void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual bool FilterAcceptsRow(int32 source_row, IQModelIndex source_parent)
	{
		return this.handle.FilterAcceptsRow(source_row, source_parent);
	}
	
	public virtual bool FilterAcceptsColumn(int32 source_column, IQModelIndex source_parent)
	{
		return this.handle.FilterAcceptsColumn(source_column, source_parent);
	}
	
	public virtual bool LessThan(IQModelIndex source_left, IQModelIndex source_right)
	{
		return this.handle.LessThan(source_left, source_right);
	}
	
	public void InvalidateFilter()
	{
		this.handle.InvalidateFilter();
	}
	
	public void InvalidateRowsFilter()
	{
		this.handle.InvalidateRowsFilter();
	}
	
	public void InvalidateColumnsFilter()
	{
		this.handle.InvalidateColumnsFilter();
	}
	
	public virtual void Index(int32 row, int32 column, IQModelIndex parent)
	{
		this.handle.Index(row, column, parent);
	}
	
	public virtual void Parent(IQModelIndex child)
	{
		this.handle.Parent(child);
	}
	
	public virtual void Sibling(int32 row, int32 column, IQModelIndex idx)
	{
		this.handle.Sibling(row, column, idx);
	}
	
	public virtual int32 RowCount(IQModelIndex parent)
	{
		return this.handle.RowCount(parent);
	}
	
	public virtual int32 ColumnCount(IQModelIndex parent)
	{
		return this.handle.ColumnCount(parent);
	}
	
	public virtual bool HasChildren(IQModelIndex parent)
	{
		return this.handle.HasChildren(parent);
	}
	
	public virtual void Data(IQModelIndex index, int32 role)
	{
		this.handle.Data(index, role);
	}
	
	public virtual bool SetData(IQModelIndex index, IQVariant value, int32 role)
	{
		return this.handle.SetData(index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		this.handle.HeaderData(section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, IQVariant value, int32 role)
	{
		return this.handle.SetHeaderData(section, orientation, value, role);
	}
	
	public virtual void* MimeData(IQModelIndex[] indexes)
	{
		return this.handle.MimeData(null);
	}
	
	public virtual bool DropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.DropMimeData(data, action, row, column, parent);
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
	
	public virtual void FetchMore(IQModelIndex parent)
	{
		this.handle.FetchMore(parent);
	}
	
	public virtual bool CanFetchMore(IQModelIndex parent)
	{
		return this.handle.CanFetchMore(parent);
	}
	
	public virtual int64 Flags(IQModelIndex index)
	{
		return this.handle.Flags(index);
	}
	
	public virtual void Buddy(IQModelIndex index)
	{
		this.handle.Buddy(index);
	}
	
	public virtual void[] Match(IQModelIndex start, int32 role, IQVariant value, int32 hits, int64 flags)
	{
		return this.handle.Match(start, role, value, hits, flags);
	}
	
	public virtual void Span(IQModelIndex index)
	{
		this.handle.Span(index);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		this.handle.Sort(column, order);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return this.handle.MimeTypes();
	}
	
	public virtual int64 SupportedDropActions()
	{
		return this.handle.SupportedDropActions();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QSortFilterProxyModelPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QSortFilterProxyModelPtr.Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return this.handle.SourceModel();
	}
	
	public virtual bool Submit()
	{
		return this.handle.Submit();
	}
	
	public virtual void Revert()
	{
		this.handle.Revert();
	}
	
	public virtual void* ItemData(IQModelIndex index)
	{
		return this.handle.ItemData(index);
	}
	
	public virtual bool SetItemData(IQModelIndex index, void* roles)
	{
		return this.handle.SetItemData(index, roles);
	}
	
	public virtual bool ClearItemData(IQModelIndex index)
	{
		return this.handle.ClearItemData(index);
	}
	
	public virtual bool CanDropMimeData(IQMimeData data, int64 action, int32 row, int32 column, IQModelIndex parent)
	{
		return this.handle.CanDropMimeData(data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return this.handle.SupportedDragActions();
	}
	
	public virtual void* RoleNames()
	{
		return this.handle.RoleNames();
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return this.handle.HasIndex(row, column);
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
	
	public bool CheckIndex(IQModelIndex index)
	{
		return this.handle.CheckIndex(index);
	}
	
	public virtual void MultiData(IQModelIndex index, IQModelRoleDataSpan roleDataSpan)
	{
		this.handle.MultiData(index, default);
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
		QSortFilterProxyModelPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QSortFilterProxyModelPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QSortFilterProxyModelPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QSortFilterProxyModelPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QSortFilterProxyModel_new")]
	public static extern void* QSortFilterProxyModel_new();
	[LinkName("QSortFilterProxyModel_new2")]
	public static extern void* QSortFilterProxyModel_new2(void* parent);
	[LinkName("QSortFilterProxyModel_MetaObject")]
	public static extern void* QSortFilterProxyModel_MetaObject(void* c_this);
	[LinkName("QSortFilterProxyModel_Metacast")]
	public static extern void* QSortFilterProxyModel_Metacast(void* c_this, char8* param1);
	[LinkName("QSortFilterProxyModel_Metacall")]
	public static extern int32 QSortFilterProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QSortFilterProxyModel_Tr")]
	public static extern libqt_string QSortFilterProxyModel_Tr(char8* s);
	[LinkName("QSortFilterProxyModel_SetSourceModel")]
	public static extern void QSortFilterProxyModel_SetSourceModel(void* c_this, void* sourceModel);
	[LinkName("QSortFilterProxyModel_MapToSource")]
	public static extern void QSortFilterProxyModel_MapToSource(void* c_this, void* proxyIndex);
	[LinkName("QSortFilterProxyModel_MapFromSource")]
	public static extern void QSortFilterProxyModel_MapFromSource(void* c_this, void* sourceIndex);
	[LinkName("QSortFilterProxyModel_MapSelectionToSource")]
	public static extern void QSortFilterProxyModel_MapSelectionToSource(void* c_this, void* proxySelection);
	[LinkName("QSortFilterProxyModel_MapSelectionFromSource")]
	public static extern void QSortFilterProxyModel_MapSelectionFromSource(void* c_this, void* sourceSelection);
	[LinkName("QSortFilterProxyModel_FilterRegularExpression")]
	public static extern void QSortFilterProxyModel_FilterRegularExpression(void* c_this);
	[LinkName("QSortFilterProxyModel_FilterKeyColumn")]
	public static extern int32 QSortFilterProxyModel_FilterKeyColumn(void* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterKeyColumn")]
	public static extern void QSortFilterProxyModel_SetFilterKeyColumn(void* c_this, int32 column);
	[LinkName("QSortFilterProxyModel_FilterCaseSensitivity")]
	public static extern int64 QSortFilterProxyModel_FilterCaseSensitivity(void* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterCaseSensitivity")]
	public static extern void QSortFilterProxyModel_SetFilterCaseSensitivity(void* c_this, int64 cs);
	[LinkName("QSortFilterProxyModel_SortCaseSensitivity")]
	public static extern int64 QSortFilterProxyModel_SortCaseSensitivity(void* c_this);
	[LinkName("QSortFilterProxyModel_SetSortCaseSensitivity")]
	public static extern void QSortFilterProxyModel_SetSortCaseSensitivity(void* c_this, int64 cs);
	[LinkName("QSortFilterProxyModel_IsSortLocaleAware")]
	public static extern bool QSortFilterProxyModel_IsSortLocaleAware(void* c_this);
	[LinkName("QSortFilterProxyModel_SetSortLocaleAware")]
	public static extern void QSortFilterProxyModel_SetSortLocaleAware(void* c_this, bool on);
	[LinkName("QSortFilterProxyModel_SortColumn")]
	public static extern int32 QSortFilterProxyModel_SortColumn(void* c_this);
	[LinkName("QSortFilterProxyModel_SortOrder")]
	public static extern int64 QSortFilterProxyModel_SortOrder(void* c_this);
	[LinkName("QSortFilterProxyModel_DynamicSortFilter")]
	public static extern bool QSortFilterProxyModel_DynamicSortFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_SetDynamicSortFilter")]
	public static extern void QSortFilterProxyModel_SetDynamicSortFilter(void* c_this, bool enable);
	[LinkName("QSortFilterProxyModel_SortRole")]
	public static extern int32 QSortFilterProxyModel_SortRole(void* c_this);
	[LinkName("QSortFilterProxyModel_SetSortRole")]
	public static extern void QSortFilterProxyModel_SetSortRole(void* c_this, int32 role);
	[LinkName("QSortFilterProxyModel_FilterRole")]
	public static extern int32 QSortFilterProxyModel_FilterRole(void* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterRole")]
	public static extern void QSortFilterProxyModel_SetFilterRole(void* c_this, int32 role);
	[LinkName("QSortFilterProxyModel_IsRecursiveFilteringEnabled")]
	public static extern bool QSortFilterProxyModel_IsRecursiveFilteringEnabled(void* c_this);
	[LinkName("QSortFilterProxyModel_SetRecursiveFilteringEnabled")]
	public static extern void QSortFilterProxyModel_SetRecursiveFilteringEnabled(void* c_this, bool recursive);
	[LinkName("QSortFilterProxyModel_AutoAcceptChildRows")]
	public static extern bool QSortFilterProxyModel_AutoAcceptChildRows(void* c_this);
	[LinkName("QSortFilterProxyModel_SetAutoAcceptChildRows")]
	public static extern void QSortFilterProxyModel_SetAutoAcceptChildRows(void* c_this, bool accept);
	[LinkName("QSortFilterProxyModel_SetFilterRegularExpression")]
	public static extern void QSortFilterProxyModel_SetFilterRegularExpression(void* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression")]
	public static extern void QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression(void* c_this, void* regularExpression);
	[LinkName("QSortFilterProxyModel_SetFilterWildcard")]
	public static extern void QSortFilterProxyModel_SetFilterWildcard(void* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_SetFilterFixedString")]
	public static extern void QSortFilterProxyModel_SetFilterFixedString(void* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_Invalidate")]
	public static extern void QSortFilterProxyModel_Invalidate(void* c_this);
	[LinkName("QSortFilterProxyModel_FilterAcceptsRow")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsRow(void* c_this, int32 source_row, void* source_parent);
	[LinkName("QSortFilterProxyModel_FilterAcceptsColumn")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsColumn(void* c_this, int32 source_column, void* source_parent);
	[LinkName("QSortFilterProxyModel_LessThan")]
	public static extern bool QSortFilterProxyModel_LessThan(void* c_this, void* source_left, void* source_right);
	[LinkName("QSortFilterProxyModel_InvalidateFilter")]
	public static extern void QSortFilterProxyModel_InvalidateFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateRowsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateRowsFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateColumnsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateColumnsFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_Index")]
	public static extern void QSortFilterProxyModel_Index(void* c_this, int32 row, int32 column, void* parent);
	[LinkName("QSortFilterProxyModel_Parent")]
	public static extern void QSortFilterProxyModel_Parent(void* c_this, void* child);
	[LinkName("QSortFilterProxyModel_Sibling")]
	public static extern void QSortFilterProxyModel_Sibling(void* c_this, int32 row, int32 column, void* idx);
	[LinkName("QSortFilterProxyModel_RowCount")]
	public static extern int32 QSortFilterProxyModel_RowCount(void* c_this, void* parent);
	[LinkName("QSortFilterProxyModel_ColumnCount")]
	public static extern int32 QSortFilterProxyModel_ColumnCount(void* c_this, void* parent);
	[LinkName("QSortFilterProxyModel_HasChildren")]
	public static extern bool QSortFilterProxyModel_HasChildren(void* c_this, void* parent);
	[LinkName("QSortFilterProxyModel_Data")]
	public static extern void QSortFilterProxyModel_Data(void* c_this, void* index, int32 role);
	[LinkName("QSortFilterProxyModel_SetData")]
	public static extern bool QSortFilterProxyModel_SetData(void* c_this, void* index, void* value, int32 role);
	[LinkName("QSortFilterProxyModel_HeaderData")]
	public static extern void QSortFilterProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QSortFilterProxyModel_SetHeaderData")]
	public static extern bool QSortFilterProxyModel_SetHeaderData(void* c_this, int32 section, int64 orientation, void* value, int32 role);
	[LinkName("QSortFilterProxyModel_MimeData")]
	public static extern void* QSortFilterProxyModel_MimeData(void* c_this, void[] indexes);
	[LinkName("QSortFilterProxyModel_DropMimeData")]
	public static extern bool QSortFilterProxyModel_DropMimeData(void* c_this, void* data, int64 action, int32 row, int32 column, void* parent);
	[LinkName("QSortFilterProxyModel_InsertRows")]
	public static extern bool QSortFilterProxyModel_InsertRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QSortFilterProxyModel_InsertColumns")]
	public static extern bool QSortFilterProxyModel_InsertColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QSortFilterProxyModel_RemoveRows")]
	public static extern bool QSortFilterProxyModel_RemoveRows(void* c_this, int32 row, int32 count, void* parent);
	[LinkName("QSortFilterProxyModel_RemoveColumns")]
	public static extern bool QSortFilterProxyModel_RemoveColumns(void* c_this, int32 column, int32 count, void* parent);
	[LinkName("QSortFilterProxyModel_FetchMore")]
	public static extern void QSortFilterProxyModel_FetchMore(void* c_this, void* parent);
	[LinkName("QSortFilterProxyModel_CanFetchMore")]
	public static extern bool QSortFilterProxyModel_CanFetchMore(void* c_this, void* parent);
	[LinkName("QSortFilterProxyModel_Flags")]
	public static extern int64 QSortFilterProxyModel_Flags(void* c_this, void* index);
	[LinkName("QSortFilterProxyModel_Buddy")]
	public static extern void QSortFilterProxyModel_Buddy(void* c_this, void* index);
	[LinkName("QSortFilterProxyModel_Match")]
	public static extern void[] QSortFilterProxyModel_Match(void* c_this, void* start, int32 role, void* value, int32 hits, int64 flags);
	[LinkName("QSortFilterProxyModel_Span")]
	public static extern void QSortFilterProxyModel_Span(void* c_this, void* index);
	[LinkName("QSortFilterProxyModel_Sort")]
	public static extern void QSortFilterProxyModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QSortFilterProxyModel_MimeTypes")]
	public static extern libqt_string[] QSortFilterProxyModel_MimeTypes(void* c_this);
	[LinkName("QSortFilterProxyModel_SupportedDropActions")]
	public static extern int64 QSortFilterProxyModel_SupportedDropActions(void* c_this);
	[LinkName("QSortFilterProxyModel_Connect_DynamicSortFilterChanged")]
	public static extern void QSortFilterProxyModel_Connect_DynamicSortFilterChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_FilterCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_Connect_FilterCaseSensitivityChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_SortCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_Connect_SortCaseSensitivityChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_SortLocaleAwareChanged")]
	public static extern void QSortFilterProxyModel_Connect_SortLocaleAwareChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_SortRoleChanged")]
	public static extern void QSortFilterProxyModel_Connect_SortRoleChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_FilterRoleChanged")]
	public static extern void QSortFilterProxyModel_Connect_FilterRoleChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_RecursiveFilteringEnabledChanged")]
	public static extern void QSortFilterProxyModel_Connect_RecursiveFilteringEnabledChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Connect_AutoAcceptChildRowsChanged")]
	public static extern void QSortFilterProxyModel_Connect_AutoAcceptChildRowsChanged(void* c_this, c_intptr slot);
	[LinkName("QSortFilterProxyModel_Tr2")]
	public static extern libqt_string QSortFilterProxyModel_Tr2(char8* s, char8* c);
	[LinkName("QSortFilterProxyModel_Tr3")]
	public static extern libqt_string QSortFilterProxyModel_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSortFilterProxyModel_Delete")]
	public static extern void QSortFilterProxyModel_Delete(void* self);
}