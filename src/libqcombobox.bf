using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QComboBox__InsertPolicy
{
	NoInsert = 0,
	InsertAtTop = 1,
	InsertAtCurrent = 2,
	InsertAtBottom = 3,
	InsertAfterCurrent = 4,
	InsertBeforeCurrent = 5,
	InsertAlphabetically = 6,
}
[AllowDuplicates]
public enum QComboBox__SizeAdjustPolicy
{
	AdjustToContents = 0,
	AdjustToContentsOnFirstShow = 1,
	AdjustToMinimumContentsLengthWithIcon = 2,
}
public struct QComboBox
{
	[LinkName("QComboBox_new")]
	public static extern void* QComboBox_new(QWidget parent);
	[LinkName("QComboBox_new2")]
	public static extern void* QComboBox_new2();
	[LinkName("QComboBox_MetaObject")]
	public static extern QMetaObject QComboBox_MetaObject(void* c_this);
	[LinkName("QComboBox_Metacast")]
	public static extern void QComboBox_Metacast(void* c_this, char8[] param1);
	[LinkName("QComboBox_Metacall")]
	public static extern int32 QComboBox_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QComboBox_Tr")]
	public static extern char8[] QComboBox_Tr(char8[] s);
	[LinkName("QComboBox_MaxVisibleItems")]
	public static extern int32 QComboBox_MaxVisibleItems(void* c_this);
	[LinkName("QComboBox_SetMaxVisibleItems")]
	public static extern void QComboBox_SetMaxVisibleItems(void* c_this, int32 maxItems);
	[LinkName("QComboBox_Count")]
	public static extern int32 QComboBox_Count(void* c_this);
	[LinkName("QComboBox_SetMaxCount")]
	public static extern void QComboBox_SetMaxCount(void* c_this, int32 max);
	[LinkName("QComboBox_MaxCount")]
	public static extern int32 QComboBox_MaxCount(void* c_this);
	[LinkName("QComboBox_DuplicatesEnabled")]
	public static extern bool QComboBox_DuplicatesEnabled(void* c_this);
	[LinkName("QComboBox_SetDuplicatesEnabled")]
	public static extern void QComboBox_SetDuplicatesEnabled(void* c_this, bool enable);
	[LinkName("QComboBox_SetFrame")]
	public static extern void QComboBox_SetFrame(void* c_this, bool frame);
	[LinkName("QComboBox_HasFrame")]
	public static extern bool QComboBox_HasFrame(void* c_this);
	[LinkName("QComboBox_FindText")]
	public static extern int32 QComboBox_FindText(void* c_this, char8[] text);
	[LinkName("QComboBox_FindData")]
	public static extern int32 QComboBox_FindData(void* c_this, QVariant data);
	[LinkName("QComboBox_InsertPolicy")]
	public static extern int64 QComboBox_InsertPolicy(void* c_this);
	[LinkName("QComboBox_SetInsertPolicy")]
	public static extern void QComboBox_SetInsertPolicy(void* c_this, int64 policy);
	[LinkName("QComboBox_SizeAdjustPolicy")]
	public static extern int64 QComboBox_SizeAdjustPolicy(void* c_this);
	[LinkName("QComboBox_SetSizeAdjustPolicy")]
	public static extern void QComboBox_SetSizeAdjustPolicy(void* c_this, int64 policy);
	[LinkName("QComboBox_MinimumContentsLength")]
	public static extern int32 QComboBox_MinimumContentsLength(void* c_this);
	[LinkName("QComboBox_SetMinimumContentsLength")]
	public static extern void QComboBox_SetMinimumContentsLength(void* c_this, int32 characters);
	[LinkName("QComboBox_IconSize")]
	public static extern QSize QComboBox_IconSize(void* c_this);
	[LinkName("QComboBox_SetIconSize")]
	public static extern void QComboBox_SetIconSize(void* c_this, QSize size);
	[LinkName("QComboBox_SetPlaceholderText")]
	public static extern void QComboBox_SetPlaceholderText(void* c_this, char8[] placeholderText);
	[LinkName("QComboBox_PlaceholderText")]
	public static extern char8[] QComboBox_PlaceholderText(void* c_this);
	[LinkName("QComboBox_IsEditable")]
	public static extern bool QComboBox_IsEditable(void* c_this);
	[LinkName("QComboBox_SetEditable")]
	public static extern void QComboBox_SetEditable(void* c_this, bool editable);
	[LinkName("QComboBox_SetLineEdit")]
	public static extern void QComboBox_SetLineEdit(void* c_this, QLineEdit edit);
	[LinkName("QComboBox_LineEdit")]
	public static extern QLineEdit QComboBox_LineEdit(void* c_this);
	[LinkName("QComboBox_SetValidator")]
	public static extern void QComboBox_SetValidator(void* c_this, QValidator v);
	[LinkName("QComboBox_Validator")]
	public static extern QValidator QComboBox_Validator(void* c_this);
	[LinkName("QComboBox_SetCompleter")]
	public static extern void QComboBox_SetCompleter(void* c_this, QCompleter c);
	[LinkName("QComboBox_Completer")]
	public static extern QCompleter QComboBox_Completer(void* c_this);
	[LinkName("QComboBox_ItemDelegate")]
	public static extern QAbstractItemDelegate QComboBox_ItemDelegate(void* c_this);
	[LinkName("QComboBox_SetItemDelegate")]
	public static extern void QComboBox_SetItemDelegate(void* c_this, QAbstractItemDelegate _delegate);
	[LinkName("QComboBox_Model")]
	public static extern QAbstractItemModel QComboBox_Model(void* c_this);
	[LinkName("QComboBox_SetModel")]
	public static extern void QComboBox_SetModel(void* c_this, QAbstractItemModel model);
	[LinkName("QComboBox_RootModelIndex")]
	public static extern QModelIndex QComboBox_RootModelIndex(void* c_this);
	[LinkName("QComboBox_SetRootModelIndex")]
	public static extern void QComboBox_SetRootModelIndex(void* c_this, QModelIndex index);
	[LinkName("QComboBox_ModelColumn")]
	public static extern int32 QComboBox_ModelColumn(void* c_this);
	[LinkName("QComboBox_SetModelColumn")]
	public static extern void QComboBox_SetModelColumn(void* c_this, int32 visibleColumn);
	[LinkName("QComboBox_CurrentIndex")]
	public static extern int32 QComboBox_CurrentIndex(void* c_this);
	[LinkName("QComboBox_CurrentText")]
	public static extern char8[] QComboBox_CurrentText(void* c_this);
	[LinkName("QComboBox_CurrentData")]
	public static extern QVariant QComboBox_CurrentData(void* c_this);
	[LinkName("QComboBox_ItemText")]
	public static extern char8[] QComboBox_ItemText(void* c_this, int32 index);
	[LinkName("QComboBox_ItemIcon")]
	public static extern QIcon QComboBox_ItemIcon(void* c_this, int32 index);
	[LinkName("QComboBox_ItemData")]
	public static extern QVariant QComboBox_ItemData(void* c_this, int32 index);
	[LinkName("QComboBox_AddItem")]
	public static extern void QComboBox_AddItem(void* c_this, char8[] text);
	[LinkName("QComboBox_AddItem2")]
	public static extern void QComboBox_AddItem2(void* c_this, QIcon icon, char8[] text);
	[LinkName("QComboBox_AddItems")]
	public static extern void QComboBox_AddItems(void* c_this, char8[][] texts);
	[LinkName("QComboBox_InsertItem")]
	public static extern void QComboBox_InsertItem(void* c_this, int32 index, char8[] text);
	[LinkName("QComboBox_InsertItem2")]
	public static extern void QComboBox_InsertItem2(void* c_this, int32 index, QIcon icon, char8[] text);
	[LinkName("QComboBox_InsertItems")]
	public static extern void QComboBox_InsertItems(void* c_this, int32 index, char8[][] texts);
	[LinkName("QComboBox_InsertSeparator")]
	public static extern void QComboBox_InsertSeparator(void* c_this, int32 index);
	[LinkName("QComboBox_RemoveItem")]
	public static extern void QComboBox_RemoveItem(void* c_this, int32 index);
	[LinkName("QComboBox_SetItemText")]
	public static extern void QComboBox_SetItemText(void* c_this, int32 index, char8[] text);
	[LinkName("QComboBox_SetItemIcon")]
	public static extern void QComboBox_SetItemIcon(void* c_this, int32 index, QIcon icon);
	[LinkName("QComboBox_SetItemData")]
	public static extern void QComboBox_SetItemData(void* c_this, int32 index, QVariant value);
	[LinkName("QComboBox_View")]
	public static extern QAbstractItemView QComboBox_View(void* c_this);
	[LinkName("QComboBox_SetView")]
	public static extern void QComboBox_SetView(void* c_this, QAbstractItemView itemView);
	[LinkName("QComboBox_SizeHint")]
	public static extern QSize QComboBox_SizeHint(void* c_this);
	[LinkName("QComboBox_MinimumSizeHint")]
	public static extern QSize QComboBox_MinimumSizeHint(void* c_this);
	[LinkName("QComboBox_ShowPopup")]
	public static extern void QComboBox_ShowPopup(void* c_this);
	[LinkName("QComboBox_HidePopup")]
	public static extern void QComboBox_HidePopup(void* c_this);
	[LinkName("QComboBox_Event")]
	public static extern bool QComboBox_Event(void* c_this, QEvent event);
	[LinkName("QComboBox_InputMethodQuery")]
	public static extern QVariant QComboBox_InputMethodQuery(void* c_this, int64 param1);
	[LinkName("QComboBox_InputMethodQuery2")]
	public static extern QVariant QComboBox_InputMethodQuery2(void* c_this, int64 query, QVariant argument);
	[LinkName("QComboBox_Clear")]
	public static extern void QComboBox_Clear(void* c_this);
	[LinkName("QComboBox_ClearEditText")]
	public static extern void QComboBox_ClearEditText(void* c_this);
	[LinkName("QComboBox_SetEditText")]
	public static extern void QComboBox_SetEditText(void* c_this, char8[] text);
	[LinkName("QComboBox_SetCurrentIndex")]
	public static extern void QComboBox_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QComboBox_SetCurrentText")]
	public static extern void QComboBox_SetCurrentText(void* c_this, char8[] text);
	[LinkName("QComboBox_EditTextChanged")]
	public static extern void QComboBox_EditTextChanged(void* c_this, char8[] param1);
	[LinkName("QComboBox_Activated")]
	public static extern void QComboBox_Activated(void* c_this, int32 index);
	[LinkName("QComboBox_TextActivated")]
	public static extern void QComboBox_TextActivated(void* c_this, char8[] param1);
	[LinkName("QComboBox_Highlighted")]
	public static extern void QComboBox_Highlighted(void* c_this, int32 index);
	[LinkName("QComboBox_TextHighlighted")]
	public static extern void QComboBox_TextHighlighted(void* c_this, char8[] param1);
	[LinkName("QComboBox_CurrentIndexChanged")]
	public static extern void QComboBox_CurrentIndexChanged(void* c_this, int32 index);
	[LinkName("QComboBox_CurrentTextChanged")]
	public static extern void QComboBox_CurrentTextChanged(void* c_this, char8[] param1);
	[LinkName("QComboBox_FocusInEvent")]
	public static extern void QComboBox_FocusInEvent(void* c_this, QFocusEvent e);
	[LinkName("QComboBox_FocusOutEvent")]
	public static extern void QComboBox_FocusOutEvent(void* c_this, QFocusEvent e);
	[LinkName("QComboBox_ChangeEvent")]
	public static extern void QComboBox_ChangeEvent(void* c_this, QEvent e);
	[LinkName("QComboBox_ResizeEvent")]
	public static extern void QComboBox_ResizeEvent(void* c_this, QResizeEvent e);
	[LinkName("QComboBox_PaintEvent")]
	public static extern void QComboBox_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QComboBox_ShowEvent")]
	public static extern void QComboBox_ShowEvent(void* c_this, QShowEvent e);
	[LinkName("QComboBox_HideEvent")]
	public static extern void QComboBox_HideEvent(void* c_this, QHideEvent e);
	[LinkName("QComboBox_MousePressEvent")]
	public static extern void QComboBox_MousePressEvent(void* c_this, QMouseEvent e);
	[LinkName("QComboBox_MouseReleaseEvent")]
	public static extern void QComboBox_MouseReleaseEvent(void* c_this, QMouseEvent e);
	[LinkName("QComboBox_KeyPressEvent")]
	public static extern void QComboBox_KeyPressEvent(void* c_this, QKeyEvent e);
	[LinkName("QComboBox_KeyReleaseEvent")]
	public static extern void QComboBox_KeyReleaseEvent(void* c_this, QKeyEvent e);
	[LinkName("QComboBox_WheelEvent")]
	public static extern void QComboBox_WheelEvent(void* c_this, QWheelEvent e);
	[LinkName("QComboBox_ContextMenuEvent")]
	public static extern void QComboBox_ContextMenuEvent(void* c_this, QContextMenuEvent e);
	[LinkName("QComboBox_InputMethodEvent")]
	public static extern void QComboBox_InputMethodEvent(void* c_this, QInputMethodEvent param1);
	[LinkName("QComboBox_InitStyleOption")]
	public static extern void QComboBox_InitStyleOption(void* c_this, QStyleOptionComboBox option);
	[LinkName("QComboBox_Tr2")]
	public static extern char8[] QComboBox_Tr2(char8[] s, char8[] c);
	[LinkName("QComboBox_Tr3")]
	public static extern char8[] QComboBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QComboBox_FindText2")]
	public static extern int32 QComboBox_FindText2(void* c_this, char8[] text, int64 flags);
	[LinkName("QComboBox_FindData2")]
	public static extern int32 QComboBox_FindData2(void* c_this, QVariant data, int32 role);
	[LinkName("QComboBox_FindData3")]
	public static extern int32 QComboBox_FindData3(void* c_this, QVariant data, int32 role, int64 flags);
	[LinkName("QComboBox_CurrentData1")]
	public static extern QVariant QComboBox_CurrentData1(void* c_this, int32 role);
	[LinkName("QComboBox_ItemData2")]
	public static extern QVariant QComboBox_ItemData2(void* c_this, int32 index, int32 role);
	[LinkName("QComboBox_AddItem22")]
	public static extern void QComboBox_AddItem22(void* c_this, char8[] text, QVariant userData);
	[LinkName("QComboBox_AddItem3")]
	public static extern void QComboBox_AddItem3(void* c_this, QIcon icon, char8[] text, QVariant userData);
	[LinkName("QComboBox_InsertItem3")]
	public static extern void QComboBox_InsertItem3(void* c_this, int32 index, char8[] text, QVariant userData);
	[LinkName("QComboBox_InsertItem4")]
	public static extern void QComboBox_InsertItem4(void* c_this, int32 index, QIcon icon, char8[] text, QVariant userData);
	[LinkName("QComboBox_SetItemData3")]
	public static extern void QComboBox_SetItemData3(void* c_this, int32 index, QVariant value, int32 role);
}