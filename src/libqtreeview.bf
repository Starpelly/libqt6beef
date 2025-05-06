using System;
using System.Interop;
namespace Qt;

public struct QTreeView
{
	[LinkName("QTreeView_new")]
	public static extern void* QTreeView_new(QWidget parent);
	[LinkName("QTreeView_new2")]
	public static extern void* QTreeView_new2();
	[LinkName("QTreeView_MetaObject")]
	public static extern QMetaObject QTreeView_MetaObject(void* c_this);
	[LinkName("QTreeView_Metacast")]
	public static extern void QTreeView_Metacast(void* c_this, char8[] param1);
	[LinkName("QTreeView_Metacall")]
	public static extern int32 QTreeView_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTreeView_Tr")]
	public static extern char8[] QTreeView_Tr(char8[] s);
	[LinkName("QTreeView_SetModel")]
	public static extern void QTreeView_SetModel(void* c_this, QAbstractItemModel model);
	[LinkName("QTreeView_SetRootIndex")]
	public static extern void QTreeView_SetRootIndex(void* c_this, QModelIndex index);
	[LinkName("QTreeView_SetSelectionModel")]
	public static extern void QTreeView_SetSelectionModel(void* c_this, QItemSelectionModel selectionModel);
	[LinkName("QTreeView_Header")]
	public static extern QHeaderView QTreeView_Header(void* c_this);
	[LinkName("QTreeView_SetHeader")]
	public static extern void QTreeView_SetHeader(void* c_this, QHeaderView header);
	[LinkName("QTreeView_AutoExpandDelay")]
	public static extern int32 QTreeView_AutoExpandDelay(void* c_this);
	[LinkName("QTreeView_SetAutoExpandDelay")]
	public static extern void QTreeView_SetAutoExpandDelay(void* c_this, int32 delay);
	[LinkName("QTreeView_Indentation")]
	public static extern int32 QTreeView_Indentation(void* c_this);
	[LinkName("QTreeView_SetIndentation")]
	public static extern void QTreeView_SetIndentation(void* c_this, int32 i);
	[LinkName("QTreeView_ResetIndentation")]
	public static extern void QTreeView_ResetIndentation(void* c_this);
	[LinkName("QTreeView_RootIsDecorated")]
	public static extern bool QTreeView_RootIsDecorated(void* c_this);
	[LinkName("QTreeView_SetRootIsDecorated")]
	public static extern void QTreeView_SetRootIsDecorated(void* c_this, bool show);
	[LinkName("QTreeView_UniformRowHeights")]
	public static extern bool QTreeView_UniformRowHeights(void* c_this);
	[LinkName("QTreeView_SetUniformRowHeights")]
	public static extern void QTreeView_SetUniformRowHeights(void* c_this, bool uniform);
	[LinkName("QTreeView_ItemsExpandable")]
	public static extern bool QTreeView_ItemsExpandable(void* c_this);
	[LinkName("QTreeView_SetItemsExpandable")]
	public static extern void QTreeView_SetItemsExpandable(void* c_this, bool enable);
	[LinkName("QTreeView_ExpandsOnDoubleClick")]
	public static extern bool QTreeView_ExpandsOnDoubleClick(void* c_this);
	[LinkName("QTreeView_SetExpandsOnDoubleClick")]
	public static extern void QTreeView_SetExpandsOnDoubleClick(void* c_this, bool enable);
	[LinkName("QTreeView_ColumnViewportPosition")]
	public static extern int32 QTreeView_ColumnViewportPosition(void* c_this, int32 column);
	[LinkName("QTreeView_ColumnWidth")]
	public static extern int32 QTreeView_ColumnWidth(void* c_this, int32 column);
	[LinkName("QTreeView_SetColumnWidth")]
	public static extern void QTreeView_SetColumnWidth(void* c_this, int32 column, int32 width);
	[LinkName("QTreeView_ColumnAt")]
	public static extern int32 QTreeView_ColumnAt(void* c_this, int32 x);
	[LinkName("QTreeView_IsColumnHidden")]
	public static extern bool QTreeView_IsColumnHidden(void* c_this, int32 column);
	[LinkName("QTreeView_SetColumnHidden")]
	public static extern void QTreeView_SetColumnHidden(void* c_this, int32 column, bool hide);
	[LinkName("QTreeView_IsHeaderHidden")]
	public static extern bool QTreeView_IsHeaderHidden(void* c_this);
	[LinkName("QTreeView_SetHeaderHidden")]
	public static extern void QTreeView_SetHeaderHidden(void* c_this, bool hide);
	[LinkName("QTreeView_IsRowHidden")]
	public static extern bool QTreeView_IsRowHidden(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QTreeView_SetRowHidden")]
	public static extern void QTreeView_SetRowHidden(void* c_this, int32 row, QModelIndex parent, bool hide);
	[LinkName("QTreeView_IsFirstColumnSpanned")]
	public static extern bool QTreeView_IsFirstColumnSpanned(void* c_this, int32 row, QModelIndex parent);
	[LinkName("QTreeView_SetFirstColumnSpanned")]
	public static extern void QTreeView_SetFirstColumnSpanned(void* c_this, int32 row, QModelIndex parent, bool span);
	[LinkName("QTreeView_IsExpanded")]
	public static extern bool QTreeView_IsExpanded(void* c_this, QModelIndex index);
	[LinkName("QTreeView_SetExpanded")]
	public static extern void QTreeView_SetExpanded(void* c_this, QModelIndex index, bool expand);
	[LinkName("QTreeView_SetSortingEnabled")]
	public static extern void QTreeView_SetSortingEnabled(void* c_this, bool enable);
	[LinkName("QTreeView_IsSortingEnabled")]
	public static extern bool QTreeView_IsSortingEnabled(void* c_this);
	[LinkName("QTreeView_SetAnimated")]
	public static extern void QTreeView_SetAnimated(void* c_this, bool enable);
	[LinkName("QTreeView_IsAnimated")]
	public static extern bool QTreeView_IsAnimated(void* c_this);
	[LinkName("QTreeView_SetAllColumnsShowFocus")]
	public static extern void QTreeView_SetAllColumnsShowFocus(void* c_this, bool enable);
	[LinkName("QTreeView_AllColumnsShowFocus")]
	public static extern bool QTreeView_AllColumnsShowFocus(void* c_this);
	[LinkName("QTreeView_SetWordWrap")]
	public static extern void QTreeView_SetWordWrap(void* c_this, bool on);
	[LinkName("QTreeView_WordWrap")]
	public static extern bool QTreeView_WordWrap(void* c_this);
	[LinkName("QTreeView_SetTreePosition")]
	public static extern void QTreeView_SetTreePosition(void* c_this, int32 logicalIndex);
	[LinkName("QTreeView_TreePosition")]
	public static extern int32 QTreeView_TreePosition(void* c_this);
	[LinkName("QTreeView_KeyboardSearch")]
	public static extern void QTreeView_KeyboardSearch(void* c_this, char8[] search);
	[LinkName("QTreeView_VisualRect")]
	public static extern QRect QTreeView_VisualRect(void* c_this, QModelIndex index);
	[LinkName("QTreeView_ScrollTo")]
	public static extern void QTreeView_ScrollTo(void* c_this, QModelIndex index, int64 hint);
	[LinkName("QTreeView_IndexAt")]
	public static extern QModelIndex QTreeView_IndexAt(void* c_this, QPoint p);
	[LinkName("QTreeView_IndexAbove")]
	public static extern QModelIndex QTreeView_IndexAbove(void* c_this, QModelIndex index);
	[LinkName("QTreeView_IndexBelow")]
	public static extern QModelIndex QTreeView_IndexBelow(void* c_this, QModelIndex index);
	[LinkName("QTreeView_DoItemsLayout")]
	public static extern void QTreeView_DoItemsLayout(void* c_this);
	[LinkName("QTreeView_Reset")]
	public static extern void QTreeView_Reset(void* c_this);
	[LinkName("QTreeView_DataChanged")]
	public static extern void QTreeView_DataChanged(void* c_this, QModelIndex topLeft, QModelIndex bottomRight, int32[] roles);
	[LinkName("QTreeView_SelectAll")]
	public static extern void QTreeView_SelectAll(void* c_this);
	[LinkName("QTreeView_Expanded")]
	public static extern void QTreeView_Expanded(void* c_this, QModelIndex index);
	[LinkName("QTreeView_Collapsed")]
	public static extern void QTreeView_Collapsed(void* c_this, QModelIndex index);
	[LinkName("QTreeView_HideColumn")]
	public static extern void QTreeView_HideColumn(void* c_this, int32 column);
	[LinkName("QTreeView_ShowColumn")]
	public static extern void QTreeView_ShowColumn(void* c_this, int32 column);
	[LinkName("QTreeView_Expand")]
	public static extern void QTreeView_Expand(void* c_this, QModelIndex index);
	[LinkName("QTreeView_Collapse")]
	public static extern void QTreeView_Collapse(void* c_this, QModelIndex index);
	[LinkName("QTreeView_ResizeColumnToContents")]
	public static extern void QTreeView_ResizeColumnToContents(void* c_this, int32 column);
	[LinkName("QTreeView_SortByColumn")]
	public static extern void QTreeView_SortByColumn(void* c_this, int32 column, int64 order);
	[LinkName("QTreeView_ExpandAll")]
	public static extern void QTreeView_ExpandAll(void* c_this);
	[LinkName("QTreeView_ExpandRecursively")]
	public static extern void QTreeView_ExpandRecursively(void* c_this, QModelIndex index);
	[LinkName("QTreeView_CollapseAll")]
	public static extern void QTreeView_CollapseAll(void* c_this);
	[LinkName("QTreeView_ExpandToDepth")]
	public static extern void QTreeView_ExpandToDepth(void* c_this, int32 depth);
	[LinkName("QTreeView_ColumnResized")]
	public static extern void QTreeView_ColumnResized(void* c_this, int32 column, int32 oldSize, int32 newSize);
	[LinkName("QTreeView_ColumnCountChanged")]
	public static extern void QTreeView_ColumnCountChanged(void* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTreeView_ColumnMoved")]
	public static extern void QTreeView_ColumnMoved(void* c_this);
	[LinkName("QTreeView_Reexpand")]
	public static extern void QTreeView_Reexpand(void* c_this);
	[LinkName("QTreeView_RowsRemoved")]
	public static extern void QTreeView_RowsRemoved(void* c_this, QModelIndex parent, int32 first, int32 last);
	[LinkName("QTreeView_VerticalScrollbarValueChanged")]
	public static extern void QTreeView_VerticalScrollbarValueChanged(void* c_this, int32 value);
	[LinkName("QTreeView_ScrollContentsBy")]
	public static extern void QTreeView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QTreeView_RowsInserted")]
	public static extern void QTreeView_RowsInserted(void* c_this, QModelIndex parent, int32 start, int32 end);
	[LinkName("QTreeView_RowsAboutToBeRemoved")]
	public static extern void QTreeView_RowsAboutToBeRemoved(void* c_this, QModelIndex parent, int32 start, int32 end);
	[LinkName("QTreeView_MoveCursor")]
	public static extern QModelIndex QTreeView_MoveCursor(void* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QTreeView_HorizontalOffset")]
	public static extern int32 QTreeView_HorizontalOffset(void* c_this);
	[LinkName("QTreeView_VerticalOffset")]
	public static extern int32 QTreeView_VerticalOffset(void* c_this);
	[LinkName("QTreeView_SetSelection")]
	public static extern void QTreeView_SetSelection(void* c_this, QRect rect, int64 command);
	[LinkName("QTreeView_VisualRegionForSelection")]
	public static extern QRegion QTreeView_VisualRegionForSelection(void* c_this, QItemSelection selection);
	[LinkName("QTreeView_SelectedIndexes")]
	public static extern QModelIndex[] QTreeView_SelectedIndexes(void* c_this);
	[LinkName("QTreeView_ChangeEvent")]
	public static extern void QTreeView_ChangeEvent(void* c_this, QEvent event);
	[LinkName("QTreeView_TimerEvent")]
	public static extern void QTreeView_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QTreeView_PaintEvent")]
	public static extern void QTreeView_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QTreeView_DrawTree")]
	public static extern void QTreeView_DrawTree(void* c_this, QPainter painter, QRegion region);
	[LinkName("QTreeView_DrawRow")]
	public static extern void QTreeView_DrawRow(void* c_this, QPainter painter, QStyleOptionViewItem options, QModelIndex index);
	[LinkName("QTreeView_DrawBranches")]
	public static extern void QTreeView_DrawBranches(void* c_this, QPainter painter, QRect rect, QModelIndex index);
	[LinkName("QTreeView_MousePressEvent")]
	public static extern void QTreeView_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QTreeView_MouseReleaseEvent")]
	public static extern void QTreeView_MouseReleaseEvent(void* c_this, QMouseEvent event);
	[LinkName("QTreeView_MouseDoubleClickEvent")]
	public static extern void QTreeView_MouseDoubleClickEvent(void* c_this, QMouseEvent event);
	[LinkName("QTreeView_MouseMoveEvent")]
	public static extern void QTreeView_MouseMoveEvent(void* c_this, QMouseEvent event);
	[LinkName("QTreeView_KeyPressEvent")]
	public static extern void QTreeView_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QTreeView_DragMoveEvent")]
	public static extern void QTreeView_DragMoveEvent(void* c_this, QDragMoveEvent event);
	[LinkName("QTreeView_ViewportEvent")]
	public static extern bool QTreeView_ViewportEvent(void* c_this, QEvent event);
	[LinkName("QTreeView_UpdateGeometries")]
	public static extern void QTreeView_UpdateGeometries(void* c_this);
	[LinkName("QTreeView_ViewportSizeHint")]
	public static extern QSize QTreeView_ViewportSizeHint(void* c_this);
	[LinkName("QTreeView_SizeHintForColumn")]
	public static extern int32 QTreeView_SizeHintForColumn(void* c_this, int32 column);
	[LinkName("QTreeView_IndexRowSizeHint")]
	public static extern int32 QTreeView_IndexRowSizeHint(void* c_this, QModelIndex index);
	[LinkName("QTreeView_RowHeight")]
	public static extern int32 QTreeView_RowHeight(void* c_this, QModelIndex index);
	[LinkName("QTreeView_HorizontalScrollbarAction")]
	public static extern void QTreeView_HorizontalScrollbarAction(void* c_this, int32 action);
	[LinkName("QTreeView_IsIndexHidden")]
	public static extern bool QTreeView_IsIndexHidden(void* c_this, QModelIndex index);
	[LinkName("QTreeView_SelectionChanged")]
	public static extern void QTreeView_SelectionChanged(void* c_this, QItemSelection selected, QItemSelection deselected);
	[LinkName("QTreeView_CurrentChanged")]
	public static extern void QTreeView_CurrentChanged(void* c_this, QModelIndex current, QModelIndex previous);
	[LinkName("QTreeView_Tr2")]
	public static extern char8[] QTreeView_Tr2(char8[] s, char8[] c);
	[LinkName("QTreeView_Tr3")]
	public static extern char8[] QTreeView_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTreeView_ExpandRecursively2")]
	public static extern void QTreeView_ExpandRecursively2(void* c_this, QModelIndex index, int32 depth);
}