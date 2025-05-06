using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStandardItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
public struct QStandardItem
{
	[LinkName("QStandardItem_new")]
	public static extern QStandardItem* QStandardItem_new();
	[LinkName("QStandardItem_new2")]
	public static extern QStandardItem* QStandardItem_new2(libqt_string text);
	[LinkName("QStandardItem_new3")]
	public static extern QStandardItem* QStandardItem_new3(QIcon* icon, libqt_string text);
	[LinkName("QStandardItem_new4")]
	public static extern QStandardItem* QStandardItem_new4(int32 rows);
	[LinkName("QStandardItem_new5")]
	public static extern QStandardItem* QStandardItem_new5(int32 rows, int32 columns);
	[LinkName("QStandardItem_Data")]
	public static extern QVariant QStandardItem_Data(Self* c_this, int32 role);
	[LinkName("QStandardItem_MultiData")]
	public static extern void QStandardItem_MultiData(Self* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QStandardItem_SetData")]
	public static extern void QStandardItem_SetData(Self* c_this, QVariant* value, int32 role);
	[LinkName("QStandardItem_ClearData")]
	public static extern void QStandardItem_ClearData(Self* c_this);
	[LinkName("QStandardItem_Text")]
	public static extern libqt_string QStandardItem_Text(Self* c_this);
	[LinkName("QStandardItem_SetText")]
	public static extern void QStandardItem_SetText(Self* c_this, libqt_string text);
	[LinkName("QStandardItem_Icon")]
	public static extern QIcon QStandardItem_Icon(Self* c_this);
	[LinkName("QStandardItem_SetIcon")]
	public static extern void QStandardItem_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QStandardItem_ToolTip")]
	public static extern libqt_string QStandardItem_ToolTip(Self* c_this);
	[LinkName("QStandardItem_SetToolTip")]
	public static extern void QStandardItem_SetToolTip(Self* c_this, libqt_string toolTip);
	[LinkName("QStandardItem_StatusTip")]
	public static extern libqt_string QStandardItem_StatusTip(Self* c_this);
	[LinkName("QStandardItem_SetStatusTip")]
	public static extern void QStandardItem_SetStatusTip(Self* c_this, libqt_string statusTip);
	[LinkName("QStandardItem_WhatsThis")]
	public static extern libqt_string QStandardItem_WhatsThis(Self* c_this);
	[LinkName("QStandardItem_SetWhatsThis")]
	public static extern void QStandardItem_SetWhatsThis(Self* c_this, libqt_string whatsThis);
	[LinkName("QStandardItem_SizeHint")]
	public static extern QSize QStandardItem_SizeHint(Self* c_this);
	[LinkName("QStandardItem_SetSizeHint")]
	public static extern void QStandardItem_SetSizeHint(Self* c_this, QSize* sizeHint);
	[LinkName("QStandardItem_Font")]
	public static extern QFont QStandardItem_Font(Self* c_this);
	[LinkName("QStandardItem_SetFont")]
	public static extern void QStandardItem_SetFont(Self* c_this, QFont* font);
	[LinkName("QStandardItem_TextAlignment")]
	public static extern int64 QStandardItem_TextAlignment(Self* c_this);
	[LinkName("QStandardItem_SetTextAlignment")]
	public static extern void QStandardItem_SetTextAlignment(Self* c_this, int64 textAlignment);
	[LinkName("QStandardItem_Background")]
	public static extern QBrush QStandardItem_Background(Self* c_this);
	[LinkName("QStandardItem_SetBackground")]
	public static extern void QStandardItem_SetBackground(Self* c_this, QBrush* brush);
	[LinkName("QStandardItem_Foreground")]
	public static extern QBrush QStandardItem_Foreground(Self* c_this);
	[LinkName("QStandardItem_SetForeground")]
	public static extern void QStandardItem_SetForeground(Self* c_this, QBrush* brush);
	[LinkName("QStandardItem_CheckState")]
	public static extern int64 QStandardItem_CheckState(Self* c_this);
	[LinkName("QStandardItem_SetCheckState")]
	public static extern void QStandardItem_SetCheckState(Self* c_this, int64 checkState);
	[LinkName("QStandardItem_AccessibleText")]
	public static extern libqt_string QStandardItem_AccessibleText(Self* c_this);
	[LinkName("QStandardItem_SetAccessibleText")]
	public static extern void QStandardItem_SetAccessibleText(Self* c_this, libqt_string accessibleText);
	[LinkName("QStandardItem_AccessibleDescription")]
	public static extern libqt_string QStandardItem_AccessibleDescription(Self* c_this);
	[LinkName("QStandardItem_SetAccessibleDescription")]
	public static extern void QStandardItem_SetAccessibleDescription(Self* c_this, libqt_string accessibleDescription);
	[LinkName("QStandardItem_Flags")]
	public static extern int64 QStandardItem_Flags(Self* c_this);
	[LinkName("QStandardItem_SetFlags")]
	public static extern void QStandardItem_SetFlags(Self* c_this, int64 flags);
	[LinkName("QStandardItem_IsEnabled")]
	public static extern bool QStandardItem_IsEnabled(Self* c_this);
	[LinkName("QStandardItem_SetEnabled")]
	public static extern void QStandardItem_SetEnabled(Self* c_this, bool enabled);
	[LinkName("QStandardItem_IsEditable")]
	public static extern bool QStandardItem_IsEditable(Self* c_this);
	[LinkName("QStandardItem_SetEditable")]
	public static extern void QStandardItem_SetEditable(Self* c_this, bool editable);
	[LinkName("QStandardItem_IsSelectable")]
	public static extern bool QStandardItem_IsSelectable(Self* c_this);
	[LinkName("QStandardItem_SetSelectable")]
	public static extern void QStandardItem_SetSelectable(Self* c_this, bool selectable);
	[LinkName("QStandardItem_IsCheckable")]
	public static extern bool QStandardItem_IsCheckable(Self* c_this);
	[LinkName("QStandardItem_SetCheckable")]
	public static extern void QStandardItem_SetCheckable(Self* c_this, bool checkable);
	[LinkName("QStandardItem_IsAutoTristate")]
	public static extern bool QStandardItem_IsAutoTristate(Self* c_this);
	[LinkName("QStandardItem_SetAutoTristate")]
	public static extern void QStandardItem_SetAutoTristate(Self* c_this, bool tristate);
	[LinkName("QStandardItem_IsUserTristate")]
	public static extern bool QStandardItem_IsUserTristate(Self* c_this);
	[LinkName("QStandardItem_SetUserTristate")]
	public static extern void QStandardItem_SetUserTristate(Self* c_this, bool tristate);
	[LinkName("QStandardItem_IsDragEnabled")]
	public static extern bool QStandardItem_IsDragEnabled(Self* c_this);
	[LinkName("QStandardItem_SetDragEnabled")]
	public static extern void QStandardItem_SetDragEnabled(Self* c_this, bool dragEnabled);
	[LinkName("QStandardItem_IsDropEnabled")]
	public static extern bool QStandardItem_IsDropEnabled(Self* c_this);
	[LinkName("QStandardItem_SetDropEnabled")]
	public static extern void QStandardItem_SetDropEnabled(Self* c_this, bool dropEnabled);
	[LinkName("QStandardItem_Parent")]
	public static extern QStandardItem* QStandardItem_Parent(Self* c_this);
	[LinkName("QStandardItem_Row")]
	public static extern int32 QStandardItem_Row(Self* c_this);
	[LinkName("QStandardItem_Column")]
	public static extern int32 QStandardItem_Column(Self* c_this);
	[LinkName("QStandardItem_Index")]
	public static extern QModelIndex QStandardItem_Index(Self* c_this);
	[LinkName("QStandardItem_Model")]
	public static extern QStandardItemModel* QStandardItem_Model(Self* c_this);
	[LinkName("QStandardItem_RowCount")]
	public static extern int32 QStandardItem_RowCount(Self* c_this);
	[LinkName("QStandardItem_SetRowCount")]
	public static extern void QStandardItem_SetRowCount(Self* c_this, int32 rows);
	[LinkName("QStandardItem_ColumnCount")]
	public static extern int32 QStandardItem_ColumnCount(Self* c_this);
	[LinkName("QStandardItem_SetColumnCount")]
	public static extern void QStandardItem_SetColumnCount(Self* c_this, int32 columns);
	[LinkName("QStandardItem_HasChildren")]
	public static extern bool QStandardItem_HasChildren(Self* c_this);
	[LinkName("QStandardItem_Child")]
	public static extern QStandardItem* QStandardItem_Child(Self* c_this, int32 row);
	[LinkName("QStandardItem_SetChild")]
	public static extern void QStandardItem_SetChild(Self* c_this, int32 row, int32 column, QStandardItem* item);
	[LinkName("QStandardItem_SetChild2")]
	public static extern void QStandardItem_SetChild2(Self* c_this, int32 row, QStandardItem* item);
	[LinkName("QStandardItem_InsertRow")]
	public static extern void QStandardItem_InsertRow(Self* c_this, int32 row, QStandardItem*[] items);
	[LinkName("QStandardItem_InsertColumn")]
	public static extern void QStandardItem_InsertColumn(Self* c_this, int32 column, QStandardItem*[] items);
	[LinkName("QStandardItem_InsertRows")]
	public static extern void QStandardItem_InsertRows(Self* c_this, int32 row, QStandardItem*[] items);
	[LinkName("QStandardItem_InsertRows2")]
	public static extern void QStandardItem_InsertRows2(Self* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_InsertColumns")]
	public static extern void QStandardItem_InsertColumns(Self* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_RemoveRow")]
	public static extern void QStandardItem_RemoveRow(Self* c_this, int32 row);
	[LinkName("QStandardItem_RemoveColumn")]
	public static extern void QStandardItem_RemoveColumn(Self* c_this, int32 column);
	[LinkName("QStandardItem_RemoveRows")]
	public static extern void QStandardItem_RemoveRows(Self* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_RemoveColumns")]
	public static extern void QStandardItem_RemoveColumns(Self* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_AppendRow")]
	public static extern void QStandardItem_AppendRow(Self* c_this, QStandardItem*[] items);
	[LinkName("QStandardItem_AppendRows")]
	public static extern void QStandardItem_AppendRows(Self* c_this, QStandardItem*[] items);
	[LinkName("QStandardItem_AppendColumn")]
	public static extern void QStandardItem_AppendColumn(Self* c_this, QStandardItem*[] items);
	[LinkName("QStandardItem_InsertRow2")]
	public static extern void QStandardItem_InsertRow2(Self* c_this, int32 row, QStandardItem* item);
	[LinkName("QStandardItem_AppendRowWithItem")]
	public static extern void QStandardItem_AppendRowWithItem(Self* c_this, QStandardItem* item);
	[LinkName("QStandardItem_TakeChild")]
	public static extern QStandardItem* QStandardItem_TakeChild(Self* c_this, int32 row);
	[LinkName("QStandardItem_TakeRow")]
	public static extern QStandardItem*[] QStandardItem_TakeRow(Self* c_this, int32 row);
	[LinkName("QStandardItem_TakeColumn")]
	public static extern QStandardItem*[] QStandardItem_TakeColumn(Self* c_this, int32 column);
	[LinkName("QStandardItem_SortChildren")]
	public static extern void QStandardItem_SortChildren(Self* c_this, int32 column);
	[LinkName("QStandardItem_Clone")]
	public static extern QStandardItem* QStandardItem_Clone(Self* c_this);
	[LinkName("QStandardItem_Type")]
	public static extern int32 QStandardItem_Type(Self* c_this);
	[LinkName("QStandardItem_Read")]
	public static extern void QStandardItem_Read(Self* c_this, QDataStream* _in);
	[LinkName("QStandardItem_Write")]
	public static extern void QStandardItem_Write(Self* c_this, QDataStream* _out);
	[LinkName("QStandardItem_OperatorLesser")]
	public static extern bool QStandardItem_OperatorLesser(Self* c_this, QStandardItem* other);
	[LinkName("QStandardItem_OperatorAssign")]
	public static extern void QStandardItem_OperatorAssign(Self* c_this, QStandardItem* other);
	[LinkName("QStandardItem_EmitDataChanged")]
	public static extern void QStandardItem_EmitDataChanged(Self* c_this);
	[LinkName("QStandardItem_Child2")]
	public static extern QStandardItem* QStandardItem_Child2(Self* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_TakeChild2")]
	public static extern QStandardItem* QStandardItem_TakeChild2(Self* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_SortChildren2")]
	public static extern void QStandardItem_SortChildren2(Self* c_this, int32 column, int64 order);
}
public struct QStandardItemModel : QAbstractItemModel
{
	[LinkName("QStandardItemModel_new")]
	public static extern QStandardItemModel* QStandardItemModel_new();
	[LinkName("QStandardItemModel_new2")]
	public static extern QStandardItemModel* QStandardItemModel_new2(int32 rows, int32 columns);
	[LinkName("QStandardItemModel_new3")]
	public static extern QStandardItemModel* QStandardItemModel_new3(QObject* parent);
	[LinkName("QStandardItemModel_new4")]
	public static extern QStandardItemModel* QStandardItemModel_new4(int32 rows, int32 columns, QObject* parent);
	[LinkName("QStandardItemModel_MetaObject")]
	public static extern QMetaObject* QStandardItemModel_MetaObject(Self* c_this);
	[LinkName("QStandardItemModel_Metacast")]
	public static extern void* QStandardItemModel_Metacast(Self* c_this, char8[] param1);
	[LinkName("QStandardItemModel_Metacall")]
	public static extern int32 QStandardItemModel_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStandardItemModel_Tr")]
	public static extern libqt_string QStandardItemModel_Tr(char8[] s);
	[LinkName("QStandardItemModel_SetItemRoleNames")]
	public static extern void QStandardItemModel_SetItemRoleNames(Self* c_this, void* roleNames);
	[LinkName("QStandardItemModel_RoleNames")]
	public static extern void* QStandardItemModel_RoleNames(Self* c_this);
	[LinkName("QStandardItemModel_Index")]
	public static extern QModelIndex QStandardItemModel_Index(Self* c_this, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QStandardItemModel_Parent")]
	public static extern QModelIndex QStandardItemModel_Parent(Self* c_this, QModelIndex* child);
	[LinkName("QStandardItemModel_RowCount")]
	public static extern int32 QStandardItemModel_RowCount(Self* c_this, QModelIndex* parent);
	[LinkName("QStandardItemModel_ColumnCount")]
	public static extern int32 QStandardItemModel_ColumnCount(Self* c_this, QModelIndex* parent);
	[LinkName("QStandardItemModel_HasChildren")]
	public static extern bool QStandardItemModel_HasChildren(Self* c_this, QModelIndex* parent);
	[LinkName("QStandardItemModel_Data")]
	public static extern QVariant QStandardItemModel_Data(Self* c_this, QModelIndex* index, int32 role);
	[LinkName("QStandardItemModel_MultiData")]
	public static extern void QStandardItemModel_MultiData(Self* c_this, QModelIndex* index, QModelRoleDataSpan roleDataSpan);
	[LinkName("QStandardItemModel_SetData")]
	public static extern bool QStandardItemModel_SetData(Self* c_this, QModelIndex* index, QVariant* value, int32 role);
	[LinkName("QStandardItemModel_ClearItemData")]
	public static extern bool QStandardItemModel_ClearItemData(Self* c_this, QModelIndex* index);
	[LinkName("QStandardItemModel_HeaderData")]
	public static extern QVariant QStandardItemModel_HeaderData(Self* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QStandardItemModel_SetHeaderData")]
	public static extern bool QStandardItemModel_SetHeaderData(Self* c_this, int32 section, int64 orientation, QVariant* value, int32 role);
	[LinkName("QStandardItemModel_InsertRows")]
	public static extern bool QStandardItemModel_InsertRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QStandardItemModel_InsertColumns")]
	public static extern bool QStandardItemModel_InsertColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QStandardItemModel_RemoveRows")]
	public static extern bool QStandardItemModel_RemoveRows(Self* c_this, int32 row, int32 count, QModelIndex* parent);
	[LinkName("QStandardItemModel_RemoveColumns")]
	public static extern bool QStandardItemModel_RemoveColumns(Self* c_this, int32 column, int32 count, QModelIndex* parent);
	[LinkName("QStandardItemModel_Flags")]
	public static extern int64 QStandardItemModel_Flags(Self* c_this, QModelIndex* index);
	[LinkName("QStandardItemModel_SupportedDropActions")]
	public static extern int64 QStandardItemModel_SupportedDropActions(Self* c_this);
	[LinkName("QStandardItemModel_ItemData")]
	public static extern void* QStandardItemModel_ItemData(Self* c_this, QModelIndex* index);
	[LinkName("QStandardItemModel_SetItemData")]
	public static extern bool QStandardItemModel_SetItemData(Self* c_this, QModelIndex* index, void* roles);
	[LinkName("QStandardItemModel_Clear")]
	public static extern void QStandardItemModel_Clear(Self* c_this);
	[LinkName("QStandardItemModel_Sort")]
	public static extern void QStandardItemModel_Sort(Self* c_this, int32 column, int64 order);
	[LinkName("QStandardItemModel_ItemFromIndex")]
	public static extern QStandardItem* QStandardItemModel_ItemFromIndex(Self* c_this, QModelIndex* index);
	[LinkName("QStandardItemModel_IndexFromItem")]
	public static extern QModelIndex QStandardItemModel_IndexFromItem(Self* c_this, QStandardItem* item);
	[LinkName("QStandardItemModel_Item")]
	public static extern QStandardItem* QStandardItemModel_Item(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_SetItem")]
	public static extern void QStandardItemModel_SetItem(Self* c_this, int32 row, int32 column, QStandardItem* item);
	[LinkName("QStandardItemModel_SetItem2")]
	public static extern void QStandardItemModel_SetItem2(Self* c_this, int32 row, QStandardItem* item);
	[LinkName("QStandardItemModel_InvisibleRootItem")]
	public static extern QStandardItem* QStandardItemModel_InvisibleRootItem(Self* c_this);
	[LinkName("QStandardItemModel_HorizontalHeaderItem")]
	public static extern QStandardItem* QStandardItemModel_HorizontalHeaderItem(Self* c_this, int32 column);
	[LinkName("QStandardItemModel_SetHorizontalHeaderItem")]
	public static extern void QStandardItemModel_SetHorizontalHeaderItem(Self* c_this, int32 column, QStandardItem* item);
	[LinkName("QStandardItemModel_VerticalHeaderItem")]
	public static extern QStandardItem* QStandardItemModel_VerticalHeaderItem(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_SetVerticalHeaderItem")]
	public static extern void QStandardItemModel_SetVerticalHeaderItem(Self* c_this, int32 row, QStandardItem* item);
	[LinkName("QStandardItemModel_SetHorizontalHeaderLabels")]
	public static extern void QStandardItemModel_SetHorizontalHeaderLabels(Self* c_this, libqt_string[] labels);
	[LinkName("QStandardItemModel_SetVerticalHeaderLabels")]
	public static extern void QStandardItemModel_SetVerticalHeaderLabels(Self* c_this, libqt_string[] labels);
	[LinkName("QStandardItemModel_SetRowCount")]
	public static extern void QStandardItemModel_SetRowCount(Self* c_this, int32 rows);
	[LinkName("QStandardItemModel_SetColumnCount")]
	public static extern void QStandardItemModel_SetColumnCount(Self* c_this, int32 columns);
	[LinkName("QStandardItemModel_AppendRow")]
	public static extern void QStandardItemModel_AppendRow(Self* c_this, QStandardItem*[] items);
	[LinkName("QStandardItemModel_AppendColumn")]
	public static extern void QStandardItemModel_AppendColumn(Self* c_this, QStandardItem*[] items);
	[LinkName("QStandardItemModel_AppendRowWithItem")]
	public static extern void QStandardItemModel_AppendRowWithItem(Self* c_this, QStandardItem* item);
	[LinkName("QStandardItemModel_InsertRow")]
	public static extern void QStandardItemModel_InsertRow(Self* c_this, int32 row, QStandardItem*[] items);
	[LinkName("QStandardItemModel_InsertColumn")]
	public static extern void QStandardItemModel_InsertColumn(Self* c_this, int32 column, QStandardItem*[] items);
	[LinkName("QStandardItemModel_InsertRow2")]
	public static extern void QStandardItemModel_InsertRow2(Self* c_this, int32 row, QStandardItem* item);
	[LinkName("QStandardItemModel_InsertRowWithRow")]
	public static extern bool QStandardItemModel_InsertRowWithRow(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_InsertColumnWithColumn")]
	public static extern bool QStandardItemModel_InsertColumnWithColumn(Self* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeItem")]
	public static extern QStandardItem* QStandardItemModel_TakeItem(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeRow")]
	public static extern QStandardItem*[] QStandardItemModel_TakeRow(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeColumn")]
	public static extern QStandardItem*[] QStandardItemModel_TakeColumn(Self* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeHorizontalHeaderItem")]
	public static extern QStandardItem* QStandardItemModel_TakeHorizontalHeaderItem(Self* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeVerticalHeaderItem")]
	public static extern QStandardItem* QStandardItemModel_TakeVerticalHeaderItem(Self* c_this, int32 row);
	[LinkName("QStandardItemModel_ItemPrototype")]
	public static extern QStandardItem* QStandardItemModel_ItemPrototype(Self* c_this);
	[LinkName("QStandardItemModel_SetItemPrototype")]
	public static extern void QStandardItemModel_SetItemPrototype(Self* c_this, QStandardItem* item);
	[LinkName("QStandardItemModel_FindItems")]
	public static extern QStandardItem*[] QStandardItemModel_FindItems(Self* c_this, libqt_string text);
	[LinkName("QStandardItemModel_SortRole")]
	public static extern int32 QStandardItemModel_SortRole(Self* c_this);
	[LinkName("QStandardItemModel_SetSortRole")]
	public static extern void QStandardItemModel_SetSortRole(Self* c_this, int32 role);
	[LinkName("QStandardItemModel_MimeTypes")]
	public static extern libqt_string[] QStandardItemModel_MimeTypes(Self* c_this);
	[LinkName("QStandardItemModel_MimeData")]
	public static extern QMimeData* QStandardItemModel_MimeData(Self* c_this, QModelIndex[] indexes);
	[LinkName("QStandardItemModel_DropMimeData")]
	public static extern bool QStandardItemModel_DropMimeData(Self* c_this, QMimeData* data, int64 action, int32 row, int32 column, QModelIndex* parent);
	[LinkName("QStandardItemModel_Connect_ItemChanged")]
	public static extern void QStandardItemModel_Connect_ItemChanged(Self* c_this, c_intptr slot);
	[LinkName("QStandardItemModel_Tr2")]
	public static extern libqt_string QStandardItemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QStandardItemModel_Tr3")]
	public static extern libqt_string QStandardItemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QStandardItemModel_Item2")]
	public static extern QStandardItem* QStandardItemModel_Item2(Self* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_InsertRow22")]
	public static extern bool QStandardItemModel_InsertRow22(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QStandardItemModel_InsertColumn2")]
	public static extern bool QStandardItemModel_InsertColumn2(Self* c_this, int32 column, QModelIndex* parent);
	[LinkName("QStandardItemModel_TakeItem2")]
	public static extern QStandardItem* QStandardItemModel_TakeItem2(Self* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_FindItems2")]
	public static extern QStandardItem*[] QStandardItemModel_FindItems2(Self* c_this, libqt_string text, int64 flags);
	[LinkName("QStandardItemModel_FindItems3")]
	public static extern QStandardItem*[] QStandardItemModel_FindItems3(Self* c_this, libqt_string text, int64 flags, int32 column);
}