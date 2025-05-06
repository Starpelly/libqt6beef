using System;
using System.Interop;
namespace Qt;

public struct QTransposeProxyModel
{
	[LinkName("QTransposeProxyModel_new")]
	public static extern void* QTransposeProxyModel_new();
	[LinkName("QTransposeProxyModel_new2")]
	public static extern void* QTransposeProxyModel_new2(QObject parent);
	[LinkName("QTransposeProxyModel_MetaObject")]
	public static extern QMetaObject QTransposeProxyModel_MetaObject(void* c_this);
	[LinkName("QTransposeProxyModel_Metacast")]
	public static extern void QTransposeProxyModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QTransposeProxyModel_Metacall")]
	public static extern int32 QTransposeProxyModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTransposeProxyModel_Tr")]
	public static extern char8[] QTransposeProxyModel_Tr(char8[] s);
	[LinkName("QTransposeProxyModel_SetSourceModel")]
	public static extern void QTransposeProxyModel_SetSourceModel(void* c_this, QAbstractItemModel newSourceModel);
	[LinkName("QTransposeProxyModel_RowCount")]
	public static extern int32 QTransposeProxyModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QTransposeProxyModel_ColumnCount")]
	public static extern int32 QTransposeProxyModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QTransposeProxyModel_HeaderData")]
	public static extern QVariant QTransposeProxyModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QTransposeProxyModel_SetHeaderData")]
	public static extern bool QTransposeProxyModel_SetHeaderData(void* c_this, int32 section, int64 orientation, QVariant value, int32 role);
	[LinkName("QTransposeProxyModel_SetItemData")]
	public static extern bool QTransposeProxyModel_SetItemData(void* c_this, QModelIndex index, void* roles);
	[LinkName("QTransposeProxyModel_Span")]
	public static extern QSize QTransposeProxyModel_Span(void* c_this, QModelIndex index);
	[LinkName("QTransposeProxyModel_ItemData")]
	public static extern void* QTransposeProxyModel_ItemData(void* c_this, QModelIndex index);
	[LinkName("QTransposeProxyModel_MapFromSource")]
	public static extern QModelIndex QTransposeProxyModel_MapFromSource(void* c_this, QModelIndex sourceIndex);
	[LinkName("QTransposeProxyModel_MapToSource")]
	public static extern QModelIndex QTransposeProxyModel_MapToSource(void* c_this, QModelIndex proxyIndex);
	[LinkName("QTransposeProxyModel_Parent")]
	public static extern QModelIndex QTransposeProxyModel_Parent(void* c_this, QModelIndex index);
	[LinkName("QTransposeProxyModel_Index")]
	public static extern QModelIndex QTransposeProxyModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QTransposeProxyModel_InsertRows")]
	public static extern bool QTransposeProxyModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QTransposeProxyModel_RemoveRows")]
	public static extern bool QTransposeProxyModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QTransposeProxyModel_MoveRows")]
	public static extern bool QTransposeProxyModel_MoveRows(void* c_this, QModelIndex sourceParent, int32 sourceRow, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QTransposeProxyModel_InsertColumns")]
	public static extern bool QTransposeProxyModel_InsertColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QTransposeProxyModel_RemoveColumns")]
	public static extern bool QTransposeProxyModel_RemoveColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QTransposeProxyModel_MoveColumns")]
	public static extern bool QTransposeProxyModel_MoveColumns(void* c_this, QModelIndex sourceParent, int32 sourceColumn, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QTransposeProxyModel_Sort")]
	public static extern void QTransposeProxyModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QTransposeProxyModel_Tr2")]
	public static extern char8[] QTransposeProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QTransposeProxyModel_Tr3")]
	public static extern char8[] QTransposeProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}