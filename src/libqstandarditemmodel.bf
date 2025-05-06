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
	public static extern void* QStandardItem_new();
	[LinkName("QStandardItem_new2")]
	public static extern void* QStandardItem_new2(char8[] text);
	[LinkName("QStandardItem_new3")]
	public static extern void* QStandardItem_new3(QIcon icon, char8[] text);
	[LinkName("QStandardItem_new4")]
	public static extern void* QStandardItem_new4(int32 rows);
	[LinkName("QStandardItem_new5")]
	public static extern void* QStandardItem_new5(int32 rows, int32 columns);
	[LinkName("QStandardItem_Data")]
	public static extern QVariant QStandardItem_Data(void* c_this, int32 role);
	[LinkName("QStandardItem_MultiData")]
	public static extern void QStandardItem_MultiData(void* c_this, QModelRoleDataSpan roleDataSpan);
	[LinkName("QStandardItem_SetData")]
	public static extern void QStandardItem_SetData(void* c_this, QVariant value, int32 role);
	[LinkName("QStandardItem_ClearData")]
	public static extern void QStandardItem_ClearData(void* c_this);
	[LinkName("QStandardItem_Text")]
	public static extern char8[] QStandardItem_Text(void* c_this);
	[LinkName("QStandardItem_SetText")]
	public static extern void QStandardItem_SetText(void* c_this, char8[] text);
	[LinkName("QStandardItem_Icon")]
	public static extern QIcon QStandardItem_Icon(void* c_this);
	[LinkName("QStandardItem_SetIcon")]
	public static extern void QStandardItem_SetIcon(void* c_this, QIcon icon);
	[LinkName("QStandardItem_ToolTip")]
	public static extern char8[] QStandardItem_ToolTip(void* c_this);
	[LinkName("QStandardItem_SetToolTip")]
	public static extern void QStandardItem_SetToolTip(void* c_this, char8[] toolTip);
	[LinkName("QStandardItem_StatusTip")]
	public static extern char8[] QStandardItem_StatusTip(void* c_this);
	[LinkName("QStandardItem_SetStatusTip")]
	public static extern void QStandardItem_SetStatusTip(void* c_this, char8[] statusTip);
	[LinkName("QStandardItem_WhatsThis")]
	public static extern char8[] QStandardItem_WhatsThis(void* c_this);
	[LinkName("QStandardItem_SetWhatsThis")]
	public static extern void QStandardItem_SetWhatsThis(void* c_this, char8[] whatsThis);
	[LinkName("QStandardItem_SizeHint")]
	public static extern QSize QStandardItem_SizeHint(void* c_this);
	[LinkName("QStandardItem_SetSizeHint")]
	public static extern void QStandardItem_SetSizeHint(void* c_this, QSize sizeHint);
	[LinkName("QStandardItem_Font")]
	public static extern QFont QStandardItem_Font(void* c_this);
	[LinkName("QStandardItem_SetFont")]
	public static extern void QStandardItem_SetFont(void* c_this, QFont font);
	[LinkName("QStandardItem_TextAlignment")]
	public static extern int64 QStandardItem_TextAlignment(void* c_this);
	[LinkName("QStandardItem_SetTextAlignment")]
	public static extern void QStandardItem_SetTextAlignment(void* c_this, int64 textAlignment);
	[LinkName("QStandardItem_Background")]
	public static extern QBrush QStandardItem_Background(void* c_this);
	[LinkName("QStandardItem_SetBackground")]
	public static extern void QStandardItem_SetBackground(void* c_this, QBrush brush);
	[LinkName("QStandardItem_Foreground")]
	public static extern QBrush QStandardItem_Foreground(void* c_this);
	[LinkName("QStandardItem_SetForeground")]
	public static extern void QStandardItem_SetForeground(void* c_this, QBrush brush);
	[LinkName("QStandardItem_CheckState")]
	public static extern int64 QStandardItem_CheckState(void* c_this);
	[LinkName("QStandardItem_SetCheckState")]
	public static extern void QStandardItem_SetCheckState(void* c_this, int64 checkState);
	[LinkName("QStandardItem_AccessibleText")]
	public static extern char8[] QStandardItem_AccessibleText(void* c_this);
	[LinkName("QStandardItem_SetAccessibleText")]
	public static extern void QStandardItem_SetAccessibleText(void* c_this, char8[] accessibleText);
	[LinkName("QStandardItem_AccessibleDescription")]
	public static extern char8[] QStandardItem_AccessibleDescription(void* c_this);
	[LinkName("QStandardItem_SetAccessibleDescription")]
	public static extern void QStandardItem_SetAccessibleDescription(void* c_this, char8[] accessibleDescription);
	[LinkName("QStandardItem_Flags")]
	public static extern int64 QStandardItem_Flags(void* c_this);
	[LinkName("QStandardItem_SetFlags")]
	public static extern void QStandardItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QStandardItem_IsEnabled")]
	public static extern bool QStandardItem_IsEnabled(void* c_this);
	[LinkName("QStandardItem_SetEnabled")]
	public static extern void QStandardItem_SetEnabled(void* c_this, bool enabled);
	[LinkName("QStandardItem_IsEditable")]
	public static extern bool QStandardItem_IsEditable(void* c_this);
	[LinkName("QStandardItem_SetEditable")]
	public static extern void QStandardItem_SetEditable(void* c_this, bool editable);
	[LinkName("QStandardItem_IsSelectable")]
	public static extern bool QStandardItem_IsSelectable(void* c_this);
	[LinkName("QStandardItem_SetSelectable")]
	public static extern void QStandardItem_SetSelectable(void* c_this, bool selectable);
	[LinkName("QStandardItem_IsCheckable")]
	public static extern bool QStandardItem_IsCheckable(void* c_this);
	[LinkName("QStandardItem_SetCheckable")]
	public static extern void QStandardItem_SetCheckable(void* c_this, bool checkable);
	[LinkName("QStandardItem_IsAutoTristate")]
	public static extern bool QStandardItem_IsAutoTristate(void* c_this);
	[LinkName("QStandardItem_SetAutoTristate")]
	public static extern void QStandardItem_SetAutoTristate(void* c_this, bool tristate);
	[LinkName("QStandardItem_IsUserTristate")]
	public static extern bool QStandardItem_IsUserTristate(void* c_this);
	[LinkName("QStandardItem_SetUserTristate")]
	public static extern void QStandardItem_SetUserTristate(void* c_this, bool tristate);
	[LinkName("QStandardItem_IsDragEnabled")]
	public static extern bool QStandardItem_IsDragEnabled(void* c_this);
	[LinkName("QStandardItem_SetDragEnabled")]
	public static extern void QStandardItem_SetDragEnabled(void* c_this, bool dragEnabled);
	[LinkName("QStandardItem_IsDropEnabled")]
	public static extern bool QStandardItem_IsDropEnabled(void* c_this);
	[LinkName("QStandardItem_SetDropEnabled")]
	public static extern void QStandardItem_SetDropEnabled(void* c_this, bool dropEnabled);
	[LinkName("QStandardItem_Parent")]
	public static extern QStandardItem QStandardItem_Parent(void* c_this);
	[LinkName("QStandardItem_Row")]
	public static extern int32 QStandardItem_Row(void* c_this);
	[LinkName("QStandardItem_Column")]
	public static extern int32 QStandardItem_Column(void* c_this);
	[LinkName("QStandardItem_Index")]
	public static extern QModelIndex QStandardItem_Index(void* c_this);
	[LinkName("QStandardItem_Model")]
	public static extern QStandardItemModel QStandardItem_Model(void* c_this);
	[LinkName("QStandardItem_RowCount")]
	public static extern int32 QStandardItem_RowCount(void* c_this);
	[LinkName("QStandardItem_SetRowCount")]
	public static extern void QStandardItem_SetRowCount(void* c_this, int32 rows);
	[LinkName("QStandardItem_ColumnCount")]
	public static extern int32 QStandardItem_ColumnCount(void* c_this);
	[LinkName("QStandardItem_SetColumnCount")]
	public static extern void QStandardItem_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QStandardItem_HasChildren")]
	public static extern bool QStandardItem_HasChildren(void* c_this);
	[LinkName("QStandardItem_Child")]
	public static extern QStandardItem QStandardItem_Child(void* c_this, int32 row);
	[LinkName("QStandardItem_SetChild")]
	public static extern void QStandardItem_SetChild(void* c_this, int32 row, int32 column, QStandardItem item);
	[LinkName("QStandardItem_SetChild2")]
	public static extern void QStandardItem_SetChild2(void* c_this, int32 row, QStandardItem item);
	[LinkName("QStandardItem_InsertRow")]
	public static extern void QStandardItem_InsertRow(void* c_this, int32 row, QStandardItem[] items);
	[LinkName("QStandardItem_InsertColumn")]
	public static extern void QStandardItem_InsertColumn(void* c_this, int32 column, QStandardItem[] items);
	[LinkName("QStandardItem_InsertRows")]
	public static extern void QStandardItem_InsertRows(void* c_this, int32 row, QStandardItem[] items);
	[LinkName("QStandardItem_InsertRows2")]
	public static extern void QStandardItem_InsertRows2(void* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_InsertColumns")]
	public static extern void QStandardItem_InsertColumns(void* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_RemoveRow")]
	public static extern void QStandardItem_RemoveRow(void* c_this, int32 row);
	[LinkName("QStandardItem_RemoveColumn")]
	public static extern void QStandardItem_RemoveColumn(void* c_this, int32 column);
	[LinkName("QStandardItem_RemoveRows")]
	public static extern void QStandardItem_RemoveRows(void* c_this, int32 row, int32 count);
	[LinkName("QStandardItem_RemoveColumns")]
	public static extern void QStandardItem_RemoveColumns(void* c_this, int32 column, int32 count);
	[LinkName("QStandardItem_AppendRow")]
	public static extern void QStandardItem_AppendRow(void* c_this, QStandardItem[] items);
	[LinkName("QStandardItem_AppendRows")]
	public static extern void QStandardItem_AppendRows(void* c_this, QStandardItem[] items);
	[LinkName("QStandardItem_AppendColumn")]
	public static extern void QStandardItem_AppendColumn(void* c_this, QStandardItem[] items);
	[LinkName("QStandardItem_InsertRow2")]
	public static extern void QStandardItem_InsertRow2(void* c_this, int32 row, QStandardItem item);
	[LinkName("QStandardItem_AppendRowWithItem")]
	public static extern void QStandardItem_AppendRowWithItem(void* c_this, QStandardItem item);
	[LinkName("QStandardItem_TakeChild")]
	public static extern QStandardItem QStandardItem_TakeChild(void* c_this, int32 row);
	[LinkName("QStandardItem_TakeRow")]
	public static extern QStandardItem[] QStandardItem_TakeRow(void* c_this, int32 row);
	[LinkName("QStandardItem_TakeColumn")]
	public static extern QStandardItem[] QStandardItem_TakeColumn(void* c_this, int32 column);
	[LinkName("QStandardItem_SortChildren")]
	public static extern void QStandardItem_SortChildren(void* c_this, int32 column);
	[LinkName("QStandardItem_Clone")]
	public static extern QStandardItem QStandardItem_Clone(void* c_this);
	[LinkName("QStandardItem_Type")]
	public static extern int32 QStandardItem_Type(void* c_this);
	[LinkName("QStandardItem_Read")]
	public static extern void QStandardItem_Read(void* c_this, QDataStream _in);
	[LinkName("QStandardItem_Write")]
	public static extern void QStandardItem_Write(void* c_this, QDataStream _out);
	[LinkName("QStandardItem_OperatorLesser")]
	public static extern bool QStandardItem_OperatorLesser(void* c_this, QStandardItem other);
	[LinkName("QStandardItem_OperatorAssign")]
	public static extern void QStandardItem_OperatorAssign(void* c_this, QStandardItem other);
	[LinkName("QStandardItem_EmitDataChanged")]
	public static extern void QStandardItem_EmitDataChanged(void* c_this);
	[LinkName("QStandardItem_Child2")]
	public static extern QStandardItem QStandardItem_Child2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_TakeChild2")]
	public static extern QStandardItem QStandardItem_TakeChild2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItem_SortChildren2")]
	public static extern void QStandardItem_SortChildren2(void* c_this, int32 column, int64 order);
}
public struct QStandardItemModel
{
	[LinkName("QStandardItemModel_new")]
	public static extern void* QStandardItemModel_new();
	[LinkName("QStandardItemModel_new2")]
	public static extern void* QStandardItemModel_new2(int32 rows, int32 columns);
	[LinkName("QStandardItemModel_new3")]
	public static extern void* QStandardItemModel_new3(QObject parent);
	[LinkName("QStandardItemModel_new4")]
	public static extern void* QStandardItemModel_new4(int32 rows, int32 columns, QObject parent);
	[LinkName("QStandardItemModel_MetaObject")]
	public static extern QMetaObject QStandardItemModel_MetaObject(void* c_this);
	[LinkName("QStandardItemModel_Metacast")]
	public static extern void QStandardItemModel_Metacast(void* c_this, char8[] param1);
	[LinkName("QStandardItemModel_Metacall")]
	public static extern int32 QStandardItemModel_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QStandardItemModel_Tr")]
	public static extern char8[] QStandardItemModel_Tr(char8[] s);
	[LinkName("QStandardItemModel_SetItemRoleNames")]
	public static extern void QStandardItemModel_SetItemRoleNames(void* c_this, void* roleNames);
	[LinkName("QStandardItemModel_RoleNames")]
	public static extern void* QStandardItemModel_RoleNames(void* c_this);
	[LinkName("QStandardItemModel_Index")]
	public static extern QModelIndex QStandardItemModel_Index(void* c_this, int32 row, int32 column, QModelIndex parent);
	[LinkName("QStandardItemModel_Parent")]
	public static extern QModelIndex QStandardItemModel_Parent(void* c_this, QModelIndex child);
	[LinkName("QStandardItemModel_RowCount")]
	public static extern int32 QStandardItemModel_RowCount(void* c_this, QModelIndex parent);
	[LinkName("QStandardItemModel_ColumnCount")]
	public static extern int32 QStandardItemModel_ColumnCount(void* c_this, QModelIndex parent);
	[LinkName("QStandardItemModel_HasChildren")]
	public static extern bool QStandardItemModel_HasChildren(void* c_this, QModelIndex parent);
	[LinkName("QStandardItemModel_Data")]
	public static extern QVariant QStandardItemModel_Data(void* c_this, QModelIndex index, int32 role);
	[LinkName("QStandardItemModel_MultiData")]
	public static extern void QStandardItemModel_MultiData(void* c_this, QModelIndex index, QModelRoleDataSpan roleDataSpan);
	[LinkName("QStandardItemModel_SetData")]
	public static extern bool QStandardItemModel_SetData(void* c_this, QModelIndex index, QVariant value, int32 role);
	[LinkName("QStandardItemModel_ClearItemData")]
	public static extern bool QStandardItemModel_ClearItemData(void* c_this, QModelIndex index);
	[LinkName("QStandardItemModel_HeaderData")]
	public static extern QVariant QStandardItemModel_HeaderData(void* c_this, int32 section, int64 orientation, int32 role);
	[LinkName("QStandardItemModel_SetHeaderData")]
	public static extern bool QStandardItemModel_SetHeaderData(void* c_this, int32 section, int64 orientation, QVariant value, int32 role);
	[LinkName("QStandardItemModel_InsertRows")]
	public static extern bool QStandardItemModel_InsertRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QStandardItemModel_InsertColumns")]
	public static extern bool QStandardItemModel_InsertColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QStandardItemModel_RemoveRows")]
	public static extern bool QStandardItemModel_RemoveRows(void* c_this, int32 row, int32 count, QModelIndex parent);
	[LinkName("QStandardItemModel_RemoveColumns")]
	public static extern bool QStandardItemModel_RemoveColumns(void* c_this, int32 column, int32 count, QModelIndex parent);
	[LinkName("QStandardItemModel_Flags")]
	public static extern int64 QStandardItemModel_Flags(void* c_this, QModelIndex index);
	[LinkName("QStandardItemModel_SupportedDropActions")]
	public static extern int64 QStandardItemModel_SupportedDropActions(void* c_this);
	[LinkName("QStandardItemModel_ItemData")]
	public static extern void* QStandardItemModel_ItemData(void* c_this, QModelIndex index);
	[LinkName("QStandardItemModel_SetItemData")]
	public static extern bool QStandardItemModel_SetItemData(void* c_this, QModelIndex index, void* roles);
	[LinkName("QStandardItemModel_Clear")]
	public static extern void QStandardItemModel_Clear(void* c_this);
	[LinkName("QStandardItemModel_Sort")]
	public static extern void QStandardItemModel_Sort(void* c_this, int32 column, int64 order);
	[LinkName("QStandardItemModel_ItemFromIndex")]
	public static extern QStandardItem QStandardItemModel_ItemFromIndex(void* c_this, QModelIndex index);
	[LinkName("QStandardItemModel_IndexFromItem")]
	public static extern QModelIndex QStandardItemModel_IndexFromItem(void* c_this, QStandardItem item);
	[LinkName("QStandardItemModel_Item")]
	public static extern QStandardItem QStandardItemModel_Item(void* c_this, int32 row);
	[LinkName("QStandardItemModel_SetItem")]
	public static extern void QStandardItemModel_SetItem(void* c_this, int32 row, int32 column, QStandardItem item);
	[LinkName("QStandardItemModel_SetItem2")]
	public static extern void QStandardItemModel_SetItem2(void* c_this, int32 row, QStandardItem item);
	[LinkName("QStandardItemModel_InvisibleRootItem")]
	public static extern QStandardItem QStandardItemModel_InvisibleRootItem(void* c_this);
	[LinkName("QStandardItemModel_HorizontalHeaderItem")]
	public static extern QStandardItem QStandardItemModel_HorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QStandardItemModel_SetHorizontalHeaderItem")]
	public static extern void QStandardItemModel_SetHorizontalHeaderItem(void* c_this, int32 column, QStandardItem item);
	[LinkName("QStandardItemModel_VerticalHeaderItem")]
	public static extern QStandardItem QStandardItemModel_VerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_SetVerticalHeaderItem")]
	public static extern void QStandardItemModel_SetVerticalHeaderItem(void* c_this, int32 row, QStandardItem item);
	[LinkName("QStandardItemModel_SetHorizontalHeaderLabels")]
	public static extern void QStandardItemModel_SetHorizontalHeaderLabels(void* c_this, char8[][] labels);
	[LinkName("QStandardItemModel_SetVerticalHeaderLabels")]
	public static extern void QStandardItemModel_SetVerticalHeaderLabels(void* c_this, char8[][] labels);
	[LinkName("QStandardItemModel_SetRowCount")]
	public static extern void QStandardItemModel_SetRowCount(void* c_this, int32 rows);
	[LinkName("QStandardItemModel_SetColumnCount")]
	public static extern void QStandardItemModel_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QStandardItemModel_AppendRow")]
	public static extern void QStandardItemModel_AppendRow(void* c_this, QStandardItem[] items);
	[LinkName("QStandardItemModel_AppendColumn")]
	public static extern void QStandardItemModel_AppendColumn(void* c_this, QStandardItem[] items);
	[LinkName("QStandardItemModel_AppendRowWithItem")]
	public static extern void QStandardItemModel_AppendRowWithItem(void* c_this, QStandardItem item);
	[LinkName("QStandardItemModel_InsertRow")]
	public static extern void QStandardItemModel_InsertRow(void* c_this, int32 row, QStandardItem[] items);
	[LinkName("QStandardItemModel_InsertColumn")]
	public static extern void QStandardItemModel_InsertColumn(void* c_this, int32 column, QStandardItem[] items);
	[LinkName("QStandardItemModel_InsertRow2")]
	public static extern void QStandardItemModel_InsertRow2(void* c_this, int32 row, QStandardItem item);
	[LinkName("QStandardItemModel_InsertRowWithRow")]
	public static extern bool QStandardItemModel_InsertRowWithRow(void* c_this, int32 row);
	[LinkName("QStandardItemModel_InsertColumnWithColumn")]
	public static extern bool QStandardItemModel_InsertColumnWithColumn(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeItem")]
	public static extern QStandardItem QStandardItemModel_TakeItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeRow")]
	public static extern QStandardItem[] QStandardItemModel_TakeRow(void* c_this, int32 row);
	[LinkName("QStandardItemModel_TakeColumn")]
	public static extern QStandardItem[] QStandardItemModel_TakeColumn(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeHorizontalHeaderItem")]
	public static extern QStandardItem QStandardItemModel_TakeHorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QStandardItemModel_TakeVerticalHeaderItem")]
	public static extern QStandardItem QStandardItemModel_TakeVerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QStandardItemModel_ItemPrototype")]
	public static extern QStandardItem QStandardItemModel_ItemPrototype(void* c_this);
	[LinkName("QStandardItemModel_SetItemPrototype")]
	public static extern void QStandardItemModel_SetItemPrototype(void* c_this, QStandardItem item);
	[LinkName("QStandardItemModel_FindItems")]
	public static extern QStandardItem[] QStandardItemModel_FindItems(void* c_this, char8[] text);
	[LinkName("QStandardItemModel_SortRole")]
	public static extern int32 QStandardItemModel_SortRole(void* c_this);
	[LinkName("QStandardItemModel_SetSortRole")]
	public static extern void QStandardItemModel_SetSortRole(void* c_this, int32 role);
	[LinkName("QStandardItemModel_MimeTypes")]
	public static extern char8[][] QStandardItemModel_MimeTypes(void* c_this);
	[LinkName("QStandardItemModel_MimeData")]
	public static extern QMimeData QStandardItemModel_MimeData(void* c_this, QModelIndex[] indexes);
	[LinkName("QStandardItemModel_DropMimeData")]
	public static extern bool QStandardItemModel_DropMimeData(void* c_this, QMimeData data, int64 action, int32 row, int32 column, QModelIndex parent);
	[LinkName("QStandardItemModel_ItemChanged")]
	public static extern void QStandardItemModel_ItemChanged(void* c_this, QStandardItem item);
	[LinkName("QStandardItemModel_Tr2")]
	public static extern char8[] QStandardItemModel_Tr2(char8[] s, char8[] c);
	[LinkName("QStandardItemModel_Tr3")]
	public static extern char8[] QStandardItemModel_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QStandardItemModel_Item2")]
	public static extern QStandardItem QStandardItemModel_Item2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_InsertRow22")]
	public static extern bool QStandardItemModel_InsertRow22(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QStandardItemModel_InsertColumn2")]
	public static extern bool QStandardItemModel_InsertColumn2(void* c_this, int32 column, QModelIndex parent);
	[LinkName("QStandardItemModel_TakeItem2")]
	public static extern QStandardItem QStandardItemModel_TakeItem2(void* c_this, int32 row, int32 column);
	[LinkName("QStandardItemModel_FindItems2")]
	public static extern QStandardItem[] QStandardItemModel_FindItems2(void* c_this, char8[] text, int64 flags);
	[LinkName("QStandardItemModel_FindItems3")]
	public static extern QStandardItem[] QStandardItemModel_FindItems3(void* c_this, char8[] text, int64 flags, int32 column);
}