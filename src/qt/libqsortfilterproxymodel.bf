using System;
using System.Interop;
namespace Qt;

public struct QSortFilterProxyModel : QAbstractProxyModel
{
	[LinkName("QSortFilterProxyModel_new")]
	public static extern QSortFilterProxyModel* QSortFilterProxyModel_new();
	[LinkName("QSortFilterProxyModel_new2")]
	public static extern QSortFilterProxyModel* QSortFilterProxyModel_new2(QObject* parent);
	[LinkName("QSortFilterProxyModel_MetaObject")]
	public static extern QMetaObject* QSortFilterProxyModel_MetaObject(Self* c_this);
	[LinkName("QSortFilterProxyModel_Metacast")]
	public static extern void* QSortFilterProxyModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSortFilterProxyModel_Metacall")]
	public static extern int32 QSortFilterProxyModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSortFilterProxyModel_Tr")]
	public static extern libqt_string QSortFilterProxyModel_Tr(char8[] s);
	[LinkName("QSortFilterProxyModel_SetSourceModel")]
	public static extern void QSortFilterProxyModel_SetSourceModel(Self* c_this, QAbstractItemModel* sourceModel);
	[LinkName("QSortFilterProxyModel_MapToSource")]
	public static extern QModelIndex QSortFilterProxyModel_MapToSource(Self* c_this, QModelIndex* proxyIndex);
	[LinkName("QSortFilterProxyModel_MapFromSource")]
	public static extern QModelIndex QSortFilterProxyModel_MapFromSource(Self* c_this, QModelIndex* sourceIndex);
	[LinkName("QSortFilterProxyModel_MapSelectionToSource")]
	public static extern QItemSelection QSortFilterProxyModel_MapSelectionToSource(Self* c_this, QItemSelection* proxySelection);
	[LinkName("QSortFilterProxyModel_MapSelectionFromSource")]
	public static extern QItemSelection QSortFilterProxyModel_MapSelectionFromSource(Self* c_this, QItemSelection* sourceSelection);
	[LinkName("QSortFilterProxyModel_FilterRegularExpression")]
	public static extern QRegularExpression QSortFilterProxyModel_FilterRegularExpression(Self* c_this);
	[LinkName("QSortFilterProxyModel_FilterKeyColumn")]
	public static extern int32 QSortFilterProxyModel_FilterKeyColumn(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterKeyColumn")]
	public static extern void QSortFilterProxyModel_SetFilterKeyColumn(Self* c_this, int32 column);
	[LinkName("QSortFilterProxyModel_FilterCaseSensitivity")]
	public static extern int64 QSortFilterProxyModel_FilterCaseSensitivity(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterCaseSensitivity")]
	public static extern void QSortFilterProxyModel_SetFilterCaseSensitivity(Self* c_this, int64 cs);
	[LinkName("QSortFilterProxyModel_SortCaseSensitivity")]
	public static extern int64 QSortFilterProxyModel_SortCaseSensitivity(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetSortCaseSensitivity")]
	public static extern void QSortFilterProxyModel_SetSortCaseSensitivity(Self* c_this, int64 cs);
	[LinkName("QSortFilterProxyModel_IsSortLocaleAware")]
	public static extern bool QSortFilterProxyModel_IsSortLocaleAware(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetSortLocaleAware")]
	public static extern void QSortFilterProxyModel_SetSortLocaleAware(Self* c_this, bool on);
	[LinkName("QSortFilterProxyModel_SortColumn")]
	public static extern int32 QSortFilterProxyModel_SortColumn(Self* c_this);
	[LinkName("QSortFilterProxyModel_SortOrder")]
	public static extern int64 QSortFilterProxyModel_SortOrder(Self* c_this);
	[LinkName("QSortFilterProxyModel_DynamicSortFilter")]
	public static extern bool QSortFilterProxyModel_DynamicSortFilter(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetDynamicSortFilter")]
	public static extern void QSortFilterProxyModel_SetDynamicSortFilter(Self* c_this, bool enable);
	[LinkName("QSortFilterProxyModel_SortRole")]
	public static extern int32 QSortFilterProxyModel_SortRole(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetSortRole")]
	public static extern void QSortFilterProxyModel_SetSortRole(Self* c_this, int32 role);
	[LinkName("QSortFilterProxyModel_FilterRole")]
	public static extern int32 QSortFilterProxyModel_FilterRole(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetFilterRole")]
	public static extern void QSortFilterProxyModel_SetFilterRole(Self* c_this, int32 role);
	[LinkName("QSortFilterProxyModel_IsRecursiveFilteringEnabled")]
	public static extern bool QSortFilterProxyModel_IsRecursiveFilteringEnabled(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetRecursiveFilteringEnabled")]
	public static extern void QSortFilterProxyModel_SetRecursiveFilteringEnabled(Self* c_this, bool recursive);
	[LinkName("QSortFilterProxyModel_AutoAcceptChildRows")]
	public static extern bool QSortFilterProxyModel_AutoAcceptChildRows(Self* c_this);
	[LinkName("QSortFilterProxyModel_SetAutoAcceptChildRows")]
	public static extern void QSortFilterProxyModel_SetAutoAcceptChildRows(Self* c_this, bool accept);
	[LinkName("QSortFilterProxyModel_SetFilterRegularExpression")]
	public static extern void QSortFilterProxyModel_SetFilterRegularExpression(Self* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression")]
	public static extern void QSortFilterProxyModel_SetFilterRegularExpressionWithRegularExpression(Self* c_this, QRegularExpression* regularExpression);
	[LinkName("QSortFilterProxyModel_SetFilterWildcard")]
	public static extern void QSortFilterProxyModel_SetFilterWildcard(Self* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_SetFilterFixedString")]
	public static extern void QSortFilterProxyModel_SetFilterFixedString(Self* c_this, libqt_string pattern);
	[LinkName("QSortFilterProxyModel_Invalidate")]
	public static extern void QSortFilterProxyModel_Invalidate(Self* c_this);
	[LinkName("QSortFilterProxyModel_FilterAcceptsRow")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsRow(Self* c_this, int32 source_row, QModelIndex* source_parent);
	[LinkName("QSortFilterProxyModel_FilterAcceptsColumn")]
	public static extern bool QSortFilterProxyModel_FilterAcceptsColumn(Self* c_this, int32 source_column, QModelIndex* source_parent);
	[LinkName("QSortFilterProxyModel_LessThan")]
	public static extern bool QSortFilterProxyModel_LessThan(Self* c_this, QModelIndex* source_left, QModelIndex* source_right);
	[LinkName("QSortFilterProxyModel_InvalidateFilter")]
	public static extern void QSortFilterProxyModel_InvalidateFilter(Self* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateRowsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateRowsFilter(Self* c_this);
	[LinkName("QSortFilterProxyModel_InvalidateColumnsFilter")]
	public static extern void QSortFilterProxyModel_InvalidateColumnsFilter(Self* c_this);
	[LinkName("QSortFilterProxyModel_Index")]
	public static extern QModelIndex QSortFilterProxyModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_Parent")]
	public static extern QModelIndex QSortFilterProxyModel_Parent(Self* c_this, QModelIndex* child);
	[LinkName("QSortFilterProxyModel_Sibling")]
	public static extern QModelIndex QSortFilterProxyModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QSortFilterProxyModel_RowCount")]
	public static extern int32 QSortFilterProxyModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_ColumnCount")]
	public static extern int32 QSortFilterProxyModel_ColumnCount(Self* c_this, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_HasChildren")]
	public static extern bool QSortFilterProxyModel_HasChildren(Self* c_this, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_Data")]
	public static extern QVariant QSortFilterProxyModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QSortFilterProxyModel_SetData")]
	public static extern bool QSortFilterProxyModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QSortFilterProxyModel_HeaderData")]
	public static extern QVariant QSortFilterProxyModel_HeaderData(Self* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QSortFilterProxyModel_SetHeaderData")]
	public static extern bool QSortFilterProxyModel_SetHeaderData(Self* c_this, int32 section, int64 orientation, QVariant* value, int32 role);
	[LinkName("QSortFilterProxyModel_MimeData")]
	public static extern QMimeData* QSortFilterProxyModel_MimeData(Self* c_this, QModelIndex[] indexes);
	[LinkName("QSortFilterProxyModel_DropMimeData")]
	public static extern bool QSortFilterProxyModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_InsertRows")]
	public static extern bool QSortFilterProxyModel_InsertRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_InsertColumns")]
	public static extern bool QSortFilterProxyModel_InsertColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_RemoveRows")]
	public static extern bool QSortFilterProxyModel_RemoveRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_RemoveColumns")]
	public static extern bool QSortFilterProxyModel_RemoveColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_FetchMore")]
	public static extern void QSortFilterProxyModel_FetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_CanFetchMore")]
	public static extern bool QSortFilterProxyModel_CanFetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QSortFilterProxyModel_Flags")]
	public static extern int64 QSortFilterProxyModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QSortFilterProxyModel_Buddy")]
	public static extern QModelIndex QSortFilterProxyModel_Buddy(Self* c_this, QModelIndex* index);
	[LinkName("QSortFilterProxyModel_Match")]
	public static extern QModelIndex[] QSortFilterProxyModel_Match(Self* c_this, QModelIndex* start, int32 role, QVariant* value, int32 hits, int64 flags);
	[LinkName("QSortFilterProxyModel_Span")]
	public static extern QSize QSortFilterProxyModel_Span(Self* c_this, QModelIndex* index);
	[LinkName("QSortFilterProxyModel_Sort")]
	public static extern void QSortFilterProxyModel_Sort(Self* c_this, int32 column, int64 order);
	[LinkName("QSortFilterProxyModel_MimeTypes")]
	public static extern libqt_string[] QSortFilterProxyModel_MimeTypes(Self* c_this);
	[LinkName("QSortFilterProxyModel_SupportedDropActions")]
	public static extern int64 QSortFilterProxyModel_SupportedDropActions(Self* c_this);
	[LinkName("QSortFilterProxyModel_DynamicSortFilterChanged")]
	public static extern void QSortFilterProxyModel_DynamicSortFilterChanged(Self* c_this, bool dynamicSortFilter);
	[LinkName("QSortFilterProxyModel_FilterCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_FilterCaseSensitivityChanged(Self* c_this, int64 filterCaseSensitivity);
	[LinkName("QSortFilterProxyModel_SortCaseSensitivityChanged")]
	public static extern void QSortFilterProxyModel_SortCaseSensitivityChanged(Self* c_this, int64 sortCaseSensitivity);
	[LinkName("QSortFilterProxyModel_SortLocaleAwareChanged")]
	public static extern void QSortFilterProxyModel_SortLocaleAwareChanged(Self* c_this, bool sortLocaleAware);
	[LinkName("QSortFilterProxyModel_SortRoleChanged")]
	public static extern void QSortFilterProxyModel_SortRoleChanged(Self* c_this, int32 sortRole);
	[LinkName("QSortFilterProxyModel_FilterRoleChanged")]
	public static extern void QSortFilterProxyModel_FilterRoleChanged(Self* c_this, int32 filterRole);
	[LinkName("QSortFilterProxyModel_RecursiveFilteringEnabledChanged")]
	public static extern void QSortFilterProxyModel_RecursiveFilteringEnabledChanged(Self* c_this, bool recursiveFilteringEnabled);
	[LinkName("QSortFilterProxyModel_AutoAcceptChildRowsChanged")]
	public static extern void QSortFilterProxyModel_AutoAcceptChildRowsChanged(Self* c_this, bool autoAcceptChildRows);
	[LinkName("QSortFilterProxyModel_Tr2")]
	public static extern libqt_string QSortFilterProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QSortFilterProxyModel_Tr3")]
	public static extern libqt_string QSortFilterProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}