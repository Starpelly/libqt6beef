using System;
using System.Interop;
namespace Qt;

public struct QConcatenateTablesProxyModel : QAbstractItemModel
{
	[LinkName("QConcatenateTablesProxyModel_new")]
	public static extern QConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new();
	[LinkName("QConcatenateTablesProxyModel_new2")]
	public static extern QConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new2(QObject* parent);
	[LinkName("QConcatenateTablesProxyModel_MetaObject")]
	public static extern QMetaObject* QConcatenateTablesProxyModel_MetaObject(Self* c_this);
	[LinkName("QConcatenateTablesProxyModel_Metacast")]
	public static extern void* QConcatenateTablesProxyModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QConcatenateTablesProxyModel_Metacall")]
	public static extern int32 QConcatenateTablesProxyModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QConcatenateTablesProxyModel_Tr")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr(char8[] s);
	[LinkName("QConcatenateTablesProxyModel_SourceModels")]
	public static extern QAbstractItemModel*[] QConcatenateTablesProxyModel_SourceModels(Self* c_this);
	[LinkName("QConcatenateTablesProxyModel_AddSourceModel")]
	public static extern void QConcatenateTablesProxyModel_AddSourceModel(Self* c_this, QAbstractItemModel* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_RemoveSourceModel")]
	public static extern void QConcatenateTablesProxyModel_RemoveSourceModel(Self* c_this, QAbstractItemModel* sourceModel);
	[LinkName("QConcatenateTablesProxyModel_MapFromSource")]
	public static extern QModelIndex QConcatenateTablesProxyModel_MapFromSource(Self* c_this, QModelIndex* sourceIndex);
	[LinkName("QConcatenateTablesProxyModel_MapToSource")]
	public static extern QModelIndex QConcatenateTablesProxyModel_MapToSource(Self* c_this, QModelIndex* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_Data")]
	public static extern QVariant QConcatenateTablesProxyModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QConcatenateTablesProxyModel_SetData")]
	public static extern bool QConcatenateTablesProxyModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ItemData")]
	public static extern void* QConcatenateTablesProxyModel_ItemData(Self* c_this, QModelIndex* proxyIndex);
	[LinkName("QConcatenateTablesProxyModel_SetItemData")]
	public static extern bool QConcatenateTablesProxyModel_SetItemData(Self* c_this, QModelIndex* index, void* roles);
	[LinkName("QConcatenateTablesProxyModel_Flags")]
	public static extern int64 QConcatenateTablesProxyModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QConcatenateTablesProxyModel_Index")]
	public static extern QModelIndex QConcatenateTablesProxyModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QConcatenateTablesProxyModel_Parent")]
	public static extern QModelIndex QConcatenateTablesProxyModel_Parent(Self* c_this, QModelIndex* index);
	[LinkName("QConcatenateTablesProxyModel_RowCount")]
	public static extern int32 QConcatenateTablesProxyModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QConcatenateTablesProxyModel_HeaderData")]
	public static extern QVariant QConcatenateTablesProxyModel_HeaderData(Self* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QConcatenateTablesProxyModel_ColumnCount")]
	public static extern int32 QConcatenateTablesProxyModel_ColumnCount(Self* c_this, QModelIndex* parent);
	[LinkName("QConcatenateTablesProxyModel_MimeTypes")]
	public static extern libqt_string[] QConcatenateTablesProxyModel_MimeTypes(Self* c_this);
	[LinkName("QConcatenateTablesProxyModel_MimeData")]
	public static extern QMimeData* QConcatenateTablesProxyModel_MimeData(Self* c_this, QModelIndex[] indexes);
	[LinkName("QConcatenateTablesProxyModel_CanDropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_CanDropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QConcatenateTablesProxyModel_DropMimeData")]
	public static extern bool QConcatenateTablesProxyModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QConcatenateTablesProxyModel_Span")]
	public static extern QSize QConcatenateTablesProxyModel_Span(Self* c_this, QModelIndex* index);
	[LinkName("QConcatenateTablesProxyModel_Tr2")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr2(char8[] s, char8[] c);
	[LinkName("QConcatenateTablesProxyModel_Tr3")]
	public static extern libqt_string QConcatenateTablesProxyModel_Tr3(char8[] s, char8[] c, int32 n);
}