using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractItemView__SelectionMode
{
	NoSelection = 0,
	SingleSelection = 1,
	MultiSelection = 2,
	ExtendedSelection = 3,
	ContiguousSelection = 4,
}
[AllowDuplicates]
public enum QAbstractItemView__SelectionBehavior
{
	SelectItems = 0,
	SelectRows = 1,
	SelectColumns = 2,
}
[AllowDuplicates]
public enum QAbstractItemView__ScrollHint
{
	EnsureVisible = 0,
	PositionAtTop = 1,
	PositionAtBottom = 2,
	PositionAtCenter = 3,
}
[AllowDuplicates]
public enum QAbstractItemView__EditTrigger
{
	NoEditTriggers = 0,
	CurrentChanged = 1,
	DoubleClicked = 2,
	SelectedClicked = 4,
	EditKeyPressed = 8,
	AnyKeyPressed = 16,
	AllEditTriggers = 31,
}
[AllowDuplicates]
public enum QAbstractItemView__ScrollMode
{
	ScrollPerItem = 0,
	ScrollPerPixel = 1,
}
[AllowDuplicates]
public enum QAbstractItemView__DragDropMode
{
	NoDragDrop = 0,
	DragOnly = 1,
	DropOnly = 2,
	DragDrop = 3,
	InternalMove = 4,
}
[AllowDuplicates]
public enum QAbstractItemView__CursorAction
{
	MoveUp = 0,
	MoveDown = 1,
	MoveLeft = 2,
	MoveRight = 3,
	MoveHome = 4,
	MoveEnd = 5,
	MovePageUp = 6,
	MovePageDown = 7,
	MoveNext = 8,
	MovePrevious = 9,
}
[AllowDuplicates]
public enum QAbstractItemView__State
{
	NoState = 0,
	DraggingState = 1,
	DragSelectingState = 2,
	EditingState = 3,
	ExpandingState = 4,
	CollapsingState = 5,
	AnimatingState = 6,
}
[AllowDuplicates]
public enum QAbstractItemView__DropIndicatorPosition
{
	OnItem = 0,
	AboveItem = 1,
	BelowItem = 2,
	OnViewport = 3,
}
public struct QAbstractItemView : QAbstractScrollArea
{
	[LinkName("QAbstractItemView_new")]
	public static extern QAbstractItemView* QAbstractItemView_new(QWidget* parent);
	[LinkName("QAbstractItemView_new2")]
	public static extern QAbstractItemView* QAbstractItemView_new2();
	[LinkName("QAbstractItemView_MetaObject")]
	public static extern QMetaObject* QAbstractItemView_MetaObject(Self* c_this);
	[LinkName("QAbstractItemView_Metacast")]
	public static extern void* QAbstractItemView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractItemView_Metacall")]
	public static extern int32 QAbstractItemView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemView_Tr")]
	public static extern libqt_string QAbstractItemView_Tr(char8[] s);
	[LinkName("QAbstractItemView_SetModel")]
	public static extern void QAbstractItemView_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QAbstractItemView_Model")]
	public static extern QAbstractItemModel* QAbstractItemView_Model(Self* c_this);
	[LinkName("QAbstractItemView_SetSelectionModel")]
	public static extern void QAbstractItemView_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QAbstractItemView_SelectionModel")]
	public static extern QItemSelectionModel* QAbstractItemView_SelectionModel(Self* c_this);
	[LinkName("QAbstractItemView_SetItemDelegate")]
	public static extern void QAbstractItemView_SetItemDelegate(Self* c_this, QAbstractItemDelegate* _delegate);
	[LinkName("QAbstractItemView_ItemDelegate")]
	public static extern QAbstractItemDelegate* QAbstractItemView_ItemDelegate(Self* c_this);
	[LinkName("QAbstractItemView_SetSelectionMode")]
	public static extern void QAbstractItemView_SetSelectionMode(Self* c_this, int64 mode);
	[LinkName("QAbstractItemView_SelectionMode")]
	public static extern int64 QAbstractItemView_SelectionMode(Self* c_this);
	[LinkName("QAbstractItemView_SetSelectionBehavior")]
	public static extern void QAbstractItemView_SetSelectionBehavior(Self* c_this, int64 behavior);
	[LinkName("QAbstractItemView_SelectionBehavior")]
	public static extern int64 QAbstractItemView_SelectionBehavior(Self* c_this);
	[LinkName("QAbstractItemView_CurrentIndex")]
	public static extern QModelIndex QAbstractItemView_CurrentIndex(Self* c_this);
	[LinkName("QAbstractItemView_RootIndex")]
	public static extern QModelIndex QAbstractItemView_RootIndex(Self* c_this);
	[LinkName("QAbstractItemView_SetEditTriggers")]
	public static extern void QAbstractItemView_SetEditTriggers(Self* c_this, int64 triggers);
	[LinkName("QAbstractItemView_EditTriggers")]
	public static extern int64 QAbstractItemView_EditTriggers(Self* c_this);
	[LinkName("QAbstractItemView_SetVerticalScrollMode")]
	public static extern void QAbstractItemView_SetVerticalScrollMode(Self* c_this, int64 mode);
	[LinkName("QAbstractItemView_VerticalScrollMode")]
	public static extern int64 QAbstractItemView_VerticalScrollMode(Self* c_this);
	[LinkName("QAbstractItemView_ResetVerticalScrollMode")]
	public static extern void QAbstractItemView_ResetVerticalScrollMode(Self* c_this);
	[LinkName("QAbstractItemView_SetHorizontalScrollMode")]
	public static extern void QAbstractItemView_SetHorizontalScrollMode(Self* c_this, int64 mode);
	[LinkName("QAbstractItemView_HorizontalScrollMode")]
	public static extern int64 QAbstractItemView_HorizontalScrollMode(Self* c_this);
	[LinkName("QAbstractItemView_ResetHorizontalScrollMode")]
	public static extern void QAbstractItemView_ResetHorizontalScrollMode(Self* c_this);
	[LinkName("QAbstractItemView_SetAutoScroll")]
	public static extern void QAbstractItemView_SetAutoScroll(Self* c_this, bool enable);
	[LinkName("QAbstractItemView_HasAutoScroll")]
	public static extern bool QAbstractItemView_HasAutoScroll(Self* c_this);
	[LinkName("QAbstractItemView_SetAutoScrollMargin")]
	public static extern void QAbstractItemView_SetAutoScrollMargin(Self* c_this, int32 margin);
	[LinkName("QAbstractItemView_AutoScrollMargin")]
	public static extern int32 QAbstractItemView_AutoScrollMargin(Self* c_this);
	[LinkName("QAbstractItemView_SetTabKeyNavigation")]
	public static extern void QAbstractItemView_SetTabKeyNavigation(Self* c_this, bool enable);
	[LinkName("QAbstractItemView_TabKeyNavigation")]
	public static extern bool QAbstractItemView_TabKeyNavigation(Self* c_this);
	[LinkName("QAbstractItemView_SetDropIndicatorShown")]
	public static extern void QAbstractItemView_SetDropIndicatorShown(Self* c_this, bool enable);
	[LinkName("QAbstractItemView_ShowDropIndicator")]
	public static extern bool QAbstractItemView_ShowDropIndicator(Self* c_this);
	[LinkName("QAbstractItemView_SetDragEnabled")]
	public static extern void QAbstractItemView_SetDragEnabled(Self* c_this, bool enable);
	[LinkName("QAbstractItemView_DragEnabled")]
	public static extern bool QAbstractItemView_DragEnabled(Self* c_this);
	[LinkName("QAbstractItemView_SetDragDropOverwriteMode")]
	public static extern void QAbstractItemView_SetDragDropOverwriteMode(Self* c_this, bool overwrite);
	[LinkName("QAbstractItemView_DragDropOverwriteMode")]
	public static extern bool QAbstractItemView_DragDropOverwriteMode(Self* c_this);
	[LinkName("QAbstractItemView_SetDragDropMode")]
	public static extern void QAbstractItemView_SetDragDropMode(Self* c_this, int64 behavior);
	[LinkName("QAbstractItemView_DragDropMode")]
	public static extern int64 QAbstractItemView_DragDropMode(Self* c_this);
	[LinkName("QAbstractItemView_SetDefaultDropAction")]
	public static extern void QAbstractItemView_SetDefaultDropAction(Self* c_this, int64 dropAction);
	[LinkName("QAbstractItemView_DefaultDropAction")]
	public static extern int64 QAbstractItemView_DefaultDropAction(Self* c_this);
	[LinkName("QAbstractItemView_SetAlternatingRowColors")]
	public static extern void QAbstractItemView_SetAlternatingRowColors(Self* c_this, bool enable);
	[LinkName("QAbstractItemView_AlternatingRowColors")]
	public static extern bool QAbstractItemView_AlternatingRowColors(Self* c_this);
	[LinkName("QAbstractItemView_SetIconSize")]
	public static extern void QAbstractItemView_SetIconSize(Self* c_this, QSize* size);
	[LinkName("QAbstractItemView_IconSize")]
	public static extern QSize QAbstractItemView_IconSize(Self* c_this);
	[LinkName("QAbstractItemView_SetTextElideMode")]
	public static extern void QAbstractItemView_SetTextElideMode(Self* c_this, int64 mode);
	[LinkName("QAbstractItemView_TextElideMode")]
	public static extern int64 QAbstractItemView_TextElideMode(Self* c_this);
	[LinkName("QAbstractItemView_KeyboardSearch")]
	public static extern void QAbstractItemView_KeyboardSearch(Self* c_this, libqt_string search);
	[LinkName("QAbstractItemView_VisualRect")]
	public static extern QRect QAbstractItemView_VisualRect(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_ScrollTo")]
	public static extern void QAbstractItemView_ScrollTo(Self* c_this, QModelIndex* index, int64 hint);
	[LinkName("QAbstractItemView_IndexAt")]
	public static extern QModelIndex QAbstractItemView_IndexAt(Self* c_this, QPoint* point);
	[LinkName("QAbstractItemView_SizeHintForIndex")]
	public static extern QSize QAbstractItemView_SizeHintForIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_SizeHintForRow")]
	public static extern int32 QAbstractItemView_SizeHintForRow(Self* c_this, int32 row);
	[LinkName("QAbstractItemView_SizeHintForColumn")]
	public static extern int32 QAbstractItemView_SizeHintForColumn(Self* c_this, int32 column);
	[LinkName("QAbstractItemView_OpenPersistentEditor")]
	public static extern void QAbstractItemView_OpenPersistentEditor(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_ClosePersistentEditor")]
	public static extern void QAbstractItemView_ClosePersistentEditor(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_IsPersistentEditorOpen")]
	public static extern bool QAbstractItemView_IsPersistentEditorOpen(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_SetIndexWidget")]
	public static extern void QAbstractItemView_SetIndexWidget(Self* c_this, QModelIndex* index, QWidget* widget);
	[LinkName("QAbstractItemView_IndexWidget")]
	public static extern QWidget* QAbstractItemView_IndexWidget(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_SetItemDelegateForRow")]
	public static extern void QAbstractItemView_SetItemDelegateForRow(Self* c_this, int32 row, QAbstractItemDelegate* _delegate);
	[LinkName("QAbstractItemView_ItemDelegateForRow")]
	public static extern QAbstractItemDelegate* QAbstractItemView_ItemDelegateForRow(Self* c_this, int32 row);
	[LinkName("QAbstractItemView_SetItemDelegateForColumn")]
	public static extern void QAbstractItemView_SetItemDelegateForColumn(Self* c_this, int32 column, QAbstractItemDelegate* _delegate);
	[LinkName("QAbstractItemView_ItemDelegateForColumn")]
	public static extern QAbstractItemDelegate* QAbstractItemView_ItemDelegateForColumn(Self* c_this, int32 column);
	[LinkName("QAbstractItemView_ItemDelegateWithIndex")]
	public static extern QAbstractItemDelegate* QAbstractItemView_ItemDelegateWithIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_ItemDelegateForIndex")]
	public static extern QAbstractItemDelegate* QAbstractItemView_ItemDelegateForIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_InputMethodQuery")]
	public static extern QVariant QAbstractItemView_InputMethodQuery(Self* c_this, int64 query);
	[LinkName("QAbstractItemView_Reset")]
	public static extern void QAbstractItemView_Reset(Self* c_this);
	[LinkName("QAbstractItemView_SetRootIndex")]
	public static extern void QAbstractItemView_SetRootIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_DoItemsLayout")]
	public static extern void QAbstractItemView_DoItemsLayout(Self* c_this);
	[LinkName("QAbstractItemView_SelectAll")]
	public static extern void QAbstractItemView_SelectAll(Self* c_this);
	[LinkName("QAbstractItemView_Edit")]
	public static extern void QAbstractItemView_Edit(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_ClearSelection")]
	public static extern void QAbstractItemView_ClearSelection(Self* c_this);
	[LinkName("QAbstractItemView_SetCurrentIndex")]
	public static extern void QAbstractItemView_SetCurrentIndex(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_ScrollToTop")]
	public static extern void QAbstractItemView_ScrollToTop(Self* c_this);
	[LinkName("QAbstractItemView_ScrollToBottom")]
	public static extern void QAbstractItemView_ScrollToBottom(Self* c_this);
	[LinkName("QAbstractItemView_Update")]
	public static extern void QAbstractItemView_Update(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_DataChanged")]
	public static extern void QAbstractItemView_DataChanged(Self* c_this, QModelIndex* topLeft, QModelIndex* bottomRight, int32[] roles);
	[LinkName("QAbstractItemView_RowsInserted")]
	public static extern void QAbstractItemView_RowsInserted(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QAbstractItemView_RowsAboutToBeRemoved")]
	public static extern void QAbstractItemView_RowsAboutToBeRemoved(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QAbstractItemView_SelectionChanged")]
	public static extern void QAbstractItemView_SelectionChanged(Self* c_this, QItemSelection* selected, QItemSelection* deselected);
	[LinkName("QAbstractItemView_CurrentChanged")]
	public static extern void QAbstractItemView_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QAbstractItemView_UpdateEditorData")]
	public static extern void QAbstractItemView_UpdateEditorData(Self* c_this);
	[LinkName("QAbstractItemView_UpdateEditorGeometries")]
	public static extern void QAbstractItemView_UpdateEditorGeometries(Self* c_this);
	[LinkName("QAbstractItemView_UpdateGeometries")]
	public static extern void QAbstractItemView_UpdateGeometries(Self* c_this);
	[LinkName("QAbstractItemView_VerticalScrollbarAction")]
	public static extern void QAbstractItemView_VerticalScrollbarAction(Self* c_this, int32 action);
	[LinkName("QAbstractItemView_HorizontalScrollbarAction")]
	public static extern void QAbstractItemView_HorizontalScrollbarAction(Self* c_this, int32 action);
	[LinkName("QAbstractItemView_VerticalScrollbarValueChanged")]
	public static extern void QAbstractItemView_VerticalScrollbarValueChanged(Self* c_this, int32 value);
	[LinkName("QAbstractItemView_HorizontalScrollbarValueChanged")]
	public static extern void QAbstractItemView_HorizontalScrollbarValueChanged(Self* c_this, int32 value);
	[LinkName("QAbstractItemView_CloseEditor")]
	public static extern void QAbstractItemView_CloseEditor(Self* c_this, QWidget* editor, int64 hint);
	[LinkName("QAbstractItemView_CommitData")]
	public static extern void QAbstractItemView_CommitData(Self* c_this, QWidget* editor);
	[LinkName("QAbstractItemView_EditorDestroyed")]
	public static extern void QAbstractItemView_EditorDestroyed(Self* c_this, QObject* editor);
	[LinkName("QAbstractItemView_Connect_Pressed")]
	public static extern void QAbstractItemView_Connect_Pressed(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Clicked")]
	public static extern void QAbstractItemView_Connect_Clicked(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_DoubleClicked")]
	public static extern void QAbstractItemView_Connect_DoubleClicked(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Activated")]
	public static extern void QAbstractItemView_Connect_Activated(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Entered")]
	public static extern void QAbstractItemView_Connect_Entered(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_ViewportEntered")]
	public static extern void QAbstractItemView_Connect_ViewportEntered(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_IconSizeChanged")]
	public static extern void QAbstractItemView_Connect_IconSizeChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_MoveCursor")]
	public static extern QModelIndex QAbstractItemView_MoveCursor(Self* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QAbstractItemView_HorizontalOffset")]
	public static extern int32 QAbstractItemView_HorizontalOffset(Self* c_this);
	[LinkName("QAbstractItemView_VerticalOffset")]
	public static extern int32 QAbstractItemView_VerticalOffset(Self* c_this);
	[LinkName("QAbstractItemView_IsIndexHidden")]
	public static extern bool QAbstractItemView_IsIndexHidden(Self* c_this, QModelIndex* index);
	[LinkName("QAbstractItemView_SetSelection")]
	public static extern void QAbstractItemView_SetSelection(Self* c_this, QRect* rect, int64 command);
	[LinkName("QAbstractItemView_VisualRegionForSelection")]
	public static extern QRegion QAbstractItemView_VisualRegionForSelection(Self* c_this, QItemSelection* selection);
	[LinkName("QAbstractItemView_SelectedIndexes")]
	public static extern QModelIndex[] QAbstractItemView_SelectedIndexes(Self* c_this);
	[LinkName("QAbstractItemView_Edit2")]
	public static extern bool QAbstractItemView_Edit2(Self* c_this, QModelIndex* index, int64 trigger, QEvent* event);
	[LinkName("QAbstractItemView_SelectionCommand")]
	public static extern int64 QAbstractItemView_SelectionCommand(Self* c_this, QModelIndex* index, QEvent* event);
	[LinkName("QAbstractItemView_StartDrag")]
	public static extern void QAbstractItemView_StartDrag(Self* c_this, int64 supportedActions);
	[LinkName("QAbstractItemView_InitViewItemOption")]
	public static extern void QAbstractItemView_InitViewItemOption(Self* c_this, QStyleOptionViewItem* option);
	[LinkName("QAbstractItemView_State")]
	public static extern int64 QAbstractItemView_State(Self* c_this);
	[LinkName("QAbstractItemView_SetState")]
	public static extern void QAbstractItemView_SetState(Self* c_this, int64 state);
	[LinkName("QAbstractItemView_ScheduleDelayedItemsLayout")]
	public static extern void QAbstractItemView_ScheduleDelayedItemsLayout(Self* c_this);
	[LinkName("QAbstractItemView_ExecuteDelayedItemsLayout")]
	public static extern void QAbstractItemView_ExecuteDelayedItemsLayout(Self* c_this);
	[LinkName("QAbstractItemView_SetDirtyRegion")]
	public static extern void QAbstractItemView_SetDirtyRegion(Self* c_this, QRegion* region);
	[LinkName("QAbstractItemView_ScrollDirtyRegion")]
	public static extern void QAbstractItemView_ScrollDirtyRegion(Self* c_this, int32 dx, int32 dy);
	[LinkName("QAbstractItemView_DirtyRegionOffset")]
	public static extern QPoint QAbstractItemView_DirtyRegionOffset(Self* c_this);
	[LinkName("QAbstractItemView_StartAutoScroll")]
	public static extern void QAbstractItemView_StartAutoScroll(Self* c_this);
	[LinkName("QAbstractItemView_StopAutoScroll")]
	public static extern void QAbstractItemView_StopAutoScroll(Self* c_this);
	[LinkName("QAbstractItemView_DoAutoScroll")]
	public static extern void QAbstractItemView_DoAutoScroll(Self* c_this);
	[LinkName("QAbstractItemView_FocusNextPrevChild")]
	public static extern bool QAbstractItemView_FocusNextPrevChild(Self* c_this, bool next);
	[LinkName("QAbstractItemView_Event")]
	public static extern bool QAbstractItemView_Event(Self* c_this, QEvent* event);
	[LinkName("QAbstractItemView_ViewportEvent")]
	public static extern bool QAbstractItemView_ViewportEvent(Self* c_this, QEvent* event);
	[LinkName("QAbstractItemView_MousePressEvent")]
	public static extern void QAbstractItemView_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractItemView_MouseMoveEvent")]
	public static extern void QAbstractItemView_MouseMoveEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractItemView_MouseReleaseEvent")]
	public static extern void QAbstractItemView_MouseReleaseEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractItemView_MouseDoubleClickEvent")]
	public static extern void QAbstractItemView_MouseDoubleClickEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QAbstractItemView_DragEnterEvent")]
	public static extern void QAbstractItemView_DragEnterEvent(Self* c_this, QDragEnterEvent* event);
	[LinkName("QAbstractItemView_DragMoveEvent")]
	public static extern void QAbstractItemView_DragMoveEvent(Self* c_this, QDragMoveEvent* event);
	[LinkName("QAbstractItemView_DragLeaveEvent")]
	public static extern void QAbstractItemView_DragLeaveEvent(Self* c_this, QDragLeaveEvent* event);
	[LinkName("QAbstractItemView_DropEvent")]
	public static extern void QAbstractItemView_DropEvent(Self* c_this, QDropEvent* event);
	[LinkName("QAbstractItemView_FocusInEvent")]
	public static extern void QAbstractItemView_FocusInEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QAbstractItemView_FocusOutEvent")]
	public static extern void QAbstractItemView_FocusOutEvent(Self* c_this, QFocusEvent* event);
	[LinkName("QAbstractItemView_KeyPressEvent")]
	public static extern void QAbstractItemView_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QAbstractItemView_ResizeEvent")]
	public static extern void QAbstractItemView_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QAbstractItemView_TimerEvent")]
	public static extern void QAbstractItemView_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QAbstractItemView_InputMethodEvent")]
	public static extern void QAbstractItemView_InputMethodEvent(Self* c_this, QInputMethodEvent* event);
	[LinkName("QAbstractItemView_EventFilter")]
	public static extern bool QAbstractItemView_EventFilter(Self* c_this, QObject* object, QEvent* event);
	[LinkName("QAbstractItemView_DropIndicatorPosition")]
	public static extern int64 QAbstractItemView_DropIndicatorPosition(Self* c_this);
	[LinkName("QAbstractItemView_ViewportSizeHint")]
	public static extern QSize QAbstractItemView_ViewportSizeHint(Self* c_this);
	[LinkName("QAbstractItemView_Tr2")]
	public static extern libqt_string QAbstractItemView_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemView_Tr3")]
	public static extern libqt_string QAbstractItemView_Tr3(char8[] s, char8[] c, int32 n);
}