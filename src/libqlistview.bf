using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QListView__Movement
{
	Static = 0,
	Free = 1,
	Snap = 2,
}
[AllowDuplicates]
public enum QListView__Flow
{
	LeftToRight = 0,
	TopToBottom = 1,
}
[AllowDuplicates]
public enum QListView__ResizeMode
{
	Fixed = 0,
	Adjust = 1,
}
[AllowDuplicates]
public enum QListView__LayoutMode
{
	SinglePass = 0,
	Batched = 1,
}
[AllowDuplicates]
public enum QListView__ViewMode
{
	ListMode = 0,
	IconMode = 1,
}
public struct QListView
{
	[LinkName("QListView_new")]
	public static extern void* QListView_new(QWidget parent);
	[LinkName("QListView_new2")]
	public static extern void* QListView_new2();
	[LinkName("QListView_MetaObject")]
	public static extern QMetaObject QListView_MetaObject(void* c_this);
	[LinkName("QListView_Metacast")]
	public static extern void QListView_Metacast(void* c_this, char8[] param1);
	[LinkName("QListView_Metacall")]
	public static extern int32 QListView_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QListView_Tr")]
	public static extern char8[] QListView_Tr(char8[] s);
	[LinkName("QListView_SetMovement")]
	public static extern void QListView_SetMovement(void* c_this, int64 movement);
	[LinkName("QListView_Movement")]
	public static extern int64 QListView_Movement(void* c_this);
	[LinkName("QListView_SetFlow")]
	public static extern void QListView_SetFlow(void* c_this, int64 flow);
	[LinkName("QListView_Flow")]
	public static extern int64 QListView_Flow(void* c_this);
	[LinkName("QListView_SetWrapping")]
	public static extern void QListView_SetWrapping(void* c_this, bool enable);
	[LinkName("QListView_IsWrapping")]
	public static extern bool QListView_IsWrapping(void* c_this);
	[LinkName("QListView_SetResizeMode")]
	public static extern void QListView_SetResizeMode(void* c_this, int64 mode);
	[LinkName("QListView_ResizeMode")]
	public static extern int64 QListView_ResizeMode(void* c_this);
	[LinkName("QListView_SetLayoutMode")]
	public static extern void QListView_SetLayoutMode(void* c_this, int64 mode);
	[LinkName("QListView_LayoutMode")]
	public static extern int64 QListView_LayoutMode(void* c_this);
	[LinkName("QListView_SetSpacing")]
	public static extern void QListView_SetSpacing(void* c_this, int32 space);
	[LinkName("QListView_Spacing")]
	public static extern int32 QListView_Spacing(void* c_this);
	[LinkName("QListView_SetBatchSize")]
	public static extern void QListView_SetBatchSize(void* c_this, int32 batchSize);
	[LinkName("QListView_BatchSize")]
	public static extern int32 QListView_BatchSize(void* c_this);
	[LinkName("QListView_SetGridSize")]
	public static extern void QListView_SetGridSize(void* c_this, QSize size);
	[LinkName("QListView_GridSize")]
	public static extern QSize QListView_GridSize(void* c_this);
	[LinkName("QListView_SetViewMode")]
	public static extern void QListView_SetViewMode(void* c_this, int64 mode);
	[LinkName("QListView_ViewMode")]
	public static extern int64 QListView_ViewMode(void* c_this);
	[LinkName("QListView_ClearPropertyFlags")]
	public static extern void QListView_ClearPropertyFlags(void* c_this);
	[LinkName("QListView_IsRowHidden")]
	public static extern bool QListView_IsRowHidden(void* c_this, int32 row);
	[LinkName("QListView_SetRowHidden")]
	public static extern void QListView_SetRowHidden(void* c_this, int32 row, bool hide);
	[LinkName("QListView_SetModelColumn")]
	public static extern void QListView_SetModelColumn(void* c_this, int32 column);
	[LinkName("QListView_ModelColumn")]
	public static extern int32 QListView_ModelColumn(void* c_this);
	[LinkName("QListView_SetUniformItemSizes")]
	public static extern void QListView_SetUniformItemSizes(void* c_this, bool enable);
	[LinkName("QListView_UniformItemSizes")]
	public static extern bool QListView_UniformItemSizes(void* c_this);
	[LinkName("QListView_SetWordWrap")]
	public static extern void QListView_SetWordWrap(void* c_this, bool on);
	[LinkName("QListView_WordWrap")]
	public static extern bool QListView_WordWrap(void* c_this);
	[LinkName("QListView_SetSelectionRectVisible")]
	public static extern void QListView_SetSelectionRectVisible(void* c_this, bool show);
	[LinkName("QListView_IsSelectionRectVisible")]
	public static extern bool QListView_IsSelectionRectVisible(void* c_this);
	[LinkName("QListView_SetItemAlignment")]
	public static extern void QListView_SetItemAlignment(void* c_this, int64 alignment);
	[LinkName("QListView_ItemAlignment")]
	public static extern int64 QListView_ItemAlignment(void* c_this);
	[LinkName("QListView_VisualRect")]
	public static extern QRect QListView_VisualRect(void* c_this, QModelIndex index);
	[LinkName("QListView_ScrollTo")]
	public static extern void QListView_ScrollTo(void* c_this, QModelIndex index, int64 hint);
	[LinkName("QListView_IndexAt")]
	public static extern QModelIndex QListView_IndexAt(void* c_this, QPoint p);
	[LinkName("QListView_DoItemsLayout")]
	public static extern void QListView_DoItemsLayout(void* c_this);
	[LinkName("QListView_Reset")]
	public static extern void QListView_Reset(void* c_this);
	[LinkName("QListView_SetRootIndex")]
	public static extern void QListView_SetRootIndex(void* c_this, QModelIndex index);
	[LinkName("QListView_IndexesMoved")]
	public static extern void QListView_IndexesMoved(void* c_this, QModelIndex[] indexes);
	[LinkName("QListView_Event")]
	public static extern bool QListView_Event(void* c_this, QEvent e);
	[LinkName("QListView_ScrollContentsBy")]
	public static extern void QListView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QListView_ResizeContents")]
	public static extern void QListView_ResizeContents(void* c_this, int32 width, int32 height);
	[LinkName("QListView_ContentsSize")]
	public static extern QSize QListView_ContentsSize(void* c_this);
	[LinkName("QListView_DataChanged")]
	public static extern void QListView_DataChanged(void* c_this, QModelIndex topLeft, QModelIndex bottomRight, int32[] roles);
	[LinkName("QListView_RowsInserted")]
	public static extern void QListView_RowsInserted(void* c_this, QModelIndex parent, int32 start, int32 end);
	[LinkName("QListView_RowsAboutToBeRemoved")]
	public static extern void QListView_RowsAboutToBeRemoved(void* c_this, QModelIndex parent, int32 start, int32 end);
	[LinkName("QListView_MouseMoveEvent")]
	public static extern void QListView_MouseMoveEvent(void* c_this, QMouseEvent e);
	[LinkName("QListView_MouseReleaseEvent")]
	public static extern void QListView_MouseReleaseEvent(void* c_this, QMouseEvent e);
	[LinkName("QListView_WheelEvent")]
	public static extern void QListView_WheelEvent(void* c_this, QWheelEvent e);
	[LinkName("QListView_TimerEvent")]
	public static extern void QListView_TimerEvent(void* c_this, QTimerEvent e);
	[LinkName("QListView_ResizeEvent")]
	public static extern void QListView_ResizeEvent(void* c_this, QResizeEvent e);
	[LinkName("QListView_DragMoveEvent")]
	public static extern void QListView_DragMoveEvent(void* c_this, QDragMoveEvent e);
	[LinkName("QListView_DragLeaveEvent")]
	public static extern void QListView_DragLeaveEvent(void* c_this, QDragLeaveEvent e);
	[LinkName("QListView_DropEvent")]
	public static extern void QListView_DropEvent(void* c_this, QDropEvent e);
	[LinkName("QListView_StartDrag")]
	public static extern void QListView_StartDrag(void* c_this, int64 supportedActions);
	[LinkName("QListView_InitViewItemOption")]
	public static extern void QListView_InitViewItemOption(void* c_this, QStyleOptionViewItem option);
	[LinkName("QListView_PaintEvent")]
	public static extern void QListView_PaintEvent(void* c_this, QPaintEvent e);
	[LinkName("QListView_HorizontalOffset")]
	public static extern int32 QListView_HorizontalOffset(void* c_this);
	[LinkName("QListView_VerticalOffset")]
	public static extern int32 QListView_VerticalOffset(void* c_this);
	[LinkName("QListView_MoveCursor")]
	public static extern QModelIndex QListView_MoveCursor(void* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QListView_RectForIndex")]
	public static extern QRect QListView_RectForIndex(void* c_this, QModelIndex index);
	[LinkName("QListView_SetPositionForIndex")]
	public static extern void QListView_SetPositionForIndex(void* c_this, QPoint position, QModelIndex index);
	[LinkName("QListView_SetSelection")]
	public static extern void QListView_SetSelection(void* c_this, QRect rect, int64 command);
	[LinkName("QListView_VisualRegionForSelection")]
	public static extern QRegion QListView_VisualRegionForSelection(void* c_this, QItemSelection selection);
	[LinkName("QListView_SelectedIndexes")]
	public static extern QModelIndex[] QListView_SelectedIndexes(void* c_this);
	[LinkName("QListView_UpdateGeometries")]
	public static extern void QListView_UpdateGeometries(void* c_this);
	[LinkName("QListView_IsIndexHidden")]
	public static extern bool QListView_IsIndexHidden(void* c_this, QModelIndex index);
	[LinkName("QListView_SelectionChanged")]
	public static extern void QListView_SelectionChanged(void* c_this, QItemSelection selected, QItemSelection deselected);
	[LinkName("QListView_CurrentChanged")]
	public static extern void QListView_CurrentChanged(void* c_this, QModelIndex current, QModelIndex previous);
	[LinkName("QListView_ViewportSizeHint")]
	public static extern QSize QListView_ViewportSizeHint(void* c_this);
	[LinkName("QListView_Tr2")]
	public static extern char8[] QListView_Tr2(char8[] s, char8[] c);
	[LinkName("QListView_Tr3")]
	public static extern char8[] QListView_Tr3(char8[] s, char8[] c, int32 n);
}