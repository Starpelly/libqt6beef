using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTreeWidgetItem__ItemType
{
	Type = 0,
	UserType = 1000,
}
[AllowDuplicates]
public enum QTreeWidgetItem__ChildIndicatorPolicy
{
	ShowIndicator = 0,
	DontShowIndicator = 1,
	DontShowIndicatorWhenChildless = 2,
}
public struct QTreeWidgetItem
{
	[LinkName("QTreeWidgetItem_new")]
	public static extern void* QTreeWidgetItem_new();
	[LinkName("QTreeWidgetItem_new2")]
	public static extern void* QTreeWidgetItem_new2(char8[][] strings);
	[LinkName("QTreeWidgetItem_new3")]
	public static extern void* QTreeWidgetItem_new3(QTreeWidget treeview);
	[LinkName("QTreeWidgetItem_new4")]
	public static extern void* QTreeWidgetItem_new4(QTreeWidget treeview, char8[][] strings);
	[LinkName("QTreeWidgetItem_new5")]
	public static extern void* QTreeWidgetItem_new5(QTreeWidget treeview, QTreeWidgetItem after);
	[LinkName("QTreeWidgetItem_new6")]
	public static extern void* QTreeWidgetItem_new6(QTreeWidgetItem parent);
	[LinkName("QTreeWidgetItem_new7")]
	public static extern void* QTreeWidgetItem_new7(QTreeWidgetItem parent, char8[][] strings);
	[LinkName("QTreeWidgetItem_new8")]
	public static extern void* QTreeWidgetItem_new8(QTreeWidgetItem parent, QTreeWidgetItem after);
	[LinkName("QTreeWidgetItem_new9")]
	public static extern void* QTreeWidgetItem_new9(QTreeWidgetItem other);
	[LinkName("QTreeWidgetItem_new10")]
	public static extern void* QTreeWidgetItem_new10(int32 typeVal);
	[LinkName("QTreeWidgetItem_new11")]
	public static extern void* QTreeWidgetItem_new11(char8[][] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new12")]
	public static extern void* QTreeWidgetItem_new12(QTreeWidget treeview, int32 typeVal);
	[LinkName("QTreeWidgetItem_new13")]
	public static extern void* QTreeWidgetItem_new13(QTreeWidget treeview, char8[][] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new14")]
	public static extern void* QTreeWidgetItem_new14(QTreeWidget treeview, QTreeWidgetItem after, int32 typeVal);
	[LinkName("QTreeWidgetItem_new15")]
	public static extern void* QTreeWidgetItem_new15(QTreeWidgetItem parent, int32 typeVal);
	[LinkName("QTreeWidgetItem_new16")]
	public static extern void* QTreeWidgetItem_new16(QTreeWidgetItem parent, char8[][] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new17")]
	public static extern void* QTreeWidgetItem_new17(QTreeWidgetItem parent, QTreeWidgetItem after, int32 typeVal);
	[LinkName("QTreeWidgetItem_Clone")]
	public static extern QTreeWidgetItem QTreeWidgetItem_Clone(void* c_this);
	[LinkName("QTreeWidgetItem_TreeWidget")]
	public static extern QTreeWidget QTreeWidgetItem_TreeWidget(void* c_this);
	[LinkName("QTreeWidgetItem_SetSelected")]
	public static extern void QTreeWidgetItem_SetSelected(void* c_this, bool selectVal);
	[LinkName("QTreeWidgetItem_IsSelected")]
	public static extern bool QTreeWidgetItem_IsSelected(void* c_this);
	[LinkName("QTreeWidgetItem_SetHidden")]
	public static extern void QTreeWidgetItem_SetHidden(void* c_this, bool hide);
	[LinkName("QTreeWidgetItem_IsHidden")]
	public static extern bool QTreeWidgetItem_IsHidden(void* c_this);
	[LinkName("QTreeWidgetItem_SetExpanded")]
	public static extern void QTreeWidgetItem_SetExpanded(void* c_this, bool expand);
	[LinkName("QTreeWidgetItem_IsExpanded")]
	public static extern bool QTreeWidgetItem_IsExpanded(void* c_this);
	[LinkName("QTreeWidgetItem_SetFirstColumnSpanned")]
	public static extern void QTreeWidgetItem_SetFirstColumnSpanned(void* c_this, bool span);
	[LinkName("QTreeWidgetItem_IsFirstColumnSpanned")]
	public static extern bool QTreeWidgetItem_IsFirstColumnSpanned(void* c_this);
	[LinkName("QTreeWidgetItem_SetDisabled")]
	public static extern void QTreeWidgetItem_SetDisabled(void* c_this, bool disabled);
	[LinkName("QTreeWidgetItem_IsDisabled")]
	public static extern bool QTreeWidgetItem_IsDisabled(void* c_this);
	[LinkName("QTreeWidgetItem_SetChildIndicatorPolicy")]
	public static extern void QTreeWidgetItem_SetChildIndicatorPolicy(void* c_this, int64 policy);
	[LinkName("QTreeWidgetItem_ChildIndicatorPolicy")]
	public static extern int64 QTreeWidgetItem_ChildIndicatorPolicy(void* c_this);
	[LinkName("QTreeWidgetItem_Flags")]
	public static extern int64 QTreeWidgetItem_Flags(void* c_this);
	[LinkName("QTreeWidgetItem_SetFlags")]
	public static extern void QTreeWidgetItem_SetFlags(void* c_this, int64 flags);
	[LinkName("QTreeWidgetItem_Text")]
	public static extern char8[] QTreeWidgetItem_Text(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetText")]
	public static extern void QTreeWidgetItem_SetText(void* c_this, int32 column, char8[] text);
	[LinkName("QTreeWidgetItem_Icon")]
	public static extern QIcon QTreeWidgetItem_Icon(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetIcon")]
	public static extern void QTreeWidgetItem_SetIcon(void* c_this, int32 column, QIcon icon);
	[LinkName("QTreeWidgetItem_StatusTip")]
	public static extern char8[] QTreeWidgetItem_StatusTip(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetStatusTip")]
	public static extern void QTreeWidgetItem_SetStatusTip(void* c_this, int32 column, char8[] statusTip);
	[LinkName("QTreeWidgetItem_ToolTip")]
	public static extern char8[] QTreeWidgetItem_ToolTip(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetToolTip")]
	public static extern void QTreeWidgetItem_SetToolTip(void* c_this, int32 column, char8[] toolTip);
	[LinkName("QTreeWidgetItem_WhatsThis")]
	public static extern char8[] QTreeWidgetItem_WhatsThis(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetWhatsThis")]
	public static extern void QTreeWidgetItem_SetWhatsThis(void* c_this, int32 column, char8[] whatsThis);
	[LinkName("QTreeWidgetItem_Font")]
	public static extern QFont QTreeWidgetItem_Font(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetFont")]
	public static extern void QTreeWidgetItem_SetFont(void* c_this, int32 column, QFont font);
	[LinkName("QTreeWidgetItem_TextAlignment")]
	public static extern int32 QTreeWidgetItem_TextAlignment(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetTextAlignment")]
	public static extern void QTreeWidgetItem_SetTextAlignment(void* c_this, int32 column, int32 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment2")]
	public static extern void QTreeWidgetItem_SetTextAlignment2(void* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment3")]
	public static extern void QTreeWidgetItem_SetTextAlignment3(void* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_Background")]
	public static extern QBrush QTreeWidgetItem_Background(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetBackground")]
	public static extern void QTreeWidgetItem_SetBackground(void* c_this, int32 column, QBrush brush);
	[LinkName("QTreeWidgetItem_Foreground")]
	public static extern QBrush QTreeWidgetItem_Foreground(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetForeground")]
	public static extern void QTreeWidgetItem_SetForeground(void* c_this, int32 column, QBrush brush);
	[LinkName("QTreeWidgetItem_CheckState")]
	public static extern int64 QTreeWidgetItem_CheckState(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetCheckState")]
	public static extern void QTreeWidgetItem_SetCheckState(void* c_this, int32 column, int64 state);
	[LinkName("QTreeWidgetItem_SizeHint")]
	public static extern QSize QTreeWidgetItem_SizeHint(void* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetSizeHint")]
	public static extern void QTreeWidgetItem_SetSizeHint(void* c_this, int32 column, QSize size);
	[LinkName("QTreeWidgetItem_Data")]
	public static extern QVariant QTreeWidgetItem_Data(void* c_this, int32 column, int32 role);
	[LinkName("QTreeWidgetItem_SetData")]
	public static extern void QTreeWidgetItem_SetData(void* c_this, int32 column, int32 role, QVariant value);
	[LinkName("QTreeWidgetItem_OperatorLesser")]
	public static extern bool QTreeWidgetItem_OperatorLesser(void* c_this, QTreeWidgetItem other);
	[LinkName("QTreeWidgetItem_Read")]
	public static extern void QTreeWidgetItem_Read(void* c_this, QDataStream _in);
	[LinkName("QTreeWidgetItem_Write")]
	public static extern void QTreeWidgetItem_Write(void* c_this, QDataStream _out);
	[LinkName("QTreeWidgetItem_OperatorAssign")]
	public static extern void QTreeWidgetItem_OperatorAssign(void* c_this, QTreeWidgetItem other);
	[LinkName("QTreeWidgetItem_Parent")]
	public static extern QTreeWidgetItem QTreeWidgetItem_Parent(void* c_this);
	[LinkName("QTreeWidgetItem_Child")]
	public static extern QTreeWidgetItem QTreeWidgetItem_Child(void* c_this, int32 index);
	[LinkName("QTreeWidgetItem_ChildCount")]
	public static extern int32 QTreeWidgetItem_ChildCount(void* c_this);
	[LinkName("QTreeWidgetItem_ColumnCount")]
	public static extern int32 QTreeWidgetItem_ColumnCount(void* c_this);
	[LinkName("QTreeWidgetItem_IndexOfChild")]
	public static extern int32 QTreeWidgetItem_IndexOfChild(void* c_this, QTreeWidgetItem child);
	[LinkName("QTreeWidgetItem_AddChild")]
	public static extern void QTreeWidgetItem_AddChild(void* c_this, QTreeWidgetItem child);
	[LinkName("QTreeWidgetItem_InsertChild")]
	public static extern void QTreeWidgetItem_InsertChild(void* c_this, int32 index, QTreeWidgetItem child);
	[LinkName("QTreeWidgetItem_RemoveChild")]
	public static extern void QTreeWidgetItem_RemoveChild(void* c_this, QTreeWidgetItem child);
	[LinkName("QTreeWidgetItem_TakeChild")]
	public static extern QTreeWidgetItem QTreeWidgetItem_TakeChild(void* c_this, int32 index);
	[LinkName("QTreeWidgetItem_AddChildren")]
	public static extern void QTreeWidgetItem_AddChildren(void* c_this, QTreeWidgetItem[] children);
	[LinkName("QTreeWidgetItem_InsertChildren")]
	public static extern void QTreeWidgetItem_InsertChildren(void* c_this, int32 index, QTreeWidgetItem[] children);
	[LinkName("QTreeWidgetItem_TakeChildren")]
	public static extern QTreeWidgetItem[] QTreeWidgetItem_TakeChildren(void* c_this);
	[LinkName("QTreeWidgetItem_Type")]
	public static extern int32 QTreeWidgetItem_Type(void* c_this);
	[LinkName("QTreeWidgetItem_SortChildren")]
	public static extern void QTreeWidgetItem_SortChildren(void* c_this, int32 column, int64 order);
	[LinkName("QTreeWidgetItem_EmitDataChanged")]
	public static extern void QTreeWidgetItem_EmitDataChanged(void* c_this);
}
public struct QTreeWidget
{
	[LinkName("QTreeWidget_new")]
	public static extern void* QTreeWidget_new(QWidget parent);
	[LinkName("QTreeWidget_new2")]
	public static extern void* QTreeWidget_new2();
	[LinkName("QTreeWidget_MetaObject")]
	public static extern QMetaObject QTreeWidget_MetaObject(void* c_this);
	[LinkName("QTreeWidget_Metacast")]
	public static extern void QTreeWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QTreeWidget_Metacall")]
	public static extern int32 QTreeWidget_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTreeWidget_Tr")]
	public static extern char8[] QTreeWidget_Tr(char8[] s);
	[LinkName("QTreeWidget_ColumnCount")]
	public static extern int32 QTreeWidget_ColumnCount(void* c_this);
	[LinkName("QTreeWidget_SetColumnCount")]
	public static extern void QTreeWidget_SetColumnCount(void* c_this, int32 columns);
	[LinkName("QTreeWidget_InvisibleRootItem")]
	public static extern QTreeWidgetItem QTreeWidget_InvisibleRootItem(void* c_this);
	[LinkName("QTreeWidget_TopLevelItem")]
	public static extern QTreeWidgetItem QTreeWidget_TopLevelItem(void* c_this, int32 index);
	[LinkName("QTreeWidget_TopLevelItemCount")]
	public static extern int32 QTreeWidget_TopLevelItemCount(void* c_this);
	[LinkName("QTreeWidget_InsertTopLevelItem")]
	public static extern void QTreeWidget_InsertTopLevelItem(void* c_this, int32 index, QTreeWidgetItem item);
	[LinkName("QTreeWidget_AddTopLevelItem")]
	public static extern void QTreeWidget_AddTopLevelItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_TakeTopLevelItem")]
	public static extern QTreeWidgetItem QTreeWidget_TakeTopLevelItem(void* c_this, int32 index);
	[LinkName("QTreeWidget_IndexOfTopLevelItem")]
	public static extern int32 QTreeWidget_IndexOfTopLevelItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_InsertTopLevelItems")]
	public static extern void QTreeWidget_InsertTopLevelItems(void* c_this, int32 index, QTreeWidgetItem[] items);
	[LinkName("QTreeWidget_AddTopLevelItems")]
	public static extern void QTreeWidget_AddTopLevelItems(void* c_this, QTreeWidgetItem[] items);
	[LinkName("QTreeWidget_HeaderItem")]
	public static extern QTreeWidgetItem QTreeWidget_HeaderItem(void* c_this);
	[LinkName("QTreeWidget_SetHeaderItem")]
	public static extern void QTreeWidget_SetHeaderItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_SetHeaderLabels")]
	public static extern void QTreeWidget_SetHeaderLabels(void* c_this, char8[][] labels);
	[LinkName("QTreeWidget_SetHeaderLabel")]
	public static extern void QTreeWidget_SetHeaderLabel(void* c_this, char8[] label);
	[LinkName("QTreeWidget_CurrentItem")]
	public static extern QTreeWidgetItem QTreeWidget_CurrentItem(void* c_this);
	[LinkName("QTreeWidget_CurrentColumn")]
	public static extern int32 QTreeWidget_CurrentColumn(void* c_this);
	[LinkName("QTreeWidget_SetCurrentItem")]
	public static extern void QTreeWidget_SetCurrentItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_SetCurrentItem2")]
	public static extern void QTreeWidget_SetCurrentItem2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_SetCurrentItem3")]
	public static extern void QTreeWidget_SetCurrentItem3(void* c_this, QTreeWidgetItem item, int32 column, int64 command);
	[LinkName("QTreeWidget_ItemAt")]
	public static extern QTreeWidgetItem QTreeWidget_ItemAt(void* c_this, QPoint p);
	[LinkName("QTreeWidget_ItemAt2")]
	public static extern QTreeWidgetItem QTreeWidget_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QTreeWidget_VisualItemRect")]
	public static extern QRect QTreeWidget_VisualItemRect(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_SortColumn")]
	public static extern int32 QTreeWidget_SortColumn(void* c_this);
	[LinkName("QTreeWidget_SortItems")]
	public static extern void QTreeWidget_SortItems(void* c_this, int32 column, int64 order);
	[LinkName("QTreeWidget_EditItem")]
	public static extern void QTreeWidget_EditItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_OpenPersistentEditor")]
	public static extern void QTreeWidget_OpenPersistentEditor(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ClosePersistentEditor")]
	public static extern void QTreeWidget_ClosePersistentEditor(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_IsPersistentEditorOpen")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ItemWidget")]
	public static extern QWidget QTreeWidget_ItemWidget(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_SetItemWidget")]
	public static extern void QTreeWidget_SetItemWidget(void* c_this, QTreeWidgetItem item, int32 column, QWidget widget);
	[LinkName("QTreeWidget_RemoveItemWidget")]
	public static extern void QTreeWidget_RemoveItemWidget(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_SelectedItems")]
	public static extern QTreeWidgetItem[] QTreeWidget_SelectedItems(void* c_this);
	[LinkName("QTreeWidget_FindItems")]
	public static extern QTreeWidgetItem[] QTreeWidget_FindItems(void* c_this, char8[] text, int64 flags);
	[LinkName("QTreeWidget_ItemAbove")]
	public static extern QTreeWidgetItem QTreeWidget_ItemAbove(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ItemBelow")]
	public static extern QTreeWidgetItem QTreeWidget_ItemBelow(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_IndexFromItem")]
	public static extern QModelIndex QTreeWidget_IndexFromItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ItemFromIndex")]
	public static extern QTreeWidgetItem QTreeWidget_ItemFromIndex(void* c_this, QModelIndex index);
	[LinkName("QTreeWidget_SetSelectionModel")]
	public static extern void QTreeWidget_SetSelectionModel(void* c_this, QItemSelectionModel selectionModel);
	[LinkName("QTreeWidget_ScrollToItem")]
	public static extern void QTreeWidget_ScrollToItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ExpandItem")]
	public static extern void QTreeWidget_ExpandItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_CollapseItem")]
	public static extern void QTreeWidget_CollapseItem(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_Clear")]
	public static extern void QTreeWidget_Clear(void* c_this);
	[LinkName("QTreeWidget_ItemPressed")]
	public static extern void QTreeWidget_ItemPressed(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemClicked")]
	public static extern void QTreeWidget_ItemClicked(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemDoubleClicked")]
	public static extern void QTreeWidget_ItemDoubleClicked(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemActivated")]
	public static extern void QTreeWidget_ItemActivated(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemEntered")]
	public static extern void QTreeWidget_ItemEntered(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemChanged")]
	public static extern void QTreeWidget_ItemChanged(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ItemExpanded")]
	public static extern void QTreeWidget_ItemExpanded(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_ItemCollapsed")]
	public static extern void QTreeWidget_ItemCollapsed(void* c_this, QTreeWidgetItem item);
	[LinkName("QTreeWidget_CurrentItemChanged")]
	public static extern void QTreeWidget_CurrentItemChanged(void* c_this, QTreeWidgetItem current, QTreeWidgetItem previous);
	[LinkName("QTreeWidget_ItemSelectionChanged")]
	public static extern void QTreeWidget_ItemSelectionChanged(void* c_this);
	[LinkName("QTreeWidget_Event")]
	public static extern bool QTreeWidget_Event(void* c_this, QEvent e);
	[LinkName("QTreeWidget_MimeTypes")]
	public static extern char8[][] QTreeWidget_MimeTypes(void* c_this);
	[LinkName("QTreeWidget_MimeData")]
	public static extern QMimeData QTreeWidget_MimeData(void* c_this, QTreeWidgetItem[] items);
	[LinkName("QTreeWidget_DropMimeData")]
	public static extern bool QTreeWidget_DropMimeData(void* c_this, QTreeWidgetItem parent, int32 index, QMimeData data, int64 action);
	[LinkName("QTreeWidget_SupportedDropActions")]
	public static extern int64 QTreeWidget_SupportedDropActions(void* c_this);
	[LinkName("QTreeWidget_DropEvent")]
	public static extern void QTreeWidget_DropEvent(void* c_this, QDropEvent event);
	[LinkName("QTreeWidget_Tr2")]
	public static extern char8[] QTreeWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTreeWidget_Tr3")]
	public static extern char8[] QTreeWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTreeWidget_EditItem2")]
	public static extern void QTreeWidget_EditItem2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_OpenPersistentEditor2")]
	public static extern void QTreeWidget_OpenPersistentEditor2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ClosePersistentEditor2")]
	public static extern void QTreeWidget_ClosePersistentEditor2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_IsPersistentEditorOpen2")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_FindItems3")]
	public static extern QTreeWidgetItem[] QTreeWidget_FindItems3(void* c_this, char8[] text, int64 flags, int32 column);
	[LinkName("QTreeWidget_IndexFromItem2")]
	public static extern QModelIndex QTreeWidget_IndexFromItem2(void* c_this, QTreeWidgetItem item, int32 column);
	[LinkName("QTreeWidget_ScrollToItem2")]
	public static extern void QTreeWidget_ScrollToItem2(void* c_this, QTreeWidgetItem item, int64 hint);
}