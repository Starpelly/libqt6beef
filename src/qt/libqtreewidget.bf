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
	public static extern QTreeWidgetItem* QTreeWidgetItem_new();
	[LinkName("QTreeWidgetItem_new2")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new2(libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new3")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new3(QTreeWidget* treeview);
	[LinkName("QTreeWidgetItem_new4")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new4(QTreeWidget* treeview, libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new5")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new5(QTreeWidget* treeview, QTreeWidgetItem* after);
	[LinkName("QTreeWidgetItem_new6")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new6(QTreeWidgetItem* parent);
	[LinkName("QTreeWidgetItem_new7")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new7(QTreeWidgetItem* parent, libqt_string[] strings);
	[LinkName("QTreeWidgetItem_new8")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new8(QTreeWidgetItem* parent, QTreeWidgetItem* after);
	[LinkName("QTreeWidgetItem_new9")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new9(QTreeWidgetItem* other);
	[LinkName("QTreeWidgetItem_new10")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new10(int32 typeVal);
	[LinkName("QTreeWidgetItem_new11")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new11(libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new12")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new12(QTreeWidget* treeview, int32 typeVal);
	[LinkName("QTreeWidgetItem_new13")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new13(QTreeWidget* treeview, libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new14")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new14(QTreeWidget* treeview, QTreeWidgetItem* after, int32 typeVal);
	[LinkName("QTreeWidgetItem_new15")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new15(QTreeWidgetItem* parent, int32 typeVal);
	[LinkName("QTreeWidgetItem_new16")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new16(QTreeWidgetItem* parent, libqt_string[] strings, int32 typeVal);
	[LinkName("QTreeWidgetItem_new17")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_new17(QTreeWidgetItem* parent, QTreeWidgetItem* after, int32 typeVal);
	[LinkName("QTreeWidgetItem_Clone")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_Clone(Self* c_this);
	[LinkName("QTreeWidgetItem_TreeWidget")]
	public static extern QTreeWidget* QTreeWidgetItem_TreeWidget(Self* c_this);
	[LinkName("QTreeWidgetItem_SetSelected")]
	public static extern void QTreeWidgetItem_SetSelected(Self* c_this, bool selectVal);
	[LinkName("QTreeWidgetItem_IsSelected")]
	public static extern bool QTreeWidgetItem_IsSelected(Self* c_this);
	[LinkName("QTreeWidgetItem_SetHidden")]
	public static extern void QTreeWidgetItem_SetHidden(Self* c_this, bool hide);
	[LinkName("QTreeWidgetItem_IsHidden")]
	public static extern bool QTreeWidgetItem_IsHidden(Self* c_this);
	[LinkName("QTreeWidgetItem_SetExpanded")]
	public static extern void QTreeWidgetItem_SetExpanded(Self* c_this, bool expand);
	[LinkName("QTreeWidgetItem_IsExpanded")]
	public static extern bool QTreeWidgetItem_IsExpanded(Self* c_this);
	[LinkName("QTreeWidgetItem_SetFirstColumnSpanned")]
	public static extern void QTreeWidgetItem_SetFirstColumnSpanned(Self* c_this, bool span);
	[LinkName("QTreeWidgetItem_IsFirstColumnSpanned")]
	public static extern bool QTreeWidgetItem_IsFirstColumnSpanned(Self* c_this);
	[LinkName("QTreeWidgetItem_SetDisabled")]
	public static extern void QTreeWidgetItem_SetDisabled(Self* c_this, bool disabled);
	[LinkName("QTreeWidgetItem_IsDisabled")]
	public static extern bool QTreeWidgetItem_IsDisabled(Self* c_this);
	[LinkName("QTreeWidgetItem_SetChildIndicatorPolicy")]
	public static extern void QTreeWidgetItem_SetChildIndicatorPolicy(Self* c_this, int64 policy);
	[LinkName("QTreeWidgetItem_ChildIndicatorPolicy")]
	public static extern int64 QTreeWidgetItem_ChildIndicatorPolicy(Self* c_this);
	[LinkName("QTreeWidgetItem_Flags")]
	public static extern int64 QTreeWidgetItem_Flags(Self* c_this);
	[LinkName("QTreeWidgetItem_SetFlags")]
	public static extern void QTreeWidgetItem_SetFlags(Self* c_this, int64 flags);
	[LinkName("QTreeWidgetItem_Text")]
	public static extern libqt_string QTreeWidgetItem_Text(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetText")]
	public static extern void QTreeWidgetItem_SetText(Self* c_this, int32 column, libqt_string text);
	[LinkName("QTreeWidgetItem_Icon")]
	public static extern QIcon QTreeWidgetItem_Icon(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetIcon")]
	public static extern void QTreeWidgetItem_SetIcon(Self* c_this, int32 column, QIcon* icon);
	[LinkName("QTreeWidgetItem_StatusTip")]
	public static extern libqt_string QTreeWidgetItem_StatusTip(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetStatusTip")]
	public static extern void QTreeWidgetItem_SetStatusTip(Self* c_this, int32 column, libqt_string statusTip);
	[LinkName("QTreeWidgetItem_ToolTip")]
	public static extern libqt_string QTreeWidgetItem_ToolTip(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetToolTip")]
	public static extern void QTreeWidgetItem_SetToolTip(Self* c_this, int32 column, libqt_string toolTip);
	[LinkName("QTreeWidgetItem_WhatsThis")]
	public static extern libqt_string QTreeWidgetItem_WhatsThis(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetWhatsThis")]
	public static extern void QTreeWidgetItem_SetWhatsThis(Self* c_this, int32 column, libqt_string whatsThis);
	[LinkName("QTreeWidgetItem_Font")]
	public static extern QFont QTreeWidgetItem_Font(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetFont")]
	public static extern void QTreeWidgetItem_SetFont(Self* c_this, int32 column, QFont* font);
	[LinkName("QTreeWidgetItem_TextAlignment")]
	public static extern int32 QTreeWidgetItem_TextAlignment(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetTextAlignment")]
	public static extern void QTreeWidgetItem_SetTextAlignment(Self* c_this, int32 column, int32 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment2")]
	public static extern void QTreeWidgetItem_SetTextAlignment2(Self* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_SetTextAlignment3")]
	public static extern void QTreeWidgetItem_SetTextAlignment3(Self* c_this, int32 column, int64 alignment);
	[LinkName("QTreeWidgetItem_Background")]
	public static extern QBrush QTreeWidgetItem_Background(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetBackground")]
	public static extern void QTreeWidgetItem_SetBackground(Self* c_this, int32 column, QBrush* brush);
	[LinkName("QTreeWidgetItem_Foreground")]
	public static extern QBrush QTreeWidgetItem_Foreground(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetForeground")]
	public static extern void QTreeWidgetItem_SetForeground(Self* c_this, int32 column, QBrush* brush);
	[LinkName("QTreeWidgetItem_CheckState")]
	public static extern int64 QTreeWidgetItem_CheckState(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetCheckState")]
	public static extern void QTreeWidgetItem_SetCheckState(Self* c_this, int32 column, int64 state);
	[LinkName("QTreeWidgetItem_SizeHint")]
	public static extern QSize QTreeWidgetItem_SizeHint(Self* c_this, int32 column);
	[LinkName("QTreeWidgetItem_SetSizeHint")]
	public static extern void QTreeWidgetItem_SetSizeHint(Self* c_this, int32 column, QSize* size);
	[LinkName("QTreeWidgetItem_Data")]
	public static extern QVariant QTreeWidgetItem_Data(Self* c_this, int32 column, int32 role);
	[LinkName("QTreeWidgetItem_SetData")]
	public static extern void QTreeWidgetItem_SetData(Self* c_this, int32 column, int32 role, QVariant* value);
	[LinkName("QTreeWidgetItem_OperatorLesser")]
	public static extern bool QTreeWidgetItem_OperatorLesser(Self* c_this, QTreeWidgetItem* other);
	[LinkName("QTreeWidgetItem_Read")]
	public static extern void QTreeWidgetItem_Read(Self* c_this, QDataStream* _in);
	[LinkName("QTreeWidgetItem_Write")]
	public static extern void QTreeWidgetItem_Write(Self* c_this, QDataStream* _out);
	[LinkName("QTreeWidgetItem_OperatorAssign")]
	public static extern void QTreeWidgetItem_OperatorAssign(Self* c_this, QTreeWidgetItem* other);
	[LinkName("QTreeWidgetItem_Parent")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_Parent(Self* c_this);
	[LinkName("QTreeWidgetItem_Child")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_Child(Self* c_this, int32 index);
	[LinkName("QTreeWidgetItem_ChildCount")]
	public static extern int32 QTreeWidgetItem_ChildCount(Self* c_this);
	[LinkName("QTreeWidgetItem_ColumnCount")]
	public static extern int32 QTreeWidgetItem_ColumnCount(Self* c_this);
	[LinkName("QTreeWidgetItem_IndexOfChild")]
	public static extern int32 QTreeWidgetItem_IndexOfChild(Self* c_this, QTreeWidgetItem* child);
	[LinkName("QTreeWidgetItem_AddChild")]
	public static extern void QTreeWidgetItem_AddChild(Self* c_this, QTreeWidgetItem* child);
	[LinkName("QTreeWidgetItem_InsertChild")]
	public static extern void QTreeWidgetItem_InsertChild(Self* c_this, int32 index, QTreeWidgetItem* child);
	[LinkName("QTreeWidgetItem_RemoveChild")]
	public static extern void QTreeWidgetItem_RemoveChild(Self* c_this, QTreeWidgetItem* child);
	[LinkName("QTreeWidgetItem_TakeChild")]
	public static extern QTreeWidgetItem* QTreeWidgetItem_TakeChild(Self* c_this, int32 index);
	[LinkName("QTreeWidgetItem_AddChildren")]
	public static extern void QTreeWidgetItem_AddChildren(Self* c_this, QTreeWidgetItem*[] children);
	[LinkName("QTreeWidgetItem_InsertChildren")]
	public static extern void QTreeWidgetItem_InsertChildren(Self* c_this, int32 index, QTreeWidgetItem*[] children);
	[LinkName("QTreeWidgetItem_TakeChildren")]
	public static extern QTreeWidgetItem*[] QTreeWidgetItem_TakeChildren(Self* c_this);
	[LinkName("QTreeWidgetItem_Type")]
	public static extern int32 QTreeWidgetItem_Type(Self* c_this);
	[LinkName("QTreeWidgetItem_SortChildren")]
	public static extern void QTreeWidgetItem_SortChildren(Self* c_this, int32 column, int64 order);
	[LinkName("QTreeWidgetItem_EmitDataChanged")]
	public static extern void QTreeWidgetItem_EmitDataChanged(Self* c_this);
}
public struct QTreeWidget : QTreeView
{
	[LinkName("QTreeWidget_new")]
	public static extern QTreeWidget* QTreeWidget_new(QWidget* parent);
	[LinkName("QTreeWidget_new2")]
	public static extern QTreeWidget* QTreeWidget_new2();
	[LinkName("QTreeWidget_MetaObject")]
	public static extern QMetaObject* QTreeWidget_MetaObject(Self* c_this);
	[LinkName("QTreeWidget_Metacast")]
	public static extern void* QTreeWidget_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTreeWidget_Metacall")]
	public static extern int32 QTreeWidget_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTreeWidget_Tr")]
	public static extern libqt_string QTreeWidget_Tr(char8[] s);
	[LinkName("QTreeWidget_ColumnCount")]
	public static extern int32 QTreeWidget_ColumnCount(Self* c_this);
	[LinkName("QTreeWidget_SetColumnCount")]
	public static extern void QTreeWidget_SetColumnCount(Self* c_this, int32 columns);
	[LinkName("QTreeWidget_InvisibleRootItem")]
	public static extern QTreeWidgetItem* QTreeWidget_InvisibleRootItem(Self* c_this);
	[LinkName("QTreeWidget_TopLevelItem")]
	public static extern QTreeWidgetItem* QTreeWidget_TopLevelItem(Self* c_this, int32 index);
	[LinkName("QTreeWidget_TopLevelItemCount")]
	public static extern int32 QTreeWidget_TopLevelItemCount(Self* c_this);
	[LinkName("QTreeWidget_InsertTopLevelItem")]
	public static extern void QTreeWidget_InsertTopLevelItem(Self* c_this, int32 index, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_AddTopLevelItem")]
	public static extern void QTreeWidget_AddTopLevelItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_TakeTopLevelItem")]
	public static extern QTreeWidgetItem* QTreeWidget_TakeTopLevelItem(Self* c_this, int32 index);
	[LinkName("QTreeWidget_IndexOfTopLevelItem")]
	public static extern int32 QTreeWidget_IndexOfTopLevelItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_InsertTopLevelItems")]
	public static extern void QTreeWidget_InsertTopLevelItems(Self* c_this, int32 index, QTreeWidgetItem*[] items);
	[LinkName("QTreeWidget_AddTopLevelItems")]
	public static extern void QTreeWidget_AddTopLevelItems(Self* c_this, QTreeWidgetItem*[] items);
	[LinkName("QTreeWidget_HeaderItem")]
	public static extern QTreeWidgetItem* QTreeWidget_HeaderItem(Self* c_this);
	[LinkName("QTreeWidget_SetHeaderItem")]
	public static extern void QTreeWidget_SetHeaderItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_SetHeaderLabels")]
	public static extern void QTreeWidget_SetHeaderLabels(Self* c_this, libqt_string[] labels);
	[LinkName("QTreeWidget_SetHeaderLabel")]
	public static extern void QTreeWidget_SetHeaderLabel(Self* c_this, libqt_string label);
	[LinkName("QTreeWidget_CurrentItem")]
	public static extern QTreeWidgetItem* QTreeWidget_CurrentItem(Self* c_this);
	[LinkName("QTreeWidget_CurrentColumn")]
	public static extern int32 QTreeWidget_CurrentColumn(Self* c_this);
	[LinkName("QTreeWidget_SetCurrentItem")]
	public static extern void QTreeWidget_SetCurrentItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_SetCurrentItem2")]
	public static extern void QTreeWidget_SetCurrentItem2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_SetCurrentItem3")]
	public static extern void QTreeWidget_SetCurrentItem3(Self* c_this, QTreeWidgetItem* item, int32 column, int64 command);
	[LinkName("QTreeWidget_ItemAt")]
	public static extern QTreeWidgetItem* QTreeWidget_ItemAt(Self* c_this, QPoint* p);
	[LinkName("QTreeWidget_ItemAt2")]
	public static extern QTreeWidgetItem* QTreeWidget_ItemAt2(Self* c_this, int32 x, int32 y);
	[LinkName("QTreeWidget_VisualItemRect")]
	public static extern QRect QTreeWidget_VisualItemRect(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_SortColumn")]
	public static extern int32 QTreeWidget_SortColumn(Self* c_this);
	[LinkName("QTreeWidget_SortItems")]
	public static extern void QTreeWidget_SortItems(Self* c_this, int32 column, int64 order);
	[LinkName("QTreeWidget_EditItem")]
	public static extern void QTreeWidget_EditItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_OpenPersistentEditor")]
	public static extern void QTreeWidget_OpenPersistentEditor(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ClosePersistentEditor")]
	public static extern void QTreeWidget_ClosePersistentEditor(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_IsPersistentEditorOpen")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ItemWidget")]
	public static extern QWidget* QTreeWidget_ItemWidget(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_SetItemWidget")]
	public static extern void QTreeWidget_SetItemWidget(Self* c_this, QTreeWidgetItem* item, int32 column, QWidget* widget);
	[LinkName("QTreeWidget_RemoveItemWidget")]
	public static extern void QTreeWidget_RemoveItemWidget(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_SelectedItems")]
	public static extern QTreeWidgetItem*[] QTreeWidget_SelectedItems(Self* c_this);
	[LinkName("QTreeWidget_FindItems")]
	public static extern QTreeWidgetItem*[] QTreeWidget_FindItems(Self* c_this, libqt_string text, int64 flags);
	[LinkName("QTreeWidget_ItemAbove")]
	public static extern QTreeWidgetItem* QTreeWidget_ItemAbove(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ItemBelow")]
	public static extern QTreeWidgetItem* QTreeWidget_ItemBelow(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_IndexFromItem")]
	public static extern QModelIndex QTreeWidget_IndexFromItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ItemFromIndex")]
	public static extern QTreeWidgetItem* QTreeWidget_ItemFromIndex(Self* c_this, QModelIndex* index);
	[LinkName("QTreeWidget_SetSelectionModel")]
	public static extern void QTreeWidget_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QTreeWidget_ScrollToItem")]
	public static extern void QTreeWidget_ScrollToItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ExpandItem")]
	public static extern void QTreeWidget_ExpandItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_CollapseItem")]
	public static extern void QTreeWidget_CollapseItem(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_Clear")]
	public static extern void QTreeWidget_Clear(Self* c_this);
	[LinkName("QTreeWidget_ItemPressed")]
	public static extern void QTreeWidget_ItemPressed(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemClicked")]
	public static extern void QTreeWidget_ItemClicked(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemDoubleClicked")]
	public static extern void QTreeWidget_ItemDoubleClicked(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemActivated")]
	public static extern void QTreeWidget_ItemActivated(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemEntered")]
	public static extern void QTreeWidget_ItemEntered(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemChanged")]
	public static extern void QTreeWidget_ItemChanged(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ItemExpanded")]
	public static extern void QTreeWidget_ItemExpanded(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_ItemCollapsed")]
	public static extern void QTreeWidget_ItemCollapsed(Self* c_this, QTreeWidgetItem* item);
	[LinkName("QTreeWidget_CurrentItemChanged")]
	public static extern void QTreeWidget_CurrentItemChanged(Self* c_this, QTreeWidgetItem* current, QTreeWidgetItem* previous);
	[LinkName("QTreeWidget_ItemSelectionChanged")]
	public static extern void QTreeWidget_ItemSelectionChanged(Self* c_this);
	[LinkName("QTreeWidget_Event")]
	public static extern bool QTreeWidget_Event(Self* c_this, QEvent* e);
	[LinkName("QTreeWidget_MimeTypes")]
	public static extern libqt_string[] QTreeWidget_MimeTypes(Self* c_this);
	[LinkName("QTreeWidget_MimeData")]
	public static extern QMimeData* QTreeWidget_MimeData(Self* c_this, QTreeWidgetItem*[] items);
	[LinkName("QTreeWidget_DropMimeData")]
	public static extern bool QTreeWidget_DropMimeData(Self* c_this, QTreeWidgetItem* parent, int32 index, QMimeData* data, int64 action);
	[LinkName("QTreeWidget_SupportedDropActions")]
	public static extern int64 QTreeWidget_SupportedDropActions(Self* c_this);
	[LinkName("QTreeWidget_DropEvent")]
	public static extern void QTreeWidget_DropEvent(Self* c_this, QDropEvent* event);
	[LinkName("QTreeWidget_Tr2")]
	public static extern libqt_string QTreeWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QTreeWidget_Tr3")]
	public static extern libqt_string QTreeWidget_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTreeWidget_EditItem2")]
	public static extern void QTreeWidget_EditItem2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_OpenPersistentEditor2")]
	public static extern void QTreeWidget_OpenPersistentEditor2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ClosePersistentEditor2")]
	public static extern void QTreeWidget_ClosePersistentEditor2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_IsPersistentEditorOpen2")]
	public static extern bool QTreeWidget_IsPersistentEditorOpen2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_FindItems3")]
	public static extern QTreeWidgetItem*[] QTreeWidget_FindItems3(Self* c_this, libqt_string text, int64 flags, int32 column);
	[LinkName("QTreeWidget_IndexFromItem2")]
	public static extern QModelIndex QTreeWidget_IndexFromItem2(Self* c_this, QTreeWidgetItem* item, int32 column);
	[LinkName("QTreeWidget_ScrollToItem2")]
	public static extern void QTreeWidget_ScrollToItem2(Self* c_this, QTreeWidgetItem* item, int64 hint);
}