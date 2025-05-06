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
	public static extern QTableWidgetSelectionRange* QTableWidgetSelectionRange_new(QTableWidgetSelectionRange* other);
	[LinkName("QTableWidgetSelectionRange_new2")]
	public static extern QTableWidgetSelectionRange* QTableWidgetSelectionRange_new2(QTableWidgetSelectionRange* other);
	[LinkName("QTableWidgetSelectionRange_new3")]
	public static extern QTableWidgetSelectionRange* QTableWidgetSelectionRange_new3();
	[LinkName("QTableWidgetSelectionRange_new4")]
	public static extern QTableWidgetSelectionRange* QTableWidgetSelectionRange_new4(int32 top, int32 left, int32 bottom, int32 right);
	[LinkName("QTableWidgetSelectionRange_TopRow")]
	public static extern int32 QTableWidgetSelectionRange_TopRow(Self* c_this);
	[LinkName("QTableWidgetSelectionRange_BottomRow")]
	public static extern int32 QTableWidgetSelectionRange_BottomRow(Self* c_this);
	[LinkName("QTableWidgetSelectionRange_LeftColumn")]
	public static extern int32 QTableWidgetSelectionRange_LeftColumn(Self* c_this);
	[LinkName("QTableWidgetSelectionRange_RightColumn")]
	public static extern int32 QTableWidgetSelectionRange_RightColumn(Self* c_this);
	[LinkName("QTableWidgetSelectionRange_RowCount")]
	public static extern int32 QTableWidgetSelectionRange_RowCount(Self* c_this);
	[LinkName("QTableWidgetSelectionRange_ColumnCount")]
	public static extern int32 QTableWidgetSelectionRange_ColumnCount(Self* c_this);
}
public struct QTableWidgetItem
{
	[LinkName("QTableWidgetItem_new")]
	public static extern QTableWidgetItem* QTableWidgetItem_new();
	[LinkName("QTableWidgetItem_new2")]
	public static extern QTableWidgetItem* QTableWidgetItem_new2(libqt_string text);
	[LinkName("QTableWidgetItem_new3")]
	public static extern QTableWidgetItem* QTableWidgetItem_new3(QIcon* icon, libqt_string text);
	[LinkName("QTableWidgetItem_new4")]
	public static extern QTableWidgetItem* QTableWidgetItem_new4(QTableWidgetItem* other);
	[LinkName("QTableWidgetItem_new5")]
	public static extern QTableWidgetItem* QTableWidgetItem_new5(int32 typeVal);
	[LinkName("QTableWidgetItem_new6")]
	public static extern QTableWidgetItem* QTableWidgetItem_new6(libqt_string text, int32 typeVal);
	[LinkName("QTableWidgetItem_new7")]
	public static extern QTableWidgetItem* QTableWidgetItem_new7(QIcon* icon, libqt_string text, int32 typeVal);
	[LinkName("QTableWidgetItem_Clone")]
	public static extern QTableWidgetItem* QTableWidgetItem_Clone(Self* c_this);
	[LinkName("QTableWidgetItem_TableWidget")]
	public static extern QTableWidget* QTableWidgetItem_TableWidget(Self* c_this);
	[LinkName("QTableWidgetItem_Row")]
	public static extern int32 QTableWidgetItem_Row(Self* c_this);
	[LinkName("QTableWidgetItem_Column")]
	public static extern int32 QTableWidgetItem_Column(Self* c_this);
	[LinkName("QTableWidgetItem_SetSelected")]
	public static extern void QTableWidgetItem_SetSelected(Self* c_this, bool selectVal);
	[LinkName("QTableWidgetItem_IsSelected")]
	public static extern bool QTableWidgetItem_IsSelected(Self* c_this);
	[LinkName("QTableWidgetItem_Flags")]
	public static extern int64 QTableWidgetItem_Flags(Self* c_this);
	[LinkName("QTableWidgetItem_SetFlags")]
	public static extern void QTableWidgetItem_SetFlags(Self* c_this, int64 flags);
	[LinkName("QTableWidgetItem_Text")]
	public static extern libqt_string QTableWidgetItem_Text(Self* c_this);
	[LinkName("QTableWidgetItem_SetText")]
	public static extern void QTableWidgetItem_SetText(Self* c_this, libqt_string text);
	[LinkName("QTableWidgetItem_Icon")]
	public static extern QIcon QTableWidgetItem_Icon(Self* c_this);
	[LinkName("QTableWidgetItem_SetIcon")]
	public static extern void QTableWidgetItem_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QTableWidgetItem_StatusTip")]
	public static extern libqt_string QTableWidgetItem_StatusTip(Self* c_this);
	[LinkName("QTableWidgetItem_SetStatusTip")]
	public static extern void QTableWidgetItem_SetStatusTip(Self* c_this, libqt_string statusTip);
	[LinkName("QTableWidgetItem_ToolTip")]
	public static extern libqt_string QTableWidgetItem_ToolTip(Self* c_this);
	[LinkName("QTableWidgetItem_SetToolTip")]
	public static extern void QTableWidgetItem_SetToolTip(Self* c_this, libqt_string toolTip);
	[LinkName("QTableWidgetItem_WhatsThis")]
	public static extern libqt_string QTableWidgetItem_WhatsThis(Self* c_this);
	[LinkName("QTableWidgetItem_SetWhatsThis")]
	public static extern void QTableWidgetItem_SetWhatsThis(Self* c_this, libqt_string whatsThis);
	[LinkName("QTableWidgetItem_Font")]
	public static extern QFont QTableWidgetItem_Font(Self* c_this);
	[LinkName("QTableWidgetItem_SetFont")]
	public static extern void QTableWidgetItem_SetFont(Self* c_this, QFont* font);
	[LinkName("QTableWidgetItem_TextAlignment")]
	public static extern int32 QTableWidgetItem_TextAlignment(Self* c_this);
	[LinkName("QTableWidgetItem_SetTextAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignment(Self* c_this, int32 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignmentWithAlignment")]
	public static extern void QTableWidgetItem_SetTextAlignmentWithAlignment(Self* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_SetTextAlignment2")]
	public static extern void QTableWidgetItem_SetTextAlignment2(Self* c_this, int64 alignment);
	[LinkName("QTableWidgetItem_Background")]
	public static extern QBrush QTableWidgetItem_Background(Self* c_this);
	[LinkName("QTableWidgetItem_SetBackground")]
	public static extern void QTableWidgetItem_SetBackground(Self* c_this, QBrush* brush);
	[LinkName("QTableWidgetItem_Foreground")]
	public static extern QBrush QTableWidgetItem_Foreground(Self* c_this);
	[LinkName("QTableWidgetItem_SetForeground")]
	public static extern void QTableWidgetItem_SetForeground(Self* c_this, QBrush* brush);
	[LinkName("QTableWidgetItem_CheckState")]
	public static extern int64 QTableWidgetItem_CheckState(Self* c_this);
	[LinkName("QTableWidgetItem_SetCheckState")]
	public static extern void QTableWidgetItem_SetCheckState(Self* c_this, int64 state);
	[LinkName("QTableWidgetItem_SizeHint")]
	public static extern QSize QTableWidgetItem_SizeHint(Self* c_this);
	[LinkName("QTableWidgetItem_SetSizeHint")]
	public static extern void QTableWidgetItem_SetSizeHint(Self* c_this, QSize* size);
	[LinkName("QTableWidgetItem_Data")]
	public static extern QVariant QTableWidgetItem_Data(Self* c_this, int32 role);
	[LinkName("QTableWidgetItem_SetData")]
	public static extern void QTableWidgetItem_SetData(Self* c_this, int32 role, QVariant* value);
	[LinkName("QTableWidgetItem_OperatorLesser")]
	public static extern bool QTableWidgetItem_OperatorLesser(Self* c_this, QTableWidgetItem* other);
	[LinkName("QTableWidgetItem_Read")]
	public static extern void QTableWidgetItem_Read(Self* c_this, QDataStream* _in);
	[LinkName("QTableWidgetItem_Write")]
	public static extern void QTableWidgetItem_Write(Self* c_this, QDataStream* _out);
	[LinkName("QTableWidgetItem_OperatorAssign")]
	public static extern void QTableWidgetItem_OperatorAssign(Self* c_this, QTableWidgetItem* other);
	[LinkName("QTableWidgetItem_Type")]
	public static extern int32 QTableWidgetItem_Type(Self* c_this);
}
public struct QTableWidget : QTableView
{
	[LinkName("QTableWidget_new")]
	public static extern QTableWidget* QTableWidget_new(QWidget* parent);
	[LinkName("QTableWidget_new2")]
	public static extern QTableWidget* QTableWidget_new2();
	[LinkName("QTableWidget_new3")]
	public static extern QTableWidget* QTableWidget_new3(int32 rows, int32 columns);
	[LinkName("QTableWidget_new4")]
	public static extern QTableWidget* QTableWidget_new4(int32 rows, int32 columns, QWidget* parent);
	[LinkName("QTableWidget_MetaObject")]
	public static extern QMetaObject* QTableWidget_MetaObject(Self* c_this);
	[LinkName("QTableWidget_Metacast")]
	public static extern void* QTableWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTableWidget_Metacall")]
	public static extern int32 QTableWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTableWidget_Tr")]
	public static extern libqt_string QTableWidget_Tr(char8[] s);
	[LinkName("QTableWidget_SetRowCount")]
	public static extern void QTableWidget_SetRowCount(Self* c_this, int32 rows);
	[LinkName("QTableWidget_RowCount")]
	public static extern int32 QTableWidget_RowCount(Self* c_this);
	[LinkName("QTableWidget_SetColumnCount")]
	public static extern void QTableWidget_SetColumnCount(Self* c_this, int32 columns);
	[LinkName("QTableWidget_ColumnCount")]
	public static extern int32 QTableWidget_ColumnCount(Self* c_this);
	[LinkName("QTableWidget_Row")]
	public static extern int32 QTableWidget_Row(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_Column")]
	public static extern int32 QTableWidget_Column(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_Item")]
	public static extern QTableWidgetItem* QTableWidget_Item(Self* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetItem")]
	public static extern void QTableWidget_SetItem(Self* c_this, int32 row, int32 column, QTableWidgetItem* item);
	[LinkName("QTableWidget_TakeItem")]
	public static extern QTableWidgetItem* QTableWidget_TakeItem(Self* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_Items")]
	public static extern QTableWidgetItem*[] QTableWidget_Items(Self* c_this, QMimeData* data);
	[LinkName("QTableWidget_IndexFromItem")]
	public static extern QModelIndex QTableWidget_IndexFromItem(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_ItemFromIndex")]
	public static extern QTableWidgetItem* QTableWidget_ItemFromIndex(Self* c_this, QModelIndex* index);
	[LinkName("QTableWidget_VerticalHeaderItem")]
	public static extern QTableWidgetItem* QTableWidget_VerticalHeaderItem(Self* c_this, int32 row);
	[LinkName("QTableWidget_SetVerticalHeaderItem")]
	public static extern void QTableWidget_SetVerticalHeaderItem(Self* c_this, int32 row, QTableWidgetItem* item);
	[LinkName("QTableWidget_TakeVerticalHeaderItem")]
	public static extern QTableWidgetItem* QTableWidget_TakeVerticalHeaderItem(Self* c_this, int32 row);
	[LinkName("QTableWidget_HorizontalHeaderItem")]
	public static extern QTableWidgetItem* QTableWidget_HorizontalHeaderItem(Self* c_this, int32 column);
	[LinkName("QTableWidget_SetHorizontalHeaderItem")]
	public static extern void QTableWidget_SetHorizontalHeaderItem(Self* c_this, int32 column, QTableWidgetItem* item);
	[LinkName("QTableWidget_TakeHorizontalHeaderItem")]
	public static extern QTableWidgetItem* QTableWidget_TakeHorizontalHeaderItem(Self* c_this, int32 column);
	[LinkName("QTableWidget_SetVerticalHeaderLabels")]
	public static extern void QTableWidget_SetVerticalHeaderLabels(Self* c_this, libqt_string[] labels);
	[LinkName("QTableWidget_SetHorizontalHeaderLabels")]
	public static extern void QTableWidget_SetHorizontalHeaderLabels(Self* c_this, libqt_string[] labels);
	[LinkName("QTableWidget_CurrentRow")]
	public static extern int32 QTableWidget_CurrentRow(Self* c_this);
	[LinkName("QTableWidget_CurrentColumn")]
	public static extern int32 QTableWidget_CurrentColumn(Self* c_this);
	[LinkName("QTableWidget_CurrentItem")]
	public static extern QTableWidgetItem* QTableWidget_CurrentItem(Self* c_this);
	[LinkName("QTableWidget_SetCurrentItem")]
	public static extern void QTableWidget_SetCurrentItem(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_SetCurrentItem2")]
	public static extern void QTableWidget_SetCurrentItem2(Self* c_this, QTableWidgetItem* item, int64 command);
	[LinkName("QTableWidget_SetCurrentCell")]
	public static extern void QTableWidget_SetCurrentCell(Self* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCurrentCell2")]
	public static extern void QTableWidget_SetCurrentCell2(Self* c_this, int32 row, int32 column, int64 command);
	[LinkName("QTableWidget_SortItems")]
	public static extern void QTableWidget_SortItems(Self* c_this, int32 column);
	[LinkName("QTableWidget_SetSortingEnabled")]
	public static extern void QTableWidget_SetSortingEnabled(Self* c_this, bool enable);
	[LinkName("QTableWidget_IsSortingEnabled")]
	public static extern bool QTableWidget_IsSortingEnabled(Self* c_this);
	[LinkName("QTableWidget_EditItem")]
	public static extern void QTableWidget_EditItem(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_OpenPersistentEditor")]
	public static extern void QTableWidget_OpenPersistentEditor(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_ClosePersistentEditor")]
	public static extern void QTableWidget_ClosePersistentEditor(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_IsPersistentEditorOpen")]
	public static extern bool QTableWidget_IsPersistentEditorOpen(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_CellWidget")]
	public static extern QWidget* QTableWidget_CellWidget(Self* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetCellWidget")]
	public static extern void QTableWidget_SetCellWidget(Self* c_this, int32 row, int32 column, QWidget* widget);
	[LinkName("QTableWidget_RemoveCellWidget")]
	public static extern void QTableWidget_RemoveCellWidget(Self* c_this, int32 row, int32 column);
	[LinkName("QTableWidget_SetRangeSelected")]
	public static extern void QTableWidget_SetRangeSelected(Self* c_this, QTableWidgetSelectionRange* range, bool selectVal);
	[LinkName("QTableWidget_SelectedRanges")]
	public static extern QTableWidgetSelectionRange[] QTableWidget_SelectedRanges(Self* c_this);
	[LinkName("QTableWidget_SelectedItems")]
	public static extern QTableWidgetItem*[] QTableWidget_SelectedItems(Self* c_this);
	[LinkName("QTableWidget_FindItems")]
	public static extern QTableWidgetItem*[] QTableWidget_FindItems(Self* c_this, libqt_string text, int64 flags);
	[LinkName("QTableWidget_VisualRow")]
	public static extern int32 QTableWidget_VisualRow(Self* c_this, int32 logicalRow);
	[LinkName("QTableWidget_VisualColumn")]
	public static extern int32 QTableWidget_VisualColumn(Self* c_this, int32 logicalColumn);
	[LinkName("QTableWidget_ItemAt")]
	public static extern QTableWidgetItem* QTableWidget_ItemAt(Self* c_this, QPoint* p);
	[LinkName("QTableWidget_ItemAt2")]
	public static extern QTableWidgetItem* QTableWidget_ItemAt2(Self* c_this, int32 x, int32 y);
	[LinkName("QTableWidget_VisualItemRect")]
	public static extern QRect QTableWidget_VisualItemRect(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_ItemPrototype")]
	public static extern QTableWidgetItem* QTableWidget_ItemPrototype(Self* c_this);
	[LinkName("QTableWidget_SetItemPrototype")]
	public static extern void QTableWidget_SetItemPrototype(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_ScrollToItem")]
	public static extern void QTableWidget_ScrollToItem(Self* c_this, QTableWidgetItem* item);
	[LinkName("QTableWidget_InsertRow")]
	public static extern void QTableWidget_InsertRow(Self* c_this, int32 row);
	[LinkName("QTableWidget_InsertColumn")]
	public static extern void QTableWidget_InsertColumn(Self* c_this, int32 column);
	[LinkName("QTableWidget_RemoveRow")]
	public static extern void QTableWidget_RemoveRow(Self* c_this, int32 row);
	[LinkName("QTableWidget_RemoveColumn")]
	public static extern void QTableWidget_RemoveColumn(Self* c_this, int32 column);
	[LinkName("QTableWidget_Clear")]
	public static extern void QTableWidget_Clear(Self* c_this);
	[LinkName("QTableWidget_ClearContents")]
	public static extern void QTableWidget_ClearContents(Self* c_this);
	[LinkName("QTableWidget_Connect_ItemPressed")]
	public static extern void QTableWidget_Connect_ItemPressed(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemClicked")]
	public static extern void QTableWidget_Connect_ItemClicked(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemDoubleClicked")]
	public static extern void QTableWidget_Connect_ItemDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemActivated")]
	public static extern void QTableWidget_Connect_ItemActivated(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemEntered")]
	public static extern void QTableWidget_Connect_ItemEntered(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemChanged")]
	public static extern void QTableWidget_Connect_ItemChanged(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CurrentItemChanged")]
	public static extern void QTableWidget_Connect_CurrentItemChanged(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_ItemSelectionChanged")]
	public static extern void QTableWidget_Connect_ItemSelectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellPressed")]
	public static extern void QTableWidget_Connect_CellPressed(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellClicked")]
	public static extern void QTableWidget_Connect_CellClicked(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellDoubleClicked")]
	public static extern void QTableWidget_Connect_CellDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellActivated")]
	public static extern void QTableWidget_Connect_CellActivated(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellEntered")]
	public static extern void QTableWidget_Connect_CellEntered(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CellChanged")]
	public static extern void QTableWidget_Connect_CellChanged(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Connect_CurrentCellChanged")]
	public static extern void QTableWidget_Connect_CurrentCellChanged(Self* c_this, c_intptr slot);
	[LinkName("QTableWidget_Event")]
	public static extern bool QTableWidget_Event(Self* c_this, QEvent* e);
	[LinkName("QTableWidget_MimeTypes")]
	public static extern libqt_string[] QTableWidget_MimeTypes(Self* c_this);
	[LinkName("QTableWidget_MimeData")]
	public static extern QMimeData* QTableWidget_MimeData(Self* c_this, QTableWidgetItem*[] items);
	[LinkName("QTableWidget_DropMimeData")]
	public static extern bool QTableWidget_DropMimeData(Self* c_this, int32 row, int32 column, QMimeData* data, int64 action);
	[LinkName("QTableWidget_SupportedDropActions")]
	public static extern int64 QTableWidget_SupportedDropActions(Self* c_this);
	[LinkName("QTableWidget_DropEvent")]
	public static extern void QTableWidget_DropEvent(Self* c_this, QDropEvent* event);
	[LinkName("QTableWidget_Tr2")]
	public static extern libqt_string QTableWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTableWidget_Tr3")]
	public static extern libqt_string QTableWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTableWidget_SortItems2")]
	public static extern void QTableWidget_SortItems2(Self* c_this, int32 column, int64 order);
	[LinkName("QTableWidget_ScrollToItem2")]
	public static extern void QTableWidget_ScrollToItem2(Self* c_this, QTableWidgetItem* item, int64 hint);
}