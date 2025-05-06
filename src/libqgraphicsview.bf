using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsView__ViewportAnchor
{
	NoAnchor = 0,
	AnchorViewCenter = 1,
	AnchorUnderMouse = 2,
}
[AllowDuplicates]
public enum QGraphicsView__CacheModeFlag
{
	CacheNone = 0,
	CacheBackground = 1,
}
[AllowDuplicates]
public enum QGraphicsView__DragMode
{
	NoDrag = 0,
	ScrollHandDrag = 1,
	RubberBandDrag = 2,
}
[AllowDuplicates]
public enum QGraphicsView__ViewportUpdateMode
{
	FullViewportUpdate = 0,
	MinimalViewportUpdate = 1,
	SmartViewportUpdate = 2,
	NoViewportUpdate = 3,
	BoundingRectViewportUpdate = 4,
}
[AllowDuplicates]
public enum QGraphicsView__OptimizationFlag
{
	DontSavePainterState = 1,
	DontAdjustForAntialiasing = 2,
	IndirectPainting = 4,
}
public struct QGraphicsView
{
	[LinkName("QGraphicsView_new")]
	public static extern void* QGraphicsView_new(QWidget parent);
	[LinkName("QGraphicsView_new2")]
	public static extern void* QGraphicsView_new2();
	[LinkName("QGraphicsView_new3")]
	public static extern void* QGraphicsView_new3(QGraphicsScene scene);
	[LinkName("QGraphicsView_new4")]
	public static extern void* QGraphicsView_new4(QGraphicsScene scene, QWidget parent);
	[LinkName("QGraphicsView_MetaObject")]
	public static extern QMetaObject QGraphicsView_MetaObject(void* c_this);
	[LinkName("QGraphicsView_Metacast")]
	public static extern void QGraphicsView_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsView_Metacall")]
	public static extern int32 QGraphicsView_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QGraphicsView_Tr")]
	public static extern char8[] QGraphicsView_Tr(char8[] s);
	[LinkName("QGraphicsView_SizeHint")]
	public static extern QSize QGraphicsView_SizeHint(void* c_this);
	[LinkName("QGraphicsView_RenderHints")]
	public static extern int64 QGraphicsView_RenderHints(void* c_this);
	[LinkName("QGraphicsView_SetRenderHint")]
	public static extern void QGraphicsView_SetRenderHint(void* c_this, int64 hint);
	[LinkName("QGraphicsView_SetRenderHints")]
	public static extern void QGraphicsView_SetRenderHints(void* c_this, int64 hints);
	[LinkName("QGraphicsView_Alignment")]
	public static extern int64 QGraphicsView_Alignment(void* c_this);
	[LinkName("QGraphicsView_SetAlignment")]
	public static extern void QGraphicsView_SetAlignment(void* c_this, int64 alignment);
	[LinkName("QGraphicsView_TransformationAnchor")]
	public static extern int64 QGraphicsView_TransformationAnchor(void* c_this);
	[LinkName("QGraphicsView_SetTransformationAnchor")]
	public static extern void QGraphicsView_SetTransformationAnchor(void* c_this, int64 anchor);
	[LinkName("QGraphicsView_ResizeAnchor")]
	public static extern int64 QGraphicsView_ResizeAnchor(void* c_this);
	[LinkName("QGraphicsView_SetResizeAnchor")]
	public static extern void QGraphicsView_SetResizeAnchor(void* c_this, int64 anchor);
	[LinkName("QGraphicsView_ViewportUpdateMode")]
	public static extern int64 QGraphicsView_ViewportUpdateMode(void* c_this);
	[LinkName("QGraphicsView_SetViewportUpdateMode")]
	public static extern void QGraphicsView_SetViewportUpdateMode(void* c_this, int64 mode);
	[LinkName("QGraphicsView_OptimizationFlags")]
	public static extern int64 QGraphicsView_OptimizationFlags(void* c_this);
	[LinkName("QGraphicsView_SetOptimizationFlag")]
	public static extern void QGraphicsView_SetOptimizationFlag(void* c_this, int64 flag);
	[LinkName("QGraphicsView_SetOptimizationFlags")]
	public static extern void QGraphicsView_SetOptimizationFlags(void* c_this, int64 flags);
	[LinkName("QGraphicsView_DragMode")]
	public static extern int64 QGraphicsView_DragMode(void* c_this);
	[LinkName("QGraphicsView_SetDragMode")]
	public static extern void QGraphicsView_SetDragMode(void* c_this, int64 mode);
	[LinkName("QGraphicsView_RubberBandSelectionMode")]
	public static extern int64 QGraphicsView_RubberBandSelectionMode(void* c_this);
	[LinkName("QGraphicsView_SetRubberBandSelectionMode")]
	public static extern void QGraphicsView_SetRubberBandSelectionMode(void* c_this, int64 mode);
	[LinkName("QGraphicsView_RubberBandRect")]
	public static extern QRect QGraphicsView_RubberBandRect(void* c_this);
	[LinkName("QGraphicsView_CacheMode")]
	public static extern int64 QGraphicsView_CacheMode(void* c_this);
	[LinkName("QGraphicsView_SetCacheMode")]
	public static extern void QGraphicsView_SetCacheMode(void* c_this, int64 mode);
	[LinkName("QGraphicsView_ResetCachedContent")]
	public static extern void QGraphicsView_ResetCachedContent(void* c_this);
	[LinkName("QGraphicsView_IsInteractive")]
	public static extern bool QGraphicsView_IsInteractive(void* c_this);
	[LinkName("QGraphicsView_SetInteractive")]
	public static extern void QGraphicsView_SetInteractive(void* c_this, bool allowed);
	[LinkName("QGraphicsView_Scene")]
	public static extern QGraphicsScene QGraphicsView_Scene(void* c_this);
	[LinkName("QGraphicsView_SetScene")]
	public static extern void QGraphicsView_SetScene(void* c_this, QGraphicsScene scene);
	[LinkName("QGraphicsView_SceneRect")]
	public static extern QRectF QGraphicsView_SceneRect(void* c_this);
	[LinkName("QGraphicsView_SetSceneRect")]
	public static extern void QGraphicsView_SetSceneRect(void* c_this, QRectF rect);
	[LinkName("QGraphicsView_SetSceneRect2")]
	public static extern void QGraphicsView_SetSceneRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_Transform")]
	public static extern QTransform QGraphicsView_Transform(void* c_this);
	[LinkName("QGraphicsView_ViewportTransform")]
	public static extern QTransform QGraphicsView_ViewportTransform(void* c_this);
	[LinkName("QGraphicsView_IsTransformed")]
	public static extern bool QGraphicsView_IsTransformed(void* c_this);
	[LinkName("QGraphicsView_SetTransform")]
	public static extern void QGraphicsView_SetTransform(void* c_this, QTransform matrix);
	[LinkName("QGraphicsView_ResetTransform")]
	public static extern void QGraphicsView_ResetTransform(void* c_this);
	[LinkName("QGraphicsView_Rotate")]
	public static extern void QGraphicsView_Rotate(void* c_this, double angle);
	[LinkName("QGraphicsView_Scale")]
	public static extern void QGraphicsView_Scale(void* c_this, double sx, double sy);
	[LinkName("QGraphicsView_Shear")]
	public static extern void QGraphicsView_Shear(void* c_this, double sh, double sv);
	[LinkName("QGraphicsView_Translate")]
	public static extern void QGraphicsView_Translate(void* c_this, double dx, double dy);
	[LinkName("QGraphicsView_CenterOn")]
	public static extern void QGraphicsView_CenterOn(void* c_this, QPointF pos);
	[LinkName("QGraphicsView_CenterOn2")]
	public static extern void QGraphicsView_CenterOn2(void* c_this, double x, double y);
	[LinkName("QGraphicsView_CenterOnWithItem")]
	public static extern void QGraphicsView_CenterOnWithItem(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsView_EnsureVisible")]
	public static extern void QGraphicsView_EnsureVisible(void* c_this, QRectF rect);
	[LinkName("QGraphicsView_EnsureVisible2")]
	public static extern void QGraphicsView_EnsureVisible2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_EnsureVisibleWithItem")]
	public static extern void QGraphicsView_EnsureVisibleWithItem(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsView_FitInView")]
	public static extern void QGraphicsView_FitInView(void* c_this, QRectF rect);
	[LinkName("QGraphicsView_FitInView2")]
	public static extern void QGraphicsView_FitInView2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_FitInViewWithItem")]
	public static extern void QGraphicsView_FitInViewWithItem(void* c_this, QGraphicsItem item);
	[LinkName("QGraphicsView_Render")]
	public static extern void QGraphicsView_Render(void* c_this, QPainter painter);
	[LinkName("QGraphicsView_Items")]
	public static extern QGraphicsItem[] QGraphicsView_Items(void* c_this);
	[LinkName("QGraphicsView_ItemsWithPos")]
	public static extern QGraphicsItem[] QGraphicsView_ItemsWithPos(void* c_this, QPoint pos);
	[LinkName("QGraphicsView_Items2")]
	public static extern QGraphicsItem[] QGraphicsView_Items2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_ItemsWithRect")]
	public static extern QGraphicsItem[] QGraphicsView_ItemsWithRect(void* c_this, QRect rect);
	[LinkName("QGraphicsView_Items3")]
	public static extern QGraphicsItem[] QGraphicsView_Items3(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QGraphicsView_ItemsWithPath")]
	public static extern QGraphicsItem[] QGraphicsView_ItemsWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsView_ItemAt")]
	public static extern QGraphicsItem QGraphicsView_ItemAt(void* c_this, QPoint pos);
	[LinkName("QGraphicsView_ItemAt2")]
	public static extern QGraphicsItem QGraphicsView_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_MapToScene")]
	public static extern QPointF QGraphicsView_MapToScene(void* c_this, QPoint point);
	[LinkName("QGraphicsView_MapToSceneWithPath")]
	public static extern QPainterPath QGraphicsView_MapToSceneWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsView_MapFromScene")]
	public static extern QPoint QGraphicsView_MapFromScene(void* c_this, QPointF point);
	[LinkName("QGraphicsView_MapFromSceneWithPath")]
	public static extern QPainterPath QGraphicsView_MapFromSceneWithPath(void* c_this, QPainterPath path);
	[LinkName("QGraphicsView_MapToScene2")]
	public static extern QPointF QGraphicsView_MapToScene2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_MapFromScene2")]
	public static extern QPoint QGraphicsView_MapFromScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsView_InputMethodQuery")]
	public static extern QVariant QGraphicsView_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsView_BackgroundBrush")]
	public static extern QBrush QGraphicsView_BackgroundBrush(void* c_this);
	[LinkName("QGraphicsView_SetBackgroundBrush")]
	public static extern void QGraphicsView_SetBackgroundBrush(void* c_this, QBrush brush);
	[LinkName("QGraphicsView_ForegroundBrush")]
	public static extern QBrush QGraphicsView_ForegroundBrush(void* c_this);
	[LinkName("QGraphicsView_SetForegroundBrush")]
	public static extern void QGraphicsView_SetForegroundBrush(void* c_this, QBrush brush);
	[LinkName("QGraphicsView_UpdateScene")]
	public static extern void QGraphicsView_UpdateScene(void* c_this, QRectF[] rects);
	[LinkName("QGraphicsView_InvalidateScene")]
	public static extern void QGraphicsView_InvalidateScene(void* c_this);
	[LinkName("QGraphicsView_UpdateSceneRect")]
	public static extern void QGraphicsView_UpdateSceneRect(void* c_this, QRectF rect);
	[LinkName("QGraphicsView_RubberBandChanged")]
	public static extern void QGraphicsView_RubberBandChanged(void* c_this, QRect viewportRect, QPointF fromScenePoint, QPointF toScenePoint);
	[LinkName("QGraphicsView_SetupViewport")]
	public static extern void QGraphicsView_SetupViewport(void* c_this, QWidget widget);
	[LinkName("QGraphicsView_Event")]
	public static extern bool QGraphicsView_Event(void* c_this, QEvent event);
	[LinkName("QGraphicsView_ViewportEvent")]
	public static extern bool QGraphicsView_ViewportEvent(void* c_this, QEvent event);
	[LinkName("QGraphicsView_ContextMenuEvent")]
	public static extern void QGraphicsView_ContextMenuEvent(void* c_this, QContextMenuEvent event);
	[LinkName("QGraphicsView_DragEnterEvent")]
	public static extern void QGraphicsView_DragEnterEvent(void* c_this, QDragEnterEvent event);
	[LinkName("QGraphicsView_DragLeaveEvent")]
	public static extern void QGraphicsView_DragLeaveEvent(void* c_this, QDragLeaveEvent event);
	[LinkName("QGraphicsView_DragMoveEvent")]
	public static extern void QGraphicsView_DragMoveEvent(void* c_this, QDragMoveEvent event);
	[LinkName("QGraphicsView_DropEvent")]
	public static extern void QGraphicsView_DropEvent(void* c_this, QDropEvent event);
	[LinkName("QGraphicsView_FocusInEvent")]
	public static extern void QGraphicsView_FocusInEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsView_FocusNextPrevChild")]
	public static extern bool QGraphicsView_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsView_FocusOutEvent")]
	public static extern void QGraphicsView_FocusOutEvent(void* c_this, QFocusEvent event);
	[LinkName("QGraphicsView_KeyPressEvent")]
	public static extern void QGraphicsView_KeyPressEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsView_KeyReleaseEvent")]
	public static extern void QGraphicsView_KeyReleaseEvent(void* c_this, QKeyEvent event);
	[LinkName("QGraphicsView_MouseDoubleClickEvent")]
	public static extern void QGraphicsView_MouseDoubleClickEvent(void* c_this, QMouseEvent event);
	[LinkName("QGraphicsView_MousePressEvent")]
	public static extern void QGraphicsView_MousePressEvent(void* c_this, QMouseEvent event);
	[LinkName("QGraphicsView_MouseMoveEvent")]
	public static extern void QGraphicsView_MouseMoveEvent(void* c_this, QMouseEvent event);
	[LinkName("QGraphicsView_MouseReleaseEvent")]
	public static extern void QGraphicsView_MouseReleaseEvent(void* c_this, QMouseEvent event);
	[LinkName("QGraphicsView_WheelEvent")]
	public static extern void QGraphicsView_WheelEvent(void* c_this, QWheelEvent event);
	[LinkName("QGraphicsView_PaintEvent")]
	public static extern void QGraphicsView_PaintEvent(void* c_this, QPaintEvent event);
	[LinkName("QGraphicsView_ResizeEvent")]
	public static extern void QGraphicsView_ResizeEvent(void* c_this, QResizeEvent event);
	[LinkName("QGraphicsView_ScrollContentsBy")]
	public static extern void QGraphicsView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QGraphicsView_ShowEvent")]
	public static extern void QGraphicsView_ShowEvent(void* c_this, QShowEvent event);
	[LinkName("QGraphicsView_InputMethodEvent")]
	public static extern void QGraphicsView_InputMethodEvent(void* c_this, QInputMethodEvent event);
	[LinkName("QGraphicsView_DrawBackground")]
	public static extern void QGraphicsView_DrawBackground(void* c_this, QPainter painter, QRectF rect);
	[LinkName("QGraphicsView_DrawForeground")]
	public static extern void QGraphicsView_DrawForeground(void* c_this, QPainter painter, QRectF rect);
	[LinkName("QGraphicsView_Tr2")]
	public static extern char8[] QGraphicsView_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsView_Tr3")]
	public static extern char8[] QGraphicsView_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QGraphicsView_SetRenderHint2")]
	public static extern void QGraphicsView_SetRenderHint2(void* c_this, int64 hint, bool enabled);
	[LinkName("QGraphicsView_SetOptimizationFlag2")]
	public static extern void QGraphicsView_SetOptimizationFlag2(void* c_this, int64 flag, bool enabled);
	[LinkName("QGraphicsView_SetTransform2")]
	public static extern void QGraphicsView_SetTransform2(void* c_this, QTransform matrix, bool combine);
	[LinkName("QGraphicsView_EnsureVisible22")]
	public static extern void QGraphicsView_EnsureVisible22(void* c_this, QRectF rect, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible3")]
	public static extern void QGraphicsView_EnsureVisible3(void* c_this, QRectF rect, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_EnsureVisible5")]
	public static extern void QGraphicsView_EnsureVisible5(void* c_this, double x, double y, double w, double h, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible6")]
	public static extern void QGraphicsView_EnsureVisible6(void* c_this, double x, double y, double w, double h, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_EnsureVisible23")]
	public static extern void QGraphicsView_EnsureVisible23(void* c_this, QGraphicsItem item, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible32")]
	public static extern void QGraphicsView_EnsureVisible32(void* c_this, QGraphicsItem item, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_FitInView22")]
	public static extern void QGraphicsView_FitInView22(void* c_this, QRectF rect, int64 aspectRadioMode);
	[LinkName("QGraphicsView_FitInView5")]
	public static extern void QGraphicsView_FitInView5(void* c_this, double x, double y, double w, double h, int64 aspectRadioMode);
	[LinkName("QGraphicsView_FitInView23")]
	public static extern void QGraphicsView_FitInView23(void* c_this, QGraphicsItem item, int64 aspectRadioMode);
	[LinkName("QGraphicsView_Render2")]
	public static extern void QGraphicsView_Render2(void* c_this, QPainter painter, QRectF target);
	[LinkName("QGraphicsView_Render3")]
	public static extern void QGraphicsView_Render3(void* c_this, QPainter painter, QRectF target, QRect source);
	[LinkName("QGraphicsView_Render4")]
	public static extern void QGraphicsView_Render4(void* c_this, QPainter painter, QRectF target, QRect source, int64 aspectRatioMode);
	[LinkName("QGraphicsView_Items22")]
	public static extern QGraphicsItem[] QGraphicsView_Items22(void* c_this, QRect rect, int64 mode);
	[LinkName("QGraphicsView_Items5")]
	public static extern QGraphicsItem[] QGraphicsView_Items5(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 mode);
	[LinkName("QGraphicsView_Items24")]
	public static extern QGraphicsItem[] QGraphicsView_Items24(void* c_this, QPainterPath path, int64 mode);
	[LinkName("QGraphicsView_InvalidateScene1")]
	public static extern void QGraphicsView_InvalidateScene1(void* c_this, QRectF rect);
	[LinkName("QGraphicsView_InvalidateScene2")]
	public static extern void QGraphicsView_InvalidateScene2(void* c_this, QRectF rect, int64 layers);
}