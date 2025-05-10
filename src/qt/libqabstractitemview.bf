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
public class QAbstractItemView
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QAbstractItemView_new(parent);
	}
	
	public ~this()
	{
		CQt.QAbstractItemView_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractItemView_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractItemView_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractItemView_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractItemView_Tr(s);
	}
	
	public virtual void SetModel(void* model)
	{
		CQt.QAbstractItemView_SetModel(this.nativePtr, model);
	}
	
	public void* Model()
	{
		return CQt.QAbstractItemView_Model(this.nativePtr);
	}
	
	public virtual void SetSelectionModel(void* selectionModel)
	{
		CQt.QAbstractItemView_SetSelectionModel(this.nativePtr, selectionModel);
	}
	
	public void* SelectionModel()
	{
		return CQt.QAbstractItemView_SelectionModel(this.nativePtr);
	}
	
	public void SetItemDelegate(void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegate(this.nativePtr, _delegate);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QAbstractItemView_ItemDelegate(this.nativePtr);
	}
	
	public void SetSelectionMode(int64 mode)
	{
		CQt.QAbstractItemView_SetSelectionMode(this.nativePtr, mode);
	}
	
	public int64 SelectionMode()
	{
		return CQt.QAbstractItemView_SelectionMode(this.nativePtr);
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		CQt.QAbstractItemView_SetSelectionBehavior(this.nativePtr, behavior);
	}
	
	public int64 SelectionBehavior()
	{
		return CQt.QAbstractItemView_SelectionBehavior(this.nativePtr);
	}
	
	public void CurrentIndex()
	{
		CQt.QAbstractItemView_CurrentIndex(this.nativePtr);
	}
	
	public void RootIndex()
	{
		CQt.QAbstractItemView_RootIndex(this.nativePtr);
	}
	
	public void SetEditTriggers(int64 triggers)
	{
		CQt.QAbstractItemView_SetEditTriggers(this.nativePtr, triggers);
	}
	
	public int64 EditTriggers()
	{
		return CQt.QAbstractItemView_EditTriggers(this.nativePtr);
	}
	
	public void SetVerticalScrollMode(int64 mode)
	{
		CQt.QAbstractItemView_SetVerticalScrollMode(this.nativePtr, mode);
	}
	
	public int64 VerticalScrollMode()
	{
		return CQt.QAbstractItemView_VerticalScrollMode(this.nativePtr);
	}
	
	public void ResetVerticalScrollMode()
	{
		CQt.QAbstractItemView_ResetVerticalScrollMode(this.nativePtr);
	}
	
	public void SetHorizontalScrollMode(int64 mode)
	{
		CQt.QAbstractItemView_SetHorizontalScrollMode(this.nativePtr, mode);
	}
	
	public int64 HorizontalScrollMode()
	{
		return CQt.QAbstractItemView_HorizontalScrollMode(this.nativePtr);
	}
	
	public void ResetHorizontalScrollMode()
	{
		CQt.QAbstractItemView_ResetHorizontalScrollMode(this.nativePtr);
	}
	
	public void SetAutoScroll(bool enable)
	{
		CQt.QAbstractItemView_SetAutoScroll(this.nativePtr, enable);
	}
	
	public bool HasAutoScroll()
	{
		return CQt.QAbstractItemView_HasAutoScroll(this.nativePtr);
	}
	
	public void SetAutoScrollMargin(int32 margin)
	{
		CQt.QAbstractItemView_SetAutoScrollMargin(this.nativePtr, margin);
	}
	
	public int32 AutoScrollMargin()
	{
		return CQt.QAbstractItemView_AutoScrollMargin(this.nativePtr);
	}
	
	public void SetTabKeyNavigation(bool enable)
	{
		CQt.QAbstractItemView_SetTabKeyNavigation(this.nativePtr, enable);
	}
	
	public bool TabKeyNavigation()
	{
		return CQt.QAbstractItemView_TabKeyNavigation(this.nativePtr);
	}
	
	public void SetDropIndicatorShown(bool enable)
	{
		CQt.QAbstractItemView_SetDropIndicatorShown(this.nativePtr, enable);
	}
	
	public bool ShowDropIndicator()
	{
		return CQt.QAbstractItemView_ShowDropIndicator(this.nativePtr);
	}
	
	public void SetDragEnabled(bool enable)
	{
		CQt.QAbstractItemView_SetDragEnabled(this.nativePtr, enable);
	}
	
	public bool DragEnabled()
	{
		return CQt.QAbstractItemView_DragEnabled(this.nativePtr);
	}
	
	public void SetDragDropOverwriteMode(bool overwrite)
	{
		CQt.QAbstractItemView_SetDragDropOverwriteMode(this.nativePtr, overwrite);
	}
	
	public bool DragDropOverwriteMode()
	{
		return CQt.QAbstractItemView_DragDropOverwriteMode(this.nativePtr);
	}
	
	public void SetDragDropMode(int64 behavior)
	{
		CQt.QAbstractItemView_SetDragDropMode(this.nativePtr, behavior);
	}
	
	public int64 DragDropMode()
	{
		return CQt.QAbstractItemView_DragDropMode(this.nativePtr);
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		CQt.QAbstractItemView_SetDefaultDropAction(this.nativePtr, dropAction);
	}
	
	public int64 DefaultDropAction()
	{
		return CQt.QAbstractItemView_DefaultDropAction(this.nativePtr);
	}
	
	public void SetAlternatingRowColors(bool enable)
	{
		CQt.QAbstractItemView_SetAlternatingRowColors(this.nativePtr, enable);
	}
	
	public bool AlternatingRowColors()
	{
		return CQt.QAbstractItemView_AlternatingRowColors(this.nativePtr);
	}
	
	public void SetIconSize(void* size)
	{
		CQt.QAbstractItemView_SetIconSize(this.nativePtr, size);
	}
	
	public void IconSize()
	{
		CQt.QAbstractItemView_IconSize(this.nativePtr);
	}
	
	public void SetTextElideMode(int64 mode)
	{
		CQt.QAbstractItemView_SetTextElideMode(this.nativePtr, mode);
	}
	
	public int64 TextElideMode()
	{
		return CQt.QAbstractItemView_TextElideMode(this.nativePtr);
	}
	
	public virtual void KeyboardSearch(libqt_string search)
	{
		CQt.QAbstractItemView_KeyboardSearch(this.nativePtr, search);
	}
	
	public virtual void VisualRect(void* index)
	{
		CQt.QAbstractItemView_VisualRect(this.nativePtr, index);
	}
	
	public virtual void ScrollTo(void* index, int64 hint)
	{
		CQt.QAbstractItemView_ScrollTo(this.nativePtr, index, hint);
	}
	
	public virtual void IndexAt(void* point)
	{
		CQt.QAbstractItemView_IndexAt(this.nativePtr, point);
	}
	
	public void SizeHintForIndex(void* index)
	{
		CQt.QAbstractItemView_SizeHintForIndex(this.nativePtr, index);
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return CQt.QAbstractItemView_SizeHintForRow(this.nativePtr, row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return CQt.QAbstractItemView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void OpenPersistentEditor(void* index)
	{
		CQt.QAbstractItemView_OpenPersistentEditor(this.nativePtr, index);
	}
	
	public void ClosePersistentEditor(void* index)
	{
		CQt.QAbstractItemView_ClosePersistentEditor(this.nativePtr, index);
	}
	
	public bool IsPersistentEditorOpen(void* index)
	{
		return CQt.QAbstractItemView_IsPersistentEditorOpen(this.nativePtr, index);
	}
	
	public void SetIndexWidget(void* index, void* widget)
	{
		CQt.QAbstractItemView_SetIndexWidget(this.nativePtr, index, widget);
	}
	
	public void* IndexWidget(void* index)
	{
		return CQt.QAbstractItemView_IndexWidget(this.nativePtr, index);
	}
	
	public void SetItemDelegateForRow(int32 row, void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForRow(this.nativePtr, row, _delegate);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return CQt.QAbstractItemView_ItemDelegateForRow(this.nativePtr, row);
	}
	
	public void SetItemDelegateForColumn(int32 column, void* _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForColumn(this.nativePtr, column, _delegate);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return CQt.QAbstractItemView_ItemDelegateForColumn(this.nativePtr, column);
	}
	
	public void* ItemDelegateWithIndex(void* index)
	{
		return CQt.QAbstractItemView_ItemDelegateWithIndex(this.nativePtr, index);
	}
	
	public virtual void* ItemDelegateForIndex(void* index)
	{
		return CQt.QAbstractItemView_ItemDelegateForIndex(this.nativePtr, index);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QAbstractItemView_InputMethodQuery(this.nativePtr, query);
	}
	
	public virtual void Reset()
	{
		CQt.QAbstractItemView_Reset(this.nativePtr);
	}
	
	public virtual void SetRootIndex(void* index)
	{
		CQt.QAbstractItemView_SetRootIndex(this.nativePtr, index);
	}
	
	public virtual void DoItemsLayout()
	{
		CQt.QAbstractItemView_DoItemsLayout(this.nativePtr);
	}
	
	public virtual void SelectAll()
	{
		CQt.QAbstractItemView_SelectAll(this.nativePtr);
	}
	
	public void Edit(void* index)
	{
		CQt.QAbstractItemView_Edit(this.nativePtr, index);
	}
	
	public void ClearSelection()
	{
		CQt.QAbstractItemView_ClearSelection(this.nativePtr);
	}
	
	public void SetCurrentIndex(void* index)
	{
		CQt.QAbstractItemView_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void ScrollToTop()
	{
		CQt.QAbstractItemView_ScrollToTop(this.nativePtr);
	}
	
	public void ScrollToBottom()
	{
		CQt.QAbstractItemView_ScrollToBottom(this.nativePtr);
	}
	
	public void Update(void* index)
	{
		CQt.QAbstractItemView_Update(this.nativePtr, index);
	}
	
	public virtual void DataChanged(void* topLeft, void* bottomRight, int32[] roles)
	{
		CQt.QAbstractItemView_DataChanged(this.nativePtr, topLeft, bottomRight, roles);
	}
	
	public virtual void RowsInserted(void* parent, int32 start, int32 end)
	{
		CQt.QAbstractItemView_RowsInserted(this.nativePtr, parent, start, end);
	}
	
	public virtual void RowsAboutToBeRemoved(void* parent, int32 start, int32 end)
	{
		CQt.QAbstractItemView_RowsAboutToBeRemoved(this.nativePtr, parent, start, end);
	}
	
	public virtual void SelectionChanged(void* selected, void* deselected)
	{
		CQt.QAbstractItemView_SelectionChanged(this.nativePtr, selected, deselected);
	}
	
	public virtual void CurrentChanged(void* current, void* previous)
	{
		CQt.QAbstractItemView_CurrentChanged(this.nativePtr, current, previous);
	}
	
	public virtual void UpdateEditorData()
	{
		CQt.QAbstractItemView_UpdateEditorData(this.nativePtr);
	}
	
	public virtual void UpdateEditorGeometries()
	{
		CQt.QAbstractItemView_UpdateEditorGeometries(this.nativePtr);
	}
	
	public virtual void UpdateGeometries()
	{
		CQt.QAbstractItemView_UpdateGeometries(this.nativePtr);
	}
	
	public virtual void VerticalScrollbarAction(int32 action)
	{
		CQt.QAbstractItemView_VerticalScrollbarAction(this.nativePtr, action);
	}
	
	public virtual void HorizontalScrollbarAction(int32 action)
	{
		CQt.QAbstractItemView_HorizontalScrollbarAction(this.nativePtr, action);
	}
	
	public virtual void VerticalScrollbarValueChanged(int32 value)
	{
		CQt.QAbstractItemView_VerticalScrollbarValueChanged(this.nativePtr, value);
	}
	
	public virtual void HorizontalScrollbarValueChanged(int32 value)
	{
		CQt.QAbstractItemView_HorizontalScrollbarValueChanged(this.nativePtr, value);
	}
	
	public virtual void CloseEditor(void* editor, int64 hint)
	{
		CQt.QAbstractItemView_CloseEditor(this.nativePtr, editor, hint);
	}
	
	public virtual void CommitData(void* editor)
	{
		CQt.QAbstractItemView_CommitData(this.nativePtr, editor);
	}
	
	public virtual void EditorDestroyed(void* editor)
	{
		CQt.QAbstractItemView_EditorDestroyed(this.nativePtr, editor);
	}
	
	public virtual void MoveCursor(int64 cursorAction, int64 modifiers)
	{
		CQt.QAbstractItemView_MoveCursor(this.nativePtr, cursorAction, modifiers);
	}
	
	public virtual int32 HorizontalOffset()
	{
		return CQt.QAbstractItemView_HorizontalOffset(this.nativePtr);
	}
	
	public virtual int32 VerticalOffset()
	{
		return CQt.QAbstractItemView_VerticalOffset(this.nativePtr);
	}
	
	public virtual bool IsIndexHidden(void* index)
	{
		return CQt.QAbstractItemView_IsIndexHidden(this.nativePtr, index);
	}
	
	public virtual void SetSelection(void* rect, int64 command)
	{
		CQt.QAbstractItemView_SetSelection(this.nativePtr, rect, command);
	}
	
	public virtual void VisualRegionForSelection(void* selection)
	{
		CQt.QAbstractItemView_VisualRegionForSelection(this.nativePtr, selection);
	}
	
	public virtual void[] SelectedIndexes()
	{
		return CQt.QAbstractItemView_SelectedIndexes(this.nativePtr);
	}
	
	public virtual bool Edit2(void* index, int64 trigger, void* event)
	{
		return CQt.QAbstractItemView_Edit2(this.nativePtr, index, trigger, event);
	}
	
	public virtual int64 SelectionCommand(void* index, void* event)
	{
		return CQt.QAbstractItemView_SelectionCommand(this.nativePtr, index, event);
	}
	
	public virtual void StartDrag(int64 supportedActions)
	{
		CQt.QAbstractItemView_StartDrag(this.nativePtr, supportedActions);
	}
	
	public virtual void InitViewItemOption(void* option)
	{
		CQt.QAbstractItemView_InitViewItemOption(this.nativePtr, option);
	}
	
	public int64 State()
	{
		return CQt.QAbstractItemView_State(this.nativePtr);
	}
	
	public void SetState(int64 state)
	{
		CQt.QAbstractItemView_SetState(this.nativePtr, state);
	}
	
	public void ScheduleDelayedItemsLayout()
	{
		CQt.QAbstractItemView_ScheduleDelayedItemsLayout(this.nativePtr);
	}
	
	public void ExecuteDelayedItemsLayout()
	{
		CQt.QAbstractItemView_ExecuteDelayedItemsLayout(this.nativePtr);
	}
	
	public void SetDirtyRegion(void* region)
	{
		CQt.QAbstractItemView_SetDirtyRegion(this.nativePtr, region);
	}
	
	public void ScrollDirtyRegion(int32 dx, int32 dy)
	{
		CQt.QAbstractItemView_ScrollDirtyRegion(this.nativePtr, dx, dy);
	}
	
	public void DirtyRegionOffset()
	{
		CQt.QAbstractItemView_DirtyRegionOffset(this.nativePtr);
	}
	
	public void StartAutoScroll()
	{
		CQt.QAbstractItemView_StartAutoScroll(this.nativePtr);
	}
	
	public void StopAutoScroll()
	{
		CQt.QAbstractItemView_StopAutoScroll(this.nativePtr);
	}
	
	public void DoAutoScroll()
	{
		CQt.QAbstractItemView_DoAutoScroll(this.nativePtr);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QAbstractItemView_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QAbstractItemView_Event(this.nativePtr, event);
	}
	
	public virtual bool ViewportEvent(void* event)
	{
		return CQt.QAbstractItemView_ViewportEvent(this.nativePtr, event);
	}
	
	public virtual void MousePressEvent(void* event)
	{
		CQt.QAbstractItemView_MousePressEvent(this.nativePtr, event);
	}
	
	public virtual void MouseMoveEvent(void* event)
	{
		CQt.QAbstractItemView_MouseMoveEvent(this.nativePtr, event);
	}
	
	public virtual void MouseReleaseEvent(void* event)
	{
		CQt.QAbstractItemView_MouseReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void MouseDoubleClickEvent(void* event)
	{
		CQt.QAbstractItemView_MouseDoubleClickEvent(this.nativePtr, event);
	}
	
	public virtual void DragEnterEvent(void* event)
	{
		CQt.QAbstractItemView_DragEnterEvent(this.nativePtr, event);
	}
	
	public virtual void DragMoveEvent(void* event)
	{
		CQt.QAbstractItemView_DragMoveEvent(this.nativePtr, event);
	}
	
	public virtual void DragLeaveEvent(void* event)
	{
		CQt.QAbstractItemView_DragLeaveEvent(this.nativePtr, event);
	}
	
	public virtual void DropEvent(void* event)
	{
		CQt.QAbstractItemView_DropEvent(this.nativePtr, event);
	}
	
	public virtual void FocusInEvent(void* event)
	{
		CQt.QAbstractItemView_FocusInEvent(this.nativePtr, event);
	}
	
	public virtual void FocusOutEvent(void* event)
	{
		CQt.QAbstractItemView_FocusOutEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* event)
	{
		CQt.QAbstractItemView_KeyPressEvent(this.nativePtr, event);
	}
	
	public virtual void ResizeEvent(void* event)
	{
		CQt.QAbstractItemView_ResizeEvent(this.nativePtr, event);
	}
	
	public virtual void TimerEvent(void* event)
	{
		CQt.QAbstractItemView_TimerEvent(this.nativePtr, event);
	}
	
	public virtual void InputMethodEvent(void* event)
	{
		CQt.QAbstractItemView_InputMethodEvent(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* object, void* event)
	{
		return CQt.QAbstractItemView_EventFilter(this.nativePtr, object, event);
	}
	
	public int64 DropIndicatorPosition()
	{
		return CQt.QAbstractItemView_DropIndicatorPosition(this.nativePtr);
	}
	
	public virtual void ViewportSizeHint()
	{
		CQt.QAbstractItemView_ViewportSizeHint(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractItemView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractItemView_Tr3(s, c, n);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, scrollbar);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, scrollbar);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(void* widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, widget);
	}
	
	public void AddScrollBarWidget(void* widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(void* widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, widget);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QAbstractScrollArea_SizeHint(this.nativePtr);
	}
	
	public virtual void SetupViewport(void* viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, viewport);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, policy);
	}
	
	public int32 FrameStyle()
	{
		return CQt.QFrame_FrameStyle(this.nativePtr);
	}
	
	public void SetFrameStyle(int32 frameStyle)
	{
		CQt.QFrame_SetFrameStyle(this.nativePtr, frameStyle);
	}
	
	public int32 FrameWidth()
	{
		return CQt.QFrame_FrameWidth(this.nativePtr);
	}
	
	public int64 FrameShape()
	{
		return CQt.QFrame_FrameShape(this.nativePtr);
	}
	
	public void SetFrameShape(int64 frameShape)
	{
		CQt.QFrame_SetFrameShape(this.nativePtr, frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, frameShadow);
	}
	
	public int32 LineWidth()
	{
		return CQt.QFrame_LineWidth(this.nativePtr);
	}
	
	public void SetLineWidth(int32 lineWidth)
	{
		CQt.QFrame_SetLineWidth(this.nativePtr, lineWidth);
	}
	
	public int32 MidLineWidth()
	{
		return CQt.QFrame_MidLineWidth(this.nativePtr);
	}
	
	public void SetMidLineWidth(int32 midLineWidth)
	{
		CQt.QFrame_SetMidLineWidth(this.nativePtr, midLineWidth);
	}
	
	public void FrameRect()
	{
		CQt.QFrame_FrameRect(this.nativePtr);
	}
	
	public void SetFrameRect(void* frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, frameRect);
	}
	
	public virtual int32 DevType()
	{
		return CQt.QWidget_DevType(this.nativePtr);
	}
	
	public c_uintptr WinId()
	{
		return CQt.QWidget_WinId(this.nativePtr);
	}
	
	public void CreateWinId()
	{
		CQt.QWidget_CreateWinId(this.nativePtr);
	}
	
	public c_uintptr InternalWinId()
	{
		return CQt.QWidget_InternalWinId(this.nativePtr);
	}
	
	public c_uintptr EffectiveWinId()
	{
		return CQt.QWidget_EffectiveWinId(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
	}
	
	public bool IsTopLevel()
	{
		return CQt.QWidget_IsTopLevel(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QWidget_IsWindow(this.nativePtr);
	}
	
	public bool IsModal()
	{
		return CQt.QWidget_IsModal(this.nativePtr);
	}
	
	public int64 WindowModality()
	{
		return CQt.QWidget_WindowModality(this.nativePtr);
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QWidget_SetEnabled(this.nativePtr, enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		CQt.QWidget_SetDisabled(this.nativePtr, disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		CQt.QWidget_SetWindowModified(this.nativePtr, windowModified);
	}
	
	public void FrameGeometry()
	{
		CQt.QWidget_FrameGeometry(this.nativePtr);
	}
	
	public void* Geometry()
	{
		return CQt.QWidget_Geometry(this.nativePtr);
	}
	
	public void NormalGeometry()
	{
		CQt.QWidget_NormalGeometry(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QWidget_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QWidget_Y(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QWidget_Pos(this.nativePtr);
	}
	
	public void FrameSize()
	{
		CQt.QWidget_FrameSize(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QWidget_Size(this.nativePtr);
	}
	
	public int32 Width()
	{
		return CQt.QWidget_Width(this.nativePtr);
	}
	
	public int32 Height()
	{
		return CQt.QWidget_Height(this.nativePtr);
	}
	
	public void Rect()
	{
		CQt.QWidget_Rect(this.nativePtr);
	}
	
	public void ChildrenRect()
	{
		CQt.QWidget_ChildrenRect(this.nativePtr);
	}
	
	public void ChildrenRegion()
	{
		CQt.QWidget_ChildrenRegion(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QWidget_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QWidget_MaximumSize(this.nativePtr);
	}
	
	public int32 MinimumWidth()
	{
		return CQt.QWidget_MinimumWidth(this.nativePtr);
	}
	
	public int32 MinimumHeight()
	{
		return CQt.QWidget_MinimumHeight(this.nativePtr);
	}
	
	public int32 MaximumWidth()
	{
		return CQt.QWidget_MaximumWidth(this.nativePtr);
	}
	
	public int32 MaximumHeight()
	{
		return CQt.QWidget_MaximumHeight(this.nativePtr);
	}
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		CQt.QWidget_SetMaximumSize2(this.nativePtr, maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		CQt.QWidget_SetMinimumWidth(this.nativePtr, minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		CQt.QWidget_SetMinimumHeight(this.nativePtr, minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		CQt.QWidget_SetMaximumWidth(this.nativePtr, maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		CQt.QWidget_SetMaximumHeight(this.nativePtr, maxh);
	}
	
	public void SizeIncrement()
	{
		CQt.QWidget_SizeIncrement(this.nativePtr);
	}
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		CQt.QWidget_SetFixedSize2(this.nativePtr, w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		CQt.QWidget_SetFixedWidth(this.nativePtr, w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		CQt.QWidget_SetFixedHeight(this.nativePtr, h);
	}
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
	}
	
	public void* Window()
	{
		return CQt.QWidget_Window(this.nativePtr);
	}
	
	public void* NativeParentWidget()
	{
		return CQt.QWidget_NativeParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QWidget_TopLevelWidget(this.nativePtr);
	}
	
	public void* Palette()
	{
		return CQt.QWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
	}
	
	public void FontMetrics()
	{
		CQt.QWidget_FontMetrics(this.nativePtr);
	}
	
	public void FontInfo()
	{
		CQt.QWidget_FontInfo(this.nativePtr);
	}
	
	public void Cursor()
	{
		CQt.QWidget_Cursor(this.nativePtr);
	}
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
	}
	
	public void UnsetCursor()
	{
		CQt.QWidget_UnsetCursor(this.nativePtr);
	}
	
	public void SetMouseTracking(bool enable)
	{
		CQt.QWidget_SetMouseTracking(this.nativePtr, enable);
	}
	
	public bool HasMouseTracking()
	{
		return CQt.QWidget_HasMouseTracking(this.nativePtr);
	}
	
	public bool UnderMouse()
	{
		return CQt.QWidget_UnderMouse(this.nativePtr);
	}
	
	public void SetTabletTracking(bool enable)
	{
		CQt.QWidget_SetTabletTracking(this.nativePtr, enable);
	}
	
	public bool HasTabletTracking()
	{
		return CQt.QWidget_HasTabletTracking(this.nativePtr);
	}
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(void* target)
	{
		CQt.QWidget_Render(this.nativePtr, target);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(libqt_string windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, windowTitle);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return CQt.QWidget_WindowFilePath(this.nativePtr);
	}
	
	public void SetWindowOpacity(double level)
	{
		CQt.QWidget_SetWindowOpacity(this.nativePtr, level);
	}
	
	public double WindowOpacity()
	{
		return CQt.QWidget_WindowOpacity(this.nativePtr);
	}
	
	public bool IsWindowModified()
	{
		return CQt.QWidget_IsWindowModified(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QWidget_ToolTip(this.nativePtr);
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		CQt.QWidget_SetToolTipDuration(this.nativePtr, msec);
	}
	
	public int32 ToolTipDuration()
	{
		return CQt.QWidget_ToolTipDuration(this.nativePtr);
	}
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
	}
	
	public void Locale()
	{
		CQt.QWidget_Locale(this.nativePtr);
	}
	
	public void UnsetLocale()
	{
		CQt.QWidget_UnsetLocale(this.nativePtr);
	}
	
	public bool IsRightToLeft()
	{
		return CQt.QWidget_IsRightToLeft(this.nativePtr);
	}
	
	public bool IsLeftToRight()
	{
		return CQt.QWidget_IsLeftToRight(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QWidget_SetFocus(this.nativePtr);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void ActivateWindow()
	{
		CQt.QWidget_ActivateWindow(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QWidget_ClearFocus(this.nativePtr);
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
	}
	
	public void* FocusProxy()
	{
		return CQt.QWidget_FocusProxy(this.nativePtr);
	}
	
	public int64 ContextMenuPolicy()
	{
		return CQt.QWidget_ContextMenuPolicy(this.nativePtr);
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
	}
	
	public void ReleaseMouse()
	{
		CQt.QWidget_ReleaseMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QWidget_GrabKeyboard(this.nativePtr);
	}
	
	public void ReleaseKeyboard()
	{
		CQt.QWidget_ReleaseKeyboard(this.nativePtr);
	}
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public static void* MouseGrabber()
	{
		return CQt.QWidget_MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return CQt.QWidget_KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return CQt.QWidget_UpdatesEnabled(this.nativePtr);
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		CQt.QWidget_SetUpdatesEnabled(this.nativePtr, enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return CQt.QWidget_GraphicsProxyWidget(this.nativePtr);
	}
	
	public void Repaint()
	{
		CQt.QWidget_Repaint(this.nativePtr);
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Update2(this.nativePtr, x, y, w, h);
	}
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
	}
	
	public virtual void SetVisible(bool visible)
	{
		CQt.QWidget_SetVisible(this.nativePtr, visible);
	}
	
	public void SetHidden(bool hidden)
	{
		CQt.QWidget_SetHidden(this.nativePtr, hidden);
	}
	
	public void Show()
	{
		CQt.QWidget_Show(this.nativePtr);
	}
	
	public void Hide()
	{
		CQt.QWidget_Hide(this.nativePtr);
	}
	
	public void ShowMinimized()
	{
		CQt.QWidget_ShowMinimized(this.nativePtr);
	}
	
	public void ShowMaximized()
	{
		CQt.QWidget_ShowMaximized(this.nativePtr);
	}
	
	public void ShowFullScreen()
	{
		CQt.QWidget_ShowFullScreen(this.nativePtr);
	}
	
	public void ShowNormal()
	{
		CQt.QWidget_ShowNormal(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QWidget_Close(this.nativePtr);
	}
	
	public void Raise()
	{
		CQt.QWidget_Raise(this.nativePtr);
	}
	
	public void Lower()
	{
		CQt.QWidget_Lower(this.nativePtr);
	}
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
	}
	
	public bool IsHidden()
	{
		return CQt.QWidget_IsHidden(this.nativePtr);
	}
	
	public bool IsMinimized()
	{
		return CQt.QWidget_IsMinimized(this.nativePtr);
	}
	
	public bool IsMaximized()
	{
		return CQt.QWidget_IsMaximized(this.nativePtr);
	}
	
	public bool IsFullScreen()
	{
		return CQt.QWidget_IsFullScreen(this.nativePtr);
	}
	
	public int64 WindowState()
	{
		return CQt.QWidget_WindowState(this.nativePtr);
	}
	
	public void SetWindowState(int64 state)
	{
		CQt.QWidget_SetWindowState(this.nativePtr, state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		CQt.QWidget_OverrideWindowState(this.nativePtr, state);
	}
	
	public void SizePolicy()
	{
		CQt.QWidget_SizePolicy(this.nativePtr);
	}
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QWidget_HasHeightForWidth(this.nativePtr);
	}
	
	public void VisibleRegion()
	{
		CQt.QWidget_VisibleRegion(this.nativePtr);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
	}
	
	public void ContentsMargins()
	{
		CQt.QWidget_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QWidget_ContentsRect(this.nativePtr);
	}
	
	public void* Layout()
	{
		return CQt.QWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return CQt.QWidget_FocusWidget(this.nativePtr);
	}
	
	public void* NextInFocusChain()
	{
		return CQt.QWidget_NextInFocusChain(this.nativePtr);
	}
	
	public void* PreviousInFocusChain()
	{
		return CQt.QWidget_PreviousInFocusChain(this.nativePtr);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QWidget_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QWidget_SetAcceptDrops(this.nativePtr, on);
	}
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return CQt.QWidget_ParentWidget(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		CQt.QWidget_SetWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QWidget_WindowFlags(this.nativePtr);
	}
	
	public void SetWindowFlag(int64 param1)
	{
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		CQt.QWidget_OverrideWindowFlags(this.nativePtr, typeVal);
	}
	
	public int64 WindowType()
	{
		return CQt.QWidget_WindowType(this.nativePtr);
	}
	
	public static void* Find(uint64 param1)
	{
		return CQt.QWidget_Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return CQt.QWidget_ChildAt(this.nativePtr, x, y);
	}
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void* BackingStore()
	{
		return CQt.QWidget_BackingStore(this.nativePtr);
	}
	
	public void* WindowHandle()
	{
		return CQt.QWidget_WindowHandle(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QWidget_Screen(this.nativePtr);
	}
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(void* target, void* targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, target, targetOffset);
	}
	
	public void Render3(void* target, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, target, targetOffset, sourceRegion);
	}
	
	public void Render4(void* target, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutEnabled2(this.nativePtr, id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		CQt.QWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return CQt.QPaintDevice_PaintingActive(this.nativePtr);
	}
	
	public int32 WidthMM()
	{
		return CQt.QPaintDevice_WidthMM(this.nativePtr);
	}
	
	public int32 HeightMM()
	{
		return CQt.QPaintDevice_HeightMM(this.nativePtr);
	}
	
	public int32 LogicalDpiX()
	{
		return CQt.QPaintDevice_LogicalDpiX(this.nativePtr);
	}
	
	public int32 LogicalDpiY()
	{
		return CQt.QPaintDevice_LogicalDpiY(this.nativePtr);
	}
	
	public int32 PhysicalDpiX()
	{
		return CQt.QPaintDevice_PhysicalDpiX(this.nativePtr);
	}
	
	public int32 PhysicalDpiY()
	{
		return CQt.QPaintDevice_PhysicalDpiY(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QPaintDevice_DevicePixelRatio(this.nativePtr);
	}
	
	public double DevicePixelRatioF()
	{
		return CQt.QPaintDevice_DevicePixelRatioF(this.nativePtr);
	}
	
	public int32 ColorCount()
	{
		return CQt.QPaintDevice_ColorCount(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QPaintDevice_Depth(this.nativePtr);
	}
	
	public static double DevicePixelRatioFScale()
	{
		return CQt.QPaintDevice_DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QAbstractItemView_new")]
	public static extern void* QAbstractItemView_new(void* parent);
	[LinkName("QAbstractItemView_new2")]
	public static extern void* QAbstractItemView_new2();
	[LinkName("QAbstractItemView_MetaObject")]
	public static extern void* QAbstractItemView_MetaObject(void* c_this);
	[LinkName("QAbstractItemView_Metacast")]
	public static extern void* QAbstractItemView_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractItemView_Metacall")]
	public static extern int32 QAbstractItemView_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractItemView_Tr")]
	public static extern libqt_string QAbstractItemView_Tr(char8[] s);
	[LinkName("QAbstractItemView_SetModel")]
	public static extern void QAbstractItemView_SetModel(void* c_this, void* model);
	[LinkName("QAbstractItemView_Model")]
	public static extern void* QAbstractItemView_Model(void* c_this);
	[LinkName("QAbstractItemView_SetSelectionModel")]
	public static extern void QAbstractItemView_SetSelectionModel(void* c_this, void* selectionModel);
	[LinkName("QAbstractItemView_SelectionModel")]
	public static extern void* QAbstractItemView_SelectionModel(void* c_this);
	[LinkName("QAbstractItemView_SetItemDelegate")]
	public static extern void QAbstractItemView_SetItemDelegate(void* c_this, void* _delegate);
	[LinkName("QAbstractItemView_ItemDelegate")]
	public static extern void* QAbstractItemView_ItemDelegate(void* c_this);
	[LinkName("QAbstractItemView_SetSelectionMode")]
	public static extern void QAbstractItemView_SetSelectionMode(void* c_this, int64 mode);
	[LinkName("QAbstractItemView_SelectionMode")]
	public static extern int64 QAbstractItemView_SelectionMode(void* c_this);
	[LinkName("QAbstractItemView_SetSelectionBehavior")]
	public static extern void QAbstractItemView_SetSelectionBehavior(void* c_this, int64 behavior);
	[LinkName("QAbstractItemView_SelectionBehavior")]
	public static extern int64 QAbstractItemView_SelectionBehavior(void* c_this);
	[LinkName("QAbstractItemView_CurrentIndex")]
	public static extern void QAbstractItemView_CurrentIndex(void* c_this);
	[LinkName("QAbstractItemView_RootIndex")]
	public static extern void QAbstractItemView_RootIndex(void* c_this);
	[LinkName("QAbstractItemView_SetEditTriggers")]
	public static extern void QAbstractItemView_SetEditTriggers(void* c_this, int64 triggers);
	[LinkName("QAbstractItemView_EditTriggers")]
	public static extern int64 QAbstractItemView_EditTriggers(void* c_this);
	[LinkName("QAbstractItemView_SetVerticalScrollMode")]
	public static extern void QAbstractItemView_SetVerticalScrollMode(void* c_this, int64 mode);
	[LinkName("QAbstractItemView_VerticalScrollMode")]
	public static extern int64 QAbstractItemView_VerticalScrollMode(void* c_this);
	[LinkName("QAbstractItemView_ResetVerticalScrollMode")]
	public static extern void QAbstractItemView_ResetVerticalScrollMode(void* c_this);
	[LinkName("QAbstractItemView_SetHorizontalScrollMode")]
	public static extern void QAbstractItemView_SetHorizontalScrollMode(void* c_this, int64 mode);
	[LinkName("QAbstractItemView_HorizontalScrollMode")]
	public static extern int64 QAbstractItemView_HorizontalScrollMode(void* c_this);
	[LinkName("QAbstractItemView_ResetHorizontalScrollMode")]
	public static extern void QAbstractItemView_ResetHorizontalScrollMode(void* c_this);
	[LinkName("QAbstractItemView_SetAutoScroll")]
	public static extern void QAbstractItemView_SetAutoScroll(void* c_this, bool enable);
	[LinkName("QAbstractItemView_HasAutoScroll")]
	public static extern bool QAbstractItemView_HasAutoScroll(void* c_this);
	[LinkName("QAbstractItemView_SetAutoScrollMargin")]
	public static extern void QAbstractItemView_SetAutoScrollMargin(void* c_this, int32 margin);
	[LinkName("QAbstractItemView_AutoScrollMargin")]
	public static extern int32 QAbstractItemView_AutoScrollMargin(void* c_this);
	[LinkName("QAbstractItemView_SetTabKeyNavigation")]
	public static extern void QAbstractItemView_SetTabKeyNavigation(void* c_this, bool enable);
	[LinkName("QAbstractItemView_TabKeyNavigation")]
	public static extern bool QAbstractItemView_TabKeyNavigation(void* c_this);
	[LinkName("QAbstractItemView_SetDropIndicatorShown")]
	public static extern void QAbstractItemView_SetDropIndicatorShown(void* c_this, bool enable);
	[LinkName("QAbstractItemView_ShowDropIndicator")]
	public static extern bool QAbstractItemView_ShowDropIndicator(void* c_this);
	[LinkName("QAbstractItemView_SetDragEnabled")]
	public static extern void QAbstractItemView_SetDragEnabled(void* c_this, bool enable);
	[LinkName("QAbstractItemView_DragEnabled")]
	public static extern bool QAbstractItemView_DragEnabled(void* c_this);
	[LinkName("QAbstractItemView_SetDragDropOverwriteMode")]
	public static extern void QAbstractItemView_SetDragDropOverwriteMode(void* c_this, bool overwrite);
	[LinkName("QAbstractItemView_DragDropOverwriteMode")]
	public static extern bool QAbstractItemView_DragDropOverwriteMode(void* c_this);
	[LinkName("QAbstractItemView_SetDragDropMode")]
	public static extern void QAbstractItemView_SetDragDropMode(void* c_this, int64 behavior);
	[LinkName("QAbstractItemView_DragDropMode")]
	public static extern int64 QAbstractItemView_DragDropMode(void* c_this);
	[LinkName("QAbstractItemView_SetDefaultDropAction")]
	public static extern void QAbstractItemView_SetDefaultDropAction(void* c_this, int64 dropAction);
	[LinkName("QAbstractItemView_DefaultDropAction")]
	public static extern int64 QAbstractItemView_DefaultDropAction(void* c_this);
	[LinkName("QAbstractItemView_SetAlternatingRowColors")]
	public static extern void QAbstractItemView_SetAlternatingRowColors(void* c_this, bool enable);
	[LinkName("QAbstractItemView_AlternatingRowColors")]
	public static extern bool QAbstractItemView_AlternatingRowColors(void* c_this);
	[LinkName("QAbstractItemView_SetIconSize")]
	public static extern void QAbstractItemView_SetIconSize(void* c_this, void* size);
	[LinkName("QAbstractItemView_IconSize")]
	public static extern void QAbstractItemView_IconSize(void* c_this);
	[LinkName("QAbstractItemView_SetTextElideMode")]
	public static extern void QAbstractItemView_SetTextElideMode(void* c_this, int64 mode);
	[LinkName("QAbstractItemView_TextElideMode")]
	public static extern int64 QAbstractItemView_TextElideMode(void* c_this);
	[LinkName("QAbstractItemView_KeyboardSearch")]
	public static extern void QAbstractItemView_KeyboardSearch(void* c_this, libqt_string search);
	[LinkName("QAbstractItemView_VisualRect")]
	public static extern void QAbstractItemView_VisualRect(void* c_this, void* index);
	[LinkName("QAbstractItemView_ScrollTo")]
	public static extern void QAbstractItemView_ScrollTo(void* c_this, void* index, int64 hint);
	[LinkName("QAbstractItemView_IndexAt")]
	public static extern void QAbstractItemView_IndexAt(void* c_this, void* point);
	[LinkName("QAbstractItemView_SizeHintForIndex")]
	public static extern void QAbstractItemView_SizeHintForIndex(void* c_this, void* index);
	[LinkName("QAbstractItemView_SizeHintForRow")]
	public static extern int32 QAbstractItemView_SizeHintForRow(void* c_this, int32 row);
	[LinkName("QAbstractItemView_SizeHintForColumn")]
	public static extern int32 QAbstractItemView_SizeHintForColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemView_OpenPersistentEditor")]
	public static extern void QAbstractItemView_OpenPersistentEditor(void* c_this, void* index);
	[LinkName("QAbstractItemView_ClosePersistentEditor")]
	public static extern void QAbstractItemView_ClosePersistentEditor(void* c_this, void* index);
	[LinkName("QAbstractItemView_IsPersistentEditorOpen")]
	public static extern bool QAbstractItemView_IsPersistentEditorOpen(void* c_this, void* index);
	[LinkName("QAbstractItemView_SetIndexWidget")]
	public static extern void QAbstractItemView_SetIndexWidget(void* c_this, void* index, void* widget);
	[LinkName("QAbstractItemView_IndexWidget")]
	public static extern void* QAbstractItemView_IndexWidget(void* c_this, void* index);
	[LinkName("QAbstractItemView_SetItemDelegateForRow")]
	public static extern void QAbstractItemView_SetItemDelegateForRow(void* c_this, int32 row, void* _delegate);
	[LinkName("QAbstractItemView_ItemDelegateForRow")]
	public static extern void* QAbstractItemView_ItemDelegateForRow(void* c_this, int32 row);
	[LinkName("QAbstractItemView_SetItemDelegateForColumn")]
	public static extern void QAbstractItemView_SetItemDelegateForColumn(void* c_this, int32 column, void* _delegate);
	[LinkName("QAbstractItemView_ItemDelegateForColumn")]
	public static extern void* QAbstractItemView_ItemDelegateForColumn(void* c_this, int32 column);
	[LinkName("QAbstractItemView_ItemDelegateWithIndex")]
	public static extern void* QAbstractItemView_ItemDelegateWithIndex(void* c_this, void* index);
	[LinkName("QAbstractItemView_ItemDelegateForIndex")]
	public static extern void* QAbstractItemView_ItemDelegateForIndex(void* c_this, void* index);
	[LinkName("QAbstractItemView_InputMethodQuery")]
	public static extern void QAbstractItemView_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QAbstractItemView_Reset")]
	public static extern void QAbstractItemView_Reset(void* c_this);
	[LinkName("QAbstractItemView_SetRootIndex")]
	public static extern void QAbstractItemView_SetRootIndex(void* c_this, void* index);
	[LinkName("QAbstractItemView_DoItemsLayout")]
	public static extern void QAbstractItemView_DoItemsLayout(void* c_this);
	[LinkName("QAbstractItemView_SelectAll")]
	public static extern void QAbstractItemView_SelectAll(void* c_this);
	[LinkName("QAbstractItemView_Edit")]
	public static extern void QAbstractItemView_Edit(void* c_this, void* index);
	[LinkName("QAbstractItemView_ClearSelection")]
	public static extern void QAbstractItemView_ClearSelection(void* c_this);
	[LinkName("QAbstractItemView_SetCurrentIndex")]
	public static extern void QAbstractItemView_SetCurrentIndex(void* c_this, void* index);
	[LinkName("QAbstractItemView_ScrollToTop")]
	public static extern void QAbstractItemView_ScrollToTop(void* c_this);
	[LinkName("QAbstractItemView_ScrollToBottom")]
	public static extern void QAbstractItemView_ScrollToBottom(void* c_this);
	[LinkName("QAbstractItemView_Update")]
	public static extern void QAbstractItemView_Update(void* c_this, void* index);
	[LinkName("QAbstractItemView_DataChanged")]
	public static extern void QAbstractItemView_DataChanged(void* c_this, void* topLeft, void* bottomRight, int32[] roles);
	[LinkName("QAbstractItemView_RowsInserted")]
	public static extern void QAbstractItemView_RowsInserted(void* c_this, void* parent, int32 start, int32 end);
	[LinkName("QAbstractItemView_RowsAboutToBeRemoved")]
	public static extern void QAbstractItemView_RowsAboutToBeRemoved(void* c_this, void* parent, int32 start, int32 end);
	[LinkName("QAbstractItemView_SelectionChanged")]
	public static extern void QAbstractItemView_SelectionChanged(void* c_this, void* selected, void* deselected);
	[LinkName("QAbstractItemView_CurrentChanged")]
	public static extern void QAbstractItemView_CurrentChanged(void* c_this, void* current, void* previous);
	[LinkName("QAbstractItemView_UpdateEditorData")]
	public static extern void QAbstractItemView_UpdateEditorData(void* c_this);
	[LinkName("QAbstractItemView_UpdateEditorGeometries")]
	public static extern void QAbstractItemView_UpdateEditorGeometries(void* c_this);
	[LinkName("QAbstractItemView_UpdateGeometries")]
	public static extern void QAbstractItemView_UpdateGeometries(void* c_this);
	[LinkName("QAbstractItemView_VerticalScrollbarAction")]
	public static extern void QAbstractItemView_VerticalScrollbarAction(void* c_this, int32 action);
	[LinkName("QAbstractItemView_HorizontalScrollbarAction")]
	public static extern void QAbstractItemView_HorizontalScrollbarAction(void* c_this, int32 action);
	[LinkName("QAbstractItemView_VerticalScrollbarValueChanged")]
	public static extern void QAbstractItemView_VerticalScrollbarValueChanged(void* c_this, int32 value);
	[LinkName("QAbstractItemView_HorizontalScrollbarValueChanged")]
	public static extern void QAbstractItemView_HorizontalScrollbarValueChanged(void* c_this, int32 value);
	[LinkName("QAbstractItemView_CloseEditor")]
	public static extern void QAbstractItemView_CloseEditor(void* c_this, void* editor, int64 hint);
	[LinkName("QAbstractItemView_CommitData")]
	public static extern void QAbstractItemView_CommitData(void* c_this, void* editor);
	[LinkName("QAbstractItemView_EditorDestroyed")]
	public static extern void QAbstractItemView_EditorDestroyed(void* c_this, void* editor);
	[LinkName("QAbstractItemView_Connect_Pressed")]
	public static extern void QAbstractItemView_Connect_Pressed(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Clicked")]
	public static extern void QAbstractItemView_Connect_Clicked(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_DoubleClicked")]
	public static extern void QAbstractItemView_Connect_DoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Activated")]
	public static extern void QAbstractItemView_Connect_Activated(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_Entered")]
	public static extern void QAbstractItemView_Connect_Entered(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_ViewportEntered")]
	public static extern void QAbstractItemView_Connect_ViewportEntered(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_Connect_IconSizeChanged")]
	public static extern void QAbstractItemView_Connect_IconSizeChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractItemView_MoveCursor")]
	public static extern void QAbstractItemView_MoveCursor(void* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QAbstractItemView_HorizontalOffset")]
	public static extern int32 QAbstractItemView_HorizontalOffset(void* c_this);
	[LinkName("QAbstractItemView_VerticalOffset")]
	public static extern int32 QAbstractItemView_VerticalOffset(void* c_this);
	[LinkName("QAbstractItemView_IsIndexHidden")]
	public static extern bool QAbstractItemView_IsIndexHidden(void* c_this, void* index);
	[LinkName("QAbstractItemView_SetSelection")]
	public static extern void QAbstractItemView_SetSelection(void* c_this, void* rect, int64 command);
	[LinkName("QAbstractItemView_VisualRegionForSelection")]
	public static extern void QAbstractItemView_VisualRegionForSelection(void* c_this, void* selection);
	[LinkName("QAbstractItemView_SelectedIndexes")]
	public static extern void[] QAbstractItemView_SelectedIndexes(void* c_this);
	[LinkName("QAbstractItemView_Edit2")]
	public static extern bool QAbstractItemView_Edit2(void* c_this, void* index, int64 trigger, void* event);
	[LinkName("QAbstractItemView_SelectionCommand")]
	public static extern int64 QAbstractItemView_SelectionCommand(void* c_this, void* index, void* event);
	[LinkName("QAbstractItemView_StartDrag")]
	public static extern void QAbstractItemView_StartDrag(void* c_this, int64 supportedActions);
	[LinkName("QAbstractItemView_InitViewItemOption")]
	public static extern void QAbstractItemView_InitViewItemOption(void* c_this, void* option);
	[LinkName("QAbstractItemView_State")]
	public static extern int64 QAbstractItemView_State(void* c_this);
	[LinkName("QAbstractItemView_SetState")]
	public static extern void QAbstractItemView_SetState(void* c_this, int64 state);
	[LinkName("QAbstractItemView_ScheduleDelayedItemsLayout")]
	public static extern void QAbstractItemView_ScheduleDelayedItemsLayout(void* c_this);
	[LinkName("QAbstractItemView_ExecuteDelayedItemsLayout")]
	public static extern void QAbstractItemView_ExecuteDelayedItemsLayout(void* c_this);
	[LinkName("QAbstractItemView_SetDirtyRegion")]
	public static extern void QAbstractItemView_SetDirtyRegion(void* c_this, void* region);
	[LinkName("QAbstractItemView_ScrollDirtyRegion")]
	public static extern void QAbstractItemView_ScrollDirtyRegion(void* c_this, int32 dx, int32 dy);
	[LinkName("QAbstractItemView_DirtyRegionOffset")]
	public static extern void QAbstractItemView_DirtyRegionOffset(void* c_this);
	[LinkName("QAbstractItemView_StartAutoScroll")]
	public static extern void QAbstractItemView_StartAutoScroll(void* c_this);
	[LinkName("QAbstractItemView_StopAutoScroll")]
	public static extern void QAbstractItemView_StopAutoScroll(void* c_this);
	[LinkName("QAbstractItemView_DoAutoScroll")]
	public static extern void QAbstractItemView_DoAutoScroll(void* c_this);
	[LinkName("QAbstractItemView_FocusNextPrevChild")]
	public static extern bool QAbstractItemView_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QAbstractItemView_Event")]
	public static extern bool QAbstractItemView_Event(void* c_this, void* event);
	[LinkName("QAbstractItemView_ViewportEvent")]
	public static extern bool QAbstractItemView_ViewportEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_MousePressEvent")]
	public static extern void QAbstractItemView_MousePressEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_MouseMoveEvent")]
	public static extern void QAbstractItemView_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_MouseReleaseEvent")]
	public static extern void QAbstractItemView_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_MouseDoubleClickEvent")]
	public static extern void QAbstractItemView_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_DragEnterEvent")]
	public static extern void QAbstractItemView_DragEnterEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_DragMoveEvent")]
	public static extern void QAbstractItemView_DragMoveEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_DragLeaveEvent")]
	public static extern void QAbstractItemView_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_DropEvent")]
	public static extern void QAbstractItemView_DropEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_FocusInEvent")]
	public static extern void QAbstractItemView_FocusInEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_FocusOutEvent")]
	public static extern void QAbstractItemView_FocusOutEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_KeyPressEvent")]
	public static extern void QAbstractItemView_KeyPressEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_ResizeEvent")]
	public static extern void QAbstractItemView_ResizeEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_TimerEvent")]
	public static extern void QAbstractItemView_TimerEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_InputMethodEvent")]
	public static extern void QAbstractItemView_InputMethodEvent(void* c_this, void* event);
	[LinkName("QAbstractItemView_EventFilter")]
	public static extern bool QAbstractItemView_EventFilter(void* c_this, void* object, void* event);
	[LinkName("QAbstractItemView_DropIndicatorPosition")]
	public static extern int64 QAbstractItemView_DropIndicatorPosition(void* c_this);
	[LinkName("QAbstractItemView_ViewportSizeHint")]
	public static extern void QAbstractItemView_ViewportSizeHint(void* c_this);
	[LinkName("QAbstractItemView_Tr2")]
	public static extern libqt_string QAbstractItemView_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractItemView_Tr3")]
	public static extern libqt_string QAbstractItemView_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAbstractItemView_Delete")]
	public static extern void QAbstractItemView_Delete(void* self);
}