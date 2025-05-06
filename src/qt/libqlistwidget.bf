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
	public static extern QListWidgetItem* QListWidgetItem_new();
	[LinkName("QListWidgetItem_new2")]
	public static extern QListWidgetItem* QListWidgetItem_new2(libqt_string text);
	[LinkName("QListWidgetItem_new3")]
	public static extern QListWidgetItem* QListWidgetItem_new3(QIcon* icon, libqt_string text);
	[LinkName("QListWidgetItem_new4")]
	public static extern QListWidgetItem* QListWidgetItem_new4(QListWidgetItem* other);
	[LinkName("QListWidgetItem_new5")]
	public static extern QListWidgetItem* QListWidgetItem_new5(QListWidget* listview);
	[LinkName("QListWidgetItem_new6")]
	public static extern QListWidgetItem* QListWidgetItem_new6(QListWidget* listview, int32 typeVal);
	[LinkName("QListWidgetItem_new7")]
	public static extern QListWidgetItem* QListWidgetItem_new7(libqt_string text, QListWidget* listview);
	[LinkName("QListWidgetItem_new8")]
	public static extern QListWidgetItem* QListWidgetItem_new8(libqt_string text, QListWidget* listview, int32 typeVal);
	[LinkName("QListWidgetItem_new9")]
	public static extern QListWidgetItem* QListWidgetItem_new9(QIcon* icon, libqt_string text, QListWidget* listview);
	[LinkName("QListWidgetItem_new10")]
	public static extern QListWidgetItem* QListWidgetItem_new10(QIcon* icon, libqt_string text, QListWidget* listview, int32 typeVal);
	[LinkName("QListWidgetItem_Clone")]
	public static extern QListWidgetItem* QListWidgetItem_Clone(Self* c_this);
	[LinkName("QListWidgetItem_ListWidget")]
	public static extern QListWidget* QListWidgetItem_ListWidget(Self* c_this);
	[LinkName("QListWidgetItem_SetSelected")]
	public static extern void QListWidgetItem_SetSelected(Self* c_this, bool selectVal);
	[LinkName("QListWidgetItem_IsSelected")]
	public static extern bool QListWidgetItem_IsSelected(Self* c_this);
	[LinkName("QListWidgetItem_SetHidden")]
	public static extern void QListWidgetItem_SetHidden(Self* c_this, bool hide);
	[LinkName("QListWidgetItem_IsHidden")]
	public static extern bool QListWidgetItem_IsHidden(Self* c_this);
	[LinkName("QListWidgetItem_Flags")]
	public static extern int64 QListWidgetItem_Flags(Self* c_this);
	[LinkName("QListWidgetItem_SetFlags")]
	public static extern void QListWidgetItem_SetFlags(Self* c_this, int64 flags);
	[LinkName("QListWidgetItem_Text")]
	public static extern libqt_string QListWidgetItem_Text(Self* c_this);
	[LinkName("QListWidgetItem_SetText")]
	public static extern void QListWidgetItem_SetText(Self* c_this, libqt_string text);
	[LinkName("QListWidgetItem_Icon")]
	public static extern QIcon QListWidgetItem_Icon(Self* c_this);
	[LinkName("QListWidgetItem_SetIcon")]
	public static extern void QListWidgetItem_SetIcon(Self* c_this, QIcon* icon);
	[LinkName("QListWidgetItem_StatusTip")]
	public static extern libqt_string QListWidgetItem_StatusTip(Self* c_this);
	[LinkName("QListWidgetItem_SetStatusTip")]
	public static extern void QListWidgetItem_SetStatusTip(Self* c_this, libqt_string statusTip);
	[LinkName("QListWidgetItem_ToolTip")]
	public static extern libqt_string QListWidgetItem_ToolTip(Self* c_this);
	[LinkName("QListWidgetItem_SetToolTip")]
	public static extern void QListWidgetItem_SetToolTip(Self* c_this, libqt_string toolTip);
	[LinkName("QListWidgetItem_WhatsThis")]
	public static extern libqt_string QListWidgetItem_WhatsThis(Self* c_this);
	[LinkName("QListWidgetItem_SetWhatsThis")]
	public static extern void QListWidgetItem_SetWhatsThis(Self* c_this, libqt_string whatsThis);
	[LinkName("QListWidgetItem_Font")]
	public static extern QFont QListWidgetItem_Font(Self* c_this);
	[LinkName("QListWidgetItem_SetFont")]
	public static extern void QListWidgetItem_SetFont(Self* c_this, QFont* font);
	[LinkName("QListWidgetItem_TextAlignment")]
	public static extern int32 QListWidgetItem_TextAlignment(Self* c_this);
	[LinkName("QListWidgetItem_SetTextAlignment")]
	public static extern void QListWidgetItem_SetTextAlignment(Self* c_this, int32 alignment);
	[LinkName("QListWidgetItem_SetTextAlignmentWithAlignment")]
	public static extern void QListWidgetItem_SetTextAlignmentWithAlignment(Self* c_this, int64 alignment);
	[LinkName("QListWidgetItem_SetTextAlignment2")]
	public static extern void QListWidgetItem_SetTextAlignment2(Self* c_this, int64 alignment);
	[LinkName("QListWidgetItem_Background")]
	public static extern QBrush QListWidgetItem_Background(Self* c_this);
	[LinkName("QListWidgetItem_SetBackground")]
	public static extern void QListWidgetItem_SetBackground(Self* c_this, QBrush* brush);
	[LinkName("QListWidgetItem_Foreground")]
	public static extern QBrush QListWidgetItem_Foreground(Self* c_this);
	[LinkName("QListWidgetItem_SetForeground")]
	public static extern void QListWidgetItem_SetForeground(Self* c_this, QBrush* brush);
	[LinkName("QListWidgetItem_CheckState")]
	public static extern int64 QListWidgetItem_CheckState(Self* c_this);
	[LinkName("QListWidgetItem_SetCheckState")]
	public static extern void QListWidgetItem_SetCheckState(Self* c_this, int64 state);
	[LinkName("QListWidgetItem_SizeHint")]
	public static extern QSize QListWidgetItem_SizeHint(Self* c_this);
	[LinkName("QListWidgetItem_SetSizeHint")]
	public static extern void QListWidgetItem_SetSizeHint(Self* c_this, QSize* size);
	[LinkName("QListWidgetItem_Data")]
	public static extern QVariant QListWidgetItem_Data(Self* c_this, int32 role);
	[LinkName("QListWidgetItem_SetData")]
	public static extern void QListWidgetItem_SetData(Self* c_this, int32 role, QVariant* value);
	[LinkName("QListWidgetItem_OperatorLesser")]
	public static extern bool QListWidgetItem_OperatorLesser(Self* c_this, QListWidgetItem* other);
	[LinkName("QListWidgetItem_Read")]
	public static extern void QListWidgetItem_Read(Self* c_this, QDataStream* _in);
	[LinkName("QListWidgetItem_Write")]
	public static extern void QListWidgetItem_Write(Self* c_this, QDataStream* _out);
	[LinkName("QListWidgetItem_OperatorAssign")]
	public static extern void QListWidgetItem_OperatorAssign(Self* c_this, QListWidgetItem* other);
	[LinkName("QListWidgetItem_Type")]
	public static extern int32 QListWidgetItem_Type(Self* c_this);
}
public struct QListWidget : QListView
{
	[LinkName("QListWidget_new")]
	public static extern QListWidget* QListWidget_new(QWidget* parent);
	[LinkName("QListWidget_new2")]
	public static extern QListWidget* QListWidget_new2();
	[LinkName("QListWidget_MetaObject")]
	public static extern QMetaObject* QListWidget_MetaObject(Self* c_this);
	[LinkName("QListWidget_Metacast")]
	public static extern void* QListWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QListWidget_Metacall")]
	public static extern int32 QListWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QListWidget_Tr")]
	public static extern libqt_string QListWidget_Tr(char8[] s);
	[LinkName("QListWidget_SetSelectionModel")]
	public static extern void QListWidget_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QListWidget_Item")]
	public static extern QListWidgetItem* QListWidget_Item(Self* c_this, int32 row);
	[LinkName("QListWidget_Row")]
	public static extern int32 QListWidget_Row(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_InsertItem")]
	public static extern void QListWidget_InsertItem(Self* c_this, int32 row, QListWidgetItem* item);
	[LinkName("QListWidget_InsertItem2")]
	public static extern void QListWidget_InsertItem2(Self* c_this, int32 row, libqt_string label);
	[LinkName("QListWidget_InsertItems")]
	public static extern void QListWidget_InsertItems(Self* c_this, int32 row, libqt_string[] labels);
	[LinkName("QListWidget_AddItem")]
	public static extern void QListWidget_AddItem(Self* c_this, libqt_string label);
	[LinkName("QListWidget_AddItemWithItem")]
	public static extern void QListWidget_AddItemWithItem(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_AddItems")]
	public static extern void QListWidget_AddItems(Self* c_this, libqt_string[] labels);
	[LinkName("QListWidget_TakeItem")]
	public static extern QListWidgetItem* QListWidget_TakeItem(Self* c_this, int32 row);
	[LinkName("QListWidget_Count")]
	public static extern int32 QListWidget_Count(Self* c_this);
	[LinkName("QListWidget_CurrentItem")]
	public static extern QListWidgetItem* QListWidget_CurrentItem(Self* c_this);
	[LinkName("QListWidget_SetCurrentItem")]
	public static extern void QListWidget_SetCurrentItem(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_SetCurrentItem2")]
	public static extern void QListWidget_SetCurrentItem2(Self* c_this, QListWidgetItem* item, int64 command);
	[LinkName("QListWidget_CurrentRow")]
	public static extern int32 QListWidget_CurrentRow(Self* c_this);
	[LinkName("QListWidget_SetCurrentRow")]
	public static extern void QListWidget_SetCurrentRow(Self* c_this, int32 row);
	[LinkName("QListWidget_SetCurrentRow2")]
	public static extern void QListWidget_SetCurrentRow2(Self* c_this, int32 row, int64 command);
	[LinkName("QListWidget_ItemAt")]
	public static extern QListWidgetItem* QListWidget_ItemAt(Self* c_this, QPoint* p);
	[LinkName("QListWidget_ItemAt2")]
	public static extern QListWidgetItem* QListWidget_ItemAt2(Self* c_this, int32 x, int32 y);
	[LinkName("QListWidget_VisualItemRect")]
	public static extern QRect QListWidget_VisualItemRect(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_SortItems")]
	public static extern void QListWidget_SortItems(Self* c_this);
	[LinkName("QListWidget_SetSortingEnabled")]
	public static extern void QListWidget_SetSortingEnabled(Self* c_this, bool enable);
	[LinkName("QListWidget_IsSortingEnabled")]
	public static extern bool QListWidget_IsSortingEnabled(Self* c_this);
	[LinkName("QListWidget_EditItem")]
	public static extern void QListWidget_EditItem(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_OpenPersistentEditor")]
	public static extern void QListWidget_OpenPersistentEditor(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_ClosePersistentEditor")]
	public static extern void QListWidget_ClosePersistentEditor(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_IsPersistentEditorOpen")]
	public static extern bool QListWidget_IsPersistentEditorOpen(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_ItemWidget")]
	public static extern QWidget* QListWidget_ItemWidget(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_SetItemWidget")]
	public static extern void QListWidget_SetItemWidget(Self* c_this, QListWidgetItem* item, QWidget* widget);
	[LinkName("QListWidget_RemoveItemWidget")]
	public static extern void QListWidget_RemoveItemWidget(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_SelectedItems")]
	public static extern QListWidgetItem*[] QListWidget_SelectedItems(Self* c_this);
	[LinkName("QListWidget_FindItems")]
	public static extern QListWidgetItem*[] QListWidget_FindItems(Self* c_this, libqt_string text, int64 flags);
	[LinkName("QListWidget_Items")]
	public static extern QListWidgetItem*[] QListWidget_Items(Self* c_this, QMimeData* data);
	[LinkName("QListWidget_IndexFromItem")]
	public static extern QModelIndex QListWidget_IndexFromItem(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_ItemFromIndex")]
	public static extern QListWidgetItem* QListWidget_ItemFromIndex(Self* c_this, QModelIndex* index);
	[LinkName("QListWidget_DropEvent")]
	public static extern void QListWidget_DropEvent(Self* c_this, QDropEvent* event);
	[LinkName("QListWidget_ScrollToItem")]
	public static extern void QListWidget_ScrollToItem(Self* c_this, QListWidgetItem* item);
	[LinkName("QListWidget_Clear")]
	public static extern void QListWidget_Clear(Self* c_this);
	[LinkName("QListWidget_Connect_ItemPressed")]
	public static extern void QListWidget_Connect_ItemPressed(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemClicked")]
	public static extern void QListWidget_Connect_ItemClicked(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemDoubleClicked")]
	public static extern void QListWidget_Connect_ItemDoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemActivated")]
	public static extern void QListWidget_Connect_ItemActivated(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemEntered")]
	public static extern void QListWidget_Connect_ItemEntered(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemChanged")]
	public static extern void QListWidget_Connect_ItemChanged(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_CurrentItemChanged")]
	public static extern void QListWidget_Connect_CurrentItemChanged(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_CurrentTextChanged")]
	public static extern void QListWidget_Connect_CurrentTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_CurrentRowChanged")]
	public static extern void QListWidget_Connect_CurrentRowChanged(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Connect_ItemSelectionChanged")]
	public static extern void QListWidget_Connect_ItemSelectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QListWidget_Event")]
	public static extern bool QListWidget_Event(Self* c_this, QEvent* e);
	[LinkName("QListWidget_MimeTypes")]
	public static extern libqt_string[] QListWidget_MimeTypes(Self* c_this);
	[LinkName("QListWidget_MimeData")]
	public static extern QMimeData* QListWidget_MimeData(Self* c_this, QListWidgetItem*[] items);
	[LinkName("QListWidget_DropMimeData")]
	public static extern bool QListWidget_DropMimeData(Self* c_this, int32 index, QMimeData* data, int64 action);
	[LinkName("QListWidget_SupportedDropActions")]
	public static extern int64 QListWidget_SupportedDropActions(Self* c_this);
	[LinkName("QListWidget_Tr2")]
	public static extern libqt_string QListWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QListWidget_Tr3")]
	public static extern libqt_string QListWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QListWidget_SortItems1")]
	public static extern void QListWidget_SortItems1(Self* c_this, int64 order);
	[LinkName("QListWidget_ScrollToItem2")]
	public static extern void QListWidget_ScrollToItem2(Self* c_this, QListWidgetItem* item, int64 hint);
}