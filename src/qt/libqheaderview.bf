using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QHeaderView__ResizeMode
{
	Interactive = 0,
	Stretch = 1,
	Fixed = 2,
	ResizeToContents = 3,
	Custom = 2,
}
public class QHeaderView
{
	protected void* nativePtr;
	
	public this(int64 orientation)
	{
		this.nativePtr = CQt.QHeaderView_new(orientation);
	}
	
	public ~this()
	{
		CQt.QHeaderView_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QHeaderView_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QHeaderView_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QHeaderView_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QHeaderView_Tr(s);
	}
	
	public virtual void SetModel(void* model)
	{
		CQt.QHeaderView_SetModel(this.nativePtr, model);
	}
	
	public int64 Orientation()
	{
		return CQt.QHeaderView_Orientation(this.nativePtr);
	}
	
	public int32 Offset()
	{
		return CQt.QHeaderView_Offset(this.nativePtr);
	}
	
	public int32 Length()
	{
		return CQt.QHeaderView_Length(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QHeaderView_SizeHint(this.nativePtr);
	}
	
	public virtual void SetVisible(bool v)
	{
		CQt.QHeaderView_SetVisible(this.nativePtr, v);
	}
	
	public int32 SectionSizeHint(int32 logicalIndex)
	{
		return CQt.QHeaderView_SectionSizeHint(this.nativePtr, logicalIndex);
	}
	
	public int32 VisualIndexAt(int32 position)
	{
		return CQt.QHeaderView_VisualIndexAt(this.nativePtr, position);
	}
	
	public int32 LogicalIndexAt(int32 position)
	{
		return CQt.QHeaderView_LogicalIndexAt(this.nativePtr, position);
	}
	
	public int32 LogicalIndexAt2(int32 x, int32 y)
	{
		return CQt.QHeaderView_LogicalIndexAt2(this.nativePtr, x, y);
	}
	
	public int32 LogicalIndexAtWithPos(void* pos)
	{
		return CQt.QHeaderView_LogicalIndexAtWithPos(this.nativePtr, pos);
	}
	
	public int32 SectionSize(int32 logicalIndex)
	{
		return CQt.QHeaderView_SectionSize(this.nativePtr, logicalIndex);
	}
	
	public int32 SectionPosition(int32 logicalIndex)
	{
		return CQt.QHeaderView_SectionPosition(this.nativePtr, logicalIndex);
	}
	
	public int32 SectionViewportPosition(int32 logicalIndex)
	{
		return CQt.QHeaderView_SectionViewportPosition(this.nativePtr, logicalIndex);
	}
	
	public void MoveSection(int32 from, int32 to)
	{
		CQt.QHeaderView_MoveSection(this.nativePtr, from, to);
	}
	
	public void SwapSections(int32 first, int32 second)
	{
		CQt.QHeaderView_SwapSections(this.nativePtr, first, second);
	}
	
	public void ResizeSection(int32 logicalIndex, int32 size)
	{
		CQt.QHeaderView_ResizeSection(this.nativePtr, logicalIndex, size);
	}
	
	public void ResizeSections(int64 mode)
	{
		CQt.QHeaderView_ResizeSections(this.nativePtr, mode);
	}
	
	public bool IsSectionHidden(int32 logicalIndex)
	{
		return CQt.QHeaderView_IsSectionHidden(this.nativePtr, logicalIndex);
	}
	
	public void SetSectionHidden(int32 logicalIndex, bool hide)
	{
		CQt.QHeaderView_SetSectionHidden(this.nativePtr, logicalIndex, hide);
	}
	
	public int32 HiddenSectionCount()
	{
		return CQt.QHeaderView_HiddenSectionCount(this.nativePtr);
	}
	
	public void HideSection(int32 logicalIndex)
	{
		CQt.QHeaderView_HideSection(this.nativePtr, logicalIndex);
	}
	
	public void ShowSection(int32 logicalIndex)
	{
		CQt.QHeaderView_ShowSection(this.nativePtr, logicalIndex);
	}
	
	public int32 Count()
	{
		return CQt.QHeaderView_Count(this.nativePtr);
	}
	
	public int32 VisualIndex(int32 logicalIndex)
	{
		return CQt.QHeaderView_VisualIndex(this.nativePtr, logicalIndex);
	}
	
	public int32 LogicalIndex(int32 visualIndex)
	{
		return CQt.QHeaderView_LogicalIndex(this.nativePtr, visualIndex);
	}
	
	public void SetSectionsMovable(bool movable)
	{
		CQt.QHeaderView_SetSectionsMovable(this.nativePtr, movable);
	}
	
	public bool SectionsMovable()
	{
		return CQt.QHeaderView_SectionsMovable(this.nativePtr);
	}
	
	public void SetFirstSectionMovable(bool movable)
	{
		CQt.QHeaderView_SetFirstSectionMovable(this.nativePtr, movable);
	}
	
	public bool IsFirstSectionMovable()
	{
		return CQt.QHeaderView_IsFirstSectionMovable(this.nativePtr);
	}
	
	public void SetSectionsClickable(bool clickable)
	{
		CQt.QHeaderView_SetSectionsClickable(this.nativePtr, clickable);
	}
	
	public bool SectionsClickable()
	{
		return CQt.QHeaderView_SectionsClickable(this.nativePtr);
	}
	
	public void SetHighlightSections(bool highlight)
	{
		CQt.QHeaderView_SetHighlightSections(this.nativePtr, highlight);
	}
	
	public bool HighlightSections()
	{
		return CQt.QHeaderView_HighlightSections(this.nativePtr);
	}
	
	public int64 SectionResizeMode(int32 logicalIndex)
	{
		return CQt.QHeaderView_SectionResizeMode(this.nativePtr, logicalIndex);
	}
	
	public void SetSectionResizeMode(int64 mode)
	{
		CQt.QHeaderView_SetSectionResizeMode(this.nativePtr, mode);
	}
	
	public void SetSectionResizeMode2(int32 logicalIndex, int64 mode)
	{
		CQt.QHeaderView_SetSectionResizeMode2(this.nativePtr, logicalIndex, mode);
	}
	
	public void SetResizeContentsPrecision(int32 precision)
	{
		CQt.QHeaderView_SetResizeContentsPrecision(this.nativePtr, precision);
	}
	
	public int32 ResizeContentsPrecision()
	{
		return CQt.QHeaderView_ResizeContentsPrecision(this.nativePtr);
	}
	
	public int32 StretchSectionCount()
	{
		return CQt.QHeaderView_StretchSectionCount(this.nativePtr);
	}
	
	public void SetSortIndicatorShown(bool show)
	{
		CQt.QHeaderView_SetSortIndicatorShown(this.nativePtr, show);
	}
	
	public bool IsSortIndicatorShown()
	{
		return CQt.QHeaderView_IsSortIndicatorShown(this.nativePtr);
	}
	
	public void SetSortIndicator(int32 logicalIndex, int64 order)
	{
		CQt.QHeaderView_SetSortIndicator(this.nativePtr, logicalIndex, order);
	}
	
	public int32 SortIndicatorSection()
	{
		return CQt.QHeaderView_SortIndicatorSection(this.nativePtr);
	}
	
	public int64 SortIndicatorOrder()
	{
		return CQt.QHeaderView_SortIndicatorOrder(this.nativePtr);
	}
	
	public void SetSortIndicatorClearable(bool clearable)
	{
		CQt.QHeaderView_SetSortIndicatorClearable(this.nativePtr, clearable);
	}
	
	public bool IsSortIndicatorClearable()
	{
		return CQt.QHeaderView_IsSortIndicatorClearable(this.nativePtr);
	}
	
	public bool StretchLastSection()
	{
		return CQt.QHeaderView_StretchLastSection(this.nativePtr);
	}
	
	public void SetStretchLastSection(bool stretch)
	{
		CQt.QHeaderView_SetStretchLastSection(this.nativePtr, stretch);
	}
	
	public bool CascadingSectionResizes()
	{
		return CQt.QHeaderView_CascadingSectionResizes(this.nativePtr);
	}
	
	public void SetCascadingSectionResizes(bool enable)
	{
		CQt.QHeaderView_SetCascadingSectionResizes(this.nativePtr, enable);
	}
	
	public int32 DefaultSectionSize()
	{
		return CQt.QHeaderView_DefaultSectionSize(this.nativePtr);
	}
	
	public void SetDefaultSectionSize(int32 size)
	{
		CQt.QHeaderView_SetDefaultSectionSize(this.nativePtr, size);
	}
	
	public void ResetDefaultSectionSize()
	{
		CQt.QHeaderView_ResetDefaultSectionSize(this.nativePtr);
	}
	
	public int32 MinimumSectionSize()
	{
		return CQt.QHeaderView_MinimumSectionSize(this.nativePtr);
	}
	
	public void SetMinimumSectionSize(int32 size)
	{
		CQt.QHeaderView_SetMinimumSectionSize(this.nativePtr, size);
	}
	
	public int32 MaximumSectionSize()
	{
		return CQt.QHeaderView_MaximumSectionSize(this.nativePtr);
	}
	
	public void SetMaximumSectionSize(int32 size)
	{
		CQt.QHeaderView_SetMaximumSectionSize(this.nativePtr, size);
	}
	
	public int64 DefaultAlignment()
	{
		return CQt.QHeaderView_DefaultAlignment(this.nativePtr);
	}
	
	public void SetDefaultAlignment(int64 alignment)
	{
		CQt.QHeaderView_SetDefaultAlignment(this.nativePtr, alignment);
	}
	
	public virtual void DoItemsLayout()
	{
		CQt.QHeaderView_DoItemsLayout(this.nativePtr);
	}
	
	public bool SectionsMoved()
	{
		return CQt.QHeaderView_SectionsMoved(this.nativePtr);
	}
	
	public bool SectionsHidden()
	{
		return CQt.QHeaderView_SectionsHidden(this.nativePtr);
	}
	
	public libqt_string SaveState()
	{
		return CQt.QHeaderView_SaveState(this.nativePtr);
	}
	
	public bool RestoreState(libqt_string state)
	{
		return CQt.QHeaderView_RestoreState(this.nativePtr, state);
	}
	
	public virtual void Reset()
	{
		CQt.QHeaderView_Reset(this.nativePtr);
	}
	
	public void SetOffset(int32 offset)
	{
		CQt.QHeaderView_SetOffset(this.nativePtr, offset);
	}
	
	public void SetOffsetToSectionPosition(int32 visualIndex)
	{
		CQt.QHeaderView_SetOffsetToSectionPosition(this.nativePtr, visualIndex);
	}
	
	public void SetOffsetToLastSection()
	{
		CQt.QHeaderView_SetOffsetToLastSection(this.nativePtr);
	}
	
	public void HeaderDataChanged(int64 orientation, int32 logicalFirst, int32 logicalLast)
	{
		CQt.QHeaderView_HeaderDataChanged(this.nativePtr, orientation, logicalFirst, logicalLast);
	}
	
	public void UpdateSection(int32 logicalIndex)
	{
		CQt.QHeaderView_UpdateSection(this.nativePtr, logicalIndex);
	}
	
	public void ResizeSections2()
	{
		CQt.QHeaderView_ResizeSections2(this.nativePtr);
	}
	
	public void SectionsInserted(void* parent, int32 logicalFirst, int32 logicalLast)
	{
		CQt.QHeaderView_SectionsInserted(this.nativePtr, parent, logicalFirst, logicalLast);
	}
	
	public void SectionsAboutToBeRemoved(void* parent, int32 logicalFirst, int32 logicalLast)
	{
		CQt.QHeaderView_SectionsAboutToBeRemoved(this.nativePtr, parent, logicalFirst, logicalLast);
	}
	
	public void Initialize()
	{
		CQt.QHeaderView_Initialize(this.nativePtr);
	}
	
	public void InitializeSections()
	{
		CQt.QHeaderView_InitializeSections(this.nativePtr);
	}
	
	public void InitializeSections2(int32 start, int32 end)
	{
		CQt.QHeaderView_InitializeSections2(this.nativePtr, start, end);
	}
	
	public virtual void CurrentChanged(void* current, void* old)
	{
		CQt.QHeaderView_CurrentChanged(this.nativePtr, current, old);
	}
	
	public virtual bool Event(void* e)
	{
		return CQt.QHeaderView_Event(this.nativePtr, e);
	}
	
	public virtual void PaintEvent(void* e)
	{
		CQt.QHeaderView_PaintEvent(this.nativePtr, e);
	}
	
	public virtual void MousePressEvent(void* e)
	{
		CQt.QHeaderView_MousePressEvent(this.nativePtr, e);
	}
	
	public virtual void MouseMoveEvent(void* e)
	{
		CQt.QHeaderView_MouseMoveEvent(this.nativePtr, e);
	}
	
	public virtual void MouseReleaseEvent(void* e)
	{
		CQt.QHeaderView_MouseReleaseEvent(this.nativePtr, e);
	}
	
	public virtual void MouseDoubleClickEvent(void* e)
	{
		CQt.QHeaderView_MouseDoubleClickEvent(this.nativePtr, e);
	}
	
	public virtual bool ViewportEvent(void* e)
	{
		return CQt.QHeaderView_ViewportEvent(this.nativePtr, e);
	}
	
	public virtual void PaintSection(void* painter, void* rect, int32 logicalIndex)
	{
		CQt.QHeaderView_PaintSection(this.nativePtr, painter, rect, logicalIndex);
	}
	
	public virtual void SectionSizeFromContents(int32 logicalIndex)
	{
		CQt.QHeaderView_SectionSizeFromContents(this.nativePtr, logicalIndex);
	}
	
	public virtual int32 HorizontalOffset()
	{
		return CQt.QHeaderView_HorizontalOffset(this.nativePtr);
	}
	
	public virtual int32 VerticalOffset()
	{
		return CQt.QHeaderView_VerticalOffset(this.nativePtr);
	}
	
	public virtual void UpdateGeometries()
	{
		CQt.QHeaderView_UpdateGeometries(this.nativePtr);
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QHeaderView_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public virtual void DataChanged(void* topLeft, void* bottomRight, int32[] roles)
	{
		CQt.QHeaderView_DataChanged(this.nativePtr, topLeft, bottomRight, roles);
	}
	
	public virtual void RowsInserted(void* parent, int32 start, int32 end)
	{
		CQt.QHeaderView_RowsInserted(this.nativePtr, parent, start, end);
	}
	
	public virtual void VisualRect(void* index)
	{
		CQt.QHeaderView_VisualRect(this.nativePtr, index);
	}
	
	public virtual void ScrollTo(void* index, int64 hint)
	{
		CQt.QHeaderView_ScrollTo(this.nativePtr, index, hint);
	}
	
	public virtual void IndexAt(void* p)
	{
		CQt.QHeaderView_IndexAt(this.nativePtr, p);
	}
	
	public virtual bool IsIndexHidden(void* index)
	{
		return CQt.QHeaderView_IsIndexHidden(this.nativePtr, index);
	}
	
	public virtual void MoveCursor(int64 param1, int64 param2)
	{
		CQt.QHeaderView_MoveCursor(this.nativePtr, param1, param2);
	}
	
	public virtual void SetSelection(void* rect, int64 flags)
	{
		CQt.QHeaderView_SetSelection(this.nativePtr, rect, flags);
	}
	
	public virtual void VisualRegionForSelection(void* selection)
	{
		CQt.QHeaderView_VisualRegionForSelection(this.nativePtr, selection);
	}
	
	public virtual void InitStyleOptionForIndex(void* option, int32 logicalIndex)
	{
		CQt.QHeaderView_InitStyleOptionForIndex(this.nativePtr, option, logicalIndex);
	}
	
	public virtual void InitStyleOption(void* option)
	{
		CQt.QHeaderView_InitStyleOption(this.nativePtr, option);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QHeaderView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QHeaderView_Tr3(s, c, n);
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
	
	public virtual void SetRootIndex(void* index)
	{
		CQt.QAbstractItemView_SetRootIndex(this.nativePtr, index);
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
	[LinkName("QHeaderView_new")]
	public static extern void* QHeaderView_new(int64 orientation);
	[LinkName("QHeaderView_new2")]
	public static extern void* QHeaderView_new2(int64 orientation, void* parent);
	[LinkName("QHeaderView_MetaObject")]
	public static extern void* QHeaderView_MetaObject(void* c_this);
	[LinkName("QHeaderView_Metacast")]
	public static extern void* QHeaderView_Metacast(void* c_this, char8[] param1);
	[LinkName("QHeaderView_Metacall")]
	public static extern int32 QHeaderView_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QHeaderView_Tr")]
	public static extern libqt_string QHeaderView_Tr(char8[] s);
	[LinkName("QHeaderView_SetModel")]
	public static extern void QHeaderView_SetModel(void* c_this, void* model);
	[LinkName("QHeaderView_Orientation")]
	public static extern int64 QHeaderView_Orientation(void* c_this);
	[LinkName("QHeaderView_Offset")]
	public static extern int32 QHeaderView_Offset(void* c_this);
	[LinkName("QHeaderView_Length")]
	public static extern int32 QHeaderView_Length(void* c_this);
	[LinkName("QHeaderView_SizeHint")]
	public static extern void QHeaderView_SizeHint(void* c_this);
	[LinkName("QHeaderView_SetVisible")]
	public static extern void QHeaderView_SetVisible(void* c_this, bool v);
	[LinkName("QHeaderView_SectionSizeHint")]
	public static extern int32 QHeaderView_SectionSizeHint(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_VisualIndexAt")]
	public static extern int32 QHeaderView_VisualIndexAt(void* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt")]
	public static extern int32 QHeaderView_LogicalIndexAt(void* c_this, int32 position);
	[LinkName("QHeaderView_LogicalIndexAt2")]
	public static extern int32 QHeaderView_LogicalIndexAt2(void* c_this, int32 x, int32 y);
	[LinkName("QHeaderView_LogicalIndexAtWithPos")]
	public static extern int32 QHeaderView_LogicalIndexAtWithPos(void* c_this, void* pos);
	[LinkName("QHeaderView_SectionSize")]
	public static extern int32 QHeaderView_SectionSize(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionPosition")]
	public static extern int32 QHeaderView_SectionPosition(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SectionViewportPosition")]
	public static extern int32 QHeaderView_SectionViewportPosition(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_MoveSection")]
	public static extern void QHeaderView_MoveSection(void* c_this, int32 from, int32 to);
	[LinkName("QHeaderView_SwapSections")]
	public static extern void QHeaderView_SwapSections(void* c_this, int32 first, int32 second);
	[LinkName("QHeaderView_ResizeSection")]
	public static extern void QHeaderView_ResizeSection(void* c_this, int32 logicalIndex, int32 size);
	[LinkName("QHeaderView_ResizeSections")]
	public static extern void QHeaderView_ResizeSections(void* c_this, int64 mode);
	[LinkName("QHeaderView_IsSectionHidden")]
	public static extern bool QHeaderView_IsSectionHidden(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionHidden")]
	public static extern void QHeaderView_SetSectionHidden(void* c_this, int32 logicalIndex, bool hide);
	[LinkName("QHeaderView_HiddenSectionCount")]
	public static extern int32 QHeaderView_HiddenSectionCount(void* c_this);
	[LinkName("QHeaderView_HideSection")]
	public static extern void QHeaderView_HideSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ShowSection")]
	public static extern void QHeaderView_ShowSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_Count")]
	public static extern int32 QHeaderView_Count(void* c_this);
	[LinkName("QHeaderView_VisualIndex")]
	public static extern int32 QHeaderView_VisualIndex(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_LogicalIndex")]
	public static extern int32 QHeaderView_LogicalIndex(void* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetSectionsMovable")]
	public static extern void QHeaderView_SetSectionsMovable(void* c_this, bool movable);
	[LinkName("QHeaderView_SectionsMovable")]
	public static extern bool QHeaderView_SectionsMovable(void* c_this);
	[LinkName("QHeaderView_SetFirstSectionMovable")]
	public static extern void QHeaderView_SetFirstSectionMovable(void* c_this, bool movable);
	[LinkName("QHeaderView_IsFirstSectionMovable")]
	public static extern bool QHeaderView_IsFirstSectionMovable(void* c_this);
	[LinkName("QHeaderView_SetSectionsClickable")]
	public static extern void QHeaderView_SetSectionsClickable(void* c_this, bool clickable);
	[LinkName("QHeaderView_SectionsClickable")]
	public static extern bool QHeaderView_SectionsClickable(void* c_this);
	[LinkName("QHeaderView_SetHighlightSections")]
	public static extern void QHeaderView_SetHighlightSections(void* c_this, bool highlight);
	[LinkName("QHeaderView_HighlightSections")]
	public static extern bool QHeaderView_HighlightSections(void* c_this);
	[LinkName("QHeaderView_SectionResizeMode")]
	public static extern int64 QHeaderView_SectionResizeMode(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_SetSectionResizeMode")]
	public static extern void QHeaderView_SetSectionResizeMode(void* c_this, int64 mode);
	[LinkName("QHeaderView_SetSectionResizeMode2")]
	public static extern void QHeaderView_SetSectionResizeMode2(void* c_this, int32 logicalIndex, int64 mode);
	[LinkName("QHeaderView_SetResizeContentsPrecision")]
	public static extern void QHeaderView_SetResizeContentsPrecision(void* c_this, int32 precision);
	[LinkName("QHeaderView_ResizeContentsPrecision")]
	public static extern int32 QHeaderView_ResizeContentsPrecision(void* c_this);
	[LinkName("QHeaderView_StretchSectionCount")]
	public static extern int32 QHeaderView_StretchSectionCount(void* c_this);
	[LinkName("QHeaderView_SetSortIndicatorShown")]
	public static extern void QHeaderView_SetSortIndicatorShown(void* c_this, bool show);
	[LinkName("QHeaderView_IsSortIndicatorShown")]
	public static extern bool QHeaderView_IsSortIndicatorShown(void* c_this);
	[LinkName("QHeaderView_SetSortIndicator")]
	public static extern void QHeaderView_SetSortIndicator(void* c_this, int32 logicalIndex, int64 order);
	[LinkName("QHeaderView_SortIndicatorSection")]
	public static extern int32 QHeaderView_SortIndicatorSection(void* c_this);
	[LinkName("QHeaderView_SortIndicatorOrder")]
	public static extern int64 QHeaderView_SortIndicatorOrder(void* c_this);
	[LinkName("QHeaderView_SetSortIndicatorClearable")]
	public static extern void QHeaderView_SetSortIndicatorClearable(void* c_this, bool clearable);
	[LinkName("QHeaderView_IsSortIndicatorClearable")]
	public static extern bool QHeaderView_IsSortIndicatorClearable(void* c_this);
	[LinkName("QHeaderView_StretchLastSection")]
	public static extern bool QHeaderView_StretchLastSection(void* c_this);
	[LinkName("QHeaderView_SetStretchLastSection")]
	public static extern void QHeaderView_SetStretchLastSection(void* c_this, bool stretch);
	[LinkName("QHeaderView_CascadingSectionResizes")]
	public static extern bool QHeaderView_CascadingSectionResizes(void* c_this);
	[LinkName("QHeaderView_SetCascadingSectionResizes")]
	public static extern void QHeaderView_SetCascadingSectionResizes(void* c_this, bool enable);
	[LinkName("QHeaderView_DefaultSectionSize")]
	public static extern int32 QHeaderView_DefaultSectionSize(void* c_this);
	[LinkName("QHeaderView_SetDefaultSectionSize")]
	public static extern void QHeaderView_SetDefaultSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_ResetDefaultSectionSize")]
	public static extern void QHeaderView_ResetDefaultSectionSize(void* c_this);
	[LinkName("QHeaderView_MinimumSectionSize")]
	public static extern int32 QHeaderView_MinimumSectionSize(void* c_this);
	[LinkName("QHeaderView_SetMinimumSectionSize")]
	public static extern void QHeaderView_SetMinimumSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_MaximumSectionSize")]
	public static extern int32 QHeaderView_MaximumSectionSize(void* c_this);
	[LinkName("QHeaderView_SetMaximumSectionSize")]
	public static extern void QHeaderView_SetMaximumSectionSize(void* c_this, int32 size);
	[LinkName("QHeaderView_DefaultAlignment")]
	public static extern int64 QHeaderView_DefaultAlignment(void* c_this);
	[LinkName("QHeaderView_SetDefaultAlignment")]
	public static extern void QHeaderView_SetDefaultAlignment(void* c_this, int64 alignment);
	[LinkName("QHeaderView_DoItemsLayout")]
	public static extern void QHeaderView_DoItemsLayout(void* c_this);
	[LinkName("QHeaderView_SectionsMoved")]
	public static extern bool QHeaderView_SectionsMoved(void* c_this);
	[LinkName("QHeaderView_SectionsHidden")]
	public static extern bool QHeaderView_SectionsHidden(void* c_this);
	[LinkName("QHeaderView_SaveState")]
	public static extern libqt_string QHeaderView_SaveState(void* c_this);
	[LinkName("QHeaderView_RestoreState")]
	public static extern bool QHeaderView_RestoreState(void* c_this, libqt_string state);
	[LinkName("QHeaderView_Reset")]
	public static extern void QHeaderView_Reset(void* c_this);
	[LinkName("QHeaderView_SetOffset")]
	public static extern void QHeaderView_SetOffset(void* c_this, int32 offset);
	[LinkName("QHeaderView_SetOffsetToSectionPosition")]
	public static extern void QHeaderView_SetOffsetToSectionPosition(void* c_this, int32 visualIndex);
	[LinkName("QHeaderView_SetOffsetToLastSection")]
	public static extern void QHeaderView_SetOffsetToLastSection(void* c_this);
	[LinkName("QHeaderView_HeaderDataChanged")]
	public static extern void QHeaderView_HeaderDataChanged(void* c_this, int64 orientation, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_Connect_SectionMoved")]
	public static extern void QHeaderView_Connect_SectionMoved(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionResized")]
	public static extern void QHeaderView_Connect_SectionResized(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionPressed")]
	public static extern void QHeaderView_Connect_SectionPressed(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionClicked")]
	public static extern void QHeaderView_Connect_SectionClicked(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionEntered")]
	public static extern void QHeaderView_Connect_SectionEntered(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionDoubleClicked")]
	public static extern void QHeaderView_Connect_SectionDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionCountChanged")]
	public static extern void QHeaderView_Connect_SectionCountChanged(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SectionHandleDoubleClicked")]
	public static extern void QHeaderView_Connect_SectionHandleDoubleClicked(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_GeometriesChanged")]
	public static extern void QHeaderView_Connect_GeometriesChanged(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SortIndicatorChanged")]
	public static extern void QHeaderView_Connect_SortIndicatorChanged(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_Connect_SortIndicatorClearableChanged")]
	public static extern void QHeaderView_Connect_SortIndicatorClearableChanged(void* c_this, c_intptr slot);
	[LinkName("QHeaderView_UpdateSection")]
	public static extern void QHeaderView_UpdateSection(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_ResizeSections2")]
	public static extern void QHeaderView_ResizeSections2(void* c_this);
	[LinkName("QHeaderView_SectionsInserted")]
	public static extern void QHeaderView_SectionsInserted(void* c_this, void* parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_SectionsAboutToBeRemoved")]
	public static extern void QHeaderView_SectionsAboutToBeRemoved(void* c_this, void* parent, int32 logicalFirst, int32 logicalLast);
	[LinkName("QHeaderView_Initialize")]
	public static extern void QHeaderView_Initialize(void* c_this);
	[LinkName("QHeaderView_InitializeSections")]
	public static extern void QHeaderView_InitializeSections(void* c_this);
	[LinkName("QHeaderView_InitializeSections2")]
	public static extern void QHeaderView_InitializeSections2(void* c_this, int32 start, int32 end);
	[LinkName("QHeaderView_CurrentChanged")]
	public static extern void QHeaderView_CurrentChanged(void* c_this, void* current, void* old);
	[LinkName("QHeaderView_Event")]
	public static extern bool QHeaderView_Event(void* c_this, void* e);
	[LinkName("QHeaderView_PaintEvent")]
	public static extern void QHeaderView_PaintEvent(void* c_this, void* e);
	[LinkName("QHeaderView_MousePressEvent")]
	public static extern void QHeaderView_MousePressEvent(void* c_this, void* e);
	[LinkName("QHeaderView_MouseMoveEvent")]
	public static extern void QHeaderView_MouseMoveEvent(void* c_this, void* e);
	[LinkName("QHeaderView_MouseReleaseEvent")]
	public static extern void QHeaderView_MouseReleaseEvent(void* c_this, void* e);
	[LinkName("QHeaderView_MouseDoubleClickEvent")]
	public static extern void QHeaderView_MouseDoubleClickEvent(void* c_this, void* e);
	[LinkName("QHeaderView_ViewportEvent")]
	public static extern bool QHeaderView_ViewportEvent(void* c_this, void* e);
	[LinkName("QHeaderView_PaintSection")]
	public static extern void QHeaderView_PaintSection(void* c_this, void* painter, void* rect, int32 logicalIndex);
	[LinkName("QHeaderView_SectionSizeFromContents")]
	public static extern void QHeaderView_SectionSizeFromContents(void* c_this, int32 logicalIndex);
	[LinkName("QHeaderView_HorizontalOffset")]
	public static extern int32 QHeaderView_HorizontalOffset(void* c_this);
	[LinkName("QHeaderView_VerticalOffset")]
	public static extern int32 QHeaderView_VerticalOffset(void* c_this);
	[LinkName("QHeaderView_UpdateGeometries")]
	public static extern void QHeaderView_UpdateGeometries(void* c_this);
	[LinkName("QHeaderView_ScrollContentsBy")]
	public static extern void QHeaderView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QHeaderView_DataChanged")]
	public static extern void QHeaderView_DataChanged(void* c_this, void* topLeft, void* bottomRight, int32[] roles);
	[LinkName("QHeaderView_RowsInserted")]
	public static extern void QHeaderView_RowsInserted(void* c_this, void* parent, int32 start, int32 end);
	[LinkName("QHeaderView_VisualRect")]
	public static extern void QHeaderView_VisualRect(void* c_this, void* index);
	[LinkName("QHeaderView_ScrollTo")]
	public static extern void QHeaderView_ScrollTo(void* c_this, void* index, int64 hint);
	[LinkName("QHeaderView_IndexAt")]
	public static extern void QHeaderView_IndexAt(void* c_this, void* p);
	[LinkName("QHeaderView_IsIndexHidden")]
	public static extern bool QHeaderView_IsIndexHidden(void* c_this, void* index);
	[LinkName("QHeaderView_MoveCursor")]
	public static extern void QHeaderView_MoveCursor(void* c_this, int64 param1, int64 param2);
	[LinkName("QHeaderView_SetSelection")]
	public static extern void QHeaderView_SetSelection(void* c_this, void* rect, int64 flags);
	[LinkName("QHeaderView_VisualRegionForSelection")]
	public static extern void QHeaderView_VisualRegionForSelection(void* c_this, void* selection);
	[LinkName("QHeaderView_InitStyleOptionForIndex")]
	public static extern void QHeaderView_InitStyleOptionForIndex(void* c_this, void* option, int32 logicalIndex);
	[LinkName("QHeaderView_InitStyleOption")]
	public static extern void QHeaderView_InitStyleOption(void* c_this, void* option);
	[LinkName("QHeaderView_Tr2")]
	public static extern libqt_string QHeaderView_Tr2(char8[] s, char8[] c);
	[LinkName("QHeaderView_Tr3")]
	public static extern libqt_string QHeaderView_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QHeaderView_Delete")]
	public static extern void QHeaderView_Delete(void* self);
}