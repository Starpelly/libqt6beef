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
	public static extern QModelRoleData* QModelRoleData_new(int32 role);
	[LinkName("QModelRoleData_new2")]
	public static extern QModelRoleData* QModelRoleData_new2(QModelRoleData* param1);
	[LinkName("QModelRoleData_Role")]
	public static extern int32 QModelRoleData_Role(Self* c_this);
	[LinkName("QModelRoleData_Data")]
	public static extern QVariant* QModelRoleData_Data(Self* c_this);
	[LinkName("QModelRoleData_Data2")]
	public static extern QVariant* QModelRoleData_Data2(Self* c_this);
	[LinkName("QModelRoleData_ClearData")]
	public static extern void QModelRoleData_ClearData(Self* c_this);
	[LinkName("QModelRoleData_OperatorAssign")]
	public static extern void QModelRoleData_OperatorAssign(Self* c_this, QModelRoleData* param1);
}
public struct QModelRoleDataSpan
{
	[LinkName("QModelRoleDataSpan_new")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new(QModelRoleDataSpan* other);
	[LinkName("QModelRoleDataSpan_new2")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new2(QModelRoleDataSpan* other);
	[LinkName("QModelRoleDataSpan_new3")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new3();
	[LinkName("QModelRoleDataSpan_new4")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new4(QModelRoleData* modelRoleData);
	[LinkName("QModelRoleDataSpan_new5")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new5(QModelRoleData* modelRoleData, int32 lenVal);
	[LinkName("QModelRoleDataSpan_new6")]
	public static extern QModelRoleDataSpan* QModelRoleDataSpan_new6(QModelRoleDataSpan* param1);
	[LinkName("QModelRoleDataSpan_Size")]
	public static extern int32 QModelRoleDataSpan_Size(Self* c_this);
	[LinkName("QModelRoleDataSpan_Length")]
	public static extern int32 QModelRoleDataSpan_Length(Self* c_this);
	[LinkName("QModelRoleDataSpan_Data")]
	public static extern QModelRoleData* QModelRoleDataSpan_Data(Self* c_this);
	[LinkName("QModelRoleDataSpan_Begin")]
	public static extern QModelRoleData* QModelRoleDataSpan_Begin(Self* c_this);
	[LinkName("QModelRoleDataSpan_End")]
	public static extern QModelRoleData* QModelRoleDataSpan_End(Self* c_this);
	[LinkName("QModelRoleDataSpan_OperatorSubscript")]
	public static extern QModelRoleData* QModelRoleDataSpan_OperatorSubscript(Self* c_this, int32 index);
	[LinkName("QModelRoleDataSpan_DataForRole")]
	public static extern QVariant* QModelRoleDataSpan_DataForRole(Self* c_this, int32 role);
}
public struct QModelIndex
{
	[LinkName("QModelIndex_new")]
	public static extern QModelIndex* QModelIndex_new(QModelIndex* other);
	[LinkName("QModelIndex_new2")]
	public static extern QModelIndex* QModelIndex_new2(QModelIndex* other);
	[LinkName("QModelIndex_new3")]
	public static extern QModelIndex* QModelIndex_new3();
	[LinkName("QModelIndex_new4")]
	public static extern QModelIndex* QModelIndex_new4(QModelIndex* param1);
	[LinkName("QModelIndex_Row")]
	public static extern int32 QModelIndex_Row(Self* c_this);
	[LinkName("QModelIndex_Column")]
	public static extern int32 QModelIndex_Column(Self* c_this);
	[LinkName("QModelIndex_InternalId")]
	public static extern c_uintptr QModelIndex_InternalId(Self* c_this);
	[LinkName("QModelIndex_InternalPointer")]
	public static extern void* QModelIndex_InternalPointer(Self* c_this);
	[LinkName("QModelIndex_ConstInternalPointer")]
	public static extern void* QModelIndex_ConstInternalPointer(Self* c_this);
	[LinkName("QModelIndex_Parent")]
	public static extern QModelIndex QModelIndex_Parent(Self* c_this);
	[LinkName("QModelIndex_Sibling")]
	public static extern QModelIndex QModelIndex_Sibling(Self* c_this, int32 row, int32 column);
	[LinkName("QModelIndex_SiblingAtColumn")]
	public static extern QModelIndex QModelIndex_SiblingAtColumn(Self* c_this, int32 column);
	[LinkName("QModelIndex_SiblingAtRow")]
	public static extern QModelIndex QModelIndex_SiblingAtRow(Self* c_this, int32 row);
	[LinkName("QModelIndex_Data")]
	public static extern QVariant QModelIndex_Data(Self* c_this);
	[LinkName("QModelIndex_MultiData")]
	public static extern void QModelIndex_MultiData(Self* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QModelIndex_Flags")]
	public static extern int64 QModelIndex_Flags(Self* c_this);
	[LinkName("QModelIndex_Model")]
	public static extern QAbstractItemModel* QModelIndex_Model(Self* c_this);
	[LinkName("QModelIndex_IsValid")]
	public static extern bool QModelIndex_IsValid(Self* c_this);
	[LinkName("QModelIndex_OperatorEqual")]
	public static extern bool QModelIndex_OperatorEqual(Self* c_this, QModelIndex* other);
	[LinkName("QModelIndex_OperatorNotEqual")]
	public static extern bool QModelIndex_OperatorNotEqual(Self* c_this, QModelIndex* other);
	[LinkName("QModelIndex_OperatorLesser")]
	public static extern bool QModelIndex_OperatorLesser(Self* c_this, QModelIndex* other);
	[LinkName("QModelIndex_Data1")]
	public static extern QVariant QModelIndex_Data1(Self* c_this, int32 role);
}
public struct QPersistentModelIndex
{
	[LinkName("QPersistentModelIndex_new")]
	public static extern QPersistentModelIndex* QPersistentModelIndex_new();
	[LinkName("QPersistentModelIndex_new2")]
	public static extern QPersistentModelIndex* QPersistentModelIndex_new2(QModelIndex* index);
	[LinkName("QPersistentModelIndex_new3")]
	public static extern QPersistentModelIndex* QPersistentModelIndex_new3(QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorLesser")]
	public static extern bool QPersistentModelIndex_OperatorLesser(Self* c_this, QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorEqual")]
	public static extern bool QPersistentModelIndex_OperatorEqual(Self* c_this, QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorNotEqual")]
	public static extern bool QPersistentModelIndex_OperatorNotEqual(Self* c_this, QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorAssign")]
	public static extern void QPersistentModelIndex_OperatorAssign(Self* c_this, QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_Swap")]
	public static extern void QPersistentModelIndex_Swap(Self* c_this, QPersistentModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorEqualWithOther(Self* c_this, QModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorNotEqualWithOther")]
	public static extern bool QPersistentModelIndex_OperatorNotEqualWithOther(Self* c_this, QModelIndex* other);
	[LinkName("QPersistentModelIndex_OperatorAssignWithOther")]
	public static extern void QPersistentModelIndex_OperatorAssignWithOther(Self* c_this, QModelIndex* other);
	[LinkName("QPersistentModelIndex_ToQModelIndex")]
	public static extern QModelIndex QPersistentModelIndex_ToQModelIndex(Self* c_this);
	[LinkName("QPersistentModelIndex_Row")]
	public static extern int32 QPersistentModelIndex_Row(Self* c_this);
	[LinkName("QPersistentModelIndex_Column")]
	public static extern int32 QPersistentModelIndex_Column(Self* c_this);
	[LinkName("QPersistentModelIndex_InternalPointer")]
	public static extern void* QPersistentModelIndex_InternalPointer(Self* c_this);
	[LinkName("QPersistentModelIndex_ConstInternalPointer")]
	public static extern void* QPersistentModelIndex_ConstInternalPointer(Self* c_this);
	[LinkName("QPersistentModelIndex_InternalId")]
	public static extern c_uintptr QPersistentModelIndex_InternalId(Self* c_this);
	[LinkName("QPersistentModelIndex_Parent")]
	public static extern QModelIndex QPersistentModelIndex_Parent(Self* c_this);
	[LinkName("QPersistentModelIndex_Sibling")]
	public static extern QModelIndex QPersistentModelIndex_Sibling(Self* c_this, int32 row, int32 column);
	[LinkName("QPersistentModelIndex_Data")]
	public static extern QVariant QPersistentModelIndex_Data(Self* c_this);
	[LinkName("QPersistentModelIndex_MultiData")]
	public static extern void QPersistentModelIndex_MultiData(Self* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QPersistentModelIndex_Flags")]
	public static extern int64 QPersistentModelIndex_Flags(Self* c_this);
	[LinkName("QPersistentModelIndex_Model")]
	public static extern QAbstractItemModel* QPersistentModelIndex_Model(Self* c_this);
	[LinkName("QPersistentModelIndex_IsValid")]
	public static extern bool QPersistentModelIndex_IsValid(Self* c_this);
	[LinkName("QPersistentModelIndex_Data1")]
	public static extern QVariant QPersistentModelIndex_Data1(Self* c_this, int32 role);
}
public struct QAbstractItemModel : QObject
{
	[LinkName("QAbstractItemModel_new")]
	public static extern QAbstractItemModel* QAbstractItemModel_new();
	[LinkName("QAbstractItemModel_new2")]
	public static extern QAbstractItemModel* QAbstractItemModel_new2(QObject* parent);
	[LinkName("QAbstractItemModel_MetaObject")]
	public static extern QMetaObject* QAbstractItemModel_MetaObject(Self* c_this);
	[LinkName("QAbstractItemModel_Metacast")]
	public static extern void* QAbstractItemModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractItemModel_Metacall")]
	public static extern int32 QAbstractItemModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemModel_Tr")]
	public static extern libqt_string QAbstractItemModel_Tr(char8[] s);
	[LinkName("QAbstractItemModel_HasIndex")]
	public static extern bool QAbstractItemModel_HasIndex(Self* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_Index")]
	public static extern QModelIndex QAbstractItemModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_Parent")]
	public static extern QModelIndex QAbstractItemModel_Parent(Self* c_this, QModelIndex* child);
	[LinkName("QAbstractItemModel_Sibling")]
	public static extern QModelIndex QAbstractItemModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QAbstractItemModel_RowCount")]
	public static extern int32 QAbstractItemModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QAbstractItemModel_ColumnCount")]
	public static extern int32 QAbstractItemModel_ColumnCount(Self* c_this, QModelIndex* parent);
	[LinkName("QAbstractItemModel_HasChildren")]
	public static extern bool QAbstractItemModel_HasChildren(Self* c_this, QModelIndex* parent);
	[LinkName("QAbstractItemModel_Data")]
	public static extern QVariant QAbstractItemModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QAbstractItemModel_SetData")]
	public static extern bool QAbstractItemModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QAbstractItemModel_HeaderData")]
	public static extern QVariant QAbstractItemModel_HeaderData(Self* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QAbstractItemModel_SetHeaderData")]
	public static extern bool QAbstractItemModel_SetHeaderData(Self* c_this, int32 section, int64 orientation, QVariant* value, int32 role);
	[LinkName("QAbstractItemModel_ItemData")]
	public static extern void* QAbstractItemModel_ItemData(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_SetItemData")]
	public static extern bool QAbstractItemModel_SetItemData(Self* c_this, QModelIndex* index, void* roles);
	[LinkName("QAbstractItemModel_ClearItemData")]
	public static extern bool QAbstractItemModel_ClearItemData(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_MimeTypes")]
	public static extern libqt_string[] QAbstractItemModel_MimeTypes(Self* c_this);
	[LinkName("QAbstractItemModel_MimeData")]
	public static extern QMimeData* QAbstractItemModel_MimeData(Self* c_this, QModelIndex[] indexes);
	[LinkName("QAbstractItemModel_CanDropMimeData")]
	public static extern bool QAbstractItemModel_CanDropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_DropMimeData")]
	public static extern bool QAbstractItemModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_SupportedDropActions")]
	public static extern int64 QAbstractItemModel_SupportedDropActions(Self* c_this);
	[LinkName("QAbstractItemModel_SupportedDragActions")]
	public static extern int64 QAbstractItemModel_SupportedDragActions(Self* c_this);
	[LinkName("QAbstractItemModel_InsertRows")]
	public static extern bool QAbstractItemModel_InsertRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QAbstractItemModel_InsertColumns")]
	public static extern bool QAbstractItemModel_InsertColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QAbstractItemModel_RemoveRows")]
	public static extern bool QAbstractItemModel_RemoveRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QAbstractItemModel_RemoveColumns")]
	public static extern bool QAbstractItemModel_RemoveColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QAbstractItemModel_MoveRows")]
	public static extern bool QAbstractItemModel_MoveRows(Self* c_this, QModelIndex* sourceParent, int32 sourceRow, int32 count, QModelIndex* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumns")]
	public static extern bool QAbstractItemModel_MoveColumns(Self* c_this, QModelIndex* sourceParent, int32 sourceColumn, int32 count, QModelIndex* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_InsertRow")]
	public static extern bool QAbstractItemModel_InsertRow(Self* c_this, int32 row);
	[LinkName("QAbstractItemModel_InsertColumn")]
	public static extern bool QAbstractItemModel_InsertColumn(Self* c_this, int32 column);
	[LinkName("QAbstractItemModel_RemoveRow")]
	public static extern bool QAbstractItemModel_RemoveRow(Self* c_this, int32 row);
	[LinkName("QAbstractItemModel_RemoveColumn")]
	public static extern bool QAbstractItemModel_RemoveColumn(Self* c_this, int32 column);
	[LinkName("QAbstractItemModel_MoveRow")]
	public static extern bool QAbstractItemModel_MoveRow(Self* c_this, QModelIndex* sourceParent, int32 sourceRow, QModelIndex* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_MoveColumn")]
	public static extern bool QAbstractItemModel_MoveColumn(Self* c_this, QModelIndex* sourceParent, int32 sourceColumn, QModelIndex* destinationParent, int32 destinationChild);
	[LinkName("QAbstractItemModel_FetchMore")]
	public static extern void QAbstractItemModel_FetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QAbstractItemModel_CanFetchMore")]
	public static extern bool QAbstractItemModel_CanFetchMore(Self* c_this, QModelIndex* parent);
	[LinkName("QAbstractItemModel_Flags")]
	public static extern int64 QAbstractItemModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_Sort")]
	public static extern void QAbstractItemModel_Sort(Self* c_this, int32 column, int64 order);
	[LinkName("QAbstractItemModel_Buddy")]
	public static extern QModelIndex QAbstractItemModel_Buddy(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_Match")]
	public static extern QModelIndex[] QAbstractItemModel_Match(Self* c_this, QModelIndex* start, int32 role, QVariant* value, int32 hits, int64 flags);
	[LinkName("QAbstractItemModel_Span")]
	public static extern QSize QAbstractItemModel_Span(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_RoleNames")]
	public static extern void* QAbstractItemModel_RoleNames(Self* c_this);
	[LinkName("QAbstractItemModel_CheckIndex")]
	public static extern bool QAbstractItemModel_CheckIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemModel_MultiData")]
	public static extern void QAbstractItemModel_MultiData(Self* c_this, QModelIndex* index, QModelRoleDataSpan roleDataSpan);
	[LinkName("QAbstractItemModel_Connect_DataChanged")]
	public static extern void QAbstractItemModel_Connect_DataChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_HeaderDataChanged")]
	public static extern void QAbstractItemModel_Connect_HeaderDataChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Submit")]
	public static extern bool QAbstractItemModel_Submit(Self* c_this);
	[LinkName("QAbstractItemModel_Revert")]
	public static extern void QAbstractItemModel_Revert(Self* c_this);
	[LinkName("QAbstractItemModel_ResetInternalData")]
	public static extern void QAbstractItemModel_ResetInternalData(Self* c_this);
	[LinkName("QAbstractItemModel_CreateIndex")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex(Self* c_this, int32 row, int32 column);
	[LinkName("QAbstractItemModel_CreateIndex2")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex2(Self* c_this, int32 row, int32 column, c_uintptr id);
	[LinkName("QAbstractItemModel_EncodeData")]
	public static extern void QAbstractItemModel_EncodeData(Self* c_this, QModelIndex[] indexes, QDataStream* stream);
	[LinkName("QAbstractItemModel_DecodeData")]
	public static extern bool QAbstractItemModel_DecodeData(Self* c_this, int32 row, int32 column, QModelIndex* parent, QDataStream* stream);
	[LinkName("QAbstractItemModel_BeginInsertRows")]
	public static extern void QAbstractItemModel_BeginInsertRows(Self* c_this, QModelIndex* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertRows")]
	public static extern void QAbstractItemModel_EndInsertRows(Self* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveRows")]
	public static extern void QAbstractItemModel_BeginRemoveRows(Self* c_this, QModelIndex* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveRows")]
	public static extern void QAbstractItemModel_EndRemoveRows(Self* c_this);
	[LinkName("QAbstractItemModel_BeginMoveRows")]
	public static extern bool QAbstractItemModel_BeginMoveRows(Self* c_this, QModelIndex* sourceParent, int32 sourceFirst, int32 sourceLast, QModelIndex* destinationParent, int32 destinationRow);
	[LinkName("QAbstractItemModel_EndMoveRows")]
	public static extern void QAbstractItemModel_EndMoveRows(Self* c_this);
	[LinkName("QAbstractItemModel_BeginInsertColumns")]
	public static extern void QAbstractItemModel_BeginInsertColumns(Self* c_this, QModelIndex* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndInsertColumns")]
	public static extern void QAbstractItemModel_EndInsertColumns(Self* c_this);
	[LinkName("QAbstractItemModel_BeginRemoveColumns")]
	public static extern void QAbstractItemModel_BeginRemoveColumns(Self* c_this, QModelIndex* parent, int32 first, int32 last);
	[LinkName("QAbstractItemModel_EndRemoveColumns")]
	public static extern void QAbstractItemModel_EndRemoveColumns(Self* c_this);
	[LinkName("QAbstractItemModel_BeginMoveColumns")]
	public static extern bool QAbstractItemModel_BeginMoveColumns(Self* c_this, QModelIndex* sourceParent, int32 sourceFirst, int32 sourceLast, QModelIndex* destinationParent, int32 destinationColumn);
	[LinkName("QAbstractItemModel_EndMoveColumns")]
	public static extern void QAbstractItemModel_EndMoveColumns(Self* c_this);
	[LinkName("QAbstractItemModel_BeginResetModel")]
	public static extern void QAbstractItemModel_BeginResetModel(Self* c_this);
	[LinkName("QAbstractItemModel_EndResetModel")]
	public static extern void QAbstractItemModel_EndResetModel(Self* c_this);
	[LinkName("QAbstractItemModel_ChangePersistentIndex")]
	public static extern void QAbstractItemModel_ChangePersistentIndex(Self* c_this, QModelIndex* from, QModelIndex* to);
	[LinkName("QAbstractItemModel_ChangePersistentIndexList")]
	public static extern void QAbstractItemModel_ChangePersistentIndexList(Self* c_this, QModelIndex[] from, QModelIndex[] to);
	[LinkName("QAbstractItemModel_PersistentIndexList")]
	public static extern QModelIndex[] QAbstractItemModel_PersistentIndexList(Self* c_this);
	[LinkName("QAbstractItemModel_Tr2")]
	public static extern libqt_string QAbstractItemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemModel_Tr3")]
	public static extern libqt_string QAbstractItemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractItemModel_HasIndex3")]
	public static extern bool QAbstractItemModel_HasIndex3(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_InsertRow2")]
	public static extern bool QAbstractItemModel_InsertRow2(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QAbstractItemModel_InsertColumn2")]
	public static extern bool QAbstractItemModel_InsertColumn2(Self* c_this, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_RemoveRow2")]
	public static extern bool QAbstractItemModel_RemoveRow2(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QAbstractItemModel_RemoveColumn2")]
	public static extern bool QAbstractItemModel_RemoveColumn2(Self* c_this, int32 column, QModelIndex* parent);
	[LinkName("QAbstractItemModel_CheckIndex2")]
	public static extern bool QAbstractItemModel_CheckIndex2(Self* c_this, QModelIndex* index, int64 options);
	[LinkName("QAbstractItemModel_Connect_DataChanged3")]
	public static extern void QAbstractItemModel_Connect_DataChanged3(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged1")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged1(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutChanged2")]
	public static extern void QAbstractItemModel_Connect_LayoutChanged2(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged1")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged1(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_Connect_LayoutAboutToBeChanged2")]
	public static extern void QAbstractItemModel_Connect_LayoutAboutToBeChanged2(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemModel_CreateIndex3")]
	public static extern QModelIndex QAbstractItemModel_CreateIndex3(Self* c_this, int32 row, int32 column, void* data);
}
public struct QAbstractTableModel : QAbstractItemModel
{
	[LinkName("QAbstractTableModel_new")]
	public static extern QAbstractTableModel* QAbstractTableModel_new();
	[LinkName("QAbstractTableModel_new2")]
	public static extern QAbstractTableModel* QAbstractTableModel_new2(QObject* parent);
	[LinkName("QAbstractTableModel_MetaObject")]
	public static extern QMetaObject* QAbstractTableModel_MetaObject(Self* c_this);
	[LinkName("QAbstractTableModel_Metacast")]
	public static extern void* QAbstractTableModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractTableModel_Metacall")]
	public static extern int32 QAbstractTableModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractTableModel_Tr")]
	public static extern libqt_string QAbstractTableModel_Tr(char8[] s);
	[LinkName("QAbstractTableModel_Index")]
	public static extern QModelIndex QAbstractTableModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractTableModel_Sibling")]
	public static extern QModelIndex QAbstractTableModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QAbstractTableModel_DropMimeData")]
	public static extern bool QAbstractTableModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractTableModel_Flags")]
	public static extern int64 QAbstractTableModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractTableModel_Tr2")]
	public static extern libqt_string QAbstractTableModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractTableModel_Tr3")]
	public static extern libqt_string QAbstractTableModel_Tr3(char8[] s, char8[] c, int32 n);
}
public struct QAbstractListModel : QAbstractItemModel
{
	[LinkName("QAbstractListModel_new")]
	public static extern QAbstractListModel* QAbstractListModel_new();
	[LinkName("QAbstractListModel_new2")]
	public static extern QAbstractListModel* QAbstractListModel_new2(QObject* parent);
	[LinkName("QAbstractListModel_MetaObject")]
	public static extern QMetaObject* QAbstractListModel_MetaObject(Self* c_this);
	[LinkName("QAbstractListModel_Metacast")]
	public static extern void* QAbstractListModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractListModel_Metacall")]
	public static extern int32 QAbstractListModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractListModel_Tr")]
	public static extern libqt_string QAbstractListModel_Tr(char8[] s);
	[LinkName("QAbstractListModel_Index")]
	public static extern QModelIndex QAbstractListModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractListModel_Sibling")]
	public static extern QModelIndex QAbstractListModel_Sibling(Self* c_this, int32 row, int32 column, QModelIndex* idx);
	[LinkName("QAbstractListModel_DropMimeData")]
	public static extern bool QAbstractListModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QAbstractListModel_Flags")]
	public static extern int64 QAbstractListModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractListModel_Tr2")]
	public static extern libqt_string QAbstractListModel_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractListModel_Tr3")]
	public static extern libqt_string QAbstractListModel_Tr3(char8[] s, char8[] c, int32 n);
}