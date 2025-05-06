using System;
using System.Interop;
namespace Qt;

public struct QTreeView : QAbstractItemView
{
	[LinkName("QTreeView_new")]
	public static extern QTreeView* QTreeView_new(QWidget* parent);
	[LinkName("QTreeView_new2")]
	public static extern QTreeView* QTreeView_new2();
	[LinkName("QTreeView_MetaObject")]
	public static extern QMetaObject* QTreeView_MetaObject(Self* c_this);
	[LinkName("QTreeView_Metacast")]
	public static extern void* QTreeView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTreeView_Metacall")]
	public static extern int32 QTreeView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTreeView_Tr")]
	public static extern libqt_string QTreeView_Tr(char8[] s);
	[LinkName("QTreeView_SetModel")]
	public static extern void QTreeView_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QTreeView_SetRootIndex")]
	public static extern void QTreeView_SetRootIndex(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_SetSelectionModel")]
	public static extern void QTreeView_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QTreeView_Header")]
	public static extern QHeaderView* QTreeView_Header(Self* c_this);
	[LinkName("QTreeView_SetHeader")]
	public static extern void QTreeView_SetHeader(Self* c_this, QHeaderView* header);
	[LinkName("QTreeView_AutoExpandDelay")]
	public static extern int32 QTreeView_AutoExpandDelay(Self* c_this);
	[LinkName("QTreeView_SetAutoExpandDelay")]
	public static extern void QTreeView_SetAutoExpandDelay(Self* c_this, int32 delay);
	[LinkName("QTreeView_Indentation")]
	public static extern int32 QTreeView_Indentation(Self* c_this);
	[LinkName("QTreeView_SetIndentation")]
	public static extern void QTreeView_SetIndentation(Self* c_this, int32 i);
	[LinkName("QTreeView_ResetIndentation")]
	public static extern void QTreeView_ResetIndentation(Self* c_this);
	[LinkName("QTreeView_RootIsDecorated")]
	public static extern bool QTreeView_RootIsDecorated(Self* c_this);
	[LinkName("QTreeView_SetRootIsDecorated")]
	public static extern void QTreeView_SetRootIsDecorated(Self* c_this, bool show);
	[LinkName("QTreeView_UniformRowHeights")]
	public static extern bool QTreeView_UniformRowHeights(Self* c_this);
	[LinkName("QTreeView_SetUniformRowHeights")]
	public static extern void QTreeView_SetUniformRowHeights(Self* c_this, bool uniform);
	[LinkName("QTreeView_ItemsExpandable")]
	public static extern bool QTreeView_ItemsExpandable(Self* c_this);
	[LinkName("QTreeView_SetItemsExpandable")]
	public static extern void QTreeView_SetItemsExpandable(Self* c_this, bool enable);
	[LinkName("QTreeView_ExpandsOnDoubleClick")]
	public static extern bool QTreeView_ExpandsOnDoubleClick(Self* c_this);
	[LinkName("QTreeView_SetExpandsOnDoubleClick")]
	public static extern void QTreeView_SetExpandsOnDoubleClick(Self* c_this, bool enable);
	[LinkName("QTreeView_ColumnViewportPosition")]
	public static extern int32 QTreeView_ColumnViewportPosition(Self* c_this, int32 column);
	[LinkName("QTreeView_ColumnWidth")]
	public static extern int32 QTreeView_ColumnWidth(Self* c_this, int32 column);
	[LinkName("QTreeView_SetColumnWidth")]
	public static extern void QTreeView_SetColumnWidth(Self* c_this, int32 column, int32 width);
	[LinkName("QTreeView_ColumnAt")]
	public static extern int32 QTreeView_ColumnAt(Self* c_this, int32 x);
	[LinkName("QTreeView_IsColumnHidden")]
	public static extern bool QTreeView_IsColumnHidden(Self* c_this, int32 column);
	[LinkName("QTreeView_SetColumnHidden")]
	public static extern void QTreeView_SetColumnHidden(Self* c_this, int32 column, bool hide);
	[LinkName("QTreeView_IsHeaderHidden")]
	public static extern bool QTreeView_IsHeaderHidden(Self* c_this);
	[LinkName("QTreeView_SetHeaderHidden")]
	public static extern void QTreeView_SetHeaderHidden(Self* c_this, bool hide);
	[LinkName("QTreeView_IsRowHidden")]
	public static extern bool QTreeView_IsRowHidden(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QTreeView_SetRowHidden")]
	public static extern void QTreeView_SetRowHidden(Self* c_this, int32 row, QModelIndex* parent, bool hide);
	[LinkName("QTreeView_IsFirstColumnSpanned")]
	public static extern bool QTreeView_IsFirstColumnSpanned(Self* c_this, int32 row, QModelIndex* parent);
	[LinkName("QTreeView_SetFirstColumnSpanned")]
	public static extern void QTreeView_SetFirstColumnSpanned(Self* c_this, int32 row, QModelIndex* parent, bool span);
	[LinkName("QTreeView_IsExpanded")]
	public static extern bool QTreeView_IsExpanded(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_SetExpanded")]
	public static extern void QTreeView_SetExpanded(Self* c_this, QModelIndex* index, bool expand);
	[LinkName("QTreeView_SetSortingEnabled")]
	public static extern void QTreeView_SetSortingEnabled(Self* c_this, bool enable);
	[LinkName("QTreeView_IsSortingEnabled")]
	public static extern bool QTreeView_IsSortingEnabled(Self* c_this);
	[LinkName("QTreeView_SetAnimated")]
	public static extern void QTreeView_SetAnimated(Self* c_this, bool enable);
	[LinkName("QTreeView_IsAnimated")]
	public static extern bool QTreeView_IsAnimated(Self* c_this);
	[LinkName("QTreeView_SetAllColumnsShowFocus")]
	public static extern void QTreeView_SetAllColumnsShowFocus(Self* c_this, bool enable);
	[LinkName("QTreeView_AllColumnsShowFocus")]
	public static extern bool QTreeView_AllColumnsShowFocus(Self* c_this);
	[LinkName("QTreeView_SetWordWrap")]
	public static extern void QTreeView_SetWordWrap(Self* c_this, bool on);
	[LinkName("QTreeView_WordWrap")]
	public static extern bool QTreeView_WordWrap(Self* c_this);
	[LinkName("QTreeView_SetTreePosition")]
	public static extern void QTreeView_SetTreePosition(Self* c_this, int32 logicalIndex);
	[LinkName("QTreeView_TreePosition")]
	public static extern int32 QTreeView_TreePosition(Self* c_this);
	[LinkName("QTreeView_KeyboardSearch")]
	public static extern void QTreeView_KeyboardSearch(Self* c_this, libqt_string search);
	[LinkName("QTreeView_VisualRect")]
	public static extern QRect QTreeView_VisualRect(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_ScrollTo")]
	public static extern void QTreeView_ScrollTo(Self* c_this, QModelIndex* index, int64 hint);
	[LinkName("QTreeView_IndexAt")]
	public static extern QModelIndex QTreeView_IndexAt(Self* c_this, QPoint* p);
	[LinkName("QTreeView_IndexAbove")]
	public static extern QModelIndex QTreeView_IndexAbove(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_IndexBelow")]
	public static extern QModelIndex QTreeView_IndexBelow(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_DoItemsLayout")]
	public static extern void QTreeView_DoItemsLayout(Self* c_this);
	[LinkName("QTreeView_Reset")]
	public static extern void QTreeView_Reset(Self* c_this);
	[LinkName("QTreeView_DataChanged")]
	public static extern void QTreeView_DataChanged(Self* c_this, QModelIndex* topLeft, QModelIndex* bottomRight, int32[] roles);
	[LinkName("QTreeView_SelectAll")]
	public static extern void QTreeView_SelectAll(Self* c_this);
	[LinkName("QTreeView_Connect_Expanded")]
	public static extern void QTreeView_Connect_Expanded(Self* c_this, c_intptr slot);
	[LinkName("QTreeView_Connect_Collapsed")]
	public static extern void QTreeView_Connect_Collapsed(Self* c_this, c_intptr slot);
	[LinkName("QTreeView_HideColumn")]
	public static extern void QTreeView_HideColumn(Self* c_this, int32 column);
	[LinkName("QTreeView_ShowColumn")]
	public static extern void QTreeView_ShowColumn(Self* c_this, int32 column);
	[LinkName("QTreeView_Expand")]
	public static extern void QTreeView_Expand(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_Collapse")]
	public static extern void QTreeView_Collapse(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_ResizeColumnToContents")]
	public static extern void QTreeView_ResizeColumnToContents(Self* c_this, int32 column);
	[LinkName("QTreeView_SortByColumn")]
	public static extern void QTreeView_SortByColumn(Self* c_this, int32 column, int64 order);
	[LinkName("QTreeView_ExpandAll")]
	public static extern void QTreeView_ExpandAll(Self* c_this);
	[LinkName("QTreeView_ExpandRecursively")]
	public static extern void QTreeView_ExpandRecursively(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_CollapseAll")]
	public static extern void QTreeView_CollapseAll(Self* c_this);
	[LinkName("QTreeView_ExpandToDepth")]
	public static extern void QTreeView_ExpandToDepth(Self* c_this, int32 depth);
	[LinkName("QTreeView_ColumnResized")]
	public static extern void QTreeView_ColumnResized(Self* c_this, int32 column, int32 oldSize, int32 newSize);
	[LinkName("QTreeView_ColumnCountChanged")]
	public static extern void QTreeView_ColumnCountChanged(Self* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTreeView_ColumnMoved")]
	public static extern void QTreeView_ColumnMoved(Self* c_this);
	[LinkName("QTreeView_Reexpand")]
	public static extern void QTreeView_Reexpand(Self* c_this);
	[LinkName("QTreeView_RowsRemoved")]
	public static extern void QTreeView_RowsRemoved(Self* c_this, QModelIndex* parent, int32 first, int32 last);
	[LinkName("QTreeView_VerticalScrollbarValueChanged")]
	public static extern void QTreeView_VerticalScrollbarValueChanged(Self* c_this, int32 value);
	[LinkName("QTreeView_ScrollContentsBy")]
	public static extern void QTreeView_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QTreeView_RowsInserted")]
	public static extern void QTreeView_RowsInserted(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QTreeView_RowsAboutToBeRemoved")]
	public static extern void QTreeView_RowsAboutToBeRemoved(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QTreeView_MoveCursor")]
	public static extern QModelIndex QTreeView_MoveCursor(Self* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QTreeView_HorizontalOffset")]
	public static extern int32 QTreeView_HorizontalOffset(Self* c_this);
	[LinkName("QTreeView_VerticalOffset")]
	public static extern int32 QTreeView_VerticalOffset(Self* c_this);
	[LinkName("QTreeView_SetSelection")]
	public static extern void QTreeView_SetSelection(Self* c_this, QRect* rect, int64 command);
	[LinkName("QTreeView_VisualRegionForSelection")]
	public static extern QRegion QTreeView_VisualRegionForSelection(Self* c_this, QItemSelection* selection);
	[LinkName("QTreeView_SelectedIndexes")]
	public static extern QModelIndex[] QTreeView_SelectedIndexes(Self* c_this);
	[LinkName("QTreeView_ChangeEvent")]
	public static extern void QTreeView_ChangeEvent(Self* c_this, QEvent* event);
	[LinkName("QTreeView_TimerEvent")]
	public static extern void QTreeView_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QTreeView_PaintEvent")]
	public static extern void QTreeView_PaintEvent(Self* c_this, QPaintEvent* event);
	[LinkName("QTreeView_DrawTree")]
	public static extern void QTreeView_DrawTree(Self* c_this, QPainter* painter, QRegion* region);
	[LinkName("QTreeView_DrawRow")]
	public static extern void QTreeView_DrawRow(Self* c_this, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index);
	[LinkName("QTreeView_DrawBranches")]
	public static extern void QTreeView_DrawBranches(Self* c_this, QPainter* painter, QRect* rect, QModelIndex* index);
	[LinkName("QTreeView_MousePressEvent")]
	public static extern void QTreeView_MousePressEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QTreeView_MouseReleaseEvent")]
	public static extern void QTreeView_MouseReleaseEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QTreeView_MouseDoubleClickEvent")]
	public static extern void QTreeView_MouseDoubleClickEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QTreeView_MouseMoveEvent")]
	public static extern void QTreeView_MouseMoveEvent(Self* c_this, QMouseEvent* event);
	[LinkName("QTreeView_KeyPressEvent")]
	public static extern void QTreeView_KeyPressEvent(Self* c_this, QKeyEvent* event);
	[LinkName("QTreeView_DragMoveEvent")]
	public static extern void QTreeView_DragMoveEvent(Self* c_this, QDragMoveEvent* event);
	[LinkName("QTreeView_ViewportEvent")]
	public static extern bool QTreeView_ViewportEvent(Self* c_this, QEvent* event);
	[LinkName("QTreeView_UpdateGeometries")]
	public static extern void QTreeView_UpdateGeometries(Self* c_this);
	[LinkName("QTreeView_ViewportSizeHint")]
	public static extern QSize QTreeView_ViewportSizeHint(Self* c_this);
	[LinkName("QTreeView_SizeHintForColumn")]
	public static extern int32 QTreeView_SizeHintForColumn(Self* c_this, int32 column);
	[LinkName("QTreeView_IndexRowSizeHint")]
	public static extern int32 QTreeView_IndexRowSizeHint(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_RowHeight")]
	public static extern int32 QTreeView_RowHeight(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_HorizontalScrollbarAction")]
	public static extern void QTreeView_HorizontalScrollbarAction(Self* c_this, int32 action);
	[LinkName("QTreeView_IsIndexHidden")]
	public static extern bool QTreeView_IsIndexHidden(Self* c_this, QModelIndex* index);
	[LinkName("QTreeView_SelectionChanged")]
	public static extern void QTreeView_SelectionChanged(Self* c_this, QItemSelection* selected, QItemSelection* deselected);
	[LinkName("QTreeView_CurrentChanged")]
	public static extern void QTreeView_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QTreeView_Tr2")]
	public static extern libqt_string QTreeView_Tr2(char8[] s, char8[] c);
	[LinkName("QTreeView_Tr3")]
	public static extern libqt_string QTreeView_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QTreeView_ExpandRecursively2")]
	public static extern void QTreeView_ExpandRecursively2(Self* c_this, QModelIndex* index, int32 depth);
}