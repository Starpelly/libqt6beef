using System;
using System.Interop;
namespace Qt;

public class QSortFilterProxyModel
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QSortFilterProxyModel_new();
	}
	
	public ~this()
	{
		CQt.QSortFilterProxyModel_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QSortFilterProxyModel_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QSortFilterProxyModel_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QSortFilterProxyModel_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QSortFilterProxyModel_Tr(s);
	}
	
	public virtual void SetSourceModel(void* sourceModel)
	{
		CQt.QSortFilterProxyModel_SetSourceModel(this.nativePtr, sourceModel);
	}
	
	public virtual void MapToSource(void* proxyIndex)
	{
		CQt.QSortFilterProxyModel_MapToSource(this.nativePtr, proxyIndex);
	}
	
	public virtual void MapFromSource(void* sourceIndex)
	{
		CQt.QSortFilterProxyModel_MapFromSource(this.nativePtr, sourceIndex);
	}
	
	public virtual void MapSelectionToSource(void* proxySelection)
	{
		CQt.QSortFilterProxyModel_MapSelectionToSource(this.nativePtr, proxySelection);
	}
	
	public virtual void MapSelectionFromSource(void* sourceSelection)
	{
		CQt.QSortFilterProxyModel_MapSelectionFromSource(this.nativePtr, sourceSelection);
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
		CQt.QSortFilterProxyModel_SetFilterCaseSensitivity(this.nativePtr, cs);
	}
	
	public int64 SortCaseSensitivity()
	{
		return CQt.QSortFilterProxyModel_SortCaseSensitivity(this.nativePtr);
	}
	
	public void SetSortCaseSensitivity(int64 cs)
	{
		CQt.QSortFilterProxyModel_SetSortCaseSensitivity(this.nativePtr, cs);
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
	
	public void SetFilterRegularExpression(libqt_string pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterRegularExpression(this.nativePtr, pattern);
	}
	
	public void SetFilterRegularExpressionWithRegularExpression(void* regularExpression)
	{
		CQt.QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression(this.nativePtr, regularExpression);
	}
	
	public void SetFilterWildcard(libqt_string pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterWildcard(this.nativePtr, pattern);
	}
	
	public void SetFilterFixedString(libqt_string pattern)
	{
		CQt.QSortFilterProxyModel_SetFilterFixedString(this.nativePtr, pattern);
	}
	
	public void Invalidate()
	{
		CQt.QSortFilterProxyModel_Invalidate(this.nativePtr);
	}
	
	public virtual bool FilterAcceptsRow(int32 source_row, void* source_parent)
	{
		return CQt.QSortFilterProxyModel_FilterAcceptsRow(this.nativePtr, source_row, source_parent);
	}
	
	public virtual bool FilterAcceptsColumn(int32 source_column, void* source_parent)
	{
		return CQt.QSortFilterProxyModel_FilterAcceptsColumn(this.nativePtr, source_column, source_parent);
	}
	
	public virtual bool LessThan(void* source_left, void* source_right)
	{
		return CQt.QSortFilterProxyModel_LessThan(this.nativePtr, source_left, source_right);
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
	
	public virtual void Index(int32 row, int32 column, void* parent)
	{
		CQt.QSortFilterProxyModel_Index(this.nativePtr, row, column, parent);
	}
	
	public virtual void Parent(void* child)
	{
		CQt.QSortFilterProxyModel_Parent(this.nativePtr, child);
	}
	
	public virtual void Sibling(int32 row, int32 column, void* idx)
	{
		CQt.QSortFilterProxyModel_Sibling(this.nativePtr, row, column, idx);
	}
	
	public virtual int32 RowCount(void* parent)
	{
		return CQt.QSortFilterProxyModel_RowCount(this.nativePtr, parent);
	}
	
	public virtual int32 ColumnCount(void* parent)
	{
		return CQt.QSortFilterProxyModel_ColumnCount(this.nativePtr, parent);
	}
	
	public virtual bool HasChildren(void* parent)
	{
		return CQt.QSortFilterProxyModel_HasChildren(this.nativePtr, parent);
	}
	
	public virtual void Data(void* index, int32 role)
	{
		CQt.QSortFilterProxyModel_Data(this.nativePtr, index, role);
	}
	
	public virtual bool SetData(void* index, void* value, int32 role)
	{
		return CQt.QSortFilterProxyModel_SetData(this.nativePtr, index, value, role);
	}
	
	public virtual void HeaderData(int32 section, int64 orientation, int32 role)
	{
		CQt.QSortFilterProxyModel_HeaderData(this.nativePtr, section, orientation, role);
	}
	
	public virtual bool SetHeaderData(int32 section, int64 orientation, void* value, int32 role)
	{
		return CQt.QSortFilterProxyModel_SetHeaderData(this.nativePtr, section, orientation, value, role);
	}
	
	public virtual void* MimeData(void[] indexes)
	{
		return CQt.QSortFilterProxyModel_MimeData(this.nativePtr, indexes);
	}
	
	public virtual bool DropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QSortFilterProxyModel_DropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual bool InsertRows(int32 row, int32 count, void* parent)
	{
		return CQt.QSortFilterProxyModel_InsertRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool InsertColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QSortFilterProxyModel_InsertColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual bool RemoveRows(int32 row, int32 count, void* parent)
	{
		return CQt.QSortFilterProxyModel_RemoveRows(this.nativePtr, row, count, parent);
	}
	
	public virtual bool RemoveColumns(int32 column, int32 count, void* parent)
	{
		return CQt.QSortFilterProxyModel_RemoveColumns(this.nativePtr, column, count, parent);
	}
	
	public virtual void FetchMore(void* parent)
	{
		CQt.QSortFilterProxyModel_FetchMore(this.nativePtr, parent);
	}
	
	public virtual bool CanFetchMore(void* parent)
	{
		return CQt.QSortFilterProxyModel_CanFetchMore(this.nativePtr, parent);
	}
	
	public virtual int64 Flags(void* index)
	{
		return CQt.QSortFilterProxyModel_Flags(this.nativePtr, index);
	}
	
	public virtual void Buddy(void* index)
	{
		CQt.QSortFilterProxyModel_Buddy(this.nativePtr, index);
	}
	
	public virtual void[] Match(void* start, int32 role, void* value, int32 hits, int64 flags)
	{
		return CQt.QSortFilterProxyModel_Match(this.nativePtr, start, role, value, hits, flags);
	}
	
	public virtual void Span(void* index)
	{
		CQt.QSortFilterProxyModel_Span(this.nativePtr, index);
	}
	
	public virtual void Sort(int32 column, int64 order)
	{
		CQt.QSortFilterProxyModel_Sort(this.nativePtr, column, order);
	}
	
	public virtual libqt_string[] MimeTypes()
	{
		return CQt.QSortFilterProxyModel_MimeTypes(this.nativePtr);
	}
	
	public virtual int64 SupportedDropActions()
	{
		return CQt.QSortFilterProxyModel_SupportedDropActions(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QSortFilterProxyModel_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QSortFilterProxyModel_Tr3(s, c, n);
	}
	
	public void* SourceModel()
	{
		return CQt.QAbstractProxyModel_SourceModel(this.nativePtr);
	}
	
	public virtual bool Submit()
	{
		return CQt.QAbstractProxyModel_Submit(this.nativePtr);
	}
	
	public virtual void Revert()
	{
		CQt.QAbstractProxyModel_Revert(this.nativePtr);
	}
	
	public virtual void* ItemData(void* index)
	{
		return CQt.QAbstractProxyModel_ItemData(this.nativePtr, index);
	}
	
	public virtual bool SetItemData(void* index, void* roles)
	{
		return CQt.QAbstractProxyModel_SetItemData(this.nativePtr, index, roles);
	}
	
	public virtual bool ClearItemData(void* index)
	{
		return CQt.QAbstractProxyModel_ClearItemData(this.nativePtr, index);
	}
	
	public virtual bool CanDropMimeData(void* data, int64 action, int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractProxyModel_CanDropMimeData(this.nativePtr, data, action, row, column, parent);
	}
	
	public virtual int64 SupportedDragActions()
	{
		return CQt.QAbstractProxyModel_SupportedDragActions(this.nativePtr);
	}
	
	public virtual void* RoleNames()
	{
		return CQt.QAbstractProxyModel_RoleNames(this.nativePtr);
	}
	
	public bool HasIndex(int32 row, int32 column)
	{
		return CQt.QAbstractItemModel_HasIndex(this.nativePtr, row, column);
	}
	
	public virtual bool MoveRows(void* sourceParent, int32 sourceRow, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRows(this.nativePtr, sourceParent, sourceRow, count, destinationParent, destinationChild);
	}
	
	public virtual bool MoveColumns(void* sourceParent, int32 sourceColumn, int32 count, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumns(this.nativePtr, sourceParent, sourceColumn, count, destinationParent, destinationChild);
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
	
	public bool MoveRow(void* sourceParent, int32 sourceRow, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveRow(this.nativePtr, sourceParent, sourceRow, destinationParent, destinationChild);
	}
	
	public bool MoveColumn(void* sourceParent, int32 sourceColumn, void* destinationParent, int32 destinationChild)
	{
		return CQt.QAbstractItemModel_MoveColumn(this.nativePtr, sourceParent, sourceColumn, destinationParent, destinationChild);
	}
	
	public bool CheckIndex(void* index)
	{
		return CQt.QAbstractItemModel_CheckIndex(this.nativePtr, index);
	}
	
	public virtual void MultiData(void* index, void roleDataSpan)
	{
		CQt.QAbstractItemModel_MultiData(this.nativePtr, index, roleDataSpan);
	}
	
	public bool HasIndex3(int32 row, int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_HasIndex3(this.nativePtr, row, column, parent);
	}
	
	public bool InsertRow2(int32 row, void* parent)
	{
		return CQt.QAbstractItemModel_InsertRow2(this.nativePtr, row, parent);
	}
	
	public bool InsertColumn2(int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_InsertColumn2(this.nativePtr, column, parent);
	}
	
	public bool RemoveRow2(int32 row, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveRow2(this.nativePtr, row, parent);
	}
	
	public bool RemoveColumn2(int32 column, void* parent)
	{
		return CQt.QAbstractItemModel_RemoveColumn2(this.nativePtr, column, parent);
	}
	
	public bool CheckIndex2(void* index, int64 options)
	{
		return CQt.QAbstractItemModel_CheckIndex2(this.nativePtr, index, options);
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
	[LinkName("QSortFilterProxyModel_new")]
	public static extern void* QSortFilterProxyModel_new();
	[LinkName("QSortFilterProxyModel_new2")]
	public static extern void* QSortFilterProxyModel_new2(void* parent);
	[LinkName("QSortFilterProxyModel_MetaObject")]
	public static extern void* QSortFilterProxyModel_MetaObject(void* c_this);
	[LinkName("QSortFilterProxyModel_Metacast")]
	public static extern void* QSortFilterProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QSortFilterProxyModel_Metacall")]
	public static extern int32 QSortFilterProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSortFilterProxyModel_Tr")]
	public static extern libqt_string QSortFilterProxyModel_Tr(char8[] s);
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
	public static extern libqt_string QSortFilterProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QSortFilterProxyModel_Tr3")]
	public static extern libqt_string QSortFilterProxyModel_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QSortFilterProxyModel_Delete")]
	public static extern void QSortFilterProxyModel_Delete(void* self);
}