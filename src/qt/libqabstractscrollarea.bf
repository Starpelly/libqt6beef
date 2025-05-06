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
public struct QAbstractScrollArea : QFrame
{
	[LinkName("QAbstractScrollArea_new")]
	public static extern QAbstractScrollArea* QAbstractScrollArea_new(QWidget* parent);
	[LinkName("QAbstractScrollArea_new2")]
	public static extern QAbstractScrollArea* QAbstractScrollArea_new2();
	[LinkName("QAbstractScrollArea_MetaObject")]
	public static extern QMetaObject* QAbstractScrollArea_MetaObject(Self* c_this);
	[LinkName("QAbstractScrollArea_Metacast")]
	public static extern void* QAbstractScrollArea_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractScrollArea_Metacall")]
	public static extern int32 QAbstractScrollArea_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractScrollArea_Tr")]
	public static extern libqt_string QAbstractScrollArea_Tr(char8[] s);
	[LinkName("QAbstractScrollArea_VerticalScrollBarPolicy")]
	public static extern int64 QAbstractScrollArea_VerticalScrollBarPolicy(Self* c_this);
	[LinkName("QAbstractScrollArea_SetVerticalScrollBarPolicy")]
	public static extern void QAbstractScrollArea_SetVerticalScrollBarPolicy(Self* c_this, int64 verticalScrollBarPolicy);
	[LinkName("QAbstractScrollArea_VerticalScrollBar")]
	public static extern QScrollBar* QAbstractScrollArea_VerticalScrollBar(Self* c_this);
	[LinkName("QAbstractScrollArea_SetVerticalScrollBar")]
	public static extern void QAbstractScrollArea_SetVerticalScrollBar(Self* c_this, QScrollBar* scrollbar);
	[LinkName("QAbstractScrollArea_HorizontalScrollBarPolicy")]
	public static extern int64 QAbstractScrollArea_HorizontalScrollBarPolicy(Self* c_this);
	[LinkName("QAbstractScrollArea_SetHorizontalScrollBarPolicy")]
	public static extern void QAbstractScrollArea_SetHorizontalScrollBarPolicy(Self* c_this, int64 horizontalScrollBarPolicy);
	[LinkName("QAbstractScrollArea_HorizontalScrollBar")]
	public static extern QScrollBar* QAbstractScrollArea_HorizontalScrollBar(Self* c_this);
	[LinkName("QAbstractScrollArea_SetHorizontalScrollBar")]
	public static extern void QAbstractScrollArea_SetHorizontalScrollBar(Self* c_this, QScrollBar* scrollbar);
	[LinkName("QAbstractScrollArea_CornerWidget")]
	public static extern QWidget* QAbstractScrollArea_CornerWidget(Self* c_this);
	[LinkName("QAbstractScrollArea_SetCornerWidget")]
	public static extern void QAbstractScrollArea_SetCornerWidget(Self* c_this, QWidget* widget);
	[LinkName("QAbstractScrollArea_AddScrollBarWidget")]
	public static extern void QAbstractScrollArea_AddScrollBarWidget(Self* c_this, QWidget* widget, int64 alignment);
	[LinkName("QAbstractScrollArea_ScrollBarWidgets")]
	public static extern QWidget*[] QAbstractScrollArea_ScrollBarWidgets(Self* c_this, int64 alignment);
	[LinkName("QAbstractScrollArea_Viewport")]
	public static extern QWidget* QAbstractScrollArea_Viewport(Self* c_this);
	[LinkName("QAbstractScrollArea_SetViewport")]
	public static extern void QAbstractScrollArea_SetViewport(Self* c_this, QWidget* widget);
	[LinkName("QAbstractScrollArea_MaximumViewportSize")]
	public static extern QSize QAbstractScrollArea_MaximumViewportSize(Self* c_this);
	[LinkName("QAbstractScrollArea_MinimumSizeHint")]
	public static extern QSize QAbstractScrollArea_MinimumSizeHint(Self* c_this);
	[LinkName("QAbstractScrollArea_SizeHint")]
	public static extern QSize QAbstractScrollArea_SizeHint(Self* c_this);
	[LinkName("QAbstractScrollArea_SetupViewport")]
	public static extern void QAbstractScrollArea_SetupViewport(Self* c_this, QWidget* viewport);
	[LinkName("QAbstractScrollArea_SizeAdjustPolicy")]
	public static extern int64 QAbstractScrollArea_SizeAdjustPolicy(Self* c_this);
	[LinkName("QAbstractScrollArea_SetSizeAdjustPolicy")]
	public static extern void QAbstractScrollArea_SetSizeAdjustPolicy(Self* c_this, int64 policy);
	[LinkName("QAbstractScrollArea_SetViewportMargins")]
	public static extern void QAbstractScrollArea_SetViewportMargins(Self* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QAbstractScrollArea_SetViewportMarginsWithMargins")]
	public static extern void QAbstractScrollArea_SetViewportMarginsWithMargins(Self* c_this, QMargins* margins);
	[LinkName("QAbstractScrollArea_ViewportMargins")]
	public static extern QMargins QAbstractScrollArea_ViewportMargins(Self* c_this);
	[LinkName("QAbstractScrollArea_EventFilter")]
	public static extern bool QAbstractScrollArea_EventFilter(Self* c_this, QObject* param1, QEvent* param2);
	[LinkName("QAbstractScrollArea_Event")]
	public static extern bool QAbstractScrollArea_Event(Self* c_this, QEvent* param1);
	[LinkName("QAbstractScrollArea_ViewportEvent")]
	public static extern bool QAbstractScrollArea_ViewportEvent(Self* c_this, QEvent* param1);
	[LinkName("QAbstractScrollArea_ResizeEvent")]
	public static extern void QAbstractScrollArea_ResizeEvent(Self* c_this, QResizeEvent* param1);
	[LinkName("QAbstractScrollArea_PaintEvent")]
	public static extern void QAbstractScrollArea_PaintEvent(Self* c_this, QPaintEvent* param1);
	[LinkName("QAbstractScrollArea_MousePressEvent")]
	public static extern void QAbstractScrollArea_MousePressEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QAbstractScrollArea_MouseReleaseEvent")]
	public static extern void QAbstractScrollArea_MouseReleaseEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QAbstractScrollArea_MouseDoubleClickEvent")]
	public static extern void QAbstractScrollArea_MouseDoubleClickEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QAbstractScrollArea_MouseMoveEvent")]
	public static extern void QAbstractScrollArea_MouseMoveEvent(Self* c_this, QMouseEvent* param1);
	[LinkName("QAbstractScrollArea_WheelEvent")]
	public static extern void QAbstractScrollArea_WheelEvent(Self* c_this, QWheelEvent* param1);
	[LinkName("QAbstractScrollArea_ContextMenuEvent")]
	public static extern void QAbstractScrollArea_ContextMenuEvent(Self* c_this, QContextMenuEvent* param1);
	[LinkName("QAbstractScrollArea_DragEnterEvent")]
	public static extern void QAbstractScrollArea_DragEnterEvent(Self* c_this, QDragEnterEvent* param1);
	[LinkName("QAbstractScrollArea_DragMoveEvent")]
	public static extern void QAbstractScrollArea_DragMoveEvent(Self* c_this, QDragMoveEvent* param1);
	[LinkName("QAbstractScrollArea_DragLeaveEvent")]
	public static extern void QAbstractScrollArea_DragLeaveEvent(Self* c_this, QDragLeaveEvent* param1);
	[LinkName("QAbstractScrollArea_DropEvent")]
	public static extern void QAbstractScrollArea_DropEvent(Self* c_this, QDropEvent* param1);
	[LinkName("QAbstractScrollArea_KeyPressEvent")]
	public static extern void QAbstractScrollArea_KeyPressEvent(Self* c_this, QKeyEvent* param1);
	[LinkName("QAbstractScrollArea_ScrollContentsBy")]
	public static extern void QAbstractScrollArea_ScrollContentsBy(Self* c_this, int32 dx, int32 dy);
	[LinkName("QAbstractScrollArea_ViewportSizeHint")]
	public static extern QSize QAbstractScrollArea_ViewportSizeHint(Self* c_this);
	[LinkName("QAbstractScrollArea_Tr2")]
	public static extern libqt_string QAbstractScrollArea_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractScrollArea_Tr3")]
	public static extern libqt_string QAbstractScrollArea_Tr3(char8[] s, char8[] c, int32 n);
}