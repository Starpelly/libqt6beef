using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemModel__LayoutChangeHint
{
	NoLayoutChangeHint = 0,
	VerticalSortHint = 1,
	HorizontalSortHint = 2,
}
[AllowDuplicates]
public enum QAbstractItemModel__CheckIndexOption
{
	NoOption = 0,
	IndexIsValid = 1,
	DoNotUseParent = 2,
	ParentIsInvalid = 4,
}
public struct QModelRoleData
{
	[LinkName("QModelRoleData_new")]
	public static extern void* QModelRoleData_new(int32 role);
	[LinkName("QModelRoleData_new2")]
	public static extern void* QModelRoleData_new2(QModelRoleData param1);
	[LinkName("QModelRoleData_Role")]
	public static extern int32 QModelRoleData_Role(void* c_this);
	[LinkName("QModelRoleData_Data")]
	public static extern QVariant QModelRoleData_Data(void* c_this);
	[LinkName("QModelRoleData_Data2")]
	public static extern QVariant QModelRoleData_Data2(void* c_this);
	[LinkName("QModelRoleData_ClearData")]
	public static extern void QModelRoleData_ClearData(void* c_this);
	[LinkName("QModelRoleData_OperatorAssign")]
	public static extern void QModelRoleData_OperatorAssign(void* c_this, QModelRoleData param1);
}
public struct QModelRoleDataSpan
{
	[LinkName("QModelRoleDataSpan_new")]
	public static extern void* QModelRoleDataSpan_new(QModelRoleDataSpan other);
	[LinkName("QModelRoleDataSpan_new2")]
	public static extern void* QModelRoleDataSpan_new2(QModelRoleDataSpan other);
	[LinkName("QModelRoleDataSpan_new3")]
	public static extern void* QModelRoleDataSpan_new3();
	[LinkName("QModelRoleDataSpan_new4")]
	public static extern void* QModelRoleDataSpan_new4(QModelRoleData modelRoleData);
	[LinkName("QModelRoleDataSpan_new5")]
	public static extern void* QModelRoleDataSpan_new5(QModelRoleData modelRoleData, int32 lenVal);
	[LinkName("QModelRoleDataSpan_new6")]
	public static extern void* QModelRoleDataSpan_new6(QModelRoleDataSpan param1);
	[LinkName("QModelRoleDataSpan_Size")]
	public static extern int32 QModelRoleDataSpan_Size(void* c_this);
	[LinkName("QModelRoleDataSpan_Length")]
	public static extern int32 QModelRoleDataSpan_Length(void* c_this);
	[LinkName("QModelRoleDataSpan_Data")]
	public static extern QModelRoleData QModelRoleDataSpan_Data(void* c_this);
	[LinkName("QModelRoleDataSpan_Begin")]
	public static extern QModelRoleData QModelRoleDataSpan_Begin(void* c_this);
	[LinkName("QModelRoleDataSpan_End")]
	public static extern QModelRoleData QModelRoleDataSpan_End(void* c_this);
	[LinkName("QModelRoleDataSpan_OperatorSubscript")]
	public static extern QModelRoleData QModelRoleDataSpan_OperatorSubscript(void* c_this, int32 index);
	[LinkName("QModelRoleDataSpan_DataForRole")]
	public static extern QVariant QModelRoleDataSpan_DataForRole(void* c_this, int32 role);
}
public struct QModelIndex
{
	[LinkName("QModelIndex_new")]
	public static extern void* QModelIndex_new(QModelIndex other);
	[LinkName("QModelIndex_new2")]
	public static extern void* QModelIndex_new2(QModelIndex other);
	[LinkName("QModelIndex_new3")]
	public static extern void* QModelIndex_new3();
	[LinkName("QModelIndex_new4")]
	public static extern void* QModelIndex_new4(QModelIndex param1);
	[LinkName("QModelIndex_Row")]
	public static extern int32 QModelIndex_Row(void* c_this);
	[LinkName("QModelIndex_Column")]
	public static extern int32 QModelIndex_Column(void* c_this);
	[LinkName("QModelIndex_InternalId")]
	public static extern c_uintptr QModelIndex_InternalId(void* c_this);
	[LinkName("QModelIndex_InternalPointer")]
	public static extern void QModelIndex_InternalPointer(void* c_this);
	[LinkName("QModelIndex_ConstInternalPointer")]
	public static extern void QModelIndex_ConstInternalPointer(void* c_this);
	[LinkName("QModelIndex_Parent")]
	public static extern QModelIndex QModelIndex_Parent(void* c_this);
	[LinkName("QModelIndex_Sibling")]
	public static extern QModelIndex QModelIndex_Sibling(void* c_this, int32 row, int32 column);
	[LinkName("QModelIndex_SiblingAtColumn")]
	public static extern QModelIndex QModelIndex_SiblingAtColumn(void* c_this, int32 column);
	[LinkName("QModelIndex_SiblingAtRow")]
	public static extern QModelIndex QModelIndex_SiblingAtRow(void* c_this, int32 row);
	[LinkName("QModelIndex_Data")]
	public static extern QVariant QModelIndex_Data(void* c_this);
	[LinkName("QModelIndex_MultiData")]
	public static extern void QModelIndex_MultiData(void* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QModelIndex_Flags")]
	public static extern int64 QModelIndex_Flags(void* c_this);
	[LinkName("QModelIndex_Model")]
	public static extern QAbstractItemModel QModelIndex_Model(void* c_this);
	[LinkName("QModelIndex_IsValid")]
	public static extern bool QModelIndex_IsValid(void* c_this);
	[LinkName("QModelIndex_OperatorEqual")]
	public static extern bool QModelIndex_OperatorEqual(void* c_this, QModelIndex other);
	[LinkName("QModelIndex_OperatorNotEqual")]
	public static extern bool QModelIndex_OperatorNotEqual(void* c_this, QModelIndex other);
	[LinkName("QModelIndex_OperatorLesser")]
	public static extern bool QModelIndex_OperatorLesser(void* c_this, QModelIndex other);
	[LinkName("QModelIndex_Data1")]
	public static extern QVariant QModelIndex_Data1(void* c_this, int32 role);
}
public struct QPersistentModelIndex
{
	[LinkName("QPersistentModelIndex_new")]
	public static extern void* QPersistentModelIndex_new();
	[LinkName("QPersistentModelIndex_new2")]
	public static extern void* QPersistentModelIndex_new2(QModelIndex index);
	[LinkName("QPersistentModelIndex_new3")]
	public static extern void* QPersistentModelIndex_new3(QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorLesser")]
	public static extern bool QPersistentModelIndex_OperatorLesser(void* c_this, QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorEqual")]
	public static extern bool QPersistentModelIndex_OperatorEqual(void* c_this, QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorNotEqual")]
	public static extern bool QPersistentModelIndex_OperatorNotEqual(void* c_this, QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorAssign")]
	public static extern void QPersistentModelIndex_OperatorAssign(void* c_this, QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_Swap")]
	public static extern void QPersistentModelIndex_Swap(void* c_this, QPersistentModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorEqualWithOther(void* c_this, QModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorNotEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorNotEqualWithOther(void* c_this, QModelIndex other);
	[LinkName("QPersistentModelIndex_OperatorAssignWithOther")]
	public static extern void QPersistentModelIndex_OperatorAssignWithOther(void* c_this, QModelIndex other);
	[LinkName("QPersistentModelIndex_ToQModelIndex")]
	public static extern QModelIndex QPersistentModelIndex_ToQModelIndex(void* c_this);
	[LinkName("QPersistentModelIndex_Row")]
	public static extern int32 QPersistentModelIndex_Row(void* c_this);
	[LinkName("QPersistentModelIndex_Column")]
	public static extern int32 QPersistentModelIndex_Column(void* c_this);
	[LinkName("QPersistentModelIndex_InternalPointer")]
	public static extern void QPersistentModelIndex_InternalPointer(void* c_this);
	[LinkName("QPersistentModelIndex_ConstInternalPointer")]
	public static extern void QPersistentModelIndex_ConstInternalPointer(void* c_this);
	[LinkName("QPersistentModelIndex_InternalId")]
	public static extern c_uintptr QPersistentModelIndex_InternalId(void* c_this);
	[LinkName("QPersistentModelIndex_Parent")]
	public static extern QModelIndex QPersistentModelIndex_Parent(void* c_this);
	[LinkName("QPersistentModelIndex_Sibling")]
	public static extern QModelIndex QPersistentModelIndex_Sibling(void* c_this, int32 row, int32 column);
	[LinkName("QPersistentModelIndex_Data")]
	public static extern QVariant QPersistentModelIndex_Data(void* c_this);
	[LinkName("QPersistentModelIndex_MultiData")]
	public static extern void QPersistentModelIndex_MultiData(void* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QPersistentModelIndex_Flags")]
	public static extern int64 QPersistentModelIndex_Flags(void* c_this);
	[LinkName("QPersistentModelIndex_Model")]
	public static extern QAbstractItemModel QPersistentModelIndex_Model(void* c_this);
	[LinkName("QPersistentModelIndex_IsValid")]
	public static extern bool QPersistentModelIndex_IsValid(void* c_this);
	[LinkName("QPersistentModelIndex_Data1")]
	public static extern QVariant QPersistentModelIndex_Data1(void* c_this, int32 role);
}
public struct QAbstractItemModel
{
	[LinkName("QAbstractItemModel_new")]
	public static extern void* QAbstractItemModel_new();
	[LinkName("QAbstractItemModel_new2")]
	public static extern void* QAbstractItemModel_new2(QObject parent);
	[LinkName("QAbstractItemModel_MetaObject")]
	public static extern QMetaObject QAbstractItemModel_MetaObject(void* c_this);
	[LinkName("QAbstractItemModel_Metacast")]
	public static extern void QAbstractItemModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractItemModel_Metacall")]
	public static extern int32 QAbstractItemModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractItemModel_Tr")]
	public static extern char8[] QAbstractItemModel_Tr(char8[] s);
	[LinkName("QAbstractItemModel_HasIndex")]
	public static extern bool QAbstractItemModel_HasIndex(void* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_Index")]
	public static extern QModelIndex QAbstractItemModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_Parent")]
	public static extern QModelIndex QAbstractItemModel_Parent(void* c_this, QModelIndex child);
	[LinkName("QAbstractItemModel_Sibling")]
	public static extern QModelIndex QAbstractItemModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QAbstractItemModel_RowCount")]
	public static extern int32 QAbstractItemModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QAbstractItemModel_ColumnCount")]
	public static extern int32 QAbstractItemModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QAbstractItemModel_HasChildren")]
	public static extern bool QAbstractItemModel_HasChildren(void* c_this, QModelIndex parent);
	[LinkName("QAbstractItemModel_Data")]
	public static extern QVariant QAbstractItemModel_Data(void* c_this, QModelIndex index, int32 role);
	[LinkName("QAbstractItemModel_SetData")]
	public static extern bool QAbstractItemModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QAbstractItemModel_HeaderData")]
	public static extern QVariant QAbstractItemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QAbstractItemModel_SetHeaderData")]
	public static extern bool QAbstractItemModel_SetHeaderData(void* c_this, int32 section, int64 orientation, QVariant value, int32 role);
	[LinkName("QAbstractItemModel_ItemData")]
	public static extern void* QAbstractItemModel_ItemData(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_SetItemData")]
	public static extern bool QAbstractItemModel_SetItemData(void* c_this, QModelIndex index, void* roles);
	[LinkName("QAbstractItemModel_ClearItemData")]
	public static extern bool QAbstractItemModel_ClearItemData(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_MimeTypes")]
	public static extern char8[][] QAbstractItemModel_MimeTypes(void* c_this);
	[LinkName("QAbstractItemModel_MimeData")]
	public static extern QMimeData QAbstractItemModel_MimeData(void* c_this, QModelIndex[] indexes);
	[LinkName("QAbstractItemModel_CanDropMimeData")]
	public static extern bool QAbstractItemModel_CanDropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_DropMimeData")]
	public static extern bool QAbstractItemModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_SupportedDropActions")]
	public static extern int64 QAbstractItemModel_SupportedDropActions(void* c_this);
	[LinkName("QAbstractItemModel_SupportedDragActions")]
	public static extern int64 QAbstractItemModel_SupportedDragActions(void* c_this);
	[LinkName("QAbstractItemModel_InsertRows")]
	public static extern bool QAbstractItemModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QAbstractItemModel_InsertColumns")]
	public static extern bool QAbstractItemModel_InsertColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QAbstractItemModel_RemoveRows")]
	public static extern bool QAbstractItemModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QAbstractItemModel_RemoveColumns")]
	public static extern bool QAbstractItemModel_RemoveColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QAbstractItemModel_MoveRows")]
	public static extern bool QAbstractItemModel_MoveRows(void* c_this, QModelIndex sourceParent, int32 sourceRow, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumns")]
	public static extern bool QAbstractItemModel_MoveColumns(void* c_this, QModelIndex sourceParent, int32 sourceColumn, int32 count, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_InsertRow")]
	public static extern bool QAbstractItemModel_InsertRow(void* c_this, int32 row);
	[LinkName("QAbstractItemModel_InsertColumn")]
	public static extern bool QAbstractItemModel_InsertColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemModel_RemoveRow")]
	public static extern bool QAbstractItemModel_RemoveRow(void* c_this, int32 row);
	[LinkName("QAbstractItemModel_RemoveColumn")]
	public static extern bool QAbstractItemModel_RemoveColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemModel_MoveRow")]
	public static extern bool QAbstractItemModel_MoveRow(void* c_this, QModelIndex sourceParent, int32 sourceRow, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumn")]
	public static extern bool QAbstractItemModel_MoveColumn(void* c_this, QModelIndex sourceParent, int32 sourceColumn, QModelIndex destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_FetchMore")]
	public static extern void QAbstractItemModel_FetchMore(void* c_this, QModelIndex parent);
	[LinkName("QAbstractItemModel_CanFetchMore")]
	public static extern bool QAbstractItemModel_CanFetchMore(void* c_this, QModelIndex parent);
	[LinkName("QAbstractItemModel_Flags")]
	public static extern int64 QAbstractItemModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_Sort")]
	public static extern void QAbstractItemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QAbstractItemModel_Buddy")]
	public static extern QModelIndex QAbstractItemModel_Buddy(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_Match")]
	public static extern QModelIndex[] QAbstractItemModel_Match(void* c_this, QModelIndex start, int32 role, QVariant value, int32 hits, int64 flags);
	[LinkName("QAbstractItemModel_Span")]
	public static extern QSize QAbstractItemModel_Span(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_RoleNames")]
	public static extern void* QAbstractItemModel_RoleNames(void* c_this);
	[LinkName("QAbstractItemModel_CheckIndex")]
	public static extern bool QAbstractItemModel_CheckIndex(void* c_this, QModelIndex index);
	[LinkName("QAbstractItemModel_MultiData")]
	public static extern void QAbstractItemModel_MultiData(void* c_this, QModelIndex index, QModelRoleDataSpan roleDataSpan);
	[LinkName("QAbstractItemModel_DataChanged")]
	public static extern void QAbstractItemModel_DataChanged(void* c_this, QModelIndex topLeft, QModelIndex bottomRight);
	[LinkName("QAbstractItemModel_HeaderDataChanged")]
	public static extern void QAbstractItemModel_HeaderDataChanged(void* c_this, int64 orientation, int32 first, int32 last);
	[LinkName("QAbstractItemModel_LayoutChanged")]
	public static extern void QAbstractItemModel_LayoutChanged(void* c_this);
	[LinkName("QAbstractItemModel_LayoutAboutToBeChanged")]
	public static extern void QAbstractItemModel_LayoutAboutToBeChanged(void* c_this);
	[LinkName("QAbstractItemModel_Submit")]
	public static extern bool QAbstractItemModel_Submit(void* c_this);
	[LinkName("QAbstractItemModel_Revert")]
	public static extern void QAbstractItemModel_Revert(void* c_this);
	[LinkName("QAbstractItemModel_ResetInternalData")]
	public static extern void QAbstractItemModel_ResetInternalData(void* c_this);
	[LinkName("QAbstractItemModel_CreateIndex")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex(void* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_CreateIndex2")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex2(void* c_this, int32 row, int32 column, c_uintptr id);
	[LinkName("QAbstractItemModel_EncodeData")]
	public static extern void QAbstractItemModel_EncodeData(void* c_this, QModelIndex[] indexes, QDataStream stream);
	[LinkName("QAbstractItemModel_DecodeData")]
	public static extern bool QAbstractItemModel_DecodeData(void* c_this, int32 row, int32 column, QModelIndex parent, QDataStream stream);
	[LinkName("QAbstractItemModel_BeginInsertRows")]
	public static extern void QAbstractItemModel_BeginInsertRows(void* c_this, QModelIndex parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertRows")]
	public static extern void QAbstractItemModel_EndInsertRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveRows")]
	public static extern void QAbstractItemModel_BeginRemoveRows(void* c_this, QModelIndex parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveRows")]
	public static extern void QAbstractItemModel_EndRemoveRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginMoveRows")]
	public static extern bool QAbstractItemModel_BeginMoveRows(void* c_this, QModelIndex sourceParent, int32 sourceFirst, int32 sourceLast, QModelIndex destinationParent, int32 destinationRow);
	[LinkName("QAbstractItemModel_EndMoveRows")]
	public static extern void QAbstractItemModel_EndMoveRows(void* c_this);
	[LinkName("QAbstractItemModel_BeginInsertColumns")]
	public static extern void QAbstractItemModel_BeginInsertColumns(void* c_this, QModelIndex parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertColumns")]
	public static extern void QAbstractItemModel_EndInsertColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveColumns")]
	public static extern void QAbstractItemModel_BeginRemoveColumns(void* c_this, QModelIndex parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveColumns")]
	public static extern void QAbstractItemModel_EndRemoveColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginMoveColumns")]
	public static extern bool QAbstractItemModel_BeginMoveColumns(void* c_this, QModelIndex sourceParent, int32 sourceFirst, int32 sourceLast, QModelIndex destinationParent, int32 destinationColumn);
	[LinkName("QAbstractItemModel_EndMoveColumns")]
	public static extern void QAbstractItemModel_EndMoveColumns(void* c_this);
	[LinkName("QAbstractItemModel_BeginResetModel")]
	public static extern void QAbstractItemModel_BeginResetModel(void* c_this);
	[LinkName("QAbstractItemModel_EndResetModel")]
	public static extern void QAbstractItemModel_EndResetModel(void* c_this);
	[LinkName("QAbstractItemModel_ChangePersistentIndex")]
	public static extern void QAbstractItemModel_ChangePersistentIndex(void* c_this, QModelIndex from, QModelIndex to);
	[LinkName("QAbstractItemModel_ChangePersistentIndexList")]
	public static extern void QAbstractItemModel_ChangePersistentIndexList(void* c_this, QModelIndex[] from, QModelIndex[] to);
	[LinkName("QAbstractItemModel_PersistentIndexList")]
	public static extern QModelIndex[] QAbstractItemModel_PersistentIndexList(void* c_this);
	[LinkName("QAbstractItemModel_Tr2")]
	public static extern char8[] QAbstractItemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemModel_Tr3")]
	public static extern char8[] QAbstractItemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractItemModel_HasIndex3")]
	public static extern bool QAbstractItemModel_HasIndex3(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_InsertRow2")]
	public static extern bool QAbstractItemModel_InsertRow2(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QAbstractItemModel_InsertColumn2")]
	public static extern bool QAbstractItemModel_InsertColumn2(void* c_this, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_RemoveRow2")]
	public static extern bool QAbstractItemModel_RemoveRow2(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QAbstractItemModel_RemoveColumn2")]
	public static extern bool QAbstractItemModel_RemoveColumn2(void* c_this, int32 column, QModelIndex parent);
	[LinkName("QAbstractItemModel_CheckIndex2")]
	public static extern bool QAbstractItemModel_CheckIndex2(void* c_this, QModelIndex index, int64 options);
	[LinkName("QAbstractItemModel_DataChanged3")]
	public static extern void QAbstractItemModel_DataChanged3(void* c_this, QModelIndex topLeft, QModelIndex bottomRight, int32[] roles);
	[LinkName("QAbstractItemModel_LayoutChanged1")]
	public static extern void QAbstractItemModel_LayoutChanged1(void* c_this, QPersistentModelIndex[] parents);
	[LinkName("QAbstractItemModel_LayoutChanged2")]
	public static extern void QAbstractItemModel_LayoutChanged2(void* c_this, QPersistentModelIndex[] parents, int64 hint);
	[LinkName("QAbstractItemModel_LayoutAboutToBeChanged1")]
	public static extern void QAbstractItemModel_LayoutAboutToBeChanged1(void* c_this, QPersistentModelIndex[] parents);
	[LinkName("QAbstractItemModel_LayoutAboutToBeChanged2")]
	public static extern void QAbstractItemModel_LayoutAboutToBeChanged2(void* c_this, QPersistentModelIndex[] parents, int64 hint);
	[LinkName("QAbstractItemModel_CreateIndex3")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex3(void* c_this, int32 row, int32 column, void data);
}
public struct QAbstractTableModel
{
	[LinkName("QAbstractTableModel_new")]
	public static extern void* QAbstractTableModel_new();
	[LinkName("QAbstractTableModel_new2")]
	public static extern void* QAbstractTableModel_new2(QObject parent);
	[LinkName("QAbstractTableModel_MetaObject")]
	public static extern QMetaObject QAbstractTableModel_MetaObject(void* c_this);
	[LinkName("QAbstractTableModel_Metacast")]
	public static extern void QAbstractTableModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractTableModel_Metacall")]
	public static extern int32 QAbstractTableModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractTableModel_Tr")]
	public static extern char8[] QAbstractTableModel_Tr(char8[] s);
	[LinkName("QAbstractTableModel_Index")]
	public static extern QModelIndex QAbstractTableModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractTableModel_Sibling")]
	public static extern QModelIndex QAbstractTableModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QAbstractTableModel_DropMimeData")]
	public static extern bool QAbstractTableModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractTableModel_Flags")]
	public static extern int64 QAbstractTableModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QAbstractTableModel_Tr2")]
	public static extern char8[] QAbstractTableModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTableModel_Tr3")]
	public static extern char8[] QAbstractTableModel_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QAbstractListModel
{
	[LinkName("QAbstractListModel_new")]
	public static extern void* QAbstractListModel_new();
	[LinkName("QAbstractListModel_new2")]
	public static extern void* QAbstractListModel_new2(QObject parent);
	[LinkName("QAbstractListModel_MetaObject")]
	public static extern QMetaObject QAbstractListModel_MetaObject(void* c_this);
	[LinkName("QAbstractListModel_Metacast")]
	public static extern void QAbstractListModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractListModel_Metacall")]
	public static extern int32 QAbstractListModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractListModel_Tr")]
	public static extern char8[] QAbstractListModel_Tr(char8[] s);
	[LinkName("QAbstractListModel_Index")]
	public static extern QModelIndex QAbstractListModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractListModel_Sibling")]
	public static extern QModelIndex QAbstractListModel_Sibling(void* c_this, int32 row, int32 column, QModelIndex idx);
	[LinkName("QAbstractListModel_DropMimeData")]
	public static extern bool QAbstractListModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QAbstractListModel_Flags")]
	public static extern int64 QAbstractListModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QAbstractListModel_Tr2")]
	public static extern char8[] QAbstractListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractListModel_Tr3")]
	public static extern char8[] QAbstractListModel_Tr3(char8[] s, char8[] c, int32 n);
}