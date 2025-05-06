using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractScrollArea__SizeAdjustPolicy
{
	AdjustIgnored = 0,
	AdjustToContentsOnFirstShow = 1,
	AdjustToContents = 2,
}
public struct QAbstractScrollArea
{
	[LinkName("QAbstractScrollArea_new")]
	public static extern void* QAbstractScrollArea_new(QWidget parent);
	[LinkName("QAbstractScrollArea_new2")]
	public static extern void* QAbstractScrollArea_new2();
	[LinkName("QAbstractScrollArea_MetaObject")]
	public static extern QMetaObject QAbstractScrollArea_MetaObject(void* c_this);
	[LinkName("QAbstractScrollArea_Metacast")]
	public static extern void QAbstractScrollArea_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractScrollArea_Metacall")]
	public static extern int32 QAbstractScrollArea_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractScrollArea_Tr")]
	public static extern char8[] QAbstractScrollArea_Tr(char8[] s);
	[LinkName("QAbstractScrollArea_VerticalScrollBarPolicy")]
	public static extern int64 QAbstractScrollArea_VerticalScrollBarPolicy(void* c_this);
	[LinkName("QAbstractScrollArea_SetVerticalScrollBarPolicy")]
	public static extern void QAbstractScrollArea_SetVerticalScrollBarPolicy(void* c_this, int64 verticalScrollBarPolicy);
	[LinkName("QAbstractScrollArea_VerticalScrollBar")]
	public static extern QScrollBar QAbstractScrollArea_VerticalScrollBar(void* c_this);
	[LinkName("QAbstractScrollArea_SetVerticalScrollBar")]
	public static extern void QAbstractScrollArea_SetVerticalScrollBar(void* c_this, QScrollBar scrollbar);
	[LinkName("QAbstractScrollArea_HorizontalScrollBarPolicy")]
	public static extern int64 QAbstractScrollArea_HorizontalScrollBarPolicy(void* c_this);
	[LinkName("QAbstractScrollArea_SetHorizontalScrollBarPolicy")]
	public static extern void QAbstractScrollArea_SetHorizontalScrollBarPolicy(void* c_this, int64 horizontalScrollBarPolicy);
	[LinkName("QAbstractScrollArea_HorizontalScrollBar")]
	public static extern QScrollBar QAbstractScrollArea_HorizontalScrollBar(void* c_this);
	[LinkName("QAbstractScrollArea_SetHorizontalScrollBar")]
	public static extern void QAbstractScrollArea_SetHorizontalScrollBar(void* c_this, QScrollBar scrollbar);
	[LinkName("QAbstractScrollArea_CornerWidget")]
	public static extern QWidget QAbstractScrollArea_CornerWidget(void* c_this);
	[LinkName("QAbstractScrollArea_SetCornerWidget")]
	public static extern void QAbstractScrollArea_SetCornerWidget(void* c_this, QWidget widget);
	[LinkName("QAbstractScrollArea_AddScrollBarWidget")]
	public static extern void QAbstractScrollArea_AddScrollBarWidget(void* c_this, QWidget widget, int64 alignment);
	[LinkName("QAbstractScrollArea_ScrollBarWidgets")]
	public static extern QWidget[] QAbstractScrollArea_ScrollBarWidgets(void* c_this, int64 alignment);
	[LinkName("QAbstractScrollArea_Viewport")]
	public static extern QWidget QAbstractScrollArea_Viewport(void* c_this);
	[LinkName("QAbstractScrollArea_SetViewport")]
	public static extern void QAbstractScrollArea_SetViewport(void* c_this, QWidget widget);
	[LinkName("QAbstractScrollArea_MaximumViewportSize")]
	public static extern QSize QAbstractScrollArea_MaximumViewportSize(void* c_this);
	[LinkName("QAbstractScrollArea_MinimumSizeHint")]
	public static extern QSize QAbstractScrollArea_MinimumSizeHint(void* c_this);
	[LinkName("QAbstractScrollArea_SizeHint")]
	public static extern QSize QAbstractScrollArea_SizeHint(void* c_this);
	[LinkName("QAbstractScrollArea_SetupViewport")]
	public static extern void QAbstractScrollArea_SetupViewport(void* c_this, QWidget viewport);
	[LinkName("QAbstractScrollArea_SizeAdjustPolicy")]
	public static extern int64 QAbstractScrollArea_SizeAdjustPolicy(void* c_this);
	[LinkName("QAbstractScrollArea_SetSizeAdjustPolicy")]
	public static extern void QAbstractScrollArea_SetSizeAdjustPolicy(void* c_this, int64 policy);
	[LinkName("QAbstractScrollArea_SetViewportMargins")]
	public static extern void QAbstractScrollArea_SetViewportMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QAbstractScrollArea_SetViewportMarginsWithMargins")]
	public static extern void QAbstractScrollArea_SetViewportMarginsWithMargins(void* c_this, QMargins margins);
	[LinkName("QAbstractScrollArea_ViewportMargins")]
	public static extern QMargins QAbstractScrollArea_ViewportMargins(void* c_this);
	[LinkName("QAbstractScrollArea_EventFilter")]
	public static extern bool QAbstractScrollArea_EventFilter(void* c_this, QObject param1, QEvent param2);
	[LinkName("QAbstractScrollArea_Event")]
	public static extern bool QAbstractScrollArea_Event(void* c_this, QEvent param1);
	[LinkName("QAbstractScrollArea_ViewportEvent")]
	public static extern bool QAbstractScrollArea_ViewportEvent(void* c_this, QEvent param1);
	[LinkName("QAbstractScrollArea_ResizeEvent")]
	public static extern void QAbstractScrollArea_ResizeEvent(void* c_this, QResizeEvent param1);
	[LinkName("QAbstractScrollArea_PaintEvent")]
	public static extern void QAbstractScrollArea_PaintEvent(void* c_this, QPaintEvent param1);
	[LinkName("QAbstractScrollArea_MousePressEvent")]
	public static extern void QAbstractScrollArea_MousePressEvent(void* c_this, QMouseEvent param1);
	[LinkName("QAbstractScrollArea_MouseReleaseEvent")]
	public static extern void QAbstractScrollArea_MouseReleaseEvent(void* c_this, QMouseEvent param1);
	[LinkName("QAbstractScrollArea_MouseDoubleClickEvent")]
	public static extern void QAbstractScrollArea_MouseDoubleClickEvent(void* c_this, QMouseEvent param1);
	[LinkName("QAbstractScrollArea_MouseMoveEvent")]
	public static extern void QAbstractScrollArea_MouseMoveEvent(void* c_this, QMouseEvent param1);
	[LinkName("QAbstractScrollArea_WheelEvent")]
	public static extern void QAbstractScrollArea_WheelEvent(void* c_this, QWheelEvent param1);
	[LinkName("QAbstractScrollArea_ContextMenuEvent")]
	public static extern void QAbstractScrollArea_ContextMenuEvent(void* c_this, QContextMenuEvent param1);
	[LinkName("QAbstractScrollArea_DragEnterEvent")]
	public static extern void QAbstractScrollArea_DragEnterEvent(void* c_this, QDragEnterEvent param1);
	[LinkName("QAbstractScrollArea_DragMoveEvent")]
	public static extern void QAbstractScrollArea_DragMoveEvent(void* c_this, QDragMoveEvent param1);
	[LinkName("QAbstractScrollArea_DragLeaveEvent")]
	public static extern void QAbstractScrollArea_DragLeaveEvent(void* c_this, QDragLeaveEvent param1);
	[LinkName("QAbstractScrollArea_DropEvent")]
	public static extern void QAbstractScrollArea_DropEvent(void* c_this, QDropEvent param1);
	[LinkName("QAbstractScrollArea_KeyPressEvent")]
	public static extern void QAbstractScrollArea_KeyPressEvent(void* c_this, QKeyEvent param1);
	[LinkName("QAbstractScrollArea_ScrollContentsBy")]
	public static extern void QAbstractScrollArea_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QAbstractScrollArea_ViewportSizeHint")]
	public static extern QSize QAbstractScrollArea_ViewportSizeHint(void* c_this);
	[LinkName("QAbstractScrollArea_Tr2")]
	public static extern char8[] QAbstractScrollArea_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractScrollArea_Tr3")]
	public static extern char8[] QAbstractScrollArea_Tr3(char8[] s, char8[] c, int32 n);
}