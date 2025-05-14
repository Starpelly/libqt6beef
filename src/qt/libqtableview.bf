using System;
using System.Interop;
namespace Qt;

public interface IQTableView
{
	void* NativePtr { get; }
}
public struct QTableViewPtr : IQTableView, IDisposable, IQAbstractItemView
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QTableView_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QTableView_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTableView_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTableView_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTableView_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QTableView_Tr(s);
	}
	
	public void SetModel(IQAbstractItemModel model)
	{
		CQt.QTableView_SetModel(this.nativePtr, (model == default || model.NativePtr == default) ? default : model.NativePtr);
	}
	
	public void SetRootIndex(IQModelIndex index)
	{
		CQt.QTableView_SetRootIndex(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		CQt.QTableView_SetSelectionModel(this.nativePtr, (selectionModel == default || selectionModel.NativePtr == default) ? default : selectionModel.NativePtr);
	}
	
	public void DoItemsLayout()
	{
		CQt.QTableView_DoItemsLayout(this.nativePtr);
	}
	
	public void* HorizontalHeader()
	{
		return CQt.QTableView_HorizontalHeader(this.nativePtr);
	}
	
	public void* VerticalHeader()
	{
		return CQt.QTableView_VerticalHeader(this.nativePtr);
	}
	
	public void SetHorizontalHeader(IQHeaderView header)
	{
		CQt.QTableView_SetHorizontalHeader(this.nativePtr, (header == default || header.NativePtr == default) ? default : header.NativePtr);
	}
	
	public void SetVerticalHeader(IQHeaderView header)
	{
		CQt.QTableView_SetVerticalHeader(this.nativePtr, (header == default || header.NativePtr == default) ? default : header.NativePtr);
	}
	
	public int32 RowViewportPosition(int32 row)
	{
		return CQt.QTableView_RowViewportPosition(this.nativePtr, row);
	}
	
	public int32 RowAt(int32 y)
	{
		return CQt.QTableView_RowAt(this.nativePtr, y);
	}
	
	public void SetRowHeight(int32 row, int32 height)
	{
		CQt.QTableView_SetRowHeight(this.nativePtr, row, height);
	}
	
	public int32 RowHeight(int32 row)
	{
		return CQt.QTableView_RowHeight(this.nativePtr, row);
	}
	
	public int32 ColumnViewportPosition(int32 column)
	{
		return CQt.QTableView_ColumnViewportPosition(this.nativePtr, column);
	}
	
	public int32 ColumnAt(int32 x)
	{
		return CQt.QTableView_ColumnAt(this.nativePtr, x);
	}
	
	public void SetColumnWidth(int32 column, int32 width)
	{
		CQt.QTableView_SetColumnWidth(this.nativePtr, column, width);
	}
	
	public int32 ColumnWidth(int32 column)
	{
		return CQt.QTableView_ColumnWidth(this.nativePtr, column);
	}
	
	public bool IsRowHidden(int32 row)
	{
		return CQt.QTableView_IsRowHidden(this.nativePtr, row);
	}
	
	public void SetRowHidden(int32 row, bool hide)
	{
		CQt.QTableView_SetRowHidden(this.nativePtr, row, hide);
	}
	
	public bool IsColumnHidden(int32 column)
	{
		return CQt.QTableView_IsColumnHidden(this.nativePtr, column);
	}
	
	public void SetColumnHidden(int32 column, bool hide)
	{
		CQt.QTableView_SetColumnHidden(this.nativePtr, column, hide);
	}
	
	public void SetSortingEnabled(bool enable)
	{
		CQt.QTableView_SetSortingEnabled(this.nativePtr, enable);
	}
	
	public bool IsSortingEnabled()
	{
		return CQt.QTableView_IsSortingEnabled(this.nativePtr);
	}
	
	public bool ShowGrid()
	{
		return CQt.QTableView_ShowGrid(this.nativePtr);
	}
	
	public int64 GridStyle()
	{
		return CQt.QTableView_GridStyle(this.nativePtr);
	}
	
	public void SetGridStyle(int64 style)
	{
		CQt.QTableView_SetGridStyle(this.nativePtr, (int64)style);
	}
	
	public void SetWordWrap(bool on)
	{
		CQt.QTableView_SetWordWrap(this.nativePtr, on);
	}
	
	public bool WordWrap()
	{
		return CQt.QTableView_WordWrap(this.nativePtr);
	}
	
	public void SetCornerButtonEnabled(bool enable)
	{
		CQt.QTableView_SetCornerButtonEnabled(this.nativePtr, enable);
	}
	
	public bool IsCornerButtonEnabled()
	{
		return CQt.QTableView_IsCornerButtonEnabled(this.nativePtr);
	}
	
	public void VisualRect(IQModelIndex index)
	{
		CQt.QTableView_VisualRect(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void ScrollTo(IQModelIndex index, int64 hint)
	{
		CQt.QTableView_ScrollTo(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr, (int64)hint);
	}
	
	public void IndexAt(IQPoint p)
	{
		CQt.QTableView_IndexAt(this.nativePtr, (p == default || p.NativePtr == default) ? default : p.NativePtr);
	}
	
	public void SetSpan(int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QTableView_SetSpan(this.nativePtr, row, column, rowSpan, columnSpan);
	}
	
	public int32 RowSpan(int32 row, int32 column)
	{
		return CQt.QTableView_RowSpan(this.nativePtr, row, column);
	}
	
	public int32 ColumnSpan(int32 row, int32 column)
	{
		return CQt.QTableView_ColumnSpan(this.nativePtr, row, column);
	}
	
	public void ClearSpans()
	{
		CQt.QTableView_ClearSpans(this.nativePtr);
	}
	
	public void SelectRow(int32 row)
	{
		CQt.QTableView_SelectRow(this.nativePtr, row);
	}
	
	public void SelectColumn(int32 column)
	{
		CQt.QTableView_SelectColumn(this.nativePtr, column);
	}
	
	public void HideRow(int32 row)
	{
		CQt.QTableView_HideRow(this.nativePtr, row);
	}
	
	public void HideColumn(int32 column)
	{
		CQt.QTableView_HideColumn(this.nativePtr, column);
	}
	
	public void ShowRow(int32 row)
	{
		CQt.QTableView_ShowRow(this.nativePtr, row);
	}
	
	public void ShowColumn(int32 column)
	{
		CQt.QTableView_ShowColumn(this.nativePtr, column);
	}
	
	public void ResizeRowToContents(int32 row)
	{
		CQt.QTableView_ResizeRowToContents(this.nativePtr, row);
	}
	
	public void ResizeRowsToContents()
	{
		CQt.QTableView_ResizeRowsToContents(this.nativePtr);
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		CQt.QTableView_ResizeColumnToContents(this.nativePtr, column);
	}
	
	public void ResizeColumnsToContents()
	{
		CQt.QTableView_ResizeColumnsToContents(this.nativePtr);
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		CQt.QTableView_SortByColumn(this.nativePtr, column, (int64)order);
	}
	
	public void SetShowGrid(bool show)
	{
		CQt.QTableView_SetShowGrid(this.nativePtr, show);
	}
	
	public void RowMoved(int32 row, int32 oldIndex, int32 newIndex)
	{
		CQt.QTableView_RowMoved(this.nativePtr, row, oldIndex, newIndex);
	}
	
	public void ColumnMoved(int32 column, int32 oldIndex, int32 newIndex)
	{
		CQt.QTableView_ColumnMoved(this.nativePtr, column, oldIndex, newIndex);
	}
	
	public void RowResized(int32 row, int32 oldHeight, int32 newHeight)
	{
		CQt.QTableView_RowResized(this.nativePtr, row, oldHeight, newHeight);
	}
	
	public void ColumnResized(int32 column, int32 oldWidth, int32 newWidth)
	{
		CQt.QTableView_ColumnResized(this.nativePtr, column, oldWidth, newWidth);
	}
	
	public void RowCountChanged(int32 oldCount, int32 newCount)
	{
		CQt.QTableView_RowCountChanged(this.nativePtr, oldCount, newCount);
	}
	
	public void ColumnCountChanged(int32 oldCount, int32 newCount)
	{
		CQt.QTableView_ColumnCountChanged(this.nativePtr, oldCount, newCount);
	}
	
	public void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QTableView_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public void InitViewItemOption(IQStyleOptionViewItem option)
	{
		CQt.QTableView_InitViewItemOption(this.nativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr);
	}
	
	public void PaintEvent(IQPaintEvent e)
	{
		CQt.QTableView_PaintEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public void TimerEvent(IQTimerEvent event)
	{
		CQt.QTableView_TimerEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public int32 HorizontalOffset()
	{
		return CQt.QTableView_HorizontalOffset(this.nativePtr);
	}
	
	public int32 VerticalOffset()
	{
		return CQt.QTableView_VerticalOffset(this.nativePtr);
	}
	
	public void MoveCursor(int64 cursorAction, int64 modifiers)
	{
		CQt.QTableView_MoveCursor(this.nativePtr, (int64)cursorAction, modifiers);
	}
	
	public void SetSelection(IQRect rect, int64 command)
	{
		CQt.QTableView_SetSelection(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, command);
	}
	
	public void VisualRegionForSelection(IQItemSelection selection)
	{
		CQt.QTableView_VisualRegionForSelection(this.nativePtr, (selection == default || selection.NativePtr == default) ? default : selection.NativePtr);
	}
	
	public void[] SelectedIndexes()
	{
		return CQt.QTableView_SelectedIndexes(this.nativePtr);
	}
	
	public void UpdateGeometries()
	{
		CQt.QTableView_UpdateGeometries(this.nativePtr);
	}
	
	public void ViewportSizeHint()
	{
		CQt.QTableView_ViewportSizeHint(this.nativePtr);
	}
	
	public int32 SizeHintForRow(int32 row)
	{
		return CQt.QTableView_SizeHintForRow(this.nativePtr, row);
	}
	
	public int32 SizeHintForColumn(int32 column)
	{
		return CQt.QTableView_SizeHintForColumn(this.nativePtr, column);
	}
	
	public void VerticalScrollbarAction(int32 action)
	{
		CQt.QTableView_VerticalScrollbarAction(this.nativePtr, action);
	}
	
	public void HorizontalScrollbarAction(int32 action)
	{
		CQt.QTableView_HorizontalScrollbarAction(this.nativePtr, action);
	}
	
	public bool IsIndexHidden(IQModelIndex index)
	{
		return CQt.QTableView_IsIndexHidden(this.nativePtr, (index == default || index.NativePtr == default) ? default : index.NativePtr);
	}
	
	public void SelectionChanged(IQItemSelection selected, IQItemSelection deselected)
	{
		CQt.QTableView_SelectionChanged(this.nativePtr, (selected == default || selected.NativePtr == default) ? default : selected.NativePtr, (deselected == default || deselected.NativePtr == default) ? default : deselected.NativePtr);
	}
	
	public void CurrentChanged(IQModelIndex current, IQModelIndex previous)
	{
		CQt.QTableView_CurrentChanged(this.nativePtr, (current == default || current.NativePtr == default) ? default : current.NativePtr, (previous == default || previous.NativePtr == default) ? default : previous.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTableView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTableView_Tr3(s, c, n);
	}
	
	public void* Model()
	{
		return CQt.QAbstractItemView_Model(this.nativePtr);
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
	
	public void Reset()
	{
		CQt.QAbstractItemView_Reset(this.nativePtr);
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
	
	public void SizeHint()
	{
		CQt.QAbstractScrollArea_SizeHint(this.nativePtr);
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
	
	public void SetVisible(bool visible)
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
public class QTableView
{
	public QTableViewPtr handle;
	
	public static implicit operator QTableViewPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QTableViewPtr.New(parent);
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
		return QTableViewPtr.Tr(s);
	}
	
	public virtual void SetModel(IQAbstractItemModel model)
	{
		this.handle.SetModel(model);
	}
	
	public virtual void SetRootIndex(IQModelIndex index)
	{
		this.handle.SetRootIndex(index);
	}
	
	public virtual void SetSelectionModel(IQItemSelectionModel selectionModel)
	{
		this.handle.SetSelectionModel(selectionModel);
	}
	
	public virtual void DoItemsLayout()
	{
		this.handle.DoItemsLayout();
	}
	
	public void* HorizontalHeader()
	{
		return this.handle.HorizontalHeader();
	}
	
	public void* VerticalHeader()
	{
		return this.handle.VerticalHeader();
	}
	
	public void SetHorizontalHeader(IQHeaderView header)
	{
		this.handle.SetHorizontalHeader(header);
	}
	
	public void SetVerticalHeader(IQHeaderView header)
	{
		this.handle.SetVerticalHeader(header);
	}
	
	public int32 RowViewportPosition(int32 row)
	{
		return this.handle.RowViewportPosition(row);
	}
	
	public int32 RowAt(int32 y)
	{
		return this.handle.RowAt(y);
	}
	
	public void SetRowHeight(int32 row, int32 height)
	{
		this.handle.SetRowHeight(row, height);
	}
	
	public int32 RowHeight(int32 row)
	{
		return this.handle.RowHeight(row);
	}
	
	public int32 ColumnViewportPosition(int32 column)
	{
		return this.handle.ColumnViewportPosition(column);
	}
	
	public int32 ColumnAt(int32 x)
	{
		return this.handle.ColumnAt(x);
	}
	
	public void SetColumnWidth(int32 column, int32 width)
	{
		this.handle.SetColumnWidth(column, width);
	}
	
	public int32 ColumnWidth(int32 column)
	{
		return this.handle.ColumnWidth(column);
	}
	
	public bool IsRowHidden(int32 row)
	{
		return this.handle.IsRowHidden(row);
	}
	
	public void SetRowHidden(int32 row, bool hide)
	{
		this.handle.SetRowHidden(row, hide);
	}
	
	public bool IsColumnHidden(int32 column)
	{
		return this.handle.IsColumnHidden(column);
	}
	
	public void SetColumnHidden(int32 column, bool hide)
	{
		this.handle.SetColumnHidden(column, hide);
	}
	
	public void SetSortingEnabled(bool enable)
	{
		this.handle.SetSortingEnabled(enable);
	}
	
	public bool IsSortingEnabled()
	{
		return this.handle.IsSortingEnabled();
	}
	
	public bool ShowGrid()
	{
		return this.handle.ShowGrid();
	}
	
	public int64 GridStyle()
	{
		return this.handle.GridStyle();
	}
	
	public void SetGridStyle(int64 style)
	{
		this.handle.SetGridStyle(style);
	}
	
	public void SetWordWrap(bool on)
	{
		this.handle.SetWordWrap(on);
	}
	
	public bool WordWrap()
	{
		return this.handle.WordWrap();
	}
	
	public void SetCornerButtonEnabled(bool enable)
	{
		this.handle.SetCornerButtonEnabled(enable);
	}
	
	public bool IsCornerButtonEnabled()
	{
		return this.handle.IsCornerButtonEnabled();
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
	
	public void SetSpan(int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		this.handle.SetSpan(row, column, rowSpan, columnSpan);
	}
	
	public int32 RowSpan(int32 row, int32 column)
	{
		return this.handle.RowSpan(row, column);
	}
	
	public int32 ColumnSpan(int32 row, int32 column)
	{
		return this.handle.ColumnSpan(row, column);
	}
	
	public void ClearSpans()
	{
		this.handle.ClearSpans();
	}
	
	public void SelectRow(int32 row)
	{
		this.handle.SelectRow(row);
	}
	
	public void SelectColumn(int32 column)
	{
		this.handle.SelectColumn(column);
	}
	
	public void HideRow(int32 row)
	{
		this.handle.HideRow(row);
	}
	
	public void HideColumn(int32 column)
	{
		this.handle.HideColumn(column);
	}
	
	public void ShowRow(int32 row)
	{
		this.handle.ShowRow(row);
	}
	
	public void ShowColumn(int32 column)
	{
		this.handle.ShowColumn(column);
	}
	
	public void ResizeRowToContents(int32 row)
	{
		this.handle.ResizeRowToContents(row);
	}
	
	public void ResizeRowsToContents()
	{
		this.handle.ResizeRowsToContents();
	}
	
	public void ResizeColumnToContents(int32 column)
	{
		this.handle.ResizeColumnToContents(column);
	}
	
	public void ResizeColumnsToContents()
	{
		this.handle.ResizeColumnsToContents();
	}
	
	public void SortByColumn(int32 column, int64 order)
	{
		this.handle.SortByColumn(column, order);
	}
	
	public void SetShowGrid(bool show)
	{
		this.handle.SetShowGrid(show);
	}
	
	public void RowMoved(int32 row, int32 oldIndex, int32 newIndex)
	{
		this.handle.RowMoved(row, oldIndex, newIndex);
	}
	
	public void ColumnMoved(int32 column, int32 oldIndex, int32 newIndex)
	{
		this.handle.ColumnMoved(column, oldIndex, newIndex);
	}
	
	public void RowResized(int32 row, int32 oldHeight, int32 newHeight)
	{
		this.handle.RowResized(row, oldHeight, newHeight);
	}
	
	public void ColumnResized(int32 column, int32 oldWidth, int32 newWidth)
	{
		this.handle.ColumnResized(column, oldWidth, newWidth);
	}
	
	public void RowCountChanged(int32 oldCount, int32 newCount)
	{
		this.handle.RowCountChanged(oldCount, newCount);
	}
	
	public void ColumnCountChanged(int32 oldCount, int32 newCount)
	{
		this.handle.ColumnCountChanged(oldCount, newCount);
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		this.handle.ScrollContentsBy(dx, dy);
	}
	
	public virtual void InitViewItemOption(IQStyleOptionViewItem option)
	{
		this.handle.InitViewItemOption(option);
	}
	
	public virtual void PaintEvent(IQPaintEvent e)
	{
		this.handle.PaintEvent(e);
	}
	
	public virtual void TimerEvent(IQTimerEvent event)
	{
		this.handle.TimerEvent(event);
	}
	
	public virtual int32 HorizontalOffset()
	{
		return this.handle.HorizontalOffset();
	}
	
	public virtual int32 VerticalOffset()
	{
		return this.handle.VerticalOffset();
	}
	
	public virtual void MoveCursor(int64 cursorAction, int64 modifiers)
	{
		this.handle.MoveCursor(cursorAction, modifiers);
	}
	
	public virtual void SetSelection(IQRect rect, int64 command)
	{
		this.handle.SetSelection(rect, command);
	}
	
	public virtual void VisualRegionForSelection(IQItemSelection selection)
	{
		this.handle.VisualRegionForSelection(selection);
	}
	
	public virtual void[] SelectedIndexes()
	{
		return this.handle.SelectedIndexes();
	}
	
	public virtual void UpdateGeometries()
	{
		this.handle.UpdateGeometries();
	}
	
	public virtual void ViewportSizeHint()
	{
		this.handle.ViewportSizeHint();
	}
	
	public virtual int32 SizeHintForRow(int32 row)
	{
		return this.handle.SizeHintForRow(row);
	}
	
	public virtual int32 SizeHintForColumn(int32 column)
	{
		return this.handle.SizeHintForColumn(column);
	}
	
	public virtual void VerticalScrollbarAction(int32 action)
	{
		this.handle.VerticalScrollbarAction(action);
	}
	
	public virtual void HorizontalScrollbarAction(int32 action)
	{
		this.handle.HorizontalScrollbarAction(action);
	}
	
	public virtual bool IsIndexHidden(IQModelIndex index)
	{
		return this.handle.IsIndexHidden(index);
	}
	
	public virtual void SelectionChanged(IQItemSelection selected, IQItemSelection deselected)
	{
		this.handle.SelectionChanged(selected, deselected);
	}
	
	public virtual void CurrentChanged(IQModelIndex current, IQModelIndex previous)
	{
		this.handle.CurrentChanged(current, previous);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTableViewPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTableViewPtr.Tr3(s, c, n);
	}
	
	public void* Model()
	{
		return this.handle.Model();
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
	
	public virtual void Reset()
	{
		this.handle.Reset();
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
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
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
		QTableViewPtr.SetTabOrder(param1, param2);
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
		return QTableViewPtr.MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return QTableViewPtr.KeyboardGrabber();
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
	
	public virtual void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
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
		return QTableViewPtr.Find(param1);
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
		return QTableViewPtr.CreateWindowContainer(window);
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
		return QTableViewPtr.CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return QTableViewPtr.CreateWindowContainer3(window, parent, flags);
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
		QTableViewPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTableViewPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTableViewPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTableViewPtr.Connect5(sender, signal, receiver, method, typeVal);
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
		return QTableViewPtr.DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QTableView_new")]
	public static extern void* QTableView_new(void* parent);
	[LinkName("QTableView_new2")]
	public static extern void* QTableView_new2();
	[LinkName("QTableView_MetaObject")]
	public static extern void* QTableView_MetaObject(void* c_this);
	[LinkName("QTableView_Metacast")]
	public static extern void* QTableView_Metacast(void* c_this, char8* param1);
	[LinkName("QTableView_Metacall")]
	public static extern int32 QTableView_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTableView_Tr")]
	public static extern libqt_string QTableView_Tr(char8* s);
	[LinkName("QTableView_SetModel")]
	public static extern void QTableView_SetModel(void* c_this, void* model);
	[LinkName("QTableView_SetRootIndex")]
	public static extern void QTableView_SetRootIndex(void* c_this, void* index);
	[LinkName("QTableView_SetSelectionModel")]
	public static extern void QTableView_SetSelectionModel(void* c_this, void* selectionModel);
	[LinkName("QTableView_DoItemsLayout")]
	public static extern void QTableView_DoItemsLayout(void* c_this);
	[LinkName("QTableView_HorizontalHeader")]
	public static extern void* QTableView_HorizontalHeader(void* c_this);
	[LinkName("QTableView_VerticalHeader")]
	public static extern void* QTableView_VerticalHeader(void* c_this);
	[LinkName("QTableView_SetHorizontalHeader")]
	public static extern void QTableView_SetHorizontalHeader(void* c_this, void* header);
	[LinkName("QTableView_SetVerticalHeader")]
	public static extern void QTableView_SetVerticalHeader(void* c_this, void* header);
	[LinkName("QTableView_RowViewportPosition")]
	public static extern int32 QTableView_RowViewportPosition(void* c_this, int32 row);
	[LinkName("QTableView_RowAt")]
	public static extern int32 QTableView_RowAt(void* c_this, int32 y);
	[LinkName("QTableView_SetRowHeight")]
	public static extern void QTableView_SetRowHeight(void* c_this, int32 row, int32 height);
	[LinkName("QTableView_RowHeight")]
	public static extern int32 QTableView_RowHeight(void* c_this, int32 row);
	[LinkName("QTableView_ColumnViewportPosition")]
	public static extern int32 QTableView_ColumnViewportPosition(void* c_this, int32 column);
	[LinkName("QTableView_ColumnAt")]
	public static extern int32 QTableView_ColumnAt(void* c_this, int32 x);
	[LinkName("QTableView_SetColumnWidth")]
	public static extern void QTableView_SetColumnWidth(void* c_this, int32 column, int32 width);
	[LinkName("QTableView_ColumnWidth")]
	public static extern int32 QTableView_ColumnWidth(void* c_this, int32 column);
	[LinkName("QTableView_IsRowHidden")]
	public static extern bool QTableView_IsRowHidden(void* c_this, int32 row);
	[LinkName("QTableView_SetRowHidden")]
	public static extern void QTableView_SetRowHidden(void* c_this, int32 row, bool hide);
	[LinkName("QTableView_IsColumnHidden")]
	public static extern bool QTableView_IsColumnHidden(void* c_this, int32 column);
	[LinkName("QTableView_SetColumnHidden")]
	public static extern void QTableView_SetColumnHidden(void* c_this, int32 column, bool hide);
	[LinkName("QTableView_SetSortingEnabled")]
	public static extern void QTableView_SetSortingEnabled(void* c_this, bool enable);
	[LinkName("QTableView_IsSortingEnabled")]
	public static extern bool QTableView_IsSortingEnabled(void* c_this);
	[LinkName("QTableView_ShowGrid")]
	public static extern bool QTableView_ShowGrid(void* c_this);
	[LinkName("QTableView_GridStyle")]
	public static extern int64 QTableView_GridStyle(void* c_this);
	[LinkName("QTableView_SetGridStyle")]
	public static extern void QTableView_SetGridStyle(void* c_this, int64 style);
	[LinkName("QTableView_SetWordWrap")]
	public static extern void QTableView_SetWordWrap(void* c_this, bool on);
	[LinkName("QTableView_WordWrap")]
	public static extern bool QTableView_WordWrap(void* c_this);
	[LinkName("QTableView_SetCornerButtonEnabled")]
	public static extern void QTableView_SetCornerButtonEnabled(void* c_this, bool enable);
	[LinkName("QTableView_IsCornerButtonEnabled")]
	public static extern bool QTableView_IsCornerButtonEnabled(void* c_this);
	[LinkName("QTableView_VisualRect")]
	public static extern void QTableView_VisualRect(void* c_this, void* index);
	[LinkName("QTableView_ScrollTo")]
	public static extern void QTableView_ScrollTo(void* c_this, void* index, int64 hint);
	[LinkName("QTableView_IndexAt")]
	public static extern void QTableView_IndexAt(void* c_this, void* p);
	[LinkName("QTableView_SetSpan")]
	public static extern void QTableView_SetSpan(void* c_this, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QTableView_RowSpan")]
	public static extern int32 QTableView_RowSpan(void* c_this, int32 row, int32 column);
	[LinkName("QTableView_ColumnSpan")]
	public static extern int32 QTableView_ColumnSpan(void* c_this, int32 row, int32 column);
	[LinkName("QTableView_ClearSpans")]
	public static extern void QTableView_ClearSpans(void* c_this);
	[LinkName("QTableView_SelectRow")]
	public static extern void QTableView_SelectRow(void* c_this, int32 row);
	[LinkName("QTableView_SelectColumn")]
	public static extern void QTableView_SelectColumn(void* c_this, int32 column);
	[LinkName("QTableView_HideRow")]
	public static extern void QTableView_HideRow(void* c_this, int32 row);
	[LinkName("QTableView_HideColumn")]
	public static extern void QTableView_HideColumn(void* c_this, int32 column);
	[LinkName("QTableView_ShowRow")]
	public static extern void QTableView_ShowRow(void* c_this, int32 row);
	[LinkName("QTableView_ShowColumn")]
	public static extern void QTableView_ShowColumn(void* c_this, int32 column);
	[LinkName("QTableView_ResizeRowToContents")]
	public static extern void QTableView_ResizeRowToContents(void* c_this, int32 row);
	[LinkName("QTableView_ResizeRowsToContents")]
	public static extern void QTableView_ResizeRowsToContents(void* c_this);
	[LinkName("QTableView_ResizeColumnToContents")]
	public static extern void QTableView_ResizeColumnToContents(void* c_this, int32 column);
	[LinkName("QTableView_ResizeColumnsToContents")]
	public static extern void QTableView_ResizeColumnsToContents(void* c_this);
	[LinkName("QTableView_SortByColumn")]
	public static extern void QTableView_SortByColumn(void* c_this, int32 column, int64 order);
	[LinkName("QTableView_SetShowGrid")]
	public static extern void QTableView_SetShowGrid(void* c_this, bool show);
	[LinkName("QTableView_RowMoved")]
	public static extern void QTableView_RowMoved(void* c_this, int32 row, int32 oldIndex, int32 newIndex);
	[LinkName("QTableView_ColumnMoved")]
	public static extern void QTableView_ColumnMoved(void* c_this, int32 column, int32 oldIndex, int32 newIndex);
	[LinkName("QTableView_RowResized")]
	public static extern void QTableView_RowResized(void* c_this, int32 row, int32 oldHeight, int32 newHeight);
	[LinkName("QTableView_ColumnResized")]
	public static extern void QTableView_ColumnResized(void* c_this, int32 column, int32 oldWidth, int32 newWidth);
	[LinkName("QTableView_RowCountChanged")]
	public static extern void QTableView_RowCountChanged(void* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTableView_ColumnCountChanged")]
	public static extern void QTableView_ColumnCountChanged(void* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTableView_ScrollContentsBy")]
	public static extern void QTableView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QTableView_InitViewItemOption")]
	public static extern void QTableView_InitViewItemOption(void* c_this, void* option);
	[LinkName("QTableView_PaintEvent")]
	public static extern void QTableView_PaintEvent(void* c_this, void* e);
	[LinkName("QTableView_TimerEvent")]
	public static extern void QTableView_TimerEvent(void* c_this, void* event);
	[LinkName("QTableView_HorizontalOffset")]
	public static extern int32 QTableView_HorizontalOffset(void* c_this);
	[LinkName("QTableView_VerticalOffset")]
	public static extern int32 QTableView_VerticalOffset(void* c_this);
	[LinkName("QTableView_MoveCursor")]
	public static extern void QTableView_MoveCursor(void* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QTableView_SetSelection")]
	public static extern void QTableView_SetSelection(void* c_this, void* rect, int64 command);
	[LinkName("QTableView_VisualRegionForSelection")]
	public static extern void QTableView_VisualRegionForSelection(void* c_this, void* selection);
	[LinkName("QTableView_SelectedIndexes")]
	public static extern void[] QTableView_SelectedIndexes(void* c_this);
	[LinkName("QTableView_UpdateGeometries")]
	public static extern void QTableView_UpdateGeometries(void* c_this);
	[LinkName("QTableView_ViewportSizeHint")]
	public static extern void QTableView_ViewportSizeHint(void* c_this);
	[LinkName("QTableView_SizeHintForRow")]
	public static extern int32 QTableView_SizeHintForRow(void* c_this, int32 row);
	[LinkName("QTableView_SizeHintForColumn")]
	public static extern int32 QTableView_SizeHintForColumn(void* c_this, int32 column);
	[LinkName("QTableView_VerticalScrollbarAction")]
	public static extern void QTableView_VerticalScrollbarAction(void* c_this, int32 action);
	[LinkName("QTableView_HorizontalScrollbarAction")]
	public static extern void QTableView_HorizontalScrollbarAction(void* c_this, int32 action);
	[LinkName("QTableView_IsIndexHidden")]
	public static extern bool QTableView_IsIndexHidden(void* c_this, void* index);
	[LinkName("QTableView_SelectionChanged")]
	public static extern void QTableView_SelectionChanged(void* c_this, void* selected, void* deselected);
	[LinkName("QTableView_CurrentChanged")]
	public static extern void QTableView_CurrentChanged(void* c_this, void* current, void* previous);
	[LinkName("QTableView_Tr2")]
	public static extern libqt_string QTableView_Tr2(char8* s, char8* c);
	[LinkName("QTableView_Tr3")]
	public static extern libqt_string QTableView_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTableView_Delete")]
	public static extern void QTableView_Delete(void* self);
}