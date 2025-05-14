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
public interface IQHeaderView
{
	void* NativePtr { get; }
}
public struct QHeaderViewPtr : IQHeaderView, IDisposable, IQAbstractItemView
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 orientation)
	{
		return .(CQt.QHeaderView_new((int64)orientation));
	}
	
	public void Dispose()
	{
		CQt.QHeaderView_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QHeaderView_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QHeaderView_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QHeaderView_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QHeaderView_Tr(s);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		CQt.QHeaderView_SetModel(this.nativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr);
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
	
	public void SizeHint()
	{
		CQt.QHeaderView_SizeHint(this.nativePtr);
	}
	
	public void SetVisible(bool v)
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
	
	public int32 LogicalIndexAtWithPos(IQPoint pos)
	{
		return CQt.QHeaderView_LogicalIndexAtWithPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
		CQt.QHeaderView_ResizeSections(this.nativePtr, (int64)mode);
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
		CQt.QHeaderView_SetSectionResizeMode(this.nativePtr, (int64)mode);
	}
	
	public void SetSectionResizeMode2(int32 logicalIndex, int64 mode)
	{
		CQt.QHeaderView_SetSectionResizeMode2(this.nativePtr, logicalIndex, (int64)mode);
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
		CQt.QHeaderView_SetSortIndicator(this.nativePtr, logicalIndex, (int64)order);
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
	
	public void DoItemsLayout()
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
	
	public bool RestoreState(String state)
	{
		return CQt.QHeaderView_RestoreState(this.nativePtr, libqt_string(state));
	}
	
	public void Reset()
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
		CQt.QHeaderView_HeaderDataChanged(this.nativePtr, (int64)orientation, logicalFirst, logicalLast);
	}
	
	public void UpdateSection(int32 logicalIndex)
	{
		CQt.QHeaderView_UpdateSection(this.nativePtr, logicalIndex);
	}
	
	public void ResizeSections2()
	{
		CQt.QHeaderView_ResizeSections2(this.nativePtr);
	}
	
	public void SectionsInserted(IQModelIndex parent, int32 logicalFirst, int32 logicalLast)
	{
		CQt.QHeaderView_SectionsInserted(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, logicalFirst, logicalLast);
	}
	
	public void SectionsAboutToBeRemoved(IQModelIndex parent, int32 logicalFirst, int32 logicalLast)
	{
		CQt.QHeaderView_SectionsAboutToBeRemoved(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, logicalFirst, logicalLast);
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
	
	public void CurrentChanged(IQModelIndex current, IQModelIndex old)
	{
		CQt.QHeaderView_CurrentChanged(this.nativePtr, (current == default || current.NativePtr == default) ? default : current.NativePtr, (old == default || old.NativePtr == default) ? default : old.NativePtr);
	}
	
	public bool Event(IQEvent e)
	{
		return CQt.QHeaderView_Event(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void PaintEvent(IQPaintEvent e)
	{
		CQt.QHeaderView_PaintEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void MousePressEvent(IQMouseEvent e)
	{
		CQt.QHeaderView_MousePressEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void MouseMoveEvent(IQMouseEvent e)
	{
		CQt.QHeaderView_MouseMoveEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void MouseReleaseEvent(IQMouseEvent e)
	{
		CQt.QHeaderView_MouseReleaseEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void MouseDoubleClickEvent(IQMouseEvent e)
	{
		CQt.QHeaderView_MouseDoubleClickEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public bool ViewportEvent(IQEvent e)
	{
		return CQt.QHeaderView_ViewportEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void PaintSection(IQPainter painter, IQRect rect, int32 logicalIndex)
	{
		CQt.QHeaderView_PaintSection(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, logicalIndex);
	}
	
	public void SectionSizeFromContents(int32 logicalIndex)
	{
		CQt.QHeaderView_SectionSizeFromContents(this.nativePtr, logicalIndex);
	}
	
	public int32 HorizontalOffset()
	{
		return CQt.QHeaderView_HorizontalOffset(this.nativePtr);
	}
	
	public int32 VerticalOffset()
	{
		return CQt.QHeaderView_VerticalOffset(this.nativePtr);
	}
	
	public void UpdateGeometries()
	{
		CQt.QHeaderView_UpdateGeometries(this.nativePtr);
	}
	
	public void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QHeaderView_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public void DataChanged(IQModelIndex topLeft, IQModelIndex bottomRight, int32[] roles)
	{
		CQt.QHeaderView_DataChanged(this.nativePtr, (topLeft == default || topLeft.NativePtr == default) ? default : topLeft.NativePtr, (bottomRight == default || bottomRight.NativePtr == default) ? default : bottomRight.NativePtr, null);
	}
	
	public void RowsInserted(IQModelIndex parent, int32 start, int32 end)
	{
		CQt.QHeaderView_RowsInserted(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, start, end);
	}
	
	public void VisualRect(IQModelIndex index)
	{
		CQt.QHeaderView_VisualRect(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ScrollTo(IQModelIndex index, int64 hint)
	{
		CQt.QHeaderView_ScrollTo(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (int64)hint);
	}
	
	public void IndexAt(IQPoint p)
	{
		CQt.QHeaderView_IndexAt(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public bool IsIndexHidden(IQModelIndex index)
	{
		return CQt.QHeaderView_IsIndexHidden(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void MoveCursor(int64 param1, int64 param2)
	{
		CQt.QHeaderView_MoveCursor(this.nativePtr, (int64)param1, param2);
	}
	
	public void SetSelection(IQRect rect, int64 flags)
	{
		CQt.QHeaderView_SetSelection(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, flags);
	}
	
	public void VisualRegionForSelection(IQItemSelection selection)
	{
		CQt.QHeaderView_VisualRegionForSelection(this.nativePtr, (selection == default || selection.NativePtr == default) ? default : selection.NativePtr);
	}
	
	public void InitStyleOptionForIndex(IQStyleOptionHeader option, int32 logicalIndex)
	{
		CQt.QHeaderView_InitStyleOptionForIndex(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, logicalIndex);
	}
	
	public void InitStyleOption(IQStyleOptionHeader option)
	{
		CQt.QHeaderView_InitStyleOption(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QHeaderView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QHeaderView_Tr3(s, c, n);
	}
	
	public void* Model()
	{
		return CQt.QAbstractItemView_Model(this.nativePtr);
	}
	
	public void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		CQt.QAbstractItemView_SetSelectionModel(this.nativePtr, (selectionModel == default || selectionModel.NativePtr == default) ? default : selectionModel.NativePtr);
	}
	
	public void* SelectionModel()
	{
		return CQt.QAbstractItemView_SelectionModel(this.nativePtr);
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegate(this.nativePtr, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegate()
	{
		return CQt.QAbstractItemView_ItemDelegate(this.nativePtr);
	}
	
	public void SetSelectionMode(int64 mode)
	{
		CQt.QAbstractItemView_SetSelectionMode(this.nativePtr, (int64)mode);
	}
	
	public int64 SelectionMode()
	{
		return CQt.QAbstractItemView_SelectionMode(this.nativePtr);
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		CQt.QAbstractItemView_SetSelectionBehavior(this.nativePtr, (int64)behavior);
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
		CQt.QAbstractItemView_SetVerticalScrollMode(this.nativePtr, (int64)mode);
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
		CQt.QAbstractItemView_SetHorizontalScrollMode(this.nativePtr, (int64)mode);
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
		CQt.QAbstractItemView_SetDragDropMode(this.nativePtr, (int64)behavior);
	}
	
	public int64 DragDropMode()
	{
		return CQt.QAbstractItemView_DragDropMode(this.nativePtr);
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		CQt.QAbstractItemView_SetDefaultDropAction(this.nativePtr, (int64)dropAction);
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
	
	public void SetIconSize(IQSize size)
	{
		CQt.QAbstractItemView_SetIconSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void IconSize()
	{
		CQt.QAbstractItemView_IconSize(this.nativePtr);
	}
	
	public void SetTextElideMode(int64 mode)
	{
		CQt.QAbstractItemView_SetTextElideMode(this.nativePtr, (int64)mode);
	}
	
	public int64 TextElideMode()
	{
		return CQt.QAbstractItemView_TextElideMode(this.nativePtr);
	}
	
	public void KeyboardSearch(String search)
	{
		CQt.QAbstractItemView_KeyboardSearch(this.nativePtr, libqt_string(search));
	}
	
	public void SizeHintForIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SizeHintForIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int32 SizeHintForRow(int32 row)
	{
		return CQt.QAbstractItemView_SizeHintForRow(this.nativePtr, row);
	}
	
	public int32 SizeHintForColumn(int32 column)
	{
		return CQt.QAbstractItemView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void OpenPersistentEditor(IQModelIndex index)
	{
		CQt.QAbstractItemView_OpenPersistentEditor(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ClosePersistentEditor(IQModelIndex index)
	{
		CQt.QAbstractItemView_ClosePersistentEditor(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public bool IsPersistentEditorOpen(IQModelIndex index)
	{
		return CQt.QAbstractItemView_IsPersistentEditorOpen(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetIndexWidget(IQModelIndex index, IQWidget widget)
	{
		CQt.QAbstractItemView_SetIndexWidget(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void* IndexWidget(IQModelIndex index)
	{
		return CQt.QAbstractItemView_IndexWidget(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetItemDelegateForRow(int32 row, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForRow(this.nativePtr, row, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return CQt.QAbstractItemView_ItemDelegateForRow(this.nativePtr, row);
	}
	
	public void SetItemDelegateForColumn(int32 column, IQAbstractItemDelegate _delegate)
	{
		CQt.QAbstractItemView_SetItemDelegateForColumn(this.nativePtr, column, (_delegate == default || _delegate.NativePtr == default) ? default : _delegate.NativePtr);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return CQt.QAbstractItemView_ItemDelegateForColumn(this.nativePtr, column);
	}
	
	public void* ItemDelegateWithIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateWithIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void* ItemDelegateForIndex(IQModelIndex index)
	{
		return CQt.QAbstractItemView_ItemDelegateForIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QAbstractItemView_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public void SetRootIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SetRootIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SelectAll()
	{
		CQt.QAbstractItemView_SelectAll(this.nativePtr);
	}
	
	public void Edit(IQModelIndex index)
	{
		CQt.QAbstractItemView_Edit(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QAbstractItemView_ClearSelection(this.nativePtr);
	}
	
	public void SetCurrentIndex(IQModelIndex index)
	{
		CQt.QAbstractItemView_SetCurrentIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ScrollToTop()
	{
		CQt.QAbstractItemView_ScrollToTop(this.nativePtr);
	}
	
	public void ScrollToBottom()
	{
		CQt.QAbstractItemView_ScrollToBottom(this.nativePtr);
	}
	
	public void Update(IQModelIndex index)
	{
		CQt.QAbstractItemView_Update(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, (int64)verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, (scrollbar == default || scrollbar.NativePtr == default) ? default : scrollbar.NativePtr);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, (int64)horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(IQScrollBar scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, (scrollbar == default || scrollbar.NativePtr == default) ? default : scrollbar.NativePtr);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(IQWidget widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void AddScrollBarWidget(IQWidget widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(IQWidget widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public void SetupViewport(IQWidget viewport)
	{
		CQt.QAbstractScrollArea_SetupViewport(this.nativePtr, (viewport == default || viewport.NativePtr == default) ? default : viewport.NativePtr);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, (int64)policy);
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
		CQt.QFrame_SetFrameShape(this.nativePtr, (int64)frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, (int64)frameShadow);
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
	
	public void SetFrameRect(IQRect frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, (frameRect == default || frameRect.NativePtr == default) ? default : frameRect.NativePtr);
	}
	
	public int32 DevType()
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
	
	public void SetStyle(IQStyle style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, (style == default || style.NativePtr == default) ? default : style.NativePtr);
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
		CQt.QWidget_SetWindowModality(this.nativePtr, (int64)windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, (minimumSize == default || minimumSize.NativePtr == default) ? default : minimumSize.NativePtr);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, (maximumSize == default || maximumSize.NativePtr == default) ? default : maximumSize.NativePtr);
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
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, (sizeIncrement == default || sizeIncrement.NativePtr == default) ? default : sizeIncrement.NativePtr);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, (baseSize == default || baseSize.NativePtr == default) ? default : baseSize.NativePtr);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, (fixedSize == default || fixedSize.NativePtr == default) ? default : fixedSize.NativePtr);
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
	
	public void MapToGlobal(IQPointF param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParent(IQPointF param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
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
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, (int64)backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, (int64)foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QWidget_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
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
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
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
	
	public void SetMask(IQBitmap mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, (mask == default || mask.NativePtr == default) ? default : mask.NativePtr);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void Render(IQPaintDevice target)
	{
		CQt.QWidget_Render(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, libqt_string(windowTitle));
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, libqt_string(styleSheet));
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, libqt_string(windowIconText));
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(String windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, libqt_string(windowRole));
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(String filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, libqt_string(filePath));
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
	
	public void SetToolTip(String toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, libqt_string(toolTip));
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
	
	public void SetStatusTip(String statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, libqt_string(statusTip));
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, libqt_string(whatsThis));
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(String name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, libqt_string(name));
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(String description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, libqt_string(description));
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, (int64)direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(IQLocale locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, (locale == default || locale.NativePtr == default) ? default : locale.NativePtr);
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
		CQt.QWidget_SetFocusWithReason(this.nativePtr, (int64)reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, (int64)policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		CQt.QWidget_SetTabOrder((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, (focusProxy == default || focusProxy.NativePtr == default) ? default : focusProxy.NativePtr);
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
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, (int64)policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr);
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
	
	public void UpdateWithQRect(IQRect param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
	
	public void StackUnder(IQWidget param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, libqt_string(geometry));
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, (int64)horizontal, (int64)vertical);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public bool HasHeightForWidth()
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
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
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
	
	public void SetLayout(IQLayout layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(IQWidget parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, (param3 == default || param3.NativePtr == default) ? default : param3.NativePtr);
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
	
	public void AddAction(IQAction action)
	{
		CQt.QWidget_AddAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, (before == default || before.NativePtr == default) ? default : before.NativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, (action == default || action.NativePtr == default) ? default : action.NativePtr);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(String text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text));
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, (icon == default || icon.NativePtr == default) ? default : icon.NativePtr, libqt_string(text), (shortcut == default || shortcut.NativePtr == default) ? default : shortcut.NativePtr);
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
		CQt.QWidget_SetWindowFlag(this.nativePtr, (int64)param1);
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
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, (int64)param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, (int64)param1);
	}
	
	public void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
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
	
	public void SetScreen(IQScreen screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, (screen == default || screen.NativePtr == default) ? default : screen.NativePtr);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return CQt.QWidget_CreateWindowContainer((window == default || window.NativePtr == default) ? default : window.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		CQt.QWidget_Render2(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render3(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render4(this.nativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (targetOffset == default || targetOffset.NativePtr == default) ? default : targetOffset.NativePtr, (sourceRegion == default || sourceRegion.NativePtr == default) ? default : sourceRegion.NativePtr, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, (rectangle == default || rectangle.NativePtr == default) ? default : rectangle.NativePtr);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, (key == default || key.NativePtr == default) ? default : key.NativePtr, (int64)context);
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
		CQt.QWidget_SetWindowFlag2(this.nativePtr, (int64)param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, (int64)param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return CQt.QWidget_CreateWindowContainer2((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3((window == default || window.NativePtr == default) ? default : window.NativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
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
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Property(char8* name)
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
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
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
public class QHeaderView
{
	public QHeaderViewPtr handle;
	
	public static implicit operator QHeaderViewPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 orientation)
	{
		this.handle = QHeaderViewPtr.New(orientation);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QHeaderViewPtr.Tr(s);
	}
	
	public virtual void SetModel(IQAbstractItemModel model)
	{
		this.handle.SetModel(model);
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public int32 Offset()
	{
		return this.handle.Offset();
	}
	
	public int32 Length()
	{
		return this.handle.Length();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void SetVisible(bool v)
	{
		this.handle.SetVisible(v);
	}
	
	public int32 SectionSizeHint(int32 logicalIndex)
	{
		return this.handle.SectionSizeHint(logicalIndex);
	}
	
	public int32 VisualIndexAt(int32 position)
	{
		return this.handle.VisualIndexAt(position);
	}
	
	public int32 LogicalIndexAt(int32 position)
	{
		return this.handle.LogicalIndexAt(position);
	}
	
	public int32 LogicalIndexAt2(int32 x, int32 y)
	{
		return this.handle.LogicalIndexAt2(x, y);
	}
	
	public int32 LogicalIndexAtWithPos(IQPoint pos)
	{
		return this.handle.LogicalIndexAtWithPos(pos);
	}
	
	public int32 SectionSize(int32 logicalIndex)
	{
		return this.handle.SectionSize(logicalIndex);
	}
	
	public int32 SectionPosition(int32 logicalIndex)
	{
		return this.handle.SectionPosition(logicalIndex);
	}
	
	public int32 SectionViewportPosition(int32 logicalIndex)
	{
		return this.handle.SectionViewportPosition(logicalIndex);
	}
	
	public void MoveSection(int32 from, int32 to)
	{
		this.handle.MoveSection(from, to);
	}
	
	public void SwapSections(int32 first, int32 second)
	{
		this.handle.SwapSections(first, second);
	}
	
	public void ResizeSection(int32 logicalIndex, int32 size)
	{
		this.handle.ResizeSection(logicalIndex, size);
	}
	
	public void ResizeSections(int64 mode)
	{
		this.handle.ResizeSections(mode);
	}
	
	public bool IsSectionHidden(int32 logicalIndex)
	{
		return this.handle.IsSectionHidden(logicalIndex);
	}
	
	public void SetSectionHidden(int32 logicalIndex, bool hide)
	{
		this.handle.SetSectionHidden(logicalIndex, hide);
	}
	
	public int32 HiddenSectionCount()
	{
		return this.handle.HiddenSectionCount();
	}
	
	public void HideSection(int32 logicalIndex)
	{
		this.handle.HideSection(logicalIndex);
	}
	
	public void ShowSection(int32 logicalIndex)
	{
		this.handle.ShowSection(logicalIndex);
	}
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public int32 VisualIndex(int32 logicalIndex)
	{
		return this.handle.VisualIndex(logicalIndex);
	}
	
	public int32 LogicalIndex(int32 visualIndex)
	{
		return this.handle.LogicalIndex(visualIndex);
	}
	
	public void SetSectionsMovable(bool movable)
	{
		this.handle.SetSectionsMovable(movable);
	}
	
	public bool SectionsMovable()
	{
		return this.handle.SectionsMovable();
	}
	
	public void SetFirstSectionMovable(bool movable)
	{
		this.handle.SetFirstSectionMovable(movable);
	}
	
	public bool IsFirstSectionMovable()
	{
		return this.handle.IsFirstSectionMovable();
	}
	
	public void SetSectionsClickable(bool clickable)
	{
		this.handle.SetSectionsClickable(clickable);
	}
	
	public bool SectionsClickable()
	{
		return this.handle.SectionsClickable();
	}
	
	public void SetHighlightSections(bool highlight)
	{
		this.handle.SetHighlightSections(highlight);
	}
	
	public bool HighlightSections()
	{
		return this.handle.HighlightSections();
	}
	
	public int64 SectionResizeMode(int32 logicalIndex)
	{
		return this.handle.SectionResizeMode(logicalIndex);
	}
	
	public void SetSectionResizeMode(int64 mode)
	{
		this.handle.SetSectionResizeMode(mode);
	}
	
	public void SetSectionResizeMode2(int32 logicalIndex, int64 mode)
	{
		this.handle.SetSectionResizeMode2(logicalIndex, mode);
	}
	
	public void SetResizeContentsPrecision(int32 precision)
	{
		this.handle.SetResizeContentsPrecision(precision);
	}
	
	public int32 ResizeContentsPrecision()
	{
		return this.handle.ResizeContentsPrecision();
	}
	
	public int32 StretchSectionCount()
	{
		return this.handle.StretchSectionCount();
	}
	
	public void SetSortIndicatorShown(bool show)
	{
		this.handle.SetSortIndicatorShown(show);
	}
	
	public bool IsSortIndicatorShown()
	{
		return this.handle.IsSortIndicatorShown();
	}
	
	public void SetSortIndicator(int32 logicalIndex, int64 order)
	{
		this.handle.SetSortIndicator(logicalIndex, order);
	}
	
	public int32 SortIndicatorSection()
	{
		return this.handle.SortIndicatorSection();
	}
	
	public int64 SortIndicatorOrder()
	{
		return this.handle.SortIndicatorOrder();
	}
	
	public void SetSortIndicatorClearable(bool clearable)
	{
		this.handle.SetSortIndicatorClearable(clearable);
	}
	
	public bool IsSortIndicatorClearable()
	{
		return this.handle.IsSortIndicatorClearable();
	}
	
	public bool StretchLastSection()
	{
		return this.handle.StretchLastSection();
	}
	
	public void SetStretchLastSection(bool stretch)
	{
		this.handle.SetStretchLastSection(stretch);
	}
	
	public bool CascadingSectionResizes()
	{
		return this.handle.CascadingSectionResizes();
	}
	
	public void SetCascadingSectionResizes(bool enable)
	{
		this.handle.SetCascadingSectionResizes(enable);
	}
	
	public int32 DefaultSectionSize()
	{
		return this.handle.DefaultSectionSize();
	}
	
	public void SetDefaultSectionSize(int32 size)
	{
		this.handle.SetDefaultSectionSize(size);
	}
	
	public void ResetDefaultSectionSize()
	{
		this.handle.ResetDefaultSectionSize();
	}
	
	public int32 MinimumSectionSize()
	{
		return this.handle.MinimumSectionSize();
	}
	
	public void SetMinimumSectionSize(int32 size)
	{
		this.handle.SetMinimumSectionSize(size);
	}
	
	public int32 MaximumSectionSize()
	{
		return this.handle.MaximumSectionSize();
	}
	
	public void SetMaximumSectionSize(int32 size)
	{
		this.handle.SetMaximumSectionSize(size);
	}
	
	public int64 DefaultAlignment()
	{
		return this.handle.DefaultAlignment();
	}
	
	public void SetDefaultAlignment(int64 alignment)
	{
		this.handle.SetDefaultAlignment(alignment);
	}
	
	public virtual void DoItemsLayout()
	{
		this.handle.DoItemsLayout();
	}
	
	public bool SectionsMoved()
	{
		return this.handle.SectionsMoved();
	}
	
	public bool SectionsHidden()
	{
		return this.handle.SectionsHidden();
	}
	
	public libqt_string SaveState()
	{
		return this.handle.SaveState();
	}
	
	public bool RestoreState(String state)
	{
		return this.handle.RestoreState(state);
	}
	
	public virtual void Reset()
	{
		this.handle.Reset();
	}
	
	public void SetOffset(int32 offset)
	{
		this.handle.SetOffset(offset);
	}
	
	public void SetOffsetToSectionPosition(int32 visualIndex)
	{
		this.handle.SetOffsetToSectionPosition(visualIndex);
	}
	
	public void SetOffsetToLastSection()
	{
		this.handle.SetOffsetToLastSection();
	}
	
	public void HeaderDataChanged(int64 orientation, int32 logicalFirst, int32 logicalLast)
	{
		this.handle.HeaderDataChanged(orientation, logicalFirst, logicalLast);
	}
	
	public void UpdateSection(int32 logicalIndex)
	{
		this.handle.UpdateSection(logicalIndex);
	}
	
	public void ResizeSections2()
	{
		this.handle.ResizeSections2();
	}
	
	public void SectionsInserted(IQModelIndex parent, int32 logicalFirst, int32 logicalLast)
	{
		this.handle.SectionsInserted(parent, logicalFirst, logicalLast);
	}
	
	public void SectionsAboutToBeRemoved(IQModelIndex parent, int32 logicalFirst, int32 logicalLast)
	{
		this.handle.SectionsAboutToBeRemoved(parent, logicalFirst, logicalLast);
	}
	
	public void Initialize()
	{
		this.handle.Initialize();
	}
	
	public void InitializeSections()
	{
		this.handle.InitializeSections();
	}
	
	public void InitializeSections2(int32 start, int32 end)
	{
		this.handle.InitializeSections2(start, end);
	}
	
	public virtual void CurrentChanged(IQModelIndex current, IQModelIndex old)
	{
		this.handle.CurrentChanged(current, old);
	}
	
	public virtual bool Event(IQEvent e)
	{
		return this.handle.Event(e);
	}
	
	public virtual void PaintEvent(IQPaintEvent e)
	{
		this.handle.PaintEvent(e);
	}
	
	public virtual void MousePressEvent(IQMouseEvent e)
	{
		this.handle.MousePressEvent(e);
	}
	
	public virtual void MouseMoveEvent(IQMouseEvent e)
	{
		this.handle.MouseMoveEvent(e);
	}
	
	public virtual void MouseReleaseEvent(IQMouseEvent e)
	{
		this.handle.MouseReleaseEvent(e);
	}
	
	public virtual void MouseDoubleClickEvent(IQMouseEvent e)
	{
		this.handle.MouseDoubleClickEvent(e);
	}
	
	public virtual bool ViewportEvent(IQEvent e)
	{
		return this.handle.ViewportEvent(e);
	}
	
	public virtual void PaintSection(IQPainter painter, IQRect rect, int32 logicalIndex)
	{
		this.handle.PaintSection(painter, rect, logicalIndex);
	}
	
	public virtual void SectionSizeFromContents(int32 logicalIndex)
	{
		this.handle.SectionSizeFromContents(logicalIndex);
	}
	
	public virtual int32 HorizontalOffset()
	{
		return this.handle.HorizontalOffset();
	}
	
	public virtual int32 VerticalOffset()
	{
		return this.handle.VerticalOffset();
	}
	
	public virtual void UpdateGeometries()
	{
		this.handle.UpdateGeometries();
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		this.handle.ScrollContentsBy(dx, dy);
	}
	
	public virtual void DataChanged(IQModelIndex topLeft, IQModelIndex bottomRight, int32[] roles)
	{
		this.handle.DataChanged(topLeft, bottomRight, null);
	}
	
	public virtual void RowsInserted(IQModelIndex parent, int32 start, int32 end)
	{
		this.handle.RowsInserted(parent, start, end);
	}
	
	public virtual void VisualRect(IQModelIndex index)
	{
		this.handle.VisualRect(index);
	}
	
	public virtual void ScrollTo(IQModelIndex index, int64 hint)
	{
		this.handle.ScrollTo(index, hint);
	}
	
	public virtual void IndexAt(IQPoint p)
	{
		this.handle.IndexAt(p);
	}
	
	public virtual bool IsIndexHidden(IQModelIndex index)
	{
		return this.handle.IsIndexHidden(index);
	}
	
	public virtual void MoveCursor(int64 param1, int64 param2)
	{
		this.handle.MoveCursor(param1, param2);
	}
	
	public virtual void SetSelection(IQRect rect, int64 flags)
	{
		this.handle.SetSelection(rect, flags);
	}
	
	public virtual void VisualRegionForSelection(IQItemSelection selection)
	{
		this.handle.VisualRegionForSelection(selection);
	}
	
	public virtual void InitStyleOptionForIndex(IQStyleOptionHeader option, int32 logicalIndex)
	{
		this.handle.InitStyleOptionForIndex(option, logicalIndex);
	}
	
	public virtual void InitStyleOption(IQStyleOptionHeader option)
	{
		this.handle.InitStyleOption(option);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QHeaderViewPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QHeaderViewPtr.Tr3(s, c, n);
	}
	
	public void* Model()
	{
		return this.handle.Model();
	}
	
	public virtual void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		this.handle.SetSelectionModel(selectionModel);
	}
	
	public void* SelectionModel()
	{
		return this.handle.SelectionModel();
	}
	
	public void SetItemDelegate(IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegate(_delegate);
	}
	
	public void* ItemDelegate()
	{
		return this.handle.ItemDelegate();
	}
	
	public void SetSelectionMode(int64 mode)
	{
		this.handle.SetSelectionMode(mode);
	}
	
	public int64 SelectionMode()
	{
		return this.handle.SelectionMode();
	}
	
	public void SetSelectionBehavior(int64 behavior)
	{
		this.handle.SetSelectionBehavior(behavior);
	}
	
	public int64 SelectionBehavior()
	{
		return this.handle.SelectionBehavior();
	}
	
	public void CurrentIndex()
	{
		this.handle.CurrentIndex();
	}
	
	public void RootIndex()
	{
		this.handle.RootIndex();
	}
	
	public void SetEditTriggers(int64 triggers)
	{
		this.handle.SetEditTriggers(triggers);
	}
	
	public int64 EditTriggers()
	{
		return this.handle.EditTriggers();
	}
	
	public void SetVerticalScrollMode(int64 mode)
	{
		this.handle.SetVerticalScrollMode(mode);
	}
	
	public int64 VerticalScrollMode()
	{
		return this.handle.VerticalScrollMode();
	}
	
	public void ResetVerticalScrollMode()
	{
		this.handle.ResetVerticalScrollMode();
	}
	
	public void SetHorizontalScrollMode(int64 mode)
	{
		this.handle.SetHorizontalScrollMode(mode);
	}
	
	public int64 HorizontalScrollMode()
	{
		return this.handle.HorizontalScrollMode();
	}
	
	public void ResetHorizontalScrollMode()
	{
		this.handle.ResetHorizontalScrollMode();
	}
	
	public void SetAutoScroll(bool enable)
	{
		this.handle.SetAutoScroll(enable);
	}
	
	public bool HasAutoScroll()
	{
		return this.handle.HasAutoScroll();
	}
	
	public void SetAutoScrollMargin(int32 margin)
	{
		this.handle.SetAutoScrollMargin(margin);
	}
	
	public int32 AutoScrollMargin()
	{
		return this.handle.AutoScrollMargin();
	}
	
	public void SetTabKeyNavigation(bool enable)
	{
		this.handle.SetTabKeyNavigation(enable);
	}
	
	public bool TabKeyNavigation()
	{
		return this.handle.TabKeyNavigation();
	}
	
	public void SetDropIndicatorShown(bool enable)
	{
		this.handle.SetDropIndicatorShown(enable);
	}
	
	public bool ShowDropIndicator()
	{
		return this.handle.ShowDropIndicator();
	}
	
	public void SetDragEnabled(bool enable)
	{
		this.handle.SetDragEnabled(enable);
	}
	
	public bool DragEnabled()
	{
		return this.handle.DragEnabled();
	}
	
	public void SetDragDropOverwriteMode(bool overwrite)
	{
		this.handle.SetDragDropOverwriteMode(overwrite);
	}
	
	public bool DragDropOverwriteMode()
	{
		return this.handle.DragDropOverwriteMode();
	}
	
	public void SetDragDropMode(int64 behavior)
	{
		this.handle.SetDragDropMode(behavior);
	}
	
	public int64 DragDropMode()
	{
		return this.handle.DragDropMode();
	}
	
	public void SetDefaultDropAction(int64 dropAction)
	{
		this.handle.SetDefaultDropAction(dropAction);
	}
	
	public int64 DefaultDropAction()
	{
		return this.handle.DefaultDropAction();
	}
	
	public void SetAlternatingRowColors(bool enable)
	{
		this.handle.SetAlternatingRowColors(enable);
	}
	
	public bool AlternatingRowColors()
	{
		return this.handle.AlternatingRowColors();
	}
	
	public void SetIconSize(IQSize size)
	{
		this.handle.SetIconSize(size);
	}
	
	public void IconSize()
	{
		this.handle.IconSize();
	}
	
	public void SetTextElideMode(int64 mode)
	{
		this.handle.SetTextElideMode(mode);
	}
	
	public int64 TextElideMode()
	{
		return this.handle.TextElideMode();
	}
	
	public virtual void KeyboardSearch(String search)
	{
		this.handle.KeyboardSearch(search);
	}
	
	public void SizeHintForIndex(IQModelIndex index)
	{
		this.handle.SizeHintForIndex(index);
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return this.handle.SizeHintForRow(row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return this.handle.SizeHintForColumn(column);
	}
	
	public void OpenPersistentEditor(IQModelIndex index)
	{
		this.handle.OpenPersistentEditor(index);
	}
	
	public void ClosePersistentEditor(IQModelIndex index)
	{
		this.handle.ClosePersistentEditor(index);
	}
	
	public bool IsPersistentEditorOpen(IQModelIndex index)
	{
		return this.handle.IsPersistentEditorOpen(index);
	}
	
	public void SetIndexWidget(IQModelIndex index, IQWidget widget)
	{
		this.handle.SetIndexWidget(index, widget);
	}
	
	public void* IndexWidget(IQModelIndex index)
	{
		return this.handle.IndexWidget(index);
	}
	
	public void SetItemDelegateForRow(int32 row, IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegateForRow(row, _delegate);
	}
	
	public void* ItemDelegateForRow(int32 row)
	{
		return this.handle.ItemDelegateForRow(row);
	}
	
	public void SetItemDelegateForColumn(int32 column, IQAbstractItemDelegate _delegate)
	{
		this.handle.SetItemDelegateForColumn(column, _delegate);
	}
	
	public void* ItemDelegateForColumn(int32 column)
	{
		return this.handle.ItemDelegateForColumn(column);
	}
	
	public void* ItemDelegateWithIndex(IQModelIndex index)
	{
		return this.handle.ItemDelegateWithIndex(index);
	}
	
	public virtual void* ItemDelegateForIndex(IQModelIndex index)
	{
		return this.handle.ItemDelegateForIndex(index);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public virtual void SetRootIndex(IQModelIndex index)
	{
		this.handle.SetRootIndex(index);
	}
	
	public virtual void SelectAll()
	{
		this.handle.SelectAll();
	}
	
	public void Edit(IQModelIndex index)
	{
		this.handle.Edit(index);
	}
	
	public void ClearSelection()
	{
		this.handle.ClearSelection();
	}
	
	public void SetCurrentIndex(IQModelIndex index)
	{
		this.handle.SetCurrentIndex(index);
	}
	
	public void ScrollToTop()
	{
		this.handle.ScrollToTop();
	}
	
	public void ScrollToBottom()
	{
		this.handle.ScrollToBottom();
	}
	
	public void Update(IQModelIndex index)
	{
		this.handle.Update(index);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return this.handle.VerticalScrollBarPolicy();
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		this.handle.SetVerticalScrollBarPolicy(verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return this.handle.VerticalScrollBar();
	}
	
	public void SetVerticalScrollBar(IQScrollBar scrollbar)
	{
		this.handle.SetVerticalScrollBar(scrollbar);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return this.handle.HorizontalScrollBarPolicy();
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		this.handle.SetHorizontalScrollBarPolicy(horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return this.handle.HorizontalScrollBar();
	}
	
	public void SetHorizontalScrollBar(IQScrollBar scrollbar)
	{
		this.handle.SetHorizontalScrollBar(scrollbar);
	}
	
	public void* CornerWidget()
	{
		return this.handle.CornerWidget();
	}
	
	public void SetCornerWidget(IQWidget widget)
	{
		this.handle.SetCornerWidget(widget);
	}
	
	public void AddScrollBarWidget(IQWidget widget, int64 alignment)
	{
		this.handle.AddScrollBarWidget(widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return this.handle.ScrollBarWidgets(alignment);
	}
	
	public void* Viewport()
	{
		return this.handle.Viewport();
	}
	
	public void SetViewport(IQWidget widget)
	{
		this.handle.SetViewport(widget);
	}
	
	public void MaximumViewportSize()
	{
		this.handle.MaximumViewportSize();
	}
	
	public virtual void MinimumSizeHint()
	{
		this.handle.MinimumSizeHint();
	}
	
	public virtual void SetupViewport(IQWidget viewport)
	{
		this.handle.SetupViewport(viewport);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return this.handle.SizeAdjustPolicy();
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		this.handle.SetSizeAdjustPolicy(policy);
	}
	
	public int32 FrameStyle()
	{
		return this.handle.FrameStyle();
	}
	
	public void SetFrameStyle(int32 frameStyle)
	{
		this.handle.SetFrameStyle(frameStyle);
	}
	
	public int32 FrameWidth()
	{
		return this.handle.FrameWidth();
	}
	
	public int64 FrameShape()
	{
		return this.handle.FrameShape();
	}
	
	public void SetFrameShape(int64 frameShape)
	{
		this.handle.SetFrameShape(frameShape);
	}
	
	public int64 FrameShadow()
	{
		return this.handle.FrameShadow();
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		this.handle.SetFrameShadow(frameShadow);
	}
	
	public int32 LineWidth()
	{
		return this.handle.LineWidth();
	}
	
	public void SetLineWidth(int32 lineWidth)
	{
		this.handle.SetLineWidth(lineWidth);
	}
	
	public int32 MidLineWidth()
	{
		return this.handle.MidLineWidth();
	}
	
	public void SetMidLineWidth(int32 midLineWidth)
	{
		this.handle.SetMidLineWidth(midLineWidth);
	}
	
	public void FrameRect()
	{
		this.handle.FrameRect();
	}
	
	public void SetFrameRect(IQRect frameRect)
	{
		this.handle.SetFrameRect(frameRect);
	}
	
	public virtual int32 DevType()
	{
		return this.handle.DevType();
	}
	
	public c_uintptr WinId()
	{
		return this.handle.WinId();
	}
	
	public void CreateWinId()
	{
		this.handle.CreateWinId();
	}
	
	public c_uintptr InternalWinId()
	{
		return this.handle.InternalWinId();
	}
	
	public c_uintptr EffectiveWinId()
	{
		return this.handle.EffectiveWinId();
	}
	
	public void* Style()
	{
		return this.handle.Style();
	}
	
	public void SetStyle(IQStyle style)
	{
		this.handle.SetStyle(style);
	}
	
	public bool IsTopLevel()
	{
		return this.handle.IsTopLevel();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsModal()
	{
		return this.handle.IsModal();
	}
	
	public int64 WindowModality()
	{
		return this.handle.WindowModality();
	}
	
	public void SetWindowModality(int64 windowModality)
	{
		this.handle.SetWindowModality(windowModality);
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public bool IsEnabledTo(IQWidget param1)
	{
		return this.handle.IsEnabledTo(param1);
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public void SetDisabled(bool disabled)
	{
		this.handle.SetDisabled(disabled);
	}
	
	public void SetWindowModified(bool windowModified)
	{
		this.handle.SetWindowModified(windowModified);
	}
	
	public void FrameGeometry()
	{
		this.handle.FrameGeometry();
	}
	
	public void* Geometry()
	{
		return this.handle.Geometry();
	}
	
	public void NormalGeometry()
	{
		this.handle.NormalGeometry();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void FrameSize()
	{
		this.handle.FrameSize();
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public int32 Width()
	{
		return this.handle.Width();
	}
	
	public int32 Height()
	{
		return this.handle.Height();
	}
	
	public void Rect()
	{
		this.handle.Rect();
	}
	
	public void ChildrenRect()
	{
		this.handle.ChildrenRect();
	}
	
	public void ChildrenRegion()
	{
		this.handle.ChildrenRegion();
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public int32 MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public int32 MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public int32 MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public int32 MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void SetMinimumSize(IQSize minimumSize)
	{
		this.handle.SetMinimumSize(minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		this.handle.SetMinimumSize2(minw, minh);
	}
	
	public void SetMaximumSize(IQSize maximumSize)
	{
		this.handle.SetMaximumSize(maximumSize);
	}
	
	public void SetMaximumSize2(int32 maxw, int32 maxh)
	{
		this.handle.SetMaximumSize2(maxw, maxh);
	}
	
	public void SetMinimumWidth(int32 minw)
	{
		this.handle.SetMinimumWidth(minw);
	}
	
	public void SetMinimumHeight(int32 minh)
	{
		this.handle.SetMinimumHeight(minh);
	}
	
	public void SetMaximumWidth(int32 maxw)
	{
		this.handle.SetMaximumWidth(maxw);
	}
	
	public void SetMaximumHeight(int32 maxh)
	{
		this.handle.SetMaximumHeight(maxh);
	}
	
	public void SizeIncrement()
	{
		this.handle.SizeIncrement();
	}
	
	public void SetSizeIncrement(IQSize sizeIncrement)
	{
		this.handle.SetSizeIncrement(sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		this.handle.SetSizeIncrement2(w, h);
	}
	
	public void BaseSize()
	{
		this.handle.BaseSize();
	}
	
	public void SetBaseSize(IQSize baseSize)
	{
		this.handle.SetBaseSize(baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		this.handle.SetBaseSize2(basew, baseh);
	}
	
	public void SetFixedSize(IQSize fixedSize)
	{
		this.handle.SetFixedSize(fixedSize);
	}
	
	public void SetFixedSize2(int32 w, int32 h)
	{
		this.handle.SetFixedSize2(w, h);
	}
	
	public void SetFixedWidth(int32 w)
	{
		this.handle.SetFixedWidth(w);
	}
	
	public void SetFixedHeight(int32 h)
	{
		this.handle.SetFixedHeight(h);
	}
	
	public void MapToGlobal(IQPointF param1)
	{
		this.handle.MapToGlobal(param1);
	}
	
	public void MapToGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapToGlobalWithQPoint(param1);
	}
	
	public void MapFromGlobal(IQPointF param1)
	{
		this.handle.MapFromGlobal(param1);
	}
	
	public void MapFromGlobalWithQPoint(IQPoint param1)
	{
		this.handle.MapFromGlobalWithQPoint(param1);
	}
	
	public void MapToParent(IQPointF param1)
	{
		this.handle.MapToParent(param1);
	}
	
	public void MapToParentWithQPoint(IQPoint param1)
	{
		this.handle.MapToParentWithQPoint(param1);
	}
	
	public void MapFromParent(IQPointF param1)
	{
		this.handle.MapFromParent(param1);
	}
	
	public void MapFromParentWithQPoint(IQPoint param1)
	{
		this.handle.MapFromParentWithQPoint(param1);
	}
	
	public void MapTo(IQWidget param1, IQPointF param2)
	{
		this.handle.MapTo(param1, param2);
	}
	
	public void MapTo2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapTo2(param1, param2);
	}
	
	public void MapFrom(IQWidget param1, IQPointF param2)
	{
		this.handle.MapFrom(param1, param2);
	}
	
	public void MapFrom2(IQWidget param1, IQPoint param2)
	{
		this.handle.MapFrom2(param1, param2);
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* NativeParentWidget()
	{
		return this.handle.NativeParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Palette()
	{
		return this.handle.Palette();
	}
	
	public void SetPalette(IQPalette palette)
	{
		this.handle.SetPalette(palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		this.handle.SetBackgroundRole(backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return this.handle.BackgroundRole();
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		this.handle.SetForegroundRole(foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return this.handle.ForegroundRole();
	}
	
	public void* Font()
	{
		return this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void FontMetrics()
	{
		this.handle.FontMetrics();
	}
	
	public void FontInfo()
	{
		this.handle.FontInfo();
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public void SetMouseTracking(bool enable)
	{
		this.handle.SetMouseTracking(enable);
	}
	
	public bool HasMouseTracking()
	{
		return this.handle.HasMouseTracking();
	}
	
	public bool UnderMouse()
	{
		return this.handle.UnderMouse();
	}
	
	public void SetTabletTracking(bool enable)
	{
		this.handle.SetTabletTracking(enable);
	}
	
	public bool HasTabletTracking()
	{
		return this.handle.HasTabletTracking();
	}
	
	public void SetMask(IQBitmap mask)
	{
		this.handle.SetMask(mask);
	}
	
	public void SetMaskWithMask(IQRegion mask)
	{
		this.handle.SetMaskWithMask(mask);
	}
	
	public void Mask()
	{
		this.handle.Mask();
	}
	
	public void ClearMask()
	{
		this.handle.ClearMask();
	}
	
	public void Render(IQPaintDevice target)
	{
		this.handle.Render(target);
	}
	
	public void RenderWithPainter(IQPainter painter)
	{
		this.handle.RenderWithPainter(painter);
	}
	
	public void Grab()
	{
		this.handle.Grab();
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void SetWindowTitle(String windowTitle)
	{
		this.handle.SetWindowTitle(windowTitle);
	}
	
	public void SetStyleSheet(String styleSheet)
	{
		this.handle.SetStyleSheet(styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return this.handle.StyleSheet();
	}
	
	public libqt_string WindowTitle()
	{
		return this.handle.WindowTitle();
	}
	
	public void SetWindowIcon(IQIcon icon)
	{
		this.handle.SetWindowIcon(icon);
	}
	
	public void WindowIcon()
	{
		this.handle.WindowIcon();
	}
	
	public void SetWindowIconText(String windowIconText)
	{
		this.handle.SetWindowIconText(windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return this.handle.WindowIconText();
	}
	
	public void SetWindowRole(String windowRole)
	{
		this.handle.SetWindowRole(windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return this.handle.WindowRole();
	}
	
	public void SetWindowFilePath(String filePath)
	{
		this.handle.SetWindowFilePath(filePath);
	}
	
	public libqt_string WindowFilePath()
	{
		return this.handle.WindowFilePath();
	}
	
	public void SetWindowOpacity(double level)
	{
		this.handle.SetWindowOpacity(level);
	}
	
	public double WindowOpacity()
	{
		return this.handle.WindowOpacity();
	}
	
	public bool IsWindowModified()
	{
		return this.handle.IsWindowModified();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTipDuration(int32 msec)
	{
		this.handle.SetToolTipDuration(msec);
	}
	
	public int32 ToolTipDuration()
	{
		return this.handle.ToolTipDuration();
	}
	
	public void SetStatusTip(String statusTip)
	{
		this.handle.SetStatusTip(statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return this.handle.StatusTip();
	}
	
	public void SetWhatsThis(String whatsThis)
	{
		this.handle.SetWhatsThis(whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return this.handle.WhatsThis();
	}
	
	public libqt_string AccessibleName()
	{
		return this.handle.AccessibleName();
	}
	
	public void SetAccessibleName(String name)
	{
		this.handle.SetAccessibleName(name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return this.handle.AccessibleDescription();
	}
	
	public void SetAccessibleDescription(String description)
	{
		this.handle.SetAccessibleDescription(description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		this.handle.SetLayoutDirection(direction);
	}
	
	public int64 LayoutDirection()
	{
		return this.handle.LayoutDirection();
	}
	
	public void UnsetLayoutDirection()
	{
		this.handle.UnsetLayoutDirection();
	}
	
	public void SetLocale(IQLocale locale)
	{
		this.handle.SetLocale(locale);
	}
	
	public void Locale()
	{
		this.handle.Locale();
	}
	
	public void UnsetLocale()
	{
		this.handle.UnsetLocale();
	}
	
	public bool IsRightToLeft()
	{
		return this.handle.IsRightToLeft();
	}
	
	public bool IsLeftToRight()
	{
		return this.handle.IsLeftToRight();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public bool IsActiveWindow()
	{
		return this.handle.IsActiveWindow();
	}
	
	public void ActivateWindow()
	{
		this.handle.ActivateWindow();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void SetFocusWithReason(int64 reason)
	{
		this.handle.SetFocusWithReason(reason);
	}
	
	public int64 FocusPolicy()
	{
		return this.handle.FocusPolicy();
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		this.handle.SetFocusPolicy(policy);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public static void SetTabOrder(IQWidget param1, IQWidget param2)
	{
		QHeaderViewPtr.SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(IQWidget focusProxy)
	{
		this.handle.SetFocusProxy(focusProxy);
	}
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public int64 ContextMenuPolicy()
	{
		return this.handle.ContextMenuPolicy();
	}
	
	public void SetContextMenuPolicy(int64 policy)
	{
		this.handle.SetContextMenuPolicy(policy);
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void GrabMouseWithQCursor(IQCursor param1)
	{
		this.handle.GrabMouseWithQCursor(param1);
	}
	
	public void ReleaseMouse()
	{
		this.handle.ReleaseMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void ReleaseKeyboard()
	{
		this.handle.ReleaseKeyboard();
	}
	
	public int32 GrabShortcut(IQKeySequence key)
	{
		return this.handle.GrabShortcut(key);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		this.handle.ReleaseShortcut(id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		this.handle.SetShortcutEnabled(id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		this.handle.SetShortcutAutoRepeat(id);
	}
	
	public static void* MouseGrabber()
	{
		return QHeaderViewPtr.MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return QHeaderViewPtr.KeyboardGrabber();
	}
	
	public bool UpdatesEnabled()
	{
		return this.handle.UpdatesEnabled();
	}
	
	public void SetUpdatesEnabled(bool enable)
	{
		this.handle.SetUpdatesEnabled(enable);
	}
	
	public void* GraphicsProxyWidget()
	{
		return this.handle.GraphicsProxyWidget();
	}
	
	public void Repaint()
	{
		this.handle.Repaint();
	}
	
	public void Update2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Update2(x, y, w, h);
	}
	
	public void UpdateWithQRect(IQRect param1)
	{
		this.handle.UpdateWithQRect(param1);
	}
	
	public void UpdateWithQRegion(IQRegion param1)
	{
		this.handle.UpdateWithQRegion(param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.Repaint2(x, y, w, h);
	}
	
	public void RepaintWithQRect(IQRect param1)
	{
		this.handle.RepaintWithQRect(param1);
	}
	
	public void RepaintWithQRegion(IQRegion param1)
	{
		this.handle.RepaintWithQRegion(param1);
	}
	
	public void SetHidden(bool hidden)
	{
		this.handle.SetHidden(hidden);
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void ShowMinimized()
	{
		this.handle.ShowMinimized();
	}
	
	public void ShowMaximized()
	{
		this.handle.ShowMaximized();
	}
	
	public void ShowFullScreen()
	{
		this.handle.ShowFullScreen();
	}
	
	public void ShowNormal()
	{
		this.handle.ShowNormal();
	}
	
	public bool Close()
	{
		return this.handle.Close();
	}
	
	public void Raise()
	{
		this.handle.Raise();
	}
	
	public void Lower()
	{
		this.handle.Lower();
	}
	
	public void StackUnder(IQWidget param1)
	{
		this.handle.StackUnder(param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		this.handle.Move(x, y);
	}
	
	public void MoveWithQPoint(IQPoint param1)
	{
		this.handle.MoveWithQPoint(param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		this.handle.Resize(w, h);
	}
	
	public void ResizeWithQSize(IQSize param1)
	{
		this.handle.ResizeWithQSize(param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		this.handle.SetGeometry(x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(IQRect geometry)
	{
		this.handle.SetGeometryWithGeometry(geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return this.handle.SaveGeometry();
	}
	
	public bool RestoreGeometry(String geometry)
	{
		return this.handle.RestoreGeometry(geometry);
	}
	
	public void AdjustSize()
	{
		this.handle.AdjustSize();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQWidget param1)
	{
		return this.handle.IsVisibleTo(param1);
	}
	
	public bool IsHidden()
	{
		return this.handle.IsHidden();
	}
	
	public bool IsMinimized()
	{
		return this.handle.IsMinimized();
	}
	
	public bool IsMaximized()
	{
		return this.handle.IsMaximized();
	}
	
	public bool IsFullScreen()
	{
		return this.handle.IsFullScreen();
	}
	
	public int64 WindowState()
	{
		return this.handle.WindowState();
	}
	
	public void SetWindowState(int64 state)
	{
		this.handle.SetWindowState(state);
	}
	
	public void OverrideWindowState(int64 state)
	{
		this.handle.OverrideWindowState(state);
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void SetSizePolicy(IQSizePolicy sizePolicy)
	{
		this.handle.SetSizePolicy(default);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		this.handle.SetSizePolicy2(horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public void VisibleRegion()
	{
		this.handle.VisibleRegion();
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		this.handle.SetContentsMarginsWithMargins(margins);
	}
	
	public void ContentsMargins()
	{
		this.handle.ContentsMargins();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void* Layout()
	{
		return this.handle.Layout();
	}
	
	public void SetLayout(IQLayout layout)
	{
		this.handle.SetLayout(layout);
	}
	
	public void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
	}
	
	public void SetParent(IQWidget parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void SetParent2(IQWidget parent, int64 f)
	{
		this.handle.SetParent2(parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, IQRect param3)
	{
		this.handle.Scroll2(dx, dy, param3);
	}
	
	public void* FocusWidget()
	{
		return this.handle.FocusWidget();
	}
	
	public void* NextInFocusChain()
	{
		return this.handle.NextInFocusChain();
	}
	
	public void* PreviousInFocusChain()
	{
		return this.handle.PreviousInFocusChain();
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public void AddAction(IQAction action)
	{
		this.handle.AddAction(action);
	}
	
	public void AddActions(IQAction[] actions)
	{
		this.handle.AddActions(null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		this.handle.InsertActions(before, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		this.handle.InsertAction(before, action);
	}
	
	public void RemoveAction(IQAction action)
	{
		this.handle.RemoveAction(action);
	}
	
	public void*[] Actions()
	{
		return this.handle.Actions();
	}
	
	public void* AddActionWithText(String text)
	{
		return this.handle.AddActionWithText(text);
	}
	
	public void* AddAction2(IQIcon icon, String text)
	{
		return this.handle.AddAction2(icon, text);
	}
	
	public void* AddAction3(String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction3(text, shortcut);
	}
	
	public void* AddAction4(IQIcon icon, String text, IQKeySequence shortcut)
	{
		return this.handle.AddAction4(icon, text, shortcut);
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void SetWindowFlags(int64 typeVal)
	{
		this.handle.SetWindowFlags(typeVal);
	}
	
	public int64 WindowFlags()
	{
		return this.handle.WindowFlags();
	}
	
	public void SetWindowFlag(int64 param1)
	{
		this.handle.SetWindowFlag(param1);
	}
	
	public void OverrideWindowFlags(int64 typeVal)
	{
		this.handle.OverrideWindowFlags(typeVal);
	}
	
	public int64 WindowType()
	{
		return this.handle.WindowType();
	}
	
	public static void* Find(uint64 param1)
	{
		return QHeaderViewPtr.Find(param1);
	}
	
	public void* ChildAt(int32 x, int32 y)
	{
		return this.handle.ChildAt(x, y);
	}
	
	public void* ChildAtWithQPoint(IQPoint p)
	{
		return this.handle.ChildAtWithQPoint(p);
	}
	
	public void SetAttribute(int64 param1)
	{
		this.handle.SetAttribute(param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return this.handle.TestAttribute(param1);
	}
	
	public virtual void* PaintEngine()
	{
		return this.handle.PaintEngine();
	}
	
	public void EnsurePolished()
	{
		this.handle.EnsurePolished();
	}
	
	public bool IsAncestorOf(IQWidget child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public bool AutoFillBackground()
	{
		return this.handle.AutoFillBackground();
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		this.handle.SetAutoFillBackground(enabled);
	}
	
	public void* BackingStore()
	{
		return this.handle.BackingStore();
	}
	
	public void* WindowHandle()
	{
		return this.handle.WindowHandle();
	}
	
	public void* Screen()
	{
		return this.handle.Screen();
	}
	
	public void SetScreen(IQScreen screen)
	{
		this.handle.SetScreen(screen);
	}
	
	public static void* CreateWindowContainer(IQWindow window)
	{
		return QHeaderViewPtr.CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void Render2(IQPaintDevice target, IQPoint targetOffset)
	{
		this.handle.Render2(target, targetOffset);
	}
	
	public void Render3(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render3(target, targetOffset, sourceRegion);
	}
	
	public void Render4(IQPaintDevice target, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render4(target, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Render22(IQPainter painter, IQPoint targetOffset)
	{
		this.handle.Render22(painter, targetOffset);
	}
	
	public void Render32(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion)
	{
		this.handle.Render32(painter, targetOffset, sourceRegion);
	}
	
	public void Render42(IQPainter painter, IQPoint targetOffset, IQRegion sourceRegion, int64 renderFlags)
	{
		this.handle.Render42(painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(IQRect rectangle)
	{
		this.handle.Grab1(rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public int32 GrabShortcut2(IQKeySequence key, int64 context)
	{
		return this.handle.GrabShortcut2(key, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enable)
	{
		this.handle.SetShortcutEnabled2(id, enable);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enable)
	{
		this.handle.SetShortcutAutoRepeat2(id, enable);
	}
	
	public void SetWindowFlag2(int64 param1, bool on)
	{
		this.handle.SetWindowFlag2(param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		this.handle.SetAttribute2(param1, on);
	}
	
	public static void* CreateWindowContainer2(IQWindow window, IQWidget parent)
	{
		return QHeaderViewPtr.CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return QHeaderViewPtr.CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QHeaderViewPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QHeaderViewPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QHeaderViewPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QHeaderViewPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public bool PaintingActive()
	{
		return this.handle.PaintingActive();
	}
	
	public int32 WidthMM()
	{
		return this.handle.WidthMM();
	}
	
	public int32 HeightMM()
	{
		return this.handle.HeightMM();
	}
	
	public int32 LogicalDpiX()
	{
		return this.handle.LogicalDpiX();
	}
	
	public int32 LogicalDpiY()
	{
		return this.handle.LogicalDpiY();
	}
	
	public int32 PhysicalDpiX()
	{
		return this.handle.PhysicalDpiX();
	}
	
	public int32 PhysicalDpiY()
	{
		return this.handle.PhysicalDpiY();
	}
	
	public double DevicePixelRatio()
	{
		return this.handle.DevicePixelRatio();
	}
	
	public double DevicePixelRatioF()
	{
		return this.handle.DevicePixelRatioF();
	}
	
	public int32 ColorCount()
	{
		return this.handle.ColorCount();
	}
	
	public int32 Depth()
	{
		return this.handle.Depth();
	}
	
	public static double DevicePixelRatioFScale()
	{
		return QHeaderViewPtr.DevicePixelRatioFScale();
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
	public static extern void* QHeaderView_Metacast(void* c_this, char8* param1);
	[LinkName("QHeaderView_Metacall")]
	public static extern int32 QHeaderView_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QHeaderView_Tr")]
	public static extern libqt_string QHeaderView_Tr(char8* s);
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
	public static extern libqt_string QHeaderView_Tr2(char8* s, char8* c);
	[LinkName("QHeaderView_Tr3")]
	public static extern libqt_string QHeaderView_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QHeaderView_Delete")]
	public static extern void QHeaderView_Delete(void* self);
}