using System;
using System.Interop;
namespace Qt;

public struct QIdentityProxyModel
{
	[LinkName("QIdentityProxyModel_new")]
	public static extern void* QIdentityProxyModel_new();
	[LinkName("QIdentityProxyModel_new2")]
	public static extern void* QIdentityProxyModel_new2(QObject parent);
	[LinkName("QIdentityProxyModel_MetaObject")]
	public static extern QMetaObject QIdentityProxyModel_MetaObject(void* c_this);
	[LinkName("QIdentityProxyModel_Metacast")]
	public static extern void QIdentityProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QIdentityProxyModel_Metacall")]
	public static extern int32 QIdentityProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QIdentityProxyModel_Tr")]
	public static extern char8[] QIdentityProxyModel_Tr(char8[] s);
	[LinkName("QIdentityProxyModel_ColumnCount")]
	public static extern int32 QIdentityProxyModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QIdentityProxyModel_Index")]
	public static extern QModelIndex QIdentityProxyModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QIdentityProxyModel_MapFromSource")]
	public static extern QModelIndex QIdentityProxyModel_MapFromSource(void* c_this, QModelIndex sourceIndex);
	[LinkName("QIdentityProxyModel_MapToSource")]
	public static extern QModelIndex QIdentityProxyModel_MapToSource(void* c_this, QModelIndex proxyIndex);
	[LinkName("QIdentityProxyModel_Parent")]
	public static extern QModelIndex QIdentityProxyModel_Parent(void* c_this, QModelIndex child);
	[LinkName("QIdentityProxyModel_RowCount")]
	public static extern int32 QIdentityProxyModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QIdentityProxyModel_HeaderData")]
	public static extern QVariant QIdentityProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QIdentityProxyModel_DropMimeData")]
	public static extern bool QIdentityProxyModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QIdentityProxyModel_Sibling")]
	public static extern QModelIndex QIdentityProxyModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QIdentityProxyModel_MapSelectionFromSource")]
	public static extern QItemSelection QIdentityProxyModel_MapSelectionFromSource(void* c_this, QItemSelection selection);
	[LinkName("QIdentityProxyModel_MapSelectionToSource")]
	public static extern QItemSelection QIdentityProxyModel_MapSelectionToSource(void* c_this, QItemSelection selection);
	[LinkName("QIdentityProxyModel_Match")]
	public static extern QModelIndex[] QIdentityProxyModel_Match(void* c_this, QModelIndex start, int32 role, QVariant value, int32 hits, int64 flags);
	[LinkName("QIdentityProxyModel_SetSourceModel")]
	public static extern void QIdentityProxyModel_SetSourceModel(void* c_this, QAbstractItemModel sourceModel);
	[LinkName("QIdentityProxyModel_InsertColumns")]
	public static extern bool QIdentityProxyModel_InsertColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QIdentityProxyModel_InsertRows")]
	public static extern bool QIdentityProxyModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QIdentityProxyModel_RemoveColumns")]
	public static extern bool QIdentityProxyModel_RemoveColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QIdentityProxyModel_RemoveRows")]
	public static extern bool QIdentityProxyModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QIdentityProxyModel_MoveRows")]
	public static extern bool QIdentityProxyModel_MoveRows(void* c_this, QModelIndex sourceParent, int32 sourceRow, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QIdentityProxyModel_MoveColumns")]
	public static extern bool QIdentityProxyModel_MoveColumns(void* c_this, QModelIndex sourceParent, int32 sourceColumn, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QIdentityProxyModel_Tr2")]
	public static extern char8[] QIdentityProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QIdentityProxyModel_Tr3")]
	public static extern char8[] QIdentityProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}