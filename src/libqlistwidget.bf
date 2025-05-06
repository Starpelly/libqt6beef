using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QListWidgetItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
public struct QListWidgetItem
{
	[LinkName("QListWidgetItem_new")]
	public static extern void* QListWidgetItem_new();
	[LinkName("QListWidgetItem_new2")]
	public static extern void* QListWidgetItem_new2(char8[] text);
	[LinkName("QListWidgetItem_new3")]
	public static extern void* QListWidgetItem_new3(QIcon icon, char8[] text);
	[LinkName("QListWidgetItem_new4")]
	public static extern void* QListWidgetItem_new4(QListWidgetItem other);
	[LinkName("QListWidgetItem_new5")]
	public static extern void* QListWidgetItem_new5(QListWidget listview);
	[LinkName("QListWidgetItem_new6")]
	public static extern void* QListWidgetItem_new6(QListWidget listview, int32 typeVal);
	[LinkName("QListWidgetItem_new7")]
	public static extern void* QListWidgetItem_new7(char8[] text, QListWidget listview);
	[LinkName("QListWidgetItem_new8")]
	public static extern void* QListWidgetItem_new8(char8[] text, QListWidget listview, int32 typeVal);
	[LinkName("QListWidgetItem_new9")]
	public static extern void* QListWidgetItem_new9(QIcon icon, char8[] text, QListWidget listview);
	[LinkName("QListWidgetItem_new10")]
	public static extern void* QListWidgetItem_new10(QIcon icon, char8[] text, QListWidget listview, int32 typeVal);
	[LinkName("QListWidgetItem_Clone")]
	public static extern QListWidgetItem QListWidgetItem_Clone(void* c_this);
	[LinkName("QListWidgetItem_ListWidget")]
	public static extern QListWidget QListWidgetItem_ListWidget(void* c_this);
	[LinkName("QListWidgetItem_SetSelected")]
	public static extern void QListWidgetItem_SetSelected(void* c_this, bool selectVal);
	[LinkName("QListWidgetItem_IsSelected")]
	public static extern bool QListWidgetItem_IsSelected(void* c_this);
	[LinkName("QListWidgetItem_SetHidden")]
	public static extern void QListWidgetItem_SetHidden(void* c_this, bool hide);
	[LinkName("QListWidgetItem_IsHidden")]
	public static extern bool QListWidgetItem_IsHidden(void* c_this);
	[LinkName("QListWidgetItem_Flags")]
	public static extern int64 QListWidgetItem_Flags(void* c_this);
	[LinkName("QListWidgetItem_SetFlags")]
	public static extern void QListWidgetItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QListWidgetItem_Text")]
	public static extern char8[] QListWidgetItem_Text(void* c_this);
	[LinkName("QListWidgetItem_SetText")]
	public static extern void QListWidgetItem_SetText(void* c_this, char8[] text);
	[LinkName("QListWidgetItem_Icon")]
	public static extern QIcon QListWidgetItem_Icon(void* c_this);
	[LinkName("QListWidgetItem_SetIcon")]
	public static extern void QListWidgetItem_SetIcon(void* c_this, QIcon icon);
	[LinkName("QListWidgetItem_StatusTip")]
	public static extern char8[] QListWidgetItem_StatusTip(void* c_this);
	[LinkName("QListWidgetItem_SetStatusTip")]
	public static extern void QListWidgetItem_SetStatusTip(void* c_this, char8[] statusTip);
	[LinkName("QListWidgetItem_ToolTip")]
	public static extern char8[] QListWidgetItem_ToolTip(void* c_this);
	[LinkName("QListWidgetItem_SetToolTip")]
	public static extern void QListWidgetItem_SetToolTip(void* c_this, char8[] toolTip);
	[LinkName("QListWidgetItem_WhatsThis")]
	public static extern char8[] QListWidgetItem_WhatsThis(void* c_this);
	[LinkName("QListWidgetItem_SetWhatsThis")]
	public static extern void QListWidgetItem_SetWhatsThis(void* c_this, char8[] whatsThis);
	[LinkName("QListWidgetItem_Font")]
	public static extern QFont QListWidgetItem_Font(void* c_this);
	[LinkName("QListWidgetItem_SetFont")]
	public static extern void QListWidgetItem_SetFont(void* c_this, QFont font);
	[LinkName("QListWidgetItem_TextAlignment")]
	public static extern int32 QListWidgetItem_TextAlignment(void* c_this);
	[LinkName("QListWidgetItem_SetTextAlignment")]
	public static extern void QListWidgetItem_SetTextAlignment(void* c_this, int32 alignment);
	[LinkName("QListWidgetItem_SetTextAlignmentWithAlignment")]
	public static extern void QListWidgetItem_SetTextAlignmentWithAlignment(void* c_this, int64 alignment);
	[LinkName("QListWidgetItem_SetTextAlignment2")]
	public static extern void QListWidgetItem_SetTextAlignment2(void* c_this, int64 alignment);
	[LinkName("QListWidgetItem_Background")]
	public static extern QBrush QListWidgetItem_Background(void* c_this);
	[LinkName("QListWidgetItem_SetBackground")]
	public static extern void QListWidgetItem_SetBackground(void* c_this, QBrush brush);
	[LinkName("QListWidgetItem_Foreground")]
	public static extern QBrush QListWidgetItem_Foreground(void* c_this);
	[LinkName("QListWidgetItem_SetForeground")]
	public static extern void QListWidgetItem_SetForeground(void* c_this, QBrush brush);
	[LinkName("QListWidgetItem_CheckState")]
	public static extern int64 QListWidgetItem_CheckState(void* c_this);
	[LinkName("QListWidgetItem_SetCheckState")]
	public static extern void QListWidgetItem_SetCheckState(void* c_this, int64 state);
	[LinkName("QListWidgetItem_SizeHint")]
	public static extern QSize QListWidgetItem_SizeHint(void* c_this);
	[LinkName("QListWidgetItem_SetSizeHint")]
	public static extern void QListWidgetItem_SetSizeHint(void* c_this, QSize size);
	[LinkName("QListWidgetItem_Data")]
	public static extern QVariant QListWidgetItem_Data(void* c_this, int32 role);
	[LinkName("QListWidgetItem_SetData")]
	public static extern void QListWidgetItem_SetData(void* c_this, int32 role, QVariant value);
	[LinkName("QListWidgetItem_OperatorLesser")]
	public static extern bool QListWidgetItem_OperatorLesser(void* c_this, QListWidgetItem other);
	[LinkName("QListWidgetItem_Read")]
	public static extern void QListWidgetItem_Read(void* c_this, QDataStream _in);
	[LinkName("QListWidgetItem_Write")]
	public static extern void QListWidgetItem_Write(void* c_this, QDataStream _out);
	[LinkName("QListWidgetItem_OperatorAssign")]
	public static extern void QListWidgetItem_OperatorAssign(void* c_this, QListWidgetItem other);
	[LinkName("QListWidgetItem_Type")]
	public static extern int32 QListWidgetItem_Type(void* c_this);
}
public struct QListWidget
{
	[LinkName("QListWidget_new")]
	public static extern void* QListWidget_new(QWidget parent);
	[LinkName("QListWidget_new2")]
	public static extern void* QListWidget_new2();
	[LinkName("QListWidget_MetaObject")]
	public static extern QMetaObject QListWidget_MetaObject(void* c_this);
	[LinkName("QListWidget_Metacast")]
	public static extern void QListWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QListWidget_Metacall")]
	public static extern int32 QListWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QListWidget_Tr")]
	public static extern char8[] QListWidget_Tr(char8[] s);
	[LinkName("QListWidget_SetSelectionModel")]
	public static extern void QListWidget_SetSelectionModel(void* c_this, QItemSelectionModel selectionModel);
	[LinkName("QListWidget_Item")]
	public static extern QListWidgetItem QListWidget_Item(void* c_this, int32 row);
	[LinkName("QListWidget_Row")]
	public static extern int32 QListWidget_Row(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_InsertItem")]
	public static extern void QListWidget_InsertItem(void* c_this, int32 row, QListWidgetItem item);
	[LinkName("QListWidget_InsertItem2")]
	public static extern void QListWidget_InsertItem2(void* c_this, int32 row, char8[] label);
	[LinkName("QListWidget_InsertItems")]
	public static extern void QListWidget_InsertItems(void* c_this, int32 row, char8[][] labels);
	[LinkName("QListWidget_AddItem")]
	public static extern void QListWidget_AddItem(void* c_this, char8[] label);
	[LinkName("QListWidget_AddItemWithItem")]
	public static extern void QListWidget_AddItemWithItem(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_AddItems")]
	public static extern void QListWidget_AddItems(void* c_this, char8[][] labels);
	[LinkName("QListWidget_TakeItem")]
	public static extern QListWidgetItem QListWidget_TakeItem(void* c_this, int32 row);
	[LinkName("QListWidget_Count")]
	public static extern int32 QListWidget_Count(void* c_this);
	[LinkName("QListWidget_CurrentItem")]
	public static extern QListWidgetItem QListWidget_CurrentItem(void* c_this);
	[LinkName("QListWidget_SetCurrentItem")]
	public static extern void QListWidget_SetCurrentItem(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_SetCurrentItem2")]
	public static extern void QListWidget_SetCurrentItem2(void* c_this, QListWidgetItem item, int64 command);
	[LinkName("QListWidget_CurrentRow")]
	public static extern int32 QListWidget_CurrentRow(void* c_this);
	[LinkName("QListWidget_SetCurrentRow")]
	public static extern void QListWidget_SetCurrentRow(void* c_this, int32 row);
	[LinkName("QListWidget_SetCurrentRow2")]
	public static extern void QListWidget_SetCurrentRow2(void* c_this, int32 row, int64 command);
	[LinkName("QListWidget_ItemAt")]
	public static extern QListWidgetItem QListWidget_ItemAt(void* c_this, QPoint p);
	[LinkName("QListWidget_ItemAt2")]
	public static extern QListWidgetItem QListWidget_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QListWidget_VisualItemRect")]
	public static extern QRect QListWidget_VisualItemRect(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_SortItems")]
	public static extern void QListWidget_SortItems(void* c_this);
	[LinkName("QListWidget_SetSortingEnabled")]
	public static extern void QListWidget_SetSortingEnabled(void* c_this, bool enable);
	[LinkName("QListWidget_IsSortingEnabled")]
	public static extern bool QListWidget_IsSortingEnabled(void* c_this);
	[LinkName("QListWidget_EditItem")]
	public static extern void QListWidget_EditItem(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_OpenPersistentEditor")]
	public static extern void QListWidget_OpenPersistentEditor(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ClosePersistentEditor")]
	public static extern void QListWidget_ClosePersistentEditor(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_IsPersistentEditorOpen")]
	public static extern bool QListWidget_IsPersistentEditorOpen(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemWidget")]
	public static extern QWidget QListWidget_ItemWidget(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_SetItemWidget")]
	public static extern void QListWidget_SetItemWidget(void* c_this, QListWidgetItem item, QWidget widget);
	[LinkName("QListWidget_RemoveItemWidget")]
	public static extern void QListWidget_RemoveItemWidget(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_SelectedItems")]
	public static extern QListWidgetItem[] QListWidget_SelectedItems(void* c_this);
	[LinkName("QListWidget_FindItems")]
	public static extern QListWidgetItem[] QListWidget_FindItems(void* c_this, char8[] text, int64 flags);
	[LinkName("QListWidget_Items")]
	public static extern QListWidgetItem[] QListWidget_Items(void* c_this, QMimeData data);
	[LinkName("QListWidget_IndexFromItem")]
	public static extern QModelIndex QListWidget_IndexFromItem(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemFromIndex")]
	public static extern QListWidgetItem QListWidget_ItemFromIndex(void* c_this, QModelIndex index);
	[LinkName("QListWidget_DropEvent")]
	public static extern void QListWidget_DropEvent(void* c_this, QDropEvent event);
	[LinkName("QListWidget_ScrollToItem")]
	public static extern void QListWidget_ScrollToItem(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_Clear")]
	public static extern void QListWidget_Clear(void* c_this);
	[LinkName("QListWidget_ItemPressed")]
	public static extern void QListWidget_ItemPressed(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemClicked")]
	public static extern void QListWidget_ItemClicked(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemDoubleClicked")]
	public static extern void QListWidget_ItemDoubleClicked(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemActivated")]
	public static extern void QListWidget_ItemActivated(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemEntered")]
	public static extern void QListWidget_ItemEntered(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_ItemChanged")]
	public static extern void QListWidget_ItemChanged(void* c_this, QListWidgetItem item);
	[LinkName("QListWidget_CurrentItemChanged")]
	public static extern void QListWidget_CurrentItemChanged(void* c_this, QListWidgetItem current, QListWidgetItem previous);
	[LinkName("QListWidget_CurrentTextChanged")]
	public static extern void QListWidget_CurrentTextChanged(void* c_this, char8[] currentText);
	[LinkName("QListWidget_CurrentRowChanged")]
	public static extern void QListWidget_CurrentRowChanged(void* c_this, int32 currentRow);
	[LinkName("QListWidget_ItemSelectionChanged")]
	public static extern void QListWidget_ItemSelectionChanged(void* c_this);
	[LinkName("QListWidget_Event")]
	public static extern bool QListWidget_Event(void* c_this, QEvent e);
	[LinkName("QListWidget_MimeTypes")]
	public static extern char8[][] QListWidget_MimeTypes(void* c_this);
	[LinkName("QListWidget_MimeData")]
	public static extern QMimeData QListWidget_MimeData(void* c_this, QListWidgetItem[] items);
	[LinkName("QListWidget_DropMimeData")]
	public static extern bool QListWidget_DropMimeData(void* c_this, int32 index, QMimeData data, int64 action);
	[LinkName("QListWidget_SupportedDropActions")]
	public static extern int64 QListWidget_SupportedDropActions(void* c_this);
	[LinkName("QListWidget_Tr2")]
	public static extern char8[] QListWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QListWidget_Tr3")]
	public static extern char8[] QListWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QListWidget_SortItems1")]
	public static extern void QListWidget_SortItems1(void* c_this, int64 order);
	[LinkName("QListWidget_ScrollToItem2")]
	public static extern void QListWidget_ScrollToItem2(void* c_this, QListWidgetItem item, int64 hint);
}