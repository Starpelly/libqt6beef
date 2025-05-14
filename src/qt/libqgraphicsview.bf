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
public interface IQGraphicsView
{
	void* NativePtr { get; }
}
public struct QGraphicsViewPtr : IQGraphicsView, IDisposable, IQAbstractScrollArea
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QGraphicsView_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QGraphicsView_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsView_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsView_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsView_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsView_Tr(s);
	}
	
	public void SizeHint()
	{
		CQt.QGraphicsView_SizeHint(this.nativePtr);
	}
	
	public int64 RenderHints()
	{
		return CQt.QGraphicsView_RenderHints(this.nativePtr);
	}
	
	public void SetRenderHint(int64 hint)
	{
		CQt.QGraphicsView_SetRenderHint(this.nativePtr, (int64)hint);
	}
	
	public void SetRenderHints(int64 hints)
	{
		CQt.QGraphicsView_SetRenderHints(this.nativePtr, hints);
	}
	
	public int64 Alignment()
	{
		return CQt.QGraphicsView_Alignment(this.nativePtr);
	}
	
	public void SetAlignment(int64 alignment)
	{
		CQt.QGraphicsView_SetAlignment(this.nativePtr, alignment);
	}
	
	public int64 TransformationAnchor()
	{
		return CQt.QGraphicsView_TransformationAnchor(this.nativePtr);
	}
	
	public void SetTransformationAnchor(int64 anchor)
	{
		CQt.QGraphicsView_SetTransformationAnchor(this.nativePtr, (int64)anchor);
	}
	
	public int64 ResizeAnchor()
	{
		return CQt.QGraphicsView_ResizeAnchor(this.nativePtr);
	}
	
	public void SetResizeAnchor(int64 anchor)
	{
		CQt.QGraphicsView_SetResizeAnchor(this.nativePtr, (int64)anchor);
	}
	
	public int64 ViewportUpdateMode()
	{
		return CQt.QGraphicsView_ViewportUpdateMode(this.nativePtr);
	}
	
	public void SetViewportUpdateMode(int64 mode)
	{
		CQt.QGraphicsView_SetViewportUpdateMode(this.nativePtr, (int64)mode);
	}
	
	public int64 OptimizationFlags()
	{
		return CQt.QGraphicsView_OptimizationFlags(this.nativePtr);
	}
	
	public void SetOptimizationFlag(int64 flag)
	{
		CQt.QGraphicsView_SetOptimizationFlag(this.nativePtr, (int64)flag);
	}
	
	public void SetOptimizationFlags(int64 flags)
	{
		CQt.QGraphicsView_SetOptimizationFlags(this.nativePtr, flags);
	}
	
	public int64 DragMode()
	{
		return CQt.QGraphicsView_DragMode(this.nativePtr);
	}
	
	public void SetDragMode(int64 mode)
	{
		CQt.QGraphicsView_SetDragMode(this.nativePtr, (int64)mode);
	}
	
	public int64 RubberBandSelectionMode()
	{
		return CQt.QGraphicsView_RubberBandSelectionMode(this.nativePtr);
	}
	
	public void SetRubberBandSelectionMode(int64 mode)
	{
		CQt.QGraphicsView_SetRubberBandSelectionMode(this.nativePtr, (int64)mode);
	}
	
	public void RubberBandRect()
	{
		CQt.QGraphicsView_RubberBandRect(this.nativePtr);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsView_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsView_SetCacheMode(this.nativePtr, mode);
	}
	
	public void ResetCachedContent()
	{
		CQt.QGraphicsView_ResetCachedContent(this.nativePtr);
	}
	
	public bool IsInteractive()
	{
		return CQt.QGraphicsView_IsInteractive(this.nativePtr);
	}
	
	public void SetInteractive(bool allowed)
	{
		CQt.QGraphicsView_SetInteractive(this.nativePtr, allowed);
	}
	
	public void* Scene()
	{
		return CQt.QGraphicsView_Scene(this.nativePtr);
	}
	
	public void SetScene(IQGraphicsScene scene)
	{
		CQt.QGraphicsView_SetScene(this.nativePtr, (scene == default || scene.NativePtr == default) ? default : scene.NativePtr);
	}
	
	public void SceneRect()
	{
		CQt.QGraphicsView_SceneRect(this.nativePtr);
	}
	
	public void SetSceneRect(IQRectF rect)
	{
		CQt.QGraphicsView_SetSceneRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetSceneRect2(double x, double y, double w, double h)
	{
		CQt.QGraphicsView_SetSceneRect2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsView_Transform(this.nativePtr);
	}
	
	public void ViewportTransform()
	{
		CQt.QGraphicsView_ViewportTransform(this.nativePtr);
	}
	
	public bool IsTransformed()
	{
		return CQt.QGraphicsView_IsTransformed(this.nativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsView_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsView_ResetTransform(this.nativePtr);
	}
	
	public void Rotate(double angle)
	{
		CQt.QGraphicsView_Rotate(this.nativePtr, angle);
	}
	
	public void Scale(double sx, double sy)
	{
		CQt.QGraphicsView_Scale(this.nativePtr, sx, sy);
	}
	
	public void Shear(double sh, double sv)
	{
		CQt.QGraphicsView_Shear(this.nativePtr, sh, sv);
	}
	
	public void Translate(double dx, double dy)
	{
		CQt.QGraphicsView_Translate(this.nativePtr, dx, dy);
	}
	
	public void CenterOn(IQPointF pos)
	{
		CQt.QGraphicsView_CenterOn(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void CenterOn2(double x, double y)
	{
		CQt.QGraphicsView_CenterOn2(this.nativePtr, x, y);
	}
	
	public void CenterOnWithItem(IQGraphicsItem item)
	{
		CQt.QGraphicsView_CenterOnWithItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void EnsureVisible(IQRectF rect)
	{
		CQt.QGraphicsView_EnsureVisible(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsView_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void EnsureVisibleWithItem(IQGraphicsItem item)
	{
		CQt.QGraphicsView_EnsureVisibleWithItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void FitInView(IQRectF rect)
	{
		CQt.QGraphicsView_FitInView(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void FitInView2(double x, double y, double w, double h)
	{
		CQt.QGraphicsView_FitInView2(this.nativePtr, x, y, w, h);
	}
	
	public void FitInViewWithItem(IQGraphicsItem item)
	{
		CQt.QGraphicsView_FitInViewWithItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void Render(IQPainter painter)
	{
		CQt.QGraphicsView_Render(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr);
	}
	
	public void*[] Items()
	{
		return CQt.QGraphicsView_Items(this.nativePtr);
	}
	
	public void*[] ItemsWithPos(IQPoint pos)
	{
		return CQt.QGraphicsView_ItemsWithPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void*[] Items2(int32 x, int32 y)
	{
		return CQt.QGraphicsView_Items2(this.nativePtr, x, y);
	}
	
	public void*[] ItemsWithRect(IQRect rect)
	{
		return CQt.QGraphicsView_ItemsWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void*[] Items3(int32 x, int32 y, int32 w, int32 h)
	{
		return CQt.QGraphicsView_Items3(this.nativePtr, x, y, w, h);
	}
	
	public void*[] ItemsWithPath(IQPainterPath path)
	{
		return CQt.QGraphicsView_ItemsWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void* ItemAt(IQPoint pos)
	{
		return CQt.QGraphicsView_ItemAt(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return CQt.QGraphicsView_ItemAt2(this.nativePtr, x, y);
	}
	
	public void MapToScene(IQPoint point)
	{
		CQt.QGraphicsView_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsView_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsView_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsView_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToScene2(int32 x, int32 y)
	{
		CQt.QGraphicsView_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsView_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsView_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public void BackgroundBrush()
	{
		CQt.QGraphicsView_BackgroundBrush(this.nativePtr);
	}
	
	public void SetBackgroundBrush(IQBrush brush)
	{
		CQt.QGraphicsView_SetBackgroundBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void ForegroundBrush()
	{
		CQt.QGraphicsView_ForegroundBrush(this.nativePtr);
	}
	
	public void SetForegroundBrush(IQBrush brush)
	{
		CQt.QGraphicsView_SetForegroundBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void UpdateScene(IQRectF[] rects)
	{
		CQt.QGraphicsView_UpdateScene(this.nativePtr, null);
	}
	
	public void InvalidateScene()
	{
		CQt.QGraphicsView_InvalidateScene(this.nativePtr);
	}
	
	public void UpdateSceneRect(IQRectF rect)
	{
		CQt.QGraphicsView_UpdateSceneRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetupViewport(IQWidget widget)
	{
		CQt.QGraphicsView_SetupViewport(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QGraphicsView_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool ViewportEvent(IQEvent event)
	{
		return CQt.QGraphicsView_ViewportEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ContextMenuEvent(IQContextMenuEvent event)
	{
		CQt.QGraphicsView_ContextMenuEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragEnterEvent(IQDragEnterEvent event)
	{
		CQt.QGraphicsView_DragEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragLeaveEvent(IQDragLeaveEvent event)
	{
		CQt.QGraphicsView_DragLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragMoveEvent(IQDragMoveEvent event)
	{
		CQt.QGraphicsView_DragMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DropEvent(IQDropEvent event)
	{
		CQt.QGraphicsView_DropEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusInEvent(IQFocusEvent event)
	{
		CQt.QGraphicsView_FocusInEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsView_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QGraphicsView_FocusOutEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QGraphicsView_KeyPressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyReleaseEvent(IQKeyEvent event)
	{
		CQt.QGraphicsView_KeyReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseDoubleClickEvent(IQMouseEvent event)
	{
		CQt.QGraphicsView_MouseDoubleClickEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MousePressEvent(IQMouseEvent event)
	{
		CQt.QGraphicsView_MousePressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseMoveEvent(IQMouseEvent event)
	{
		CQt.QGraphicsView_MouseMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseReleaseEvent(IQMouseEvent event)
	{
		CQt.QGraphicsView_MouseReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void WheelEvent(IQWheelEvent event)
	{
		CQt.QGraphicsView_WheelEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void PaintEvent(IQPaintEvent event)
	{
		CQt.QGraphicsView_PaintEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ResizeEvent(IQResizeEvent event)
	{
		CQt.QGraphicsView_ResizeEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QGraphicsView_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public void ShowEvent(IQShowEvent event)
	{
		CQt.QGraphicsView_ShowEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodEvent(IQInputMethodEvent event)
	{
		CQt.QGraphicsView_InputMethodEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DrawBackground(IQPainter painter, IQRectF rect)
	{
		CQt.QGraphicsView_DrawBackground(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void DrawForeground(IQPainter painter, IQRectF rect)
	{
		CQt.QGraphicsView_DrawForeground(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsView_Tr3(s, c, n);
	}
	
	public void SetRenderHint2(int64 hint, bool enabled)
	{
		CQt.QGraphicsView_SetRenderHint2(this.nativePtr, (int64)hint, enabled);
	}
	
	public void SetOptimizationFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsView_SetOptimizationFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsView_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void EnsureVisible23(IQGraphicsItem item, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible23(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, xmargin);
	}
	
	public void EnsureVisible32(IQGraphicsItem item, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible32(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, xmargin, ymargin);
	}
	
	public void FitInView22(IQRectF rect, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)aspectRadioMode);
	}
	
	public void FitInView5(double x, double y, double w, double h, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView5(this.nativePtr, x, y, w, h, (int64)aspectRadioMode);
	}
	
	public void FitInView23(IQGraphicsItem item, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView23(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (int64)aspectRadioMode);
	}
	
	public void Render2(IQPainter painter, IQRectF target)
	{
		CQt.QGraphicsView_Render2(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public void Render3(IQPainter painter, IQRectF target, IQRect source)
	{
		CQt.QGraphicsView_Render3(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr);
	}
	
	public void Render4(IQPainter painter, IQRectF target, IQRect source, int64 aspectRatioMode)
	{
		CQt.QGraphicsView_Render4(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr, (int64)aspectRatioMode);
	}
	
	public void*[] Items22(IQRect rect, int64 mode)
	{
		return CQt.QGraphicsView_Items22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)mode);
	}
	
	public void*[] Items5(int32 x, int32 y, int32 w, int32 h, int64 mode)
	{
		return CQt.QGraphicsView_Items5(this.nativePtr, x, y, w, h, (int64)mode);
	}
	
	public void*[] Items24(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsView_Items24(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void InvalidateScene1(IQRectF rect)
	{
		CQt.QGraphicsView_InvalidateScene1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void InvalidateScene2(IQRectF rect, int64 layers)
	{
		CQt.QGraphicsView_InvalidateScene2(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, layers);
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
	
	public void Update()
	{
		CQt.QWidget_Update(this.nativePtr);
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
public class QGraphicsView
{
	public QGraphicsViewPtr handle;
	
	public static implicit operator QGraphicsViewPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QGraphicsViewPtr.New(parent);
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
		return QGraphicsViewPtr.Tr(s);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public int64 RenderHints()
	{
		return this.handle.RenderHints();
	}
	
	public void SetRenderHint(int64 hint)
	{
		this.handle.SetRenderHint(hint);
	}
	
	public void SetRenderHints(int64 hints)
	{
		this.handle.SetRenderHints(hints);
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
	public void SetAlignment(int64 alignment)
	{
		this.handle.SetAlignment(alignment);
	}
	
	public int64 TransformationAnchor()
	{
		return this.handle.TransformationAnchor();
	}
	
	public void SetTransformationAnchor(int64 anchor)
	{
		this.handle.SetTransformationAnchor(anchor);
	}
	
	public int64 ResizeAnchor()
	{
		return this.handle.ResizeAnchor();
	}
	
	public void SetResizeAnchor(int64 anchor)
	{
		this.handle.SetResizeAnchor(anchor);
	}
	
	public int64 ViewportUpdateMode()
	{
		return this.handle.ViewportUpdateMode();
	}
	
	public void SetViewportUpdateMode(int64 mode)
	{
		this.handle.SetViewportUpdateMode(mode);
	}
	
	public int64 OptimizationFlags()
	{
		return this.handle.OptimizationFlags();
	}
	
	public void SetOptimizationFlag(int64 flag)
	{
		this.handle.SetOptimizationFlag(flag);
	}
	
	public void SetOptimizationFlags(int64 flags)
	{
		this.handle.SetOptimizationFlags(flags);
	}
	
	public int64 DragMode()
	{
		return this.handle.DragMode();
	}
	
	public void SetDragMode(int64 mode)
	{
		this.handle.SetDragMode(mode);
	}
	
	public int64 RubberBandSelectionMode()
	{
		return this.handle.RubberBandSelectionMode();
	}
	
	public void SetRubberBandSelectionMode(int64 mode)
	{
		this.handle.SetRubberBandSelectionMode(mode);
	}
	
	public void RubberBandRect()
	{
		this.handle.RubberBandRect();
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public void ResetCachedContent()
	{
		this.handle.ResetCachedContent();
	}
	
	public bool IsInteractive()
	{
		return this.handle.IsInteractive();
	}
	
	public void SetInteractive(bool allowed)
	{
		this.handle.SetInteractive(allowed);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void SetScene(IQGraphicsScene scene)
	{
		this.handle.SetScene(scene);
	}
	
	public void SceneRect()
	{
		this.handle.SceneRect();
	}
	
	public void SetSceneRect(IQRectF rect)
	{
		this.handle.SetSceneRect(rect);
	}
	
	public void SetSceneRect2(double x, double y, double w, double h)
	{
		this.handle.SetSceneRect2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void ViewportTransform()
	{
		this.handle.ViewportTransform();
	}
	
	public bool IsTransformed()
	{
		return this.handle.IsTransformed();
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void Rotate(double angle)
	{
		this.handle.Rotate(angle);
	}
	
	public void Scale(double sx, double sy)
	{
		this.handle.Scale(sx, sy);
	}
	
	public void Shear(double sh, double sv)
	{
		this.handle.Shear(sh, sv);
	}
	
	public void Translate(double dx, double dy)
	{
		this.handle.Translate(dx, dy);
	}
	
	public void CenterOn(IQPointF pos)
	{
		this.handle.CenterOn(pos);
	}
	
	public void CenterOn2(double x, double y)
	{
		this.handle.CenterOn2(x, y);
	}
	
	public void CenterOnWithItem(IQGraphicsItem item)
	{
		this.handle.CenterOnWithItem(item);
	}
	
	public void EnsureVisible(IQRectF rect)
	{
		this.handle.EnsureVisible(rect);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void EnsureVisibleWithItem(IQGraphicsItem item)
	{
		this.handle.EnsureVisibleWithItem(item);
	}
	
	public void FitInView(IQRectF rect)
	{
		this.handle.FitInView(rect);
	}
	
	public void FitInView2(double x, double y, double w, double h)
	{
		this.handle.FitInView2(x, y, w, h);
	}
	
	public void FitInViewWithItem(IQGraphicsItem item)
	{
		this.handle.FitInViewWithItem(item);
	}
	
	public void Render(IQPainter painter)
	{
		this.handle.Render(painter);
	}
	
	public void*[] Items()
	{
		return this.handle.Items();
	}
	
	public void*[] ItemsWithPos(IQPoint pos)
	{
		return this.handle.ItemsWithPos(pos);
	}
	
	public void*[] Items2(int32 x, int32 y)
	{
		return this.handle.Items2(x, y);
	}
	
	public void*[] ItemsWithRect(IQRect rect)
	{
		return this.handle.ItemsWithRect(rect);
	}
	
	public void*[] Items3(int32 x, int32 y, int32 w, int32 h)
	{
		return this.handle.Items3(x, y, w, h);
	}
	
	public void*[] ItemsWithPath(IQPainterPath path)
	{
		return this.handle.ItemsWithPath(path);
	}
	
	public void* ItemAt(IQPoint pos)
	{
		return this.handle.ItemAt(pos);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return this.handle.ItemAt2(x, y);
	}
	
	public void MapToScene(IQPoint point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToScene2(int32 x, int32 y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public void BackgroundBrush()
	{
		this.handle.BackgroundBrush();
	}
	
	public void SetBackgroundBrush(IQBrush brush)
	{
		this.handle.SetBackgroundBrush(brush);
	}
	
	public void ForegroundBrush()
	{
		this.handle.ForegroundBrush();
	}
	
	public void SetForegroundBrush(IQBrush brush)
	{
		this.handle.SetForegroundBrush(brush);
	}
	
	public void UpdateScene(IQRectF[] rects)
	{
		this.handle.UpdateScene(null);
	}
	
	public void InvalidateScene()
	{
		this.handle.InvalidateScene();
	}
	
	public void UpdateSceneRect(IQRectF rect)
	{
		this.handle.UpdateSceneRect(rect);
	}
	
	public virtual void SetupViewport(IQWidget widget)
	{
		this.handle.SetupViewport(widget);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool ViewportEvent(IQEvent event)
	{
		return this.handle.ViewportEvent(event);
	}
	
	public virtual void ContextMenuEvent(IQContextMenuEvent event)
	{
		this.handle.ContextMenuEvent(event);
	}
	
	public virtual void DragEnterEvent(IQDragEnterEvent event)
	{
		this.handle.DragEnterEvent(event);
	}
	
	public virtual void DragLeaveEvent(IQDragLeaveEvent event)
	{
		this.handle.DragLeaveEvent(event);
	}
	
	public virtual void DragMoveEvent(IQDragMoveEvent event)
	{
		this.handle.DragMoveEvent(event);
	}
	
	public virtual void DropEvent(IQDropEvent event)
	{
		this.handle.DropEvent(event);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		this.handle.FocusInEvent(event);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return this.handle.FocusNextPrevChild(next);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		this.handle.FocusOutEvent(event);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		this.handle.KeyPressEvent(event);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent event)
	{
		this.handle.KeyReleaseEvent(event);
	}
	
	public virtual void MouseDoubleClickEvent(IQMouseEvent event)
	{
		this.handle.MouseDoubleClickEvent(event);
	}
	
	public virtual void MousePressEvent(IQMouseEvent event)
	{
		this.handle.MousePressEvent(event);
	}
	
	public virtual void MouseMoveEvent(IQMouseEvent event)
	{
		this.handle.MouseMoveEvent(event);
	}
	
	public virtual void MouseReleaseEvent(IQMouseEvent event)
	{
		this.handle.MouseReleaseEvent(event);
	}
	
	public virtual void WheelEvent(IQWheelEvent event)
	{
		this.handle.WheelEvent(event);
	}
	
	public virtual void PaintEvent(IQPaintEvent event)
	{
		this.handle.PaintEvent(event);
	}
	
	public virtual void ResizeEvent(IQResizeEvent event)
	{
		this.handle.ResizeEvent(event);
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		this.handle.ScrollContentsBy(dx, dy);
	}
	
	public virtual void ShowEvent(IQShowEvent event)
	{
		this.handle.ShowEvent(event);
	}
	
	public virtual void InputMethodEvent(IQInputMethodEvent event)
	{
		this.handle.InputMethodEvent(event);
	}
	
	public virtual void DrawBackground(IQPainter painter, IQRectF rect)
	{
		this.handle.DrawBackground(painter, rect);
	}
	
	public virtual void DrawForeground(IQPainter painter, IQRectF rect)
	{
		this.handle.DrawForeground(painter, rect);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsViewPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsViewPtr.Tr3(s, c, n);
	}
	
	public void SetRenderHint2(int64 hint, bool enabled)
	{
		this.handle.SetRenderHint2(hint, enabled);
	}
	
	public void SetOptimizationFlag2(int64 flag, bool enabled)
	{
		this.handle.SetOptimizationFlag2(flag, enabled);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		this.handle.EnsureVisible22(rect, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible3(rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		this.handle.EnsureVisible5(x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible6(x, y, w, h, xmargin, ymargin);
	}
	
	public void EnsureVisible23(IQGraphicsItem item, int32 xmargin)
	{
		this.handle.EnsureVisible23(item, xmargin);
	}
	
	public void EnsureVisible32(IQGraphicsItem item, int32 xmargin, int32 ymargin)
	{
		this.handle.EnsureVisible32(item, xmargin, ymargin);
	}
	
	public void FitInView22(IQRectF rect, int64 aspectRadioMode)
	{
		this.handle.FitInView22(rect, aspectRadioMode);
	}
	
	public void FitInView5(double x, double y, double w, double h, int64 aspectRadioMode)
	{
		this.handle.FitInView5(x, y, w, h, aspectRadioMode);
	}
	
	public void FitInView23(IQGraphicsItem item, int64 aspectRadioMode)
	{
		this.handle.FitInView23(item, aspectRadioMode);
	}
	
	public void Render2(IQPainter painter, IQRectF target)
	{
		this.handle.Render2(painter, target);
	}
	
	public void Render3(IQPainter painter, IQRectF target, IQRect source)
	{
		this.handle.Render3(painter, target, source);
	}
	
	public void Render4(IQPainter painter, IQRectF target, IQRect source, int64 aspectRatioMode)
	{
		this.handle.Render4(painter, target, source, aspectRatioMode);
	}
	
	public void*[] Items22(IQRect rect, int64 mode)
	{
		return this.handle.Items22(rect, mode);
	}
	
	public void*[] Items5(int32 x, int32 y, int32 w, int32 h, int64 mode)
	{
		return this.handle.Items5(x, y, w, h, mode);
	}
	
	public void*[] Items24(IQPainterPath path, int64 mode)
	{
		return this.handle.Items24(path, mode);
	}
	
	public void InvalidateScene1(IQRectF rect)
	{
		this.handle.InvalidateScene1(rect);
	}
	
	public void InvalidateScene2(IQRectF rect, int64 layers)
	{
		this.handle.InvalidateScene2(rect, layers);
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
		QGraphicsViewPtr.SetTabOrder(param1, param2);
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
		return QGraphicsViewPtr.MouseGrabber();
	}
	
	public static void* KeyboardGrabber()
	{
		return QGraphicsViewPtr.KeyboardGrabber();
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
	
	public void Update()
	{
		this.handle.Update();
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
		return QGraphicsViewPtr.Find(param1);
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
		return QGraphicsViewPtr.CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
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
		return QGraphicsViewPtr.CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(IQWindow window, IQWidget parent, int64 flags)
	{
		return QGraphicsViewPtr.CreateWindowContainer3(window, parent, flags);
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
		QGraphicsViewPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsViewPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsViewPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGraphicsViewPtr.Connect5(sender, signal, receiver, method, typeVal);
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
		return QGraphicsViewPtr.DevicePixelRatioFScale();
	}
	
}
extension CQt
{
	[LinkName("QGraphicsView_new")]
	public static extern void* QGraphicsView_new(void* parent);
	[LinkName("QGraphicsView_new2")]
	public static extern void* QGraphicsView_new2();
	[LinkName("QGraphicsView_new3")]
	public static extern void* QGraphicsView_new3(void* scene);
	[LinkName("QGraphicsView_new4")]
	public static extern void* QGraphicsView_new4(void* scene, void* parent);
	[LinkName("QGraphicsView_MetaObject")]
	public static extern void* QGraphicsView_MetaObject(void* c_this);
	[LinkName("QGraphicsView_Metacast")]
	public static extern void* QGraphicsView_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsView_Metacall")]
	public static extern int32 QGraphicsView_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsView_Tr")]
	public static extern libqt_string QGraphicsView_Tr(char8* s);
	[LinkName("QGraphicsView_SizeHint")]
	public static extern void QGraphicsView_SizeHint(void* c_this);
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
	public static extern void QGraphicsView_RubberBandRect(void* c_this);
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
	public static extern void* QGraphicsView_Scene(void* c_this);
	[LinkName("QGraphicsView_SetScene")]
	public static extern void QGraphicsView_SetScene(void* c_this, void* scene);
	[LinkName("QGraphicsView_SceneRect")]
	public static extern void QGraphicsView_SceneRect(void* c_this);
	[LinkName("QGraphicsView_SetSceneRect")]
	public static extern void QGraphicsView_SetSceneRect(void* c_this, void* rect);
	[LinkName("QGraphicsView_SetSceneRect2")]
	public static extern void QGraphicsView_SetSceneRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_Transform")]
	public static extern void QGraphicsView_Transform(void* c_this);
	[LinkName("QGraphicsView_ViewportTransform")]
	public static extern void QGraphicsView_ViewportTransform(void* c_this);
	[LinkName("QGraphicsView_IsTransformed")]
	public static extern bool QGraphicsView_IsTransformed(void* c_this);
	[LinkName("QGraphicsView_SetTransform")]
	public static extern void QGraphicsView_SetTransform(void* c_this, void* matrix);
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
	public static extern void QGraphicsView_CenterOn(void* c_this, void* pos);
	[LinkName("QGraphicsView_CenterOn2")]
	public static extern void QGraphicsView_CenterOn2(void* c_this, double x, double y);
	[LinkName("QGraphicsView_CenterOnWithItem")]
	public static extern void QGraphicsView_CenterOnWithItem(void* c_this, void* item);
	[LinkName("QGraphicsView_EnsureVisible")]
	public static extern void QGraphicsView_EnsureVisible(void* c_this, void* rect);
	[LinkName("QGraphicsView_EnsureVisible2")]
	public static extern void QGraphicsView_EnsureVisible2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_EnsureVisibleWithItem")]
	public static extern void QGraphicsView_EnsureVisibleWithItem(void* c_this, void* item);
	[LinkName("QGraphicsView_FitInView")]
	public static extern void QGraphicsView_FitInView(void* c_this, void* rect);
	[LinkName("QGraphicsView_FitInView2")]
	public static extern void QGraphicsView_FitInView2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsView_FitInViewWithItem")]
	public static extern void QGraphicsView_FitInViewWithItem(void* c_this, void* item);
	[LinkName("QGraphicsView_Render")]
	public static extern void QGraphicsView_Render(void* c_this, void* painter);
	[LinkName("QGraphicsView_Items")]
	public static extern void*[] QGraphicsView_Items(void* c_this);
	[LinkName("QGraphicsView_ItemsWithPos")]
	public static extern void*[] QGraphicsView_ItemsWithPos(void* c_this, void* pos);
	[LinkName("QGraphicsView_Items2")]
	public static extern void*[] QGraphicsView_Items2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_ItemsWithRect")]
	public static extern void*[] QGraphicsView_ItemsWithRect(void* c_this, void* rect);
	[LinkName("QGraphicsView_Items3")]
	public static extern void*[] QGraphicsView_Items3(void* c_this, int32 x, int32 y, int32 w, int32 h);
	[LinkName("QGraphicsView_ItemsWithPath")]
	public static extern void*[] QGraphicsView_ItemsWithPath(void* c_this, void* path);
	[LinkName("QGraphicsView_ItemAt")]
	public static extern void* QGraphicsView_ItemAt(void* c_this, void* pos);
	[LinkName("QGraphicsView_ItemAt2")]
	public static extern void* QGraphicsView_ItemAt2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_MapToScene")]
	public static extern void QGraphicsView_MapToScene(void* c_this, void* point);
	[LinkName("QGraphicsView_MapToSceneWithPath")]
	public static extern void QGraphicsView_MapToSceneWithPath(void* c_this, void* path);
	[LinkName("QGraphicsView_MapFromScene")]
	public static extern void QGraphicsView_MapFromScene(void* c_this, void* point);
	[LinkName("QGraphicsView_MapFromSceneWithPath")]
	public static extern void QGraphicsView_MapFromSceneWithPath(void* c_this, void* path);
	[LinkName("QGraphicsView_MapToScene2")]
	public static extern void QGraphicsView_MapToScene2(void* c_this, int32 x, int32 y);
	[LinkName("QGraphicsView_MapFromScene2")]
	public static extern void QGraphicsView_MapFromScene2(void* c_this, double x, double y);
	[LinkName("QGraphicsView_InputMethodQuery")]
	public static extern void QGraphicsView_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsView_BackgroundBrush")]
	public static extern void QGraphicsView_BackgroundBrush(void* c_this);
	[LinkName("QGraphicsView_SetBackgroundBrush")]
	public static extern void QGraphicsView_SetBackgroundBrush(void* c_this, void* brush);
	[LinkName("QGraphicsView_ForegroundBrush")]
	public static extern void QGraphicsView_ForegroundBrush(void* c_this);
	[LinkName("QGraphicsView_SetForegroundBrush")]
	public static extern void QGraphicsView_SetForegroundBrush(void* c_this, void* brush);
	[LinkName("QGraphicsView_UpdateScene")]
	public static extern void QGraphicsView_UpdateScene(void* c_this, void[] rects);
	[LinkName("QGraphicsView_InvalidateScene")]
	public static extern void QGraphicsView_InvalidateScene(void* c_this);
	[LinkName("QGraphicsView_UpdateSceneRect")]
	public static extern void QGraphicsView_UpdateSceneRect(void* c_this, void* rect);
	[LinkName("QGraphicsView_Connect_RubberBandChanged")]
	public static extern void QGraphicsView_Connect_RubberBandChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsView_SetupViewport")]
	public static extern void QGraphicsView_SetupViewport(void* c_this, void* widget);
	[LinkName("QGraphicsView_Event")]
	public static extern bool QGraphicsView_Event(void* c_this, void* event);
	[LinkName("QGraphicsView_ViewportEvent")]
	public static extern bool QGraphicsView_ViewportEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_ContextMenuEvent")]
	public static extern void QGraphicsView_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_DragEnterEvent")]
	public static extern void QGraphicsView_DragEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_DragLeaveEvent")]
	public static extern void QGraphicsView_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_DragMoveEvent")]
	public static extern void QGraphicsView_DragMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_DropEvent")]
	public static extern void QGraphicsView_DropEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_FocusInEvent")]
	public static extern void QGraphicsView_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_FocusNextPrevChild")]
	public static extern bool QGraphicsView_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsView_FocusOutEvent")]
	public static extern void QGraphicsView_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_KeyPressEvent")]
	public static extern void QGraphicsView_KeyPressEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_KeyReleaseEvent")]
	public static extern void QGraphicsView_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_MouseDoubleClickEvent")]
	public static extern void QGraphicsView_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_MousePressEvent")]
	public static extern void QGraphicsView_MousePressEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_MouseMoveEvent")]
	public static extern void QGraphicsView_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_MouseReleaseEvent")]
	public static extern void QGraphicsView_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_WheelEvent")]
	public static extern void QGraphicsView_WheelEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_PaintEvent")]
	public static extern void QGraphicsView_PaintEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_ResizeEvent")]
	public static extern void QGraphicsView_ResizeEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_ScrollContentsBy")]
	public static extern void QGraphicsView_ScrollContentsBy(void* c_this, int32 dx, int32 dy);
	[LinkName("QGraphicsView_ShowEvent")]
	public static extern void QGraphicsView_ShowEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_InputMethodEvent")]
	public static extern void QGraphicsView_InputMethodEvent(void* c_this, void* event);
	[LinkName("QGraphicsView_DrawBackground")]
	public static extern void QGraphicsView_DrawBackground(void* c_this, void* painter, void* rect);
	[LinkName("QGraphicsView_DrawForeground")]
	public static extern void QGraphicsView_DrawForeground(void* c_this, void* painter, void* rect);
	[LinkName("QGraphicsView_Tr2")]
	public static extern libqt_string QGraphicsView_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsView_Tr3")]
	public static extern libqt_string QGraphicsView_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QGraphicsView_SetRenderHint2")]
	public static extern void QGraphicsView_SetRenderHint2(void* c_this, int64 hint, bool enabled);
	[LinkName("QGraphicsView_SetOptimizationFlag2")]
	public static extern void QGraphicsView_SetOptimizationFlag2(void* c_this, int64 flag, bool enabled);
	[LinkName("QGraphicsView_SetTransform2")]
	public static extern void QGraphicsView_SetTransform2(void* c_this, void* matrix, bool combine);
	[LinkName("QGraphicsView_EnsureVisible22")]
	public static extern void QGraphicsView_EnsureVisible22(void* c_this, void* rect, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible3")]
	public static extern void QGraphicsView_EnsureVisible3(void* c_this, void* rect, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_EnsureVisible5")]
	public static extern void QGraphicsView_EnsureVisible5(void* c_this, double x, double y, double w, double h, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible6")]
	public static extern void QGraphicsView_EnsureVisible6(void* c_this, double x, double y, double w, double h, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_EnsureVisible23")]
	public static extern void QGraphicsView_EnsureVisible23(void* c_this, void* item, int32 xmargin);
	[LinkName("QGraphicsView_EnsureVisible32")]
	public static extern void QGraphicsView_EnsureVisible32(void* c_this, void* item, int32 xmargin, int32 ymargin);
	[LinkName("QGraphicsView_FitInView22")]
	public static extern void QGraphicsView_FitInView22(void* c_this, void* rect, int64 aspectRadioMode);
	[LinkName("QGraphicsView_FitInView5")]
	public static extern void QGraphicsView_FitInView5(void* c_this, double x, double y, double w, double h, int64 aspectRadioMode);
	[LinkName("QGraphicsView_FitInView23")]
	public static extern void QGraphicsView_FitInView23(void* c_this, void* item, int64 aspectRadioMode);
	[LinkName("QGraphicsView_Render2")]
	public static extern void QGraphicsView_Render2(void* c_this, void* painter, void* target);
	[LinkName("QGraphicsView_Render3")]
	public static extern void QGraphicsView_Render3(void* c_this, void* painter, void* target, void* source);
	[LinkName("QGraphicsView_Render4")]
	public static extern void QGraphicsView_Render4(void* c_this, void* painter, void* target, void* source, int64 aspectRatioMode);
	[LinkName("QGraphicsView_Items22")]
	public static extern void*[] QGraphicsView_Items22(void* c_this, void* rect, int64 mode);
	[LinkName("QGraphicsView_Items5")]
	public static extern void*[] QGraphicsView_Items5(void* c_this, int32 x, int32 y, int32 w, int32 h, int64 mode);
	[LinkName("QGraphicsView_Items24")]
	public static extern void*[] QGraphicsView_Items24(void* c_this, void* path, int64 mode);
	[LinkName("QGraphicsView_InvalidateScene1")]
	public static extern void QGraphicsView_InvalidateScene1(void* c_this, void* rect);
	[LinkName("QGraphicsView_InvalidateScene2")]
	public static extern void QGraphicsView_InvalidateScene2(void* c_this, void* rect, int64 layers);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsView_Delete")]
	public static extern void QGraphicsView_Delete(void* self);
}