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
public struct QComboBox : QWidget
{
	[LinkName("QComboBox_new")]
	public static extern QComboBox* QComboBox_new(QWidget* parent);
	[LinkName("QComboBox_new2")]
	public static extern QComboBox* QComboBox_new2();
	[LinkName("QComboBox_MetaObject")]
	public static extern QMetaObject* QComboBox_MetaObject(Self* c_this);
	[LinkName("QComboBox_Metacast")]
	public static extern void* QComboBox_Metacast(Self* c_this, char8[] param1);
	[LinkName("QComboBox_Metacall")]
	public static extern int32 QComboBox_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QComboBox_Tr")]
	public static extern libqt_string QComboBox_Tr(char8[] s);
	[LinkName("QComboBox_MaxVisibleItems")]
	public static extern int32 QComboBox_MaxVisibleItems(Self* c_this);
	[LinkName("QComboBox_SetMaxVisibleItems")]
	public static extern void QComboBox_SetMaxVisibleItems(Self* c_this, int32 maxItems);
	[LinkName("QComboBox_Count")]
	public static extern int32 QComboBox_Count(Self* c_this);
	[LinkName("QComboBox_SetMaxCount")]
	public static extern void QComboBox_SetMaxCount(Self* c_this, int32 max);
	[LinkName("QComboBox_MaxCount")]
	public static extern int32 QComboBox_MaxCount(Self* c_this);
	[LinkName("QComboBox_DuplicatesEnabled")]
	public static extern bool QComboBox_DuplicatesEnabled(Self* c_this);
	[LinkName("QComboBox_SetDuplicatesEnabled")]
	public static extern void QComboBox_SetDuplicatesEnabled(Self* c_this, bool enable);
	[LinkName("QComboBox_SetFrame")]
	public static extern void QComboBox_SetFrame(Self* c_this, bool frame);
	[LinkName("QComboBox_HasFrame")]
	public static extern bool QComboBox_HasFrame(Self* c_this);
	[LinkName("QComboBox_FindText")]
	public static extern int32 QComboBox_FindText(Self* c_this, libqt_string text);
	[LinkName("QComboBox_FindData")]
	public static extern int32 QComboBox_FindData(Self* c_this, QVariant* data);
	[LinkName("QComboBox_InsertPolicy")]
	public static extern int64 QComboBox_InsertPolicy(Self* c_this);
	[LinkName("QComboBox_SetInsertPolicy")]
	public static extern void QComboBox_SetInsertPolicy(Self* c_this, int64 policy);
	[LinkName("QComboBox_SizeAdjustPolicy")]
	public static extern int64 QComboBox_SizeAdjustPolicy(Self* c_this);
	[LinkName("QComboBox_SetSizeAdjustPolicy")]
	public static extern void QComboBox_SetSizeAdjustPolicy(Self* c_this, int64 policy);
	[LinkName("QComboBox_MinimumContentsLength")]
	public static extern int32 QComboBox_MinimumContentsLength(Self* c_this);
	[LinkName("QComboBox_SetMinimumContentsLength")]
	public static extern void QComboBox_SetMinimumContentsLength(Self* c_this, int32 characters);
	[LinkName("QComboBox_IconSize")]
	public static extern QSize QComboBox_IconSize(Self* c_this);
	[LinkName("QComboBox_SetIconSize")]
	public static extern void QComboBox_SetIconSize(Self* c_this, QSize* size);
	[LinkName("QComboBox_SetPlaceholderText")]
	public static extern void QComboBox_SetPlaceholderText(Self* c_this, libqt_string placeholderText);
	[LinkName("QComboBox_PlaceholderText")]
	public static extern libqt_string QComboBox_PlaceholderText(Self* c_this);
	[LinkName("QComboBox_IsEditable")]
	public static extern bool QComboBox_IsEditable(Self* c_this);
	[LinkName("QComboBox_SetEditable")]
	public static extern void QComboBox_SetEditable(Self* c_this, bool editable);
	[LinkName("QComboBox_SetLineEdit")]
	public static extern void QComboBox_SetLineEdit(Self* c_this, QLineEdit* edit);
	[LinkName("QComboBox_LineEdit")]
	public static extern QLineEdit* QComboBox_LineEdit(Self* c_this);
	[LinkName("QComboBox_SetValidator")]
	public static extern void QComboBox_SetValidator(Self* c_this, QValidator* v);
	[LinkName("QComboBox_Validator")]
	public static extern QValidator* QComboBox_Validator(Self* c_this);
	[LinkName("QComboBox_SetCompleter")]
	public static extern void QComboBox_SetCompleter(Self* c_this, QCompleter* c);
	[LinkName("QComboBox_Completer")]
	public static extern QCompleter* QComboBox_Completer(Self* c_this);
	[LinkName("QComboBox_ItemDelegate")]
	public static extern QAbstractItemDelegate* QComboBox_ItemDelegate(Self* c_this);
	[LinkName("QComboBox_SetItemDelegate")]
	public static extern void QComboBox_SetItemDelegate(Self* c_this, QAbstractItemDelegate* _delegate);
	[LinkName("QComboBox_Model")]
	public static extern QAbstractItemModel* QComboBox_Model(Self* c_this);
	[LinkName("QComboBox_SetModel")]
	public static extern void QComboBox_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QComboBox_RootModelIndex")]
	public static extern QModelIndex QComboBox_RootModelIndex(Self* c_this);
	[LinkName("QComboBox_SetRootModelIndex")]
	public static extern void QComboBox_SetRootModelIndex(Self* c_this, QModelIndex* index);
	[LinkName("QComboBox_ModelColumn")]
	public static extern int32 QComboBox_ModelColumn(Self* c_this);
	[LinkName("QComboBox_SetModelColumn")]
	public static extern void QComboBox_SetModelColumn(Self* c_this, int32 visibleColumn);
	[LinkName("QComboBox_CurrentIndex")]
	public static extern int32 QComboBox_CurrentIndex(Self* c_this);
	[LinkName("QComboBox_CurrentText")]
	public static extern libqt_string QComboBox_CurrentText(Self* c_this);
	[LinkName("QComboBox_CurrentData")]
	public static extern QVariant QComboBox_CurrentData(Self* c_this);
	[LinkName("QComboBox_ItemText")]
	public static extern libqt_string QComboBox_ItemText(Self* c_this, int32 index);
	[LinkName("QComboBox_ItemIcon")]
	public static extern QIcon QComboBox_ItemIcon(Self* c_this, int32 index);
	[LinkName("QComboBox_ItemData")]
	public static extern QVariant QComboBox_ItemData(Self* c_this, int32 index);
	[LinkName("QComboBox_AddItem")]
	public static extern void QComboBox_AddItem(Self* c_this, libqt_string text);
	[LinkName("QComboBox_AddItem2")]
	public static extern void QComboBox_AddItem2(Self* c_this, QIcon* icon, libqt_string text);
	[LinkName("QComboBox_AddItems")]
	public static extern void QComboBox_AddItems(Self* c_this, libqt_string[] texts);
	[LinkName("QComboBox_InsertItem")]
	public static extern void QComboBox_InsertItem(Self* c_this, int32 index, libqt_string text);
	[LinkName("QComboBox_InsertItem2")]
	public static extern void QComboBox_InsertItem2(Self* c_this, int32 index, QIcon* icon, libqt_string text);
	[LinkName("QComboBox_InsertItems")]
	public static extern void QComboBox_InsertItems(Self* c_this, int32 index, libqt_string[] texts);
	[LinkName("QComboBox_InsertSeparator")]
	public static extern void QComboBox_InsertSeparator(Self* c_this, int32 index);
	[LinkName("QComboBox_RemoveItem")]
	public static extern void QComboBox_RemoveItem(Self* c_this, int32 index);
	[LinkName("QComboBox_SetItemText")]
	public static extern void QComboBox_SetItemText(Self* c_this, int32 index, libqt_string text);
	[LinkName("QComboBox_SetItemIcon")]
	public static extern void QComboBox_SetItemIcon(Self* c_this, int32 index, QIcon* icon);
	[LinkName("QComboBox_SetItemData")]
	public static extern void QComboBox_SetItemData(Self* c_this, int32 index, QVariant* value);
	[LinkName("QComboBox_View")]
	public static extern QAbstractItemView* QComboBox_View(Self* c_this);
	[LinkName("QComboBox_SetView")]
	public static extern void QComboBox_SetView(Self* c_this, QAbstractItemView* itemView);
	[LinkName("QComboBox_SizeHint")]
	public static extern QSize QComboBox_SizeHint(Self* c_this);
	[LinkName("QComboBox_MinimumSizeHint")]
	public static extern QSize QComboBox_MinimumSizeHint(Self* c_this);
	[LinkName("QComboBox_ShowPopup")]
	public static extern void QComboBox_ShowPopup(Self* c_this);
	[LinkName("QComboBox_HidePopup")]
	public static extern void QComboBox_HidePopup(Self* c_this);
	[LinkName("QComboBox_Event")]
	public static extern bool QComboBox_Event(Self* c_this, QEvent* event);
	[LinkName("QComboBox_InputMethodQuery")]
	public static extern QVariant QComboBox_InputMethodQuery(Self* c_this, int64 param1);
	[LinkName("QComboBox_InputMethodQuery2")]
	public static extern QVariant QComboBox_InputMethodQuery2(Self* c_this, int64 query, QVariant* argument);
	[LinkName("QComboBox_Clear")]
	public static extern void QComboBox_Clear(Self* c_this);
	[LinkName("QComboBox_ClearEditText")]
	public static extern void QComboBox_ClearEditText(Self* c_this);
	[LinkName("QComboBox_SetEditText")]
	public static extern void QComboBox_SetEditText(Self* c_this, libqt_string text);
	[LinkName("QComboBox_SetCurrentIndex")]
	public static extern void QComboBox_SetCurrentIndex(Self* c_this, int32 index);
	[LinkName("QComboBox_SetCurrentText")]
	public static extern void QComboBox_SetCurrentText(Self* c_this, libqt_string text);
	[LinkName("QComboBox_Connect_EditTextChanged")]
	public static extern void QComboBox_Connect_EditTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_Activated")]
	public static extern void QComboBox_Connect_Activated(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_TextActivated")]
	public static extern void QComboBox_Connect_TextActivated(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_Highlighted")]
	public static extern void QComboBox_Connect_Highlighted(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_TextHighlighted")]
	public static extern void QComboBox_Connect_TextHighlighted(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_CurrentIndexChanged")]
	public static extern void QComboBox_Connect_CurrentIndexChanged(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_Connect_CurrentTextChanged")]
	public static extern void QComboBox_Connect_CurrentTextChanged(Self* c_this, c_intptr slot);
	[LinkName("QComboBox_FocusInEvent")]
	public static extern void QComboBox_FocusInEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QComboBox_FocusOutEvent")]
	public static extern void QComboBox_FocusOutEvent(Self* c_this, QFocusEvent* e);
	[LinkName("QComboBox_ChangeEvent")]
	public static extern void QComboBox_ChangeEvent(Self* c_this, QEvent* e);
	[LinkName("QComboBox_ResizeEvent")]
	public static extern void QComboBox_ResizeEvent(Self* c_this, QResizeEvent* e);
	[LinkName("QComboBox_PaintEvent")]
	public static extern void QComboBox_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QComboBox_ShowEvent")]
	public static extern void QComboBox_ShowEvent(Self* c_this, QShowEvent* e);
	[LinkName("QComboBox_HideEvent")]
	public static extern void QComboBox_HideEvent(Self* c_this, QHideEvent* e);
	[LinkName("QComboBox_MousePressEvent")]
	public static extern void QComboBox_MousePressEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QComboBox_MouseReleaseEvent")]
	public static extern void QComboBox_MouseReleaseEvent(Self* c_this, QMouseEvent* e);
	[LinkName("QComboBox_KeyPressEvent")]
	public static extern void QComboBox_KeyPressEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QComboBox_KeyReleaseEvent")]
	public static extern void QComboBox_KeyReleaseEvent(Self* c_this, QKeyEvent* e);
	[LinkName("QComboBox_WheelEvent")]
	public static extern void QComboBox_WheelEvent(Self* c_this, QWheelEvent* e);
	[LinkName("QComboBox_ContextMenuEvent")]
	public static extern void QComboBox_ContextMenuEvent(Self* c_this, QContextMenuEvent* e);
	[LinkName("QComboBox_InputMethodEvent")]
	public static extern void QComboBox_InputMethodEvent(Self* c_this, QInputMethodEvent* param1);
	[LinkName("QComboBox_InitStyleOption")]
	public static extern void QComboBox_InitStyleOption(Self* c_this, QStyleOptionComboBox* option);
	[LinkName("QComboBox_Tr2")]
	public static extern libqt_string QComboBox_Tr2(char8[] s, char8[] c);
	[LinkName("QComboBox_Tr3")]
	public static extern libqt_string QComboBox_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QComboBox_FindText2")]
	public static extern int32 QComboBox_FindText2(Self* c_this, libqt_string text, int64 flags);
	[LinkName("QComboBox_FindData2")]
	public static extern int32 QComboBox_FindData2(Self* c_this, QVariant* data, int32 role);
	[LinkName("QComboBox_FindData3")]
	public static extern int32 QComboBox_FindData3(Self* c_this, QVariant* data, int32 role, int64 flags);
	[LinkName("QComboBox_CurrentData1")]
	public static extern QVariant QComboBox_CurrentData1(Self* c_this, int32 role);
	[LinkName("QComboBox_ItemData2")]
	public static extern QVariant QComboBox_ItemData2(Self* c_this, int32 index, int32 role);
	[LinkName("QComboBox_AddItem22")]
	public static extern void QComboBox_AddItem22(Self* c_this, libqt_string text, QVariant* userData);
	[LinkName("QComboBox_AddItem3")]
	public static extern void QComboBox_AddItem3(Self* c_this, QIcon* icon, libqt_string text, QVariant* userData);
	[LinkName("QComboBox_InsertItem3")]
	public static extern void QComboBox_InsertItem3(Self* c_this, int32 index, libqt_string text, QVariant* userData);
	[LinkName("QComboBox_InsertItem4")]
	public static extern void QComboBox_InsertItem4(Self* c_this, int32 index, QIcon* icon, libqt_string text, QVariant* userData);
	[LinkName("QComboBox_SetItemData3")]
	public static extern void QComboBox_SetItemData3(Self* c_this, int32 index, QVariant* value, int32 role);
}