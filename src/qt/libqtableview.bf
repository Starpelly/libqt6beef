using System;
using System.Interop;
namespace Qt;

public struct QTableView : QAbstractItemView
{
	[LinkName("QTableView_new")]
	public static extern QTableView* QTableView_new(QWidget* parent);
	[LinkName("QTableView_new2")]
	public static extern QTableView* QTableView_new2();
	[LinkName("QTableView_MetaObject")]
	public static extern QMetaObject* QTableView_MetaObject(Self* c_this);
	[LinkName("QTableView_Metacast")]
	public static extern void* QTableView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTableView_Metacall")]
	public static extern int32 QTableView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTableView_Tr")]
	public static extern libqt_string QTableView_Tr(char8[] s);
	[LinkName("QTableView_SetModel")]
	public static extern void QTableView_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QTableView_SetRootIndex")]
	public static extern void QTableView_SetRootIndex(Self* c_this, QModelIndex* index);
	[LinkName("QTableView_SetSelectionModel")]
	public static extern void QTableView_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QTableView_DoItemsLayout")]
	public static extern void QTableView_DoItemsLayout(Self* c_this);
	[LinkName("QTableView_HorizontalHeader")]
	public static extern QHeaderView* QTableView_HorizontalHeader(Self* c_this);
	[LinkName("QTableView_VerticalHeader")]
	public static extern QHeaderView* QTableView_VerticalHeader(Self* c_this);
	[LinkName("QTableView_SetHorizontalHeader")]
	public static extern void QTableView_SetHorizontalHeader(Self* c_this, QHeaderView* header);
	[LinkName("QTableView_SetVerticalHeader")]
	public static extern void QTableView_SetVerticalHeader(Self* c_this, QHeaderView* header);
	[LinkName("QTableView_RowViewportPosition")]
	public static extern int32 QTableView_RowViewportPosition(Self* c_this, int32 row);
	[LinkName("QTableView_RowAt")]
	public static extern int32 QTableView_RowAt(Self* c_this, int32 y);
	[LinkName("QTableView_SetRowHeight")]
	public static extern void QTableView_SetRowHeight(Self* c_this, int32 row, int32 height);
	[LinkName("QTableView_RowHeight")]
	public static extern int32 QTableView_RowHeight(Self* c_this, int32 row);
	[LinkName("QTableView_ColumnViewportPosition")]
	public static extern int32 QTableView_ColumnViewportPosition(Self* c_this, int32 column);
	[LinkName("QTableView_ColumnAt")]
	public static extern int32 QTableView_ColumnAt(Self* c_this, int32 x);
	[LinkName("QTableView_SetColumnWidth")]
	public static extern void QTableView_SetColumnWidth(Self* c_this, int32 column, int32 width);
	[LinkName("QTableView_ColumnWidth")]
	public static extern int32 QTableView_ColumnWidth(Self* c_this, int32 column);
	[LinkName("QTableView_IsRowHidden")]
	public static extern bool QTableView_IsRowHidden(Self* c_this, int32 row);
	[LinkName("QTableView_SetRowHidden")]
	public static extern void QTableView_SetRowHidden(Self* c_this, int32 row, bool hide);
	[LinkName("QTableView_IsColumnHidden")]
	public static extern bool QTableView_IsColumnHidden(Self* c_this, int32 column);
	[LinkName("QTableView_SetColumnHidden")]
	public static extern void QTableView_SetColumnHidden(Self* c_this, int32 column, bool hide);
	[LinkName("QTableView_SetSortingEnabled")]
	public static extern void QTableView_SetSortingEnabled(Self* c_this, bool enable);
	[LinkName("QTableView_IsSortingEnabled")]
	public static extern bool QTableView_IsSortingEnabled(Self* c_this);
	[LinkName("QTableView_ShowGrid")]
	public static extern bool QTableView_ShowGrid(Self* c_this);
	[LinkName("QTableView_GridStyle")]
	public static extern int64 QTableView_GridStyle(Self* c_this);
	[LinkName("QTableView_SetGridStyle")]
	public static extern void QTableView_SetGridStyle(Self* c_this, int64 style);
	[LinkName("QTableView_SetWordWrap")]
	public static extern void QTableView_SetWordWrap(Self* c_this, bool on);
	[LinkName("QTableView_WordWrap")]
	public static extern bool QTableView_WordWrap(Self* c_this);
	[LinkName("QTableView_SetCornerButtonEnabled")]
	public static extern void QTableView_SetCornerButtonEnabled(Self* c_this, bool enable);
	[LinkName("QTableView_IsCornerButtonEnabled")]
	public static extern bool QTableView_IsCornerButtonEnabled(Self* c_this);
	[LinkName("QTableView_VisualRect")]
	public static extern QRect QTableView_VisualRect(Self* c_this, QModelIndex* index);
	[LinkName("QTableView_ScrollTo")]
	public static extern void QTableView_ScrollTo(Self* c_this, QModelIndex* index, int64 hint);
	[LinkName("QTableView_IndexAt")]
	public static extern QModelIndex QTableView_IndexAt(Self* c_this, QPoint* p);
	[LinkName("QTableView_SetSpan")]
	public static extern void QTableView_SetSpan(Self* c_this, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QTableView_RowSpan")]
	public static extern int32 QTableView_RowSpan(Self* c_this, int32 row, int32 column);
	[LinkName("QTableView_ColumnSpan")]
	public static extern int32 QTableView_ColumnSpan(Self* c_this, int32 row, int32 column);
	[LinkName("QTableView_ClearSpans")]
	public static extern void QTableView_ClearSpans(Self* c_this);
	[LinkName("QTableView_SelectRow")]
	public static extern void QTableView_SelectRow(Self* c_this, int32 row);
	[LinkName("QTableView_SelectColumn")]
	public static extern void QTableView_SelectColumn(Self* c_this, int32 column);
	[LinkName("QTableView_HideRow")]
	public static extern void QTableView_HideRow(Self* c_this, int32 row);
	[LinkName("QTableView_HideColumn")]
	public static extern void QTableView_HideColumn(Self* c_this, int32 column);
	[LinkName("QTableView_ShowRow")]
	public static extern void QTableView_ShowRow(Self* c_this, int32 row);
	[LinkName("QTableView_ShowColumn")]
	public static extern void QTableView_ShowColumn(Self* c_this, int32 column);
	[LinkName("QTableView_ResizeRowToContents")]
	public static extern void QTableView_ResizeRowToContents(Self* c_this, int32 row);
	[LinkName("QTableView_ResizeRowsToContents")]
	public static extern void QTableView_ResizeRowsToContents(Self* c_this);
	[LinkName("QTableView_ResizeColumnToContents")]
	public static extern void QTableView_ResizeColumnToContents(Self* c_this, int32 column);
	[LinkName("QTableView_ResizeColumnsToContents")]
	public static extern void QTableView_ResizeColumnsToContents(Self* c_this);
	[LinkName("QTableView_SortByColumn")]
	public static extern void QTableView_SortByColumn(Self* c_this, int32 column, int64 order);
	[LinkName("QTableView_SetShowGrid")]
	public static extern void QTableView_SetShowGrid(Self* c_this, bool show);
	[LinkName("QTableView_RowMoved")]
	public static extern void QTableView_RowMoved(Self* c_this, int32 row, int32 oldIndex, int32 newIndex);
	[LinkName("QTableView_ColumnMoved")]
	public static extern void QTableView_ColumnMoved(Self* c_this, int32 column, int32 oldIndex, int32 newIndex);
	[LinkName("QTableView_RowResized")]
	public static extern void QTableView_RowResized(Self* c_this, int32 row, int32 oldHeight, int32 newHeight);
	[LinkName("QTableView_ColumnResized")]
	public static extern void QTableView_ColumnResized(Self* c_this, int32 column, int32 oldWidth, int32 newWidth);
	[LinkName("QTableView_RowCountChanged")]
	public static extern void QTableView_RowCountChanged(Self* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTableView_ColumnCountChanged")]
	public static extern void QTableView_ColumnCountChanged(Self* c_this, int32 oldCount, int32 newCount);
	[LinkName("QTableView_ScrollContentsBy")]
	public static extern void QTableView_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QTableView_InitViewItemOption")]
	public static extern void QTableView_InitViewItemOption(Self* c_this, QStyleOptionViewItem* option);
	[LinkName("QTableView_PaintEvent")]
	public static extern void QTableView_PaintEvent(Self* c_this, QPaintEvent* e);
	[LinkName("QTableView_TimerEvent")]
	public static extern void QTableView_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QTableView_HorizontalOffset")]
	public static extern int32 QTableView_HorizontalOffset(Self* c_this);
	[LinkName("QTableView_VerticalOffset")]
	public static extern int32 QTableView_VerticalOffset(Self* c_this);
	[LinkName("QTableView_MoveCursor")]
	public static extern QModelIndex QTableView_MoveCursor(Self* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QTableView_SetSelection")]
	public static extern void QTableView_SetSelection(Self* c_this, QRect* rect, int64 command);
	[LinkName("QTableView_VisualRegionForSelection")]
	public static extern QRegion QTableView_VisualRegionForSelection(Self* c_this, QItemSelection* selection);
	[LinkName("QTableView_SelectedIndexes")]
	public static extern QModelIndex[] QTableView_SelectedIndexes(Self* c_this);
	[LinkName("QTableView_UpdateGeometries")]
	public static extern void QTableView_UpdateGeometries(Self* c_this);
	[LinkName("QTableView_ViewportSizeHint")]
	public static extern QSize QTableView_ViewportSizeHint(Self* c_this);
	[LinkName("QTableView_SizeHintForRow")]
	public static extern int32 QTableView_SizeHintForRow(Self* c_this, int32 row);
	[LinkName("QTableView_SizeHintForColumn")]
	public static extern int32 QTableView_SizeHintForColumn(Self* c_this, int32 column);
	[LinkName("QTableView_VerticalScrollbarAction")]
	public static extern void QTableView_VerticalScrollbarAction(Self* c_this, int32 action);
	[LinkName("QTableView_HorizontalScrollbarAction")]
	public static extern void QTableView_HorizontalScrollbarAction(Self* c_this, int32 action);
	[LinkName("QTableView_IsIndexHidden")]
	public static extern bool QTableView_IsIndexHidden(Self* c_this, QModelIndex* index);
	[LinkName("QTableView_SelectionChanged")]
	public static extern void QTableView_SelectionChanged(Self* c_this, QItemSelection* selected, QItemSelection* deselected);
	[LinkName("QTableView_CurrentChanged")]
	public static extern void QTableView_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QTableView_Tr2")]
	public static extern libqt_string QTableView_Tr2(char8[] s, char8[] c);
	[LinkName("QTableView_Tr3")]
	public static extern libqt_string QTableView_Tr3(char8[] s, char8[] c, int32 n);
}