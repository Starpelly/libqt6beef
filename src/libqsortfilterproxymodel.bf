using System;
using System.Interop;
namespace Qt;

public struct QSortFilterProxyModel
{
	[LinkName("QSortFilterProxyModel_new")]
	public static extern void* QSortFilterProxyModel_new();
	[LinkName("QSortFilterProxyModel_new2")]
	public static extern void* QSortFilterProxyModel_new2(QObject parent);
	[LinkName("QSortFilterProxyModel_MetaObject")]
	public static extern QMetaObject QSortFilterProxyModel_MetaObject(void* c_this);
	[LinkName("QSortFilterProxyModel_Metacast")]
	public static extern void QSortFilterProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QSortFilterProxyModel_Metacall")]
	public static extern int32 QSortFilterProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QSortFilterProxyModel_Tr")]
	public static extern char8[] QSortFilterProxyModel_Tr(char8[] s);
	[LinkName("QSortFilterProxyModel_SetSourceModel")]
	public static extern void QSortFilterProxyModel_SetSourceModel(void* c_this, QAbstractItemModel sourceModel);
	[LinkName("QSortFilterProxyModel_MapToSource")]
	public static extern QModelIndex QSortFilterProxyModel_MapToSource(void* c_this, QModelIndex proxyIndex);
	[LinkName("QSortFilterProxyModel_MapFromSource")]
	public static extern QModelIndex QSortFilterProxyModel_MapFromSource(void* c_this, QModelIndex sourceIndex);
	[LinkName("QSortFilterProxyModel_MapSelectionToSource")]
	public static extern QItemSelection QSortFilterProxyModel_MapSelectionToSource(void* c_this, QItemSelection proxySelection);
	[LinkName("QSortFilterProxyModel_MapSelectionFromSource")]
	public static extern QItemSelection QSortFilterProxyModel_MapSelectionFromSource(void* c_this, QItemSelection sourceSelection);
	[LinkName("QSortFilterProxyModel_FilterRegularExpression")]
	public static extern QRegularExpression QSortFilterProxyModel_FilterRegularExpression(void* c_this);
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
	public static extern void QSortFilterProxyModel_SetFilterRegularExpression(void* c_this, char8[] pattern);
	[LinkName("QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression")]
	public static extern void QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression(void* c_this, QRegularExpression regularExpression);
	[LinkName("QSortFilterProxyModel_SetFilterWildcard")]
	public static extern void QSortFilterProxyModel_SetFilterWildcard(void* c_this, char8[] pattern);
	[LinkName("QSortFilterProxyModel_SetFilterFixedString")]
	public static extern void QSortFilterProxyModel_SetFilterFixedString(void* c_this, char8[] pattern);
	[LinkName("QSortFilterProxyModel_Invalidate")]
	public static extern void QSortFilterProxyModel_Invalidate(void* c_this);
	[LinkName("QSortFilterProxyModel_FilterAcceptsRow")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsRow(void* c_this, int32 source_row, QModelIndex source_parent);
	[LinkName("QSortFilterProxyModel_FilterAcceptsColumn")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsColumn(void* c_this, int32 source_column, QModelIndex source_parent);
	[LinkName("QSortFilterProxyModel_LessThan")]
	public static extern bool QSortFilterProxyModel_LessThan(void* c_this, QModelIndex source_left, QModelIndex source_right);
	[LinkName("QSortFilterProxyModel_InvalidateFilter")]
	public static extern void QSortFilterProxyModel_InvalidateFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateRowsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateRowsFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateColumnsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateColumnsFilter(void* c_this);
	[LinkName("QSortFilterProxyModel_Index")]
	public static extern QModelIndex QSortFilterProxyModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_Parent")]
	public static extern QModelIndex QSortFilterProxyModel_Parent(void* c_this, QModelIndex child);
	[LinkName("QSortFilterProxyModel_Sibling")]
	public static extern QModelIndex QSortFilterProxyModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QSortFilterProxyModel_RowCount")]
	public static extern int32 QSortFilterProxyModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_ColumnCount")]
	public static extern int32 QSortFilterProxyModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_HasChildren")]
	public static extern bool QSortFilterProxyModel_HasChildren(void* c_this, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_Data")]
	public static extern QVariant QSortFilterProxyModel_Data(void* c_this, QModelIndex index, int32 role);
	[LinkName("QSortFilterProxyModel_SetData")]
	public static extern bool QSortFilterProxyModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QSortFilterProxyModel_HeaderData")]
	public static extern QVariant QSortFilterProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QSortFilterProxyModel_SetHeaderData")]
	public static extern bool QSortFilterProxyModel_SetHeaderData(void* c_this, int32 section, int64 orientation, QVariant value, int32 role);
	[LinkName("QSortFilterProxyModel_MimeData")]
	public static extern QMimeData QSortFilterProxyModel_MimeData(void* c_this, QModelIndex[] indexes);
	[LinkName("QSortFilterProxyModel_DropMimeData")]
	public static extern bool QSortFilterProxyModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_InsertRows")]
	public static extern bool QSortFilterProxyModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_InsertColumns")]
	public static extern bool QSortFilterProxyModel_InsertColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_RemoveRows")]
	public static extern bool QSortFilterProxyModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_RemoveColumns")]
	public static extern bool QSortFilterProxyModel_RemoveColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_FetchMore")]
	public static extern void QSortFilterProxyModel_FetchMore(void* c_this, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_CanFetchMore")]
	public static extern bool QSortFilterProxyModel_CanFetchMore(void* c_this, QModelIndex parent);
	[LinkName("QSortFilterProxyModel_Flags")]
	public static extern int64 QSortFilterProxyModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QSortFilterProxyModel_Buddy")]
	public static extern QModelIndex QSortFilterProxyModel_Buddy(void* c_this, QModelIndex index);
	[LinkName("QSortFilterProxyModel_Match")]
	public static extern QModelIndex[] QSortFilterProxyModel_Match(void* c_this, QModelIndex start, int32 role, QVariant value, int32 hits, int64 flags);
	[LinkName("QSortFilterProxyModel_Span")]
	public static extern QSize QSortFilterProxyModel_Span(void* c_this, QModelIndex index);
	[LinkName("QSortFilterProxyModel_Sort")]
	public static extern void QSortFilterProxyModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QSortFilterProxyModel_MimeTypes")]
	public static extern char8[][] QSortFilterProxyModel_MimeTypes(void* c_this);
	[LinkName("QSortFilterProxyModel_SupportedDropActions")]
	public static extern int64 QSortFilterProxyModel_SupportedDropActions(void* c_this);
	[LinkName("QSortFilterProxyModel_DynamicSortFilterChanged")]
	public static extern void QSortFilterProxyModel_DynamicSortFilterChanged(void* c_this, bool dynamicSortFilter);
	[LinkName("QSortFilterProxyModel_FilterCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_FilterCaseSensitivityChanged(void* c_this, int64 filterCaseSensitivity);
	[LinkName("QSortFilterProxyModel_SortCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_SortCaseSensitivityChanged(void* c_this, int64 sortCaseSensitivity);
	[LinkName("QSortFilterProxyModel_SortLocaleAwareChanged")]
	public static extern void QSortFilterProxyModel_SortLocaleAwareChanged(void* c_this, bool sortLocaleAware);
	[LinkName("QSortFilterProxyModel_SortRoleChanged")]
	public static extern void QSortFilterProxyModel_SortRoleChanged(void* c_this, int32 sortRole);
	[LinkName("QSortFilterProxyModel_FilterRoleChanged")]
	public static extern void QSortFilterProxyModel_FilterRoleChanged(void* c_this, int32 filterRole);
	[LinkName("QSortFilterProxyModel_RecursiveFilteringEnabledChanged")]
	public static extern void QSortFilterProxyModel_RecursiveFilteringEnabledChanged(void* c_this, bool recursiveFilteringEnabled);
	[LinkName("QSortFilterProxyModel_AutoAcceptChildRowsChanged")]
	public static extern void QSortFilterProxyModel_AutoAcceptChildRowsChanged(void* c_this, bool autoAcceptChildRows);
	[LinkName("QSortFilterProxyModel_Tr2")]
	public static extern char8[] QSortFilterProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QSortFilterProxyModel_Tr3")]
	public static extern char8[] QSortFilterProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}