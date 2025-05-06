using System;
using System.Interop;
namespace Qt;

public struct QAbstractProxyModel
{
	[LinkName("QAbstractProxyModel_new")]
	public static extern void* QAbstractProxyModel_new();
	[LinkName("QAbstractProxyModel_new2")]
	public static extern void* QAbstractProxyModel_new2(QObject parent);
	[LinkName("QAbstractProxyModel_MetaObject")]
	public static extern QMetaObject QAbstractProxyModel_MetaObject(void* c_this);
	[LinkName("QAbstractProxyModel_Metacast")]
	public static extern void QAbstractProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractProxyModel_Metacall")]
	public static extern int32 QAbstractProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractProxyModel_Tr")]
	public static extern char8[] QAbstractProxyModel_Tr(char8[] s);
	[LinkName("QAbstractProxyModel_SetSourceModel")]
	public static extern void QAbstractProxyModel_SetSourceModel(void* c_this, QAbstractItemModel sourceModel);
	[LinkName("QAbstractProxyModel_SourceModel")]
	public static extern QAbstractItemModel QAbstractProxyModel_SourceModel(void* c_this);
	[LinkName("QAbstractProxyModel_MapToSource")]
	public static extern QModelIndex QAbstractProxyModel_MapToSource(void* c_this, QModelIndex proxyIndex);
	[LinkName("QAbstractProxyModel_MapFromSource")]
	public static extern QModelIndex QAbstractProxyModel_MapFromSource(void* c_this, QModelIndex sourceIndex);
	[LinkName("QAbstractProxyModel_MapSelectionToSource")]
	public static extern QItemSelection QAbstractProxyModel_MapSelectionToSource(void* c_this, QItemSelection selection);
	[LinkName("QAbstractProxyModel_MapSelectionFromSource")]
	public static extern QItemSelection QAbstractProxyModel_MapSelectionFromSource(void* c_this, QItemSelection selection);
	[LinkName("QAbstractProxyModel_Submit")]
	public static extern bool QAbstractProxyModel_Submit(void* c_this);
	[LinkName("QAbstractProxyModel_Revert")]
	public static extern void QAbstractProxyModel_Revert(void* c_this);
	[LinkName("QAbstractProxyModel_Data")]
	public static extern QVariant QAbstractProxyModel_Data(void* c_this, QModelIndex proxyIndex, int32 role);
	[LinkName("QAbstractProxyModel_HeaderData")]
	public static extern QVariant QAbstractProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QAbstractProxyModel_ItemData")]
	public static extern void* QAbstractProxyModel_ItemData(void* c_this, QModelIndex index);
	[LinkName("QAbstractProxyModel_Flags")]
	public static extern int64 QAbstractProxyModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QAbstractProxyModel_SetData")]
	public static extern bool QAbstractProxyModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QAbstractProxyModel_SetItemData")]
	public static extern bool QAbstractProxyModel_SetItemData(void* c_this, QModelIndex index, void* roles);
	[LinkName("QAbstractProxyModel_SetHeaderData")]
	public static extern bool QAbstractProxyModel_SetHeaderData(void* c_this, int32 section, int64 orientation, QVariant value, int32 role);
	[LinkName("QAbstractProxyModel_ClearItemData")]
	public static extern bool QAbstractProxyModel_ClearItemData(void* c_this, QModelIndex index);
	[LinkName("QAbstractProxyModel_Buddy")]
	public static extern QModelIndex QAbstractProxyModel_Buddy(void* c_this, QModelIndex index);
	[LinkName("QAbstractProxyModel_CanFetchMore")]
	public static extern bool QAbstractProxyModel_CanFetchMore(void* c_this, QModelIndex parent);
	[LinkName("QAbstractProxyModel_FetchMore")]
	public static extern void QAbstractProxyModel_FetchMore(void* c_this, QModelIndex parent);
	[LinkName("QAbstractProxyModel_Sort")]
	public static extern void QAbstractProxyModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QAbstractProxyModel_Span")]
	public static extern QSize QAbstractProxyModel_Span(void* c_this, QModelIndex index);
	[LinkName("QAbstractProxyModel_HasChildren")]
	public static extern bool QAbstractProxyModel_HasChildren(void* c_this, QModelIndex parent);
	[LinkName("QAbstractProxyModel_Sibling")]
	public static extern QModelIndex QAbstractProxyModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QAbstractProxyModel_MimeData")]
	public static extern QMimeData QAbstractProxyModel_MimeData(void* c_this, QModelIndex[] indexes);
	[LinkName("QAbstractProxyModel_CanDropMimeData")]
	public static extern bool QAbstractProxyModel_CanDropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractProxyModel_DropMimeData")]
	public static extern bool QAbstractProxyModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractProxyModel_MimeTypes")]
	public static extern char8[][] QAbstractProxyModel_MimeTypes(void* c_this);
	[LinkName("QAbstractProxyModel_SupportedDragActions")]
	public static extern int64 QAbstractProxyModel_SupportedDragActions(void* c_this);
	[LinkName("QAbstractProxyModel_SupportedDropActions")]
	public static extern int64 QAbstractProxyModel_SupportedDropActions(void* c_this);
	[LinkName("QAbstractProxyModel_RoleNames")]
	public static extern void* QAbstractProxyModel_RoleNames(void* c_this);
	[LinkName("QAbstractProxyModel_CreateSourceIndex")]
	public static extern QModelIndex QAbstractProxyModel_CreateSourceIndex(void* c_this, int32 row, int32 col, void internalPtr);
	[LinkName("QAbstractProxyModel_Tr2")]
	public static extern char8[] QAbstractProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractProxyModel_Tr3")]
	public static extern char8[] QAbstractProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}