using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTableWidgetItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
public struct QTableWidgetSelectionRange
{
	[LinkName("QTableWidgetSelectionRange_new")]
	public static extern void* QTableWidgetSelectionRange_new(QTableWidgetSelectionRange other);
	[LinkName("QTableWidgetSelectionRange_new2")]
	public static extern void* QTableWidgetSelectionRange_new2(QTableWidgetSelectionRange other);
	[LinkName("QTableWidgetSelectionRange_new3")]
	public static extern void* QTableWidgetSelectionRange_new3();
	[LinkName("QTableWidgetSelectionRange_new4")]
	public static extern void* QTableWidgetSelectionRange_new4(int32 top, int32 left, int32 bottom, int32 right);
	[LinkName("QTableWidgetSelectionRange_TopRow")]
	public static extern int32 QTableWidgetSelectionRange_TopRow(void* c_this);
	[LinkName("QTableWidgetSelectionRange_BottomRow")]
	public static extern int32 QTableWidgetSelectionRange_BottomRow(void* c_this);
	[LinkName("QTableWidgetSelectionRange_LeftColumn")]
	public static extern int32 QTableWidgetSelectionRange_LeftColumn(void* c_this);
	[LinkName("QTableWidgetSelectionRange_RightColumn")]
	public static extern int32 QTableWidgetSelectionRange_RightColumn(void* c_this);
	[LinkName("QTableWidgetSelectionRange_RowCount")]
	public static extern int32 QTableWidgetSelectionRange_RowCount(void* c_this);
	[LinkName("QTableWidgetSelectionRange_ColumnCount")]
	public static extern int32 QTableWidgetSelectionRange_ColumnCount(void* c_this);
}
public struct QTableWidgetItem
{
	[LinkName("QTableWidgetItem_new")]
	public static extern void* QTableWidgetItem_new();
	[LinkName("QTableWidgetItem_new2")]
	public static extern void* QTableWidgetItem_new2(char8[] text);
	[LinkName("QTableWidgetItem_new3")]
	public static extern void* QTableWidgetItem_new3(QIcon icon, char8[] text);
	[LinkName("QTableWidgetItem_new4")]
	public static extern void* QTableWidgetItem_new4(QTableWidgetItem other);
	[LinkName("QTableWidgetItem_new5")]
	public static extern void* QTableWidgetItem_new5(int32 typeVal);
	[LinkName("QTableWidgetItem_new6")]
	public static extern void* QTableWidgetItem_new6(char8[] text, int32 typeVal);
	[LinkName("QTableWidgetItem_new7")]
	public static extern void* QTableWidgetItem_new7(QIcon icon, char8[] text, int32 typeVal);
	[LinkName("QTableWidgetItem_Clone")]
	public static extern QTableWidgetItem QTableWidgetItem_Clone(void* c_this);
	[LinkName("QTableWidgetItem_TableWidget")]
	public static extern QTableWidget QTableWidgetItem_TableWidget(void* c_this);
	[LinkName("QTableWidgetItem_Row")]
	public static extern int32 QTableWidgetItem_Row(void* c_this);
	[LinkName("QTableWidgetItem_Column")]
	public static extern int32 QTableWidgetItem_Column(void* c_this);
	[LinkName("QTableWidgetItem_SetSelected")]
	public static extern void QTableWidgetItem_SetSelected(void* c_this, bool selectVal);
	[LinkName("QTableWidgetItem_IsSelected")]
	public static extern bool QTableWidgetItem_IsSelected(void* c_this);
	[LinkName("QTableWidgetItem_Flags")]
	public static extern int64 QTableWidgetItem_Flags(void* c_this);
	[LinkName("QTableWidgetItem_SetFlags")]
	public static extern void QTableWidgetItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QTableWidgetItem_Text")]
	public static extern char8[] QTableWidgetItem_Text(void* c_this);
	[LinkName("QTableWidgetItem_SetText")]
	public static extern void QTableWidgetItem_SetText(void* c_this, char8[] text);
	[LinkName("QTableWidgetItem_Icon")]
	public static extern QIcon QTableWidgetItem_Icon(void* c_this);
	[LinkName("QTableWidgetItem_SetIcon")]
	public static extern void QTableWidgetItem_SetIcon(void* c_this, QIcon icon);
	[LinkName("QTableWidgetItem_StatusTip")]
	public static extern char8[] QTableWidgetItem_StatusTip(void* c_this);
	[LinkName("QTableWidgetItem_SetStatusTip")]
	public static extern void QTableWidgetItem_SetStatusTip(void* c_this, char8[] statusTip);
	[LinkName("QTableWidgetItem_ToolTip")]
	public static extern char8[] QTableWidgetItem_ToolTip(void* c_this);
	[LinkName("QTableWidgetItem_SetToolTip")]
	public static extern void QTableWidgetItem_SetToolTip(void* c_this, char8[] toolTip);
	[LinkName("QTableWidgetItem_WhatsThis")]
	public static extern char8[] QTableWidgetItem_WhatsThis(void* c_this);
	[LinkName("QTableWidgetItem_SetWhatsThis")]
	public static extern void QTableWidgetItem_SetWhatsThis(void* c_this, char8[] whatsThis);
	[LinkName("QTableWidgetItem_Font")]
	public static extern QFont QTableWidgetItem_Font(void* c_this);
	[LinkName("QTableWidgetItem_SetFont")]
	public static extern void QTableWidgetItem_SetFont(void* c_this, QFont font);
	[LinkName("QTableWidgetItem_TextAlignment")]
	public static extern int32 QTableWidgetItem_TextAlignment(void* c_this);
	[LinkName("QTableWidgetItem_SetTextAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignment(void* c_this, int32 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignmentWithAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignmentWithAlignment(void* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignment2")]
	public static extern void QTableWidgetItem_SetTextAlignment2(void* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_Background")]
	public static extern QBrush QTableWidgetItem_Background(void* c_this);
	[LinkName("QTableWidgetItem_SetBackground")]
	public static extern void QTableWidgetItem_SetBackground(void* c_this, QBrush brush);
	[LinkName("QTableWidgetItem_Foreground")]
	public static extern QBrush QTableWidgetItem_Foreground(void* c_this);
	[LinkName("QTableWidgetItem_SetForeground")]
	public static extern void QTableWidgetItem_SetForeground(void* c_this, QBrush brush);
	[LinkName("QTableWidgetItem_CheckState")]
	public static extern int64 QTableWidgetItem_CheckState(void* c_this);
	[LinkName("QTableWidgetItem_SetCheckState")]
	public static extern void QTableWidgetItem_SetCheckState(void* c_this, int64 state);
	[LinkName("QTableWidgetItem_SizeHint")]
	public static extern QSize QTableWidgetItem_SizeHint(void* c_this);
	[LinkName("QTableWidgetItem_SetSizeHint")]
	public static extern void QTableWidgetItem_SetSizeHint(void* c_this, QSize size);
	[LinkName("QTableWidgetItem_Data")]
	public static extern QVariant QTableWidgetItem_Data(void* c_this, int32 role);
	[LinkName("QTableWidgetItem_SetData")]
	public static extern void QTableWidgetItem_SetData(void* c_this, int32 role, QVariant value);
	[LinkName("QTableWidgetItem_OperatorLesser")]
	public static extern bool QTableWidgetItem_OperatorLesser(void* c_this, QTableWidgetItem other);
	[LinkName("QTableWidgetItem_Read")]
	public static extern void QTableWidgetItem_Read(void* c_this, QDataStream _in);
	[LinkName("QTableWidgetItem_Write")]
	public static extern void QTableWidgetItem_Write(void* c_this, QDataStream _out);
	[LinkName("QTableWidgetItem_OperatorAssign")]
	public static extern void QTableWidgetItem_OperatorAssign(void* c_this, QTableWidgetItem other);
	[LinkName("QTableWidgetItem_Type")]
	public static extern int32 QTableWidgetItem_Type(void* c_this);
}
public struct QTableWidget
{
	[LinkName("QTableWidget_new")]
	public static extern void* QTableWidget_new(QWidget parent);
	[LinkName("QTableWidget_new2")]
	public static extern void* QTableWidget_new2();
	[LinkName("QTableWidget_new3")]
	public static extern void* QTableWidget_new3(int32 rows, int32 columns);
	[LinkName("QTableWidget_new4")]
	public static extern void* QTableWidget_new4(int32 rows, int32 columns, QWidget parent);
	[LinkName("QTableWidget_MetaObject")]
	public static extern QMetaObject QTableWidget_MetaObject(void* c_this);
	[LinkName("QTableWidget_Metacast")]
	public static extern void QTableWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QTableWidget_Metacall")]
	public static extern int32 QTableWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTableWidget_Tr")]
	public static extern char8[] QTableWidget_Tr(char8[] s);
	[LinkName("QTableWidget_SetRowCount")]
	public static extern void QTableWidget_SetRowCount(void* c_this, int32 rows);
	[LinkName("QTableWidget_RowCount")]
	public static extern int32 QTableWidget_RowCount(void* c_this);
	[LinkName("QTableWidget_SetColumnCount")]
	public static extern void QTableWidget_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QTableWidget_ColumnCount")]
	public static extern int32 QTableWidget_ColumnCount(void* c_this);
	[LinkName("QTableWidget_Row")]
	public static extern int32 QTableWidget_Row(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_Column")]
	public static extern int32 QTableWidget_Column(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_Item")]
	public static extern QTableWidgetItem QTableWidget_Item(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetItem")]
	public static extern void QTableWidget_SetItem(void* c_this, int32 row, int32 column, QTableWidgetItem item);
	[LinkName("QTableWidget_TakeItem")]
	public static extern QTableWidgetItem QTableWidget_TakeItem(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_Items")]
	public static extern QTableWidgetItem[] QTableWidget_Items(void* c_this, QMimeData data);
	[LinkName("QTableWidget_IndexFromItem")]
	public static extern QModelIndex QTableWidget_IndexFromItem(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemFromIndex")]
	public static extern QTableWidgetItem QTableWidget_ItemFromIndex(void* c_this, QModelIndex index);
	[LinkName("QTableWidget_VerticalHeaderItem")]
	public static extern QTableWidgetItem QTableWidget_VerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QTableWidget_SetVerticalHeaderItem")]
	public static extern void QTableWidget_SetVerticalHeaderItem(void* c_this, int32 row, QTableWidgetItem item);
	[LinkName("QTableWidget_TakeVerticalHeaderItem")]
	public static extern QTableWidgetItem QTableWidget_TakeVerticalHeaderItem(void* c_this, int32 row);
	[LinkName("QTableWidget_HorizontalHeaderItem")]
	public static extern QTableWidgetItem QTableWidget_HorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QTableWidget_SetHorizontalHeaderItem")]
	public static extern void QTableWidget_SetHorizontalHeaderItem(void* c_this, int32 column, QTableWidgetItem item);
	[LinkName("QTableWidget_TakeHorizontalHeaderItem")]
	public static extern QTableWidgetItem QTableWidget_TakeHorizontalHeaderItem(void* c_this, int32 column);
	[LinkName("QTableWidget_SetVerticalHeaderLabels")]
	public static extern void QTableWidget_SetVerticalHeaderLabels(void* c_this, char8[][] labels);
	[LinkName("QTableWidget_SetHorizontalHeaderLabels")]
	public static extern void QTableWidget_SetHorizontalHeaderLabels(void* c_this, char8[][] labels);
	[LinkName("QTableWidget_CurrentRow")]
	public static extern int32 QTableWidget_CurrentRow(void* c_this);
	[LinkName("QTableWidget_CurrentColumn")]
	public static extern int32 QTableWidget_CurrentColumn(void* c_this);
	[LinkName("QTableWidget_CurrentItem")]
	public static extern QTableWidgetItem QTableWidget_CurrentItem(void* c_this);
	[LinkName("QTableWidget_SetCurrentItem")]
	public static extern void QTableWidget_SetCurrentItem(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_SetCurrentItem2")]
	public static extern void QTableWidget_SetCurrentItem2(void* c_this, QTableWidgetItem item, int64 command);
	[LinkName("QTableWidget_SetCurrentCell")]
	public static extern void QTableWidget_SetCurrentCell(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCurrentCell2")]
	public static extern void QTableWidget_SetCurrentCell2(void* c_this, int32 row, int32 column, int64 command);
	[LinkName("QTableWidget_SortItems")]
	public static extern void QTableWidget_SortItems(void* c_this, int32 column);
	[LinkName("QTableWidget_SetSortingEnabled")]
	public static extern void QTableWidget_SetSortingEnabled(void* c_this, bool enable);
	[LinkName("QTableWidget_IsSortingEnabled")]
	public static extern bool QTableWidget_IsSortingEnabled(void* c_this);
	[LinkName("QTableWidget_EditItem")]
	public static extern void QTableWidget_EditItem(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_OpenPersistentEditor")]
	public static extern void QTableWidget_OpenPersistentEditor(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ClosePersistentEditor")]
	public static extern void QTableWidget_ClosePersistentEditor(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_IsPersistentEditorOpen")]
	public static extern bool QTableWidget_IsPersistentEditorOpen(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_CellWidget")]
	public static extern QWidget QTableWidget_CellWidget(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCellWidget")]
	public static extern void QTableWidget_SetCellWidget(void* c_this, int32 row, int32 column, QWidget widget);
	[LinkName("QTableWidget_RemoveCellWidget")]
	public static extern void QTableWidget_RemoveCellWidget(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetRangeSelected")]
	public static extern void QTableWidget_SetRangeSelected(void* c_this, QTableWidgetSelectionRange range, bool selectVal);
	[LinkName("QTableWidget_SelectedRanges")]
	public static extern QTableWidgetSelectionRange[] QTableWidget_SelectedRanges(void* c_this);
	[LinkName("QTableWidget_SelectedItems")]
	public static extern QTableWidgetItem[] QTableWidget_SelectedItems(void* c_this);
	[LinkName("QTableWidget_FindItems")]
	public static extern QTableWidgetItem[] QTableWidget_FindItems(void* c_this, char8[] text, int64 flags);
	[LinkName("QTableWidget_VisualRow")]
	public static extern int32 QTableWidget_VisualRow(void* c_this, int32 logicalRow);
	[LinkName("QTableWidget_VisualColumn")]
	public static extern int32 QTableWidget_VisualColumn(void* c_this, int32 logicalColumn);
	[LinkName("QTableWidget_ItemAt")]
	public static extern QTableWidgetItem QTableWidget_ItemAt(void* c_this, QPoint p);
	[LinkName("QTableWidget_ItemAt2")]
	public static extern QTableWidgetItem QTableWidget_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QTableWidget_VisualItemRect")]
	public static extern QRect QTableWidget_VisualItemRect(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemPrototype")]
	public static extern QTableWidgetItem QTableWidget_ItemPrototype(void* c_this);
	[LinkName("QTableWidget_SetItemPrototype")]
	public static extern void QTableWidget_SetItemPrototype(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ScrollToItem")]
	public static extern void QTableWidget_ScrollToItem(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_InsertRow")]
	public static extern void QTableWidget_InsertRow(void* c_this, int32 row);
	[LinkName("QTableWidget_InsertColumn")]
	public static extern void QTableWidget_InsertColumn(void* c_this, int32 column);
	[LinkName("QTableWidget_RemoveRow")]
	public static extern void QTableWidget_RemoveRow(void* c_this, int32 row);
	[LinkName("QTableWidget_RemoveColumn")]
	public static extern void QTableWidget_RemoveColumn(void* c_this, int32 column);
	[LinkName("QTableWidget_Clear")]
	public static extern void QTableWidget_Clear(void* c_this);
	[LinkName("QTableWidget_ClearContents")]
	public static extern void QTableWidget_ClearContents(void* c_this);
	[LinkName("QTableWidget_ItemPressed")]
	public static extern void QTableWidget_ItemPressed(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemClicked")]
	public static extern void QTableWidget_ItemClicked(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemDoubleClicked")]
	public static extern void QTableWidget_ItemDoubleClicked(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemActivated")]
	public static extern void QTableWidget_ItemActivated(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemEntered")]
	public static extern void QTableWidget_ItemEntered(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_ItemChanged")]
	public static extern void QTableWidget_ItemChanged(void* c_this, QTableWidgetItem item);
	[LinkName("QTableWidget_CurrentItemChanged")]
	public static extern void QTableWidget_CurrentItemChanged(void* c_this, QTableWidgetItem current, QTableWidgetItem previous);
	[LinkName("QTableWidget_ItemSelectionChanged")]
	public static extern void QTableWidget_ItemSelectionChanged(void* c_this);
	[LinkName("QTableWidget_CellPressed")]
	public static extern void QTableWidget_CellPressed(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CellClicked")]
	public static extern void QTableWidget_CellClicked(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CellDoubleClicked")]
	public static extern void QTableWidget_CellDoubleClicked(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CellActivated")]
	public static extern void QTableWidget_CellActivated(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CellEntered")]
	public static extern void QTableWidget_CellEntered(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CellChanged")]
	public static extern void QTableWidget_CellChanged(void* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_CurrentCellChanged")]
	public static extern void QTableWidget_CurrentCellChanged(void* c_this, int32 currentRow, int32 currentColumn, int32 previousRow, int32 previousColumn);
	[LinkName("QTableWidget_Event")]
	public static extern bool QTableWidget_Event(void* c_this, QEvent e);
	[LinkName("QTableWidget_MimeTypes")]
	public static extern char8[][] QTableWidget_MimeTypes(void* c_this);
	[LinkName("QTableWidget_MimeData")]
	public static extern QMimeData QTableWidget_MimeData(void* c_this, QTableWidgetItem[] items);
	[LinkName("QTableWidget_DropMimeData")]
	public static extern bool QTableWidget_DropMimeData(void* c_this, int32 row, int32 column, QMimeData data, int64 action);
	[LinkName("QTableWidget_SupportedDropActions")]
	public static extern int64 QTableWidget_SupportedDropActions(void* c_this);
	[LinkName("QTableWidget_DropEvent")]
	public static extern void QTableWidget_DropEvent(void* c_this, QDropEvent event);
	[LinkName("QTableWidget_Tr2")]
	public static extern char8[] QTableWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTableWidget_Tr3")]
	public static extern char8[] QTableWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTableWidget_SortItems2")]
	public static extern void QTableWidget_SortItems2(void* c_this, int32 column, int64 order);
	[LinkName("QTableWidget_ScrollToItem2")]
	public static extern void QTableWidget_ScrollToItem2(void* c_this, QTableWidgetItem item, int64 hint);
}