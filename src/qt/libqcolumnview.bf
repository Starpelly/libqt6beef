using System;
using System.Interop;
namespace Qt;

public struct QColumnView : QAbstractItemView
{
	[LinkName("QColumnView_new")]
	public static extern QColumnView* QColumnView_new(QWidget* parent);
	[LinkName("QColumnView_new2")]
	public static extern QColumnView* QColumnView_new2();
	[LinkName("QColumnView_MetaObject")]
	public static extern QMetaObject* QColumnView_MetaObject(Self* c_this);
	[LinkName("QColumnView_Metacast")]
	public static extern void* QColumnView_Metacast(Self* c_this, char8[] param1);
	[LinkName("QColumnView_Metacall")]
	public static extern int32 QColumnView_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QColumnView_Tr")]
	public static extern libqt_string QColumnView_Tr(char8[] s);
	[LinkName("QColumnView_Connect_UpdatePreviewWidget")]
	public static extern void QColumnView_Connect_UpdatePreviewWidget(Self* c_this, c_intptr slot);
	[LinkName("QColumnView_IndexAt")]
	public static extern QModelIndex QColumnView_IndexAt(Self* c_this, QPoint* point);
	[LinkName("QColumnView_ScrollTo")]
	public static extern void QColumnView_ScrollTo(Self* c_this, QModelIndex* index, int64 hint);
	[LinkName("QColumnView_SizeHint")]
	public static extern QSize QColumnView_SizeHint(Self* c_this);
	[LinkName("QColumnView_VisualRect")]
	public static extern QRect QColumnView_VisualRect(Self* c_this, QModelIndex* index);
	[LinkName("QColumnView_SetModel")]
	public static extern void QColumnView_SetModel(Self* c_this, QAbstractItemModel* model);
	[LinkName("QColumnView_SetSelectionModel")]
	public static extern void QColumnView_SetSelectionModel(Self* c_this, QItemSelectionModel* selectionModel);
	[LinkName("QColumnView_SetRootIndex")]
	public static extern void QColumnView_SetRootIndex(Self* c_this, QModelIndex* index);
	[LinkName("QColumnView_SelectAll")]
	public static extern void QColumnView_SelectAll(Self* c_this);
	[LinkName("QColumnView_SetResizeGripsVisible")]
	public static extern void QColumnView_SetResizeGripsVisible(Self* c_this, bool visible);
	[LinkName("QColumnView_ResizeGripsVisible")]
	public static extern bool QColumnView_ResizeGripsVisible(Self* c_this);
	[LinkName("QColumnView_PreviewWidget")]
	public static extern QWidget* QColumnView_PreviewWidget(Self* c_this);
	[LinkName("QColumnView_SetPreviewWidget")]
	public static extern void QColumnView_SetPreviewWidget(Self* c_this, QWidget* widget);
	[LinkName("QColumnView_SetColumnWidths")]
	public static extern void QColumnView_SetColumnWidths(Self* c_this, int32[] list);
	[LinkName("QColumnView_ColumnWidths")]
	public static extern int32[] QColumnView_ColumnWidths(Self* c_this);
	[LinkName("QColumnView_IsIndexHidden")]
	public static extern bool QColumnView_IsIndexHidden(Self* c_this, QModelIndex* index);
	[LinkName("QColumnView_MoveCursor")]
	public static extern QModelIndex QColumnView_MoveCursor(Self* c_this, int64 cursorAction, int64 modifiers);
	[LinkName("QColumnView_ResizeEvent")]
	public static extern void QColumnView_ResizeEvent(Self* c_this, QResizeEvent* event);
	[LinkName("QColumnView_SetSelection")]
	public static extern void QColumnView_SetSelection(Self* c_this, QRect* rect, int64 command);
	[LinkName("QColumnView_VisualRegionForSelection")]
	public static extern QRegion QColumnView_VisualRegionForSelection(Self* c_this, QItemSelection* selection);
	[LinkName("QColumnView_HorizontalOffset")]
	public static extern int32 QColumnView_HorizontalOffset(Self* c_this);
	[LinkName("QColumnView_VerticalOffset")]
	public static extern int32 QColumnView_VerticalOffset(Self* c_this);
	[LinkName("QColumnView_RowsInserted")]
	public static extern void QColumnView_RowsInserted(Self* c_this, QModelIndex* parent, int32 start, int32 end);
	[LinkName("QColumnView_CurrentChanged")]
	public static extern void QColumnView_CurrentChanged(Self* c_this, QModelIndex* current, QModelIndex* previous);
	[LinkName("QColumnView_ScrollContentsBy")]
	public static extern void QColumnView_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QColumnView_CreateColumn")]
	public static extern QAbstractItemView* QColumnView_CreateColumn(Self* c_this, QModelIndex* rootIndex);
	[LinkName("QColumnView_InitializeColumn")]
	public static extern void QColumnView_InitializeColumn(Self* c_this, QAbstractItemView* column);
	[LinkName("QColumnView_Tr2")]
	public static extern libqt_string QColumnView_Tr2(char8[] s, char8[] c);
	[LinkName("QColumnView_Tr3")]
	public static extern libqt_string QColumnView_Tr3(char8[] s, char8[] c, int32 n);
}