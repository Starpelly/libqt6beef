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
public class QGraphicsView
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QGraphicsView_new(parent);
	}
	
	public ~this()
	{
		CQt.QGraphicsView_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsView_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsView_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsView_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsView_Tr(s);
	}
	
	public virtual void SizeHint()
	{
		CQt.QGraphicsView_SizeHint(this.nativePtr);
	}
	
	public int64 RenderHints()
	{
		return CQt.QGraphicsView_RenderHints(this.nativePtr);
	}
	
	public void SetRenderHint(int64 hint)
	{
		CQt.QGraphicsView_SetRenderHint(this.nativePtr, hint);
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
		CQt.QGraphicsView_SetTransformationAnchor(this.nativePtr, anchor);
	}
	
	public int64 ResizeAnchor()
	{
		return CQt.QGraphicsView_ResizeAnchor(this.nativePtr);
	}
	
	public void SetResizeAnchor(int64 anchor)
	{
		CQt.QGraphicsView_SetResizeAnchor(this.nativePtr, anchor);
	}
	
	public int64 ViewportUpdateMode()
	{
		return CQt.QGraphicsView_ViewportUpdateMode(this.nativePtr);
	}
	
	public void SetViewportUpdateMode(int64 mode)
	{
		CQt.QGraphicsView_SetViewportUpdateMode(this.nativePtr, mode);
	}
	
	public int64 OptimizationFlags()
	{
		return CQt.QGraphicsView_OptimizationFlags(this.nativePtr);
	}
	
	public void SetOptimizationFlag(int64 flag)
	{
		CQt.QGraphicsView_SetOptimizationFlag(this.nativePtr, flag);
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
		CQt.QGraphicsView_SetDragMode(this.nativePtr, mode);
	}
	
	public int64 RubberBandSelectionMode()
	{
		return CQt.QGraphicsView_RubberBandSelectionMode(this.nativePtr);
	}
	
	public void SetRubberBandSelectionMode(int64 mode)
	{
		CQt.QGraphicsView_SetRubberBandSelectionMode(this.nativePtr, mode);
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
	
	public void SetScene(void* scene)
	{
		CQt.QGraphicsView_SetScene(this.nativePtr, scene);
	}
	
	public void SceneRect()
	{
		CQt.QGraphicsView_SceneRect(this.nativePtr);
	}
	
	public void SetSceneRect(void* rect)
	{
		CQt.QGraphicsView_SetSceneRect(this.nativePtr, rect);
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
	
	public void SetTransform(void* matrix)
	{
		CQt.QGraphicsView_SetTransform(this.nativePtr, matrix);
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
	
	public void CenterOn(void* pos)
	{
		CQt.QGraphicsView_CenterOn(this.nativePtr, pos);
	}
	
	public void CenterOn2(double x, double y)
	{
		CQt.QGraphicsView_CenterOn2(this.nativePtr, x, y);
	}
	
	public void CenterOnWithItem(void* item)
	{
		CQt.QGraphicsView_CenterOnWithItem(this.nativePtr, item);
	}
	
	public void EnsureVisible(void* rect)
	{
		CQt.QGraphicsView_EnsureVisible(this.nativePtr, rect);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsView_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void EnsureVisibleWithItem(void* item)
	{
		CQt.QGraphicsView_EnsureVisibleWithItem(this.nativePtr, item);
	}
	
	public void FitInView(void* rect)
	{
		CQt.QGraphicsView_FitInView(this.nativePtr, rect);
	}
	
	public void FitInView2(double x, double y, double w, double h)
	{
		CQt.QGraphicsView_FitInView2(this.nativePtr, x, y, w, h);
	}
	
	public void FitInViewWithItem(void* item)
	{
		CQt.QGraphicsView_FitInViewWithItem(this.nativePtr, item);
	}
	
	public void Render(void* painter)
	{
		CQt.QGraphicsView_Render(this.nativePtr, painter);
	}
	
	public void*[] Items()
	{
		return CQt.QGraphicsView_Items(this.nativePtr);
	}
	
	public void*[] ItemsWithPos(void* pos)
	{
		return CQt.QGraphicsView_ItemsWithPos(this.nativePtr, pos);
	}
	
	public void*[] Items2(int32 x, int32 y)
	{
		return CQt.QGraphicsView_Items2(this.nativePtr, x, y);
	}
	
	public void*[] ItemsWithRect(void* rect)
	{
		return CQt.QGraphicsView_ItemsWithRect(this.nativePtr, rect);
	}
	
	public void*[] Items3(int32 x, int32 y, int32 w, int32 h)
	{
		return CQt.QGraphicsView_Items3(this.nativePtr, x, y, w, h);
	}
	
	public void*[] ItemsWithPath(void* path)
	{
		return CQt.QGraphicsView_ItemsWithPath(this.nativePtr, path);
	}
	
	public void* ItemAt(void* pos)
	{
		return CQt.QGraphicsView_ItemAt(this.nativePtr, pos);
	}
	
	public void* ItemAt2(int32 x, int32 y)
	{
		return CQt.QGraphicsView_ItemAt2(this.nativePtr, x, y);
	}
	
	public void MapToScene(void* point)
	{
		CQt.QGraphicsView_MapToScene(this.nativePtr, point);
	}
	
	public void MapToSceneWithPath(void* path)
	{
		CQt.QGraphicsView_MapToSceneWithPath(this.nativePtr, path);
	}
	
	public void MapFromScene(void* point)
	{
		CQt.QGraphicsView_MapFromScene(this.nativePtr, point);
	}
	
	public void MapFromSceneWithPath(void* path)
	{
		CQt.QGraphicsView_MapFromSceneWithPath(this.nativePtr, path);
	}
	
	public void MapToScene2(int32 x, int32 y)
	{
		CQt.QGraphicsView_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsView_MapFromScene2(this.nativePtr, x, y);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsView_InputMethodQuery(this.nativePtr, query);
	}
	
	public void BackgroundBrush()
	{
		CQt.QGraphicsView_BackgroundBrush(this.nativePtr);
	}
	
	public void SetBackgroundBrush(void* brush)
	{
		CQt.QGraphicsView_SetBackgroundBrush(this.nativePtr, brush);
	}
	
	public void ForegroundBrush()
	{
		CQt.QGraphicsView_ForegroundBrush(this.nativePtr);
	}
	
	public void SetForegroundBrush(void* brush)
	{
		CQt.QGraphicsView_SetForegroundBrush(this.nativePtr, brush);
	}
	
	public void UpdateScene(void[] rects)
	{
		CQt.QGraphicsView_UpdateScene(this.nativePtr, rects);
	}
	
	public void InvalidateScene()
	{
		CQt.QGraphicsView_InvalidateScene(this.nativePtr);
	}
	
	public void UpdateSceneRect(void* rect)
	{
		CQt.QGraphicsView_UpdateSceneRect(this.nativePtr, rect);
	}
	
	public virtual void SetupViewport(void* widget)
	{
		CQt.QGraphicsView_SetupViewport(this.nativePtr, widget);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QGraphicsView_Event(this.nativePtr, event);
	}
	
	public virtual bool ViewportEvent(void* event)
	{
		return CQt.QGraphicsView_ViewportEvent(this.nativePtr, event);
	}
	
	public virtual void ContextMenuEvent(void* event)
	{
		CQt.QGraphicsView_ContextMenuEvent(this.nativePtr, event);
	}
	
	public virtual void DragEnterEvent(void* event)
	{
		CQt.QGraphicsView_DragEnterEvent(this.nativePtr, event);
	}
	
	public virtual void DragLeaveEvent(void* event)
	{
		CQt.QGraphicsView_DragLeaveEvent(this.nativePtr, event);
	}
	
	public virtual void DragMoveEvent(void* event)
	{
		CQt.QGraphicsView_DragMoveEvent(this.nativePtr, event);
	}
	
	public virtual void DropEvent(void* event)
	{
		CQt.QGraphicsView_DropEvent(this.nativePtr, event);
	}
	
	public virtual void FocusInEvent(void* event)
	{
		CQt.QGraphicsView_FocusInEvent(this.nativePtr, event);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsView_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual void FocusOutEvent(void* event)
	{
		CQt.QGraphicsView_FocusOutEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* event)
	{
		CQt.QGraphicsView_KeyPressEvent(this.nativePtr, event);
	}
	
	public virtual void KeyReleaseEvent(void* event)
	{
		CQt.QGraphicsView_KeyReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void MouseDoubleClickEvent(void* event)
	{
		CQt.QGraphicsView_MouseDoubleClickEvent(this.nativePtr, event);
	}
	
	public virtual void MousePressEvent(void* event)
	{
		CQt.QGraphicsView_MousePressEvent(this.nativePtr, event);
	}
	
	public virtual void MouseMoveEvent(void* event)
	{
		CQt.QGraphicsView_MouseMoveEvent(this.nativePtr, event);
	}
	
	public virtual void MouseReleaseEvent(void* event)
	{
		CQt.QGraphicsView_MouseReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void WheelEvent(void* event)
	{
		CQt.QGraphicsView_WheelEvent(this.nativePtr, event);
	}
	
	public virtual void PaintEvent(void* event)
	{
		CQt.QGraphicsView_PaintEvent(this.nativePtr, event);
	}
	
	public virtual void ResizeEvent(void* event)
	{
		CQt.QGraphicsView_ResizeEvent(this.nativePtr, event);
	}
	
	public virtual void ScrollContentsBy(int32 dx, int32 dy)
	{
		CQt.QGraphicsView_ScrollContentsBy(this.nativePtr, dx, dy);
	}
	
	public virtual void ShowEvent(void* event)
	{
		CQt.QGraphicsView_ShowEvent(this.nativePtr, event);
	}
	
	public virtual void InputMethodEvent(void* event)
	{
		CQt.QGraphicsView_InputMethodEvent(this.nativePtr, event);
	}
	
	public virtual void DrawBackground(void* painter, void* rect)
	{
		CQt.QGraphicsView_DrawBackground(this.nativePtr, painter, rect);
	}
	
	public virtual void DrawForeground(void* painter, void* rect)
	{
		CQt.QGraphicsView_DrawForeground(this.nativePtr, painter, rect);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsView_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsView_Tr3(s, c, n);
	}
	
	public void SetRenderHint2(int64 hint, bool enabled)
	{
		CQt.QGraphicsView_SetRenderHint2(this.nativePtr, hint, enabled);
	}
	
	public void SetOptimizationFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsView_SetOptimizationFlag2(this.nativePtr, flag, enabled);
	}
	
	public void SetTransform2(void* matrix, bool combine)
	{
		CQt.QGraphicsView_SetTransform2(this.nativePtr, matrix, combine);
	}
	
	public void EnsureVisible22(void* rect, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible22(this.nativePtr, rect, xmargin);
	}
	
	public void EnsureVisible3(void* rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible3(this.nativePtr, rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void EnsureVisible23(void* item, int32 xmargin)
	{
		CQt.QGraphicsView_EnsureVisible23(this.nativePtr, item, xmargin);
	}
	
	public void EnsureVisible32(void* item, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsView_EnsureVisible32(this.nativePtr, item, xmargin, ymargin);
	}
	
	public void FitInView22(void* rect, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView22(this.nativePtr, rect, aspectRadioMode);
	}
	
	public void FitInView5(double x, double y, double w, double h, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView5(this.nativePtr, x, y, w, h, aspectRadioMode);
	}
	
	public void FitInView23(void* item, int64 aspectRadioMode)
	{
		CQt.QGraphicsView_FitInView23(this.nativePtr, item, aspectRadioMode);
	}
	
	public void Render2(void* painter, void* target)
	{
		CQt.QGraphicsView_Render2(this.nativePtr, painter, target);
	}
	
	public void Render3(void* painter, void* target, void* source)
	{
		CQt.QGraphicsView_Render3(this.nativePtr, painter, target, source);
	}
	
	public void Render4(void* painter, void* target, void* source, int64 aspectRatioMode)
	{
		CQt.QGraphicsView_Render4(this.nativePtr, painter, target, source, aspectRatioMode);
	}
	
	public void*[] Items22(void* rect, int64 mode)
	{
		return CQt.QGraphicsView_Items22(this.nativePtr, rect, mode);
	}
	
	public void*[] Items5(int32 x, int32 y, int32 w, int32 h, int64 mode)
	{
		return CQt.QGraphicsView_Items5(this.nativePtr, x, y, w, h, mode);
	}
	
	public void*[] Items24(void* path, int64 mode)
	{
		return CQt.QGraphicsView_Items24(this.nativePtr, path, mode);
	}
	
	public void InvalidateScene1(void* rect)
	{
		CQt.QGraphicsView_InvalidateScene1(this.nativePtr, rect);
	}
	
	public void InvalidateScene2(void* rect, int64 layers)
	{
		CQt.QGraphicsView_InvalidateScene2(this.nativePtr, rect, layers);
	}
	
	public int64 VerticalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetVerticalScrollBarPolicy(int64 verticalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBarPolicy(this.nativePtr, verticalScrollBarPolicy);
	}
	
	public void* VerticalScrollBar()
	{
		return CQt.QAbstractScrollArea_VerticalScrollBar(this.nativePtr);
	}
	
	public void SetVerticalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetVerticalScrollBar(this.nativePtr, scrollbar);
	}
	
	public int64 HorizontalScrollBarPolicy()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBarPolicy(this.nativePtr);
	}
	
	public void SetHorizontalScrollBarPolicy(int64 horizontalScrollBarPolicy)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBarPolicy(this.nativePtr, horizontalScrollBarPolicy);
	}
	
	public void* HorizontalScrollBar()
	{
		return CQt.QAbstractScrollArea_HorizontalScrollBar(this.nativePtr);
	}
	
	public void SetHorizontalScrollBar(void* scrollbar)
	{
		CQt.QAbstractScrollArea_SetHorizontalScrollBar(this.nativePtr, scrollbar);
	}
	
	public void* CornerWidget()
	{
		return CQt.QAbstractScrollArea_CornerWidget(this.nativePtr);
	}
	
	public void SetCornerWidget(void* widget)
	{
		CQt.QAbstractScrollArea_SetCornerWidget(this.nativePtr, widget);
	}
	
	public void AddScrollBarWidget(void* widget, int64 alignment)
	{
		CQt.QAbstractScrollArea_AddScrollBarWidget(this.nativePtr, widget, alignment);
	}
	
	public void*[] ScrollBarWidgets(int64 alignment)
	{
		return CQt.QAbstractScrollArea_ScrollBarWidgets(this.nativePtr, alignment);
	}
	
	public void* Viewport()
	{
		return CQt.QAbstractScrollArea_Viewport(this.nativePtr);
	}
	
	public void SetViewport(void* widget)
	{
		CQt.QAbstractScrollArea_SetViewport(this.nativePtr, widget);
	}
	
	public void MaximumViewportSize()
	{
		CQt.QAbstractScrollArea_MaximumViewportSize(this.nativePtr);
	}
	
	public virtual void MinimumSizeHint()
	{
		CQt.QAbstractScrollArea_MinimumSizeHint(this.nativePtr);
	}
	
	public int64 SizeAdjustPolicy()
	{
		return CQt.QAbstractScrollArea_SizeAdjustPolicy(this.nativePtr);
	}
	
	public void SetSizeAdjustPolicy(int64 policy)
	{
		CQt.QAbstractScrollArea_SetSizeAdjustPolicy(this.nativePtr, policy);
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
		CQt.QFrame_SetFrameShape(this.nativePtr, frameShape);
	}
	
	public int64 FrameShadow()
	{
		return CQt.QFrame_FrameShadow(this.nativePtr);
	}
	
	public void SetFrameShadow(int64 frameShadow)
	{
		CQt.QFrame_SetFrameShadow(this.nativePtr, frameShadow);
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
	
	public void SetFrameRect(void* frameRect)
	{
		CQt.QFrame_SetFrameRect(this.nativePtr, frameRect);
	}
	
	public virtual int32 DevType()
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
	
	public void SetStyle(void* style)
	{
		CQt.QWidget_SetStyle(this.nativePtr, style);
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
		CQt.QWidget_SetWindowModality(this.nativePtr, windowModality);
	}
	
	public bool IsEnabled()
	{
		return CQt.QWidget_IsEnabled(this.nativePtr);
	}
	
	public bool IsEnabledTo(void* param1)
	{
		return CQt.QWidget_IsEnabledTo(this.nativePtr, param1);
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
	
	public void SetMinimumSize(void* minimumSize)
	{
		CQt.QWidget_SetMinimumSize(this.nativePtr, minimumSize);
	}
	
	public void SetMinimumSize2(int32 minw, int32 minh)
	{
		CQt.QWidget_SetMinimumSize2(this.nativePtr, minw, minh);
	}
	
	public void SetMaximumSize(void* maximumSize)
	{
		CQt.QWidget_SetMaximumSize(this.nativePtr, maximumSize);
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
	
	public void SetSizeIncrement(void* sizeIncrement)
	{
		CQt.QWidget_SetSizeIncrement(this.nativePtr, sizeIncrement);
	}
	
	public void SetSizeIncrement2(int32 w, int32 h)
	{
		CQt.QWidget_SetSizeIncrement2(this.nativePtr, w, h);
	}
	
	public void BaseSize()
	{
		CQt.QWidget_BaseSize(this.nativePtr);
	}
	
	public void SetBaseSize(void* baseSize)
	{
		CQt.QWidget_SetBaseSize(this.nativePtr, baseSize);
	}
	
	public void SetBaseSize2(int32 basew, int32 baseh)
	{
		CQt.QWidget_SetBaseSize2(this.nativePtr, basew, baseh);
	}
	
	public void SetFixedSize(void* fixedSize)
	{
		CQt.QWidget_SetFixedSize(this.nativePtr, fixedSize);
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
	
	public void MapToGlobal(void* param1)
	{
		CQt.QWidget_MapToGlobal(this.nativePtr, param1);
	}
	
	public void MapToGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapToGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromGlobal(void* param1)
	{
		CQt.QWidget_MapFromGlobal(this.nativePtr, param1);
	}
	
	public void MapFromGlobalWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromGlobalWithQPoint(this.nativePtr, param1);
	}
	
	public void MapToParent(void* param1)
	{
		CQt.QWidget_MapToParent(this.nativePtr, param1);
	}
	
	public void MapToParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapToParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapFromParent(void* param1)
	{
		CQt.QWidget_MapFromParent(this.nativePtr, param1);
	}
	
	public void MapFromParentWithQPoint(void* param1)
	{
		CQt.QWidget_MapFromParentWithQPoint(this.nativePtr, param1);
	}
	
	public void MapTo(void* param1, void* param2)
	{
		CQt.QWidget_MapTo(this.nativePtr, param1, param2);
	}
	
	public void MapTo2(void* param1, void* param2)
	{
		CQt.QWidget_MapTo2(this.nativePtr, param1, param2);
	}
	
	public void MapFrom(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom(this.nativePtr, param1, param2);
	}
	
	public void MapFrom2(void* param1, void* param2)
	{
		CQt.QWidget_MapFrom2(this.nativePtr, param1, param2);
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
	
	public void SetPalette(void* palette)
	{
		CQt.QWidget_SetPalette(this.nativePtr, palette);
	}
	
	public void SetBackgroundRole(int64 backgroundRole)
	{
		CQt.QWidget_SetBackgroundRole(this.nativePtr, backgroundRole);
	}
	
	public int64 BackgroundRole()
	{
		return CQt.QWidget_BackgroundRole(this.nativePtr);
	}
	
	public void SetForegroundRole(int64 foregroundRole)
	{
		CQt.QWidget_SetForegroundRole(this.nativePtr, foregroundRole);
	}
	
	public int64 ForegroundRole()
	{
		return CQt.QWidget_ForegroundRole(this.nativePtr);
	}
	
	public void* Font()
	{
		return CQt.QWidget_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QWidget_SetFont(this.nativePtr, font);
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
	
	public void SetCursor(void* cursor)
	{
		CQt.QWidget_SetCursor(this.nativePtr, cursor);
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
	
	public void SetMask(void* mask)
	{
		CQt.QWidget_SetMask(this.nativePtr, mask);
	}
	
	public void SetMaskWithMask(void* mask)
	{
		CQt.QWidget_SetMaskWithMask(this.nativePtr, mask);
	}
	
	public void Mask()
	{
		CQt.QWidget_Mask(this.nativePtr);
	}
	
	public void ClearMask()
	{
		CQt.QWidget_ClearMask(this.nativePtr);
	}
	
	public void RenderWithPainter(void* painter)
	{
		CQt.QWidget_RenderWithPainter(this.nativePtr, painter);
	}
	
	public void Grab()
	{
		CQt.QWidget_Grab(this.nativePtr);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QWidget_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QWidget_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QWidget_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QWidget_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void SetWindowTitle(libqt_string windowTitle)
	{
		CQt.QWidget_SetWindowTitle(this.nativePtr, windowTitle);
	}
	
	public void SetStyleSheet(libqt_string styleSheet)
	{
		CQt.QWidget_SetStyleSheet(this.nativePtr, styleSheet);
	}
	
	public libqt_string StyleSheet()
	{
		return CQt.QWidget_StyleSheet(this.nativePtr);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QWidget_WindowTitle(this.nativePtr);
	}
	
	public void SetWindowIcon(void* icon)
	{
		CQt.QWidget_SetWindowIcon(this.nativePtr, icon);
	}
	
	public void WindowIcon()
	{
		CQt.QWidget_WindowIcon(this.nativePtr);
	}
	
	public void SetWindowIconText(libqt_string windowIconText)
	{
		CQt.QWidget_SetWindowIconText(this.nativePtr, windowIconText);
	}
	
	public libqt_string WindowIconText()
	{
		return CQt.QWidget_WindowIconText(this.nativePtr);
	}
	
	public void SetWindowRole(libqt_string windowRole)
	{
		CQt.QWidget_SetWindowRole(this.nativePtr, windowRole);
	}
	
	public libqt_string WindowRole()
	{
		return CQt.QWidget_WindowRole(this.nativePtr);
	}
	
	public void SetWindowFilePath(libqt_string filePath)
	{
		CQt.QWidget_SetWindowFilePath(this.nativePtr, filePath);
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
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QWidget_SetToolTip(this.nativePtr, toolTip);
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
	
	public void SetStatusTip(libqt_string statusTip)
	{
		CQt.QWidget_SetStatusTip(this.nativePtr, statusTip);
	}
	
	public libqt_string StatusTip()
	{
		return CQt.QWidget_StatusTip(this.nativePtr);
	}
	
	public void SetWhatsThis(libqt_string whatsThis)
	{
		CQt.QWidget_SetWhatsThis(this.nativePtr, whatsThis);
	}
	
	public libqt_string WhatsThis()
	{
		return CQt.QWidget_WhatsThis(this.nativePtr);
	}
	
	public libqt_string AccessibleName()
	{
		return CQt.QWidget_AccessibleName(this.nativePtr);
	}
	
	public void SetAccessibleName(libqt_string name)
	{
		CQt.QWidget_SetAccessibleName(this.nativePtr, name);
	}
	
	public libqt_string AccessibleDescription()
	{
		return CQt.QWidget_AccessibleDescription(this.nativePtr);
	}
	
	public void SetAccessibleDescription(libqt_string description)
	{
		CQt.QWidget_SetAccessibleDescription(this.nativePtr, description);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QWidget_LayoutDirection(this.nativePtr);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void SetLocale(void* locale)
	{
		CQt.QWidget_SetLocale(this.nativePtr, locale);
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
		CQt.QWidget_SetFocusWithReason(this.nativePtr, reason);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public bool HasFocus()
	{
		return CQt.QWidget_HasFocus(this.nativePtr);
	}
	
	public static void SetTabOrder(void* param1, void* param2)
	{
		CQt.QWidget_SetTabOrder(param1, param2);
	}
	
	public void SetFocusProxy(void* focusProxy)
	{
		CQt.QWidget_SetFocusProxy(this.nativePtr, focusProxy);
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
		CQt.QWidget_SetContextMenuPolicy(this.nativePtr, policy);
	}
	
	public void GrabMouse()
	{
		CQt.QWidget_GrabMouse(this.nativePtr);
	}
	
	public void GrabMouseWithQCursor(void* param1)
	{
		CQt.QWidget_GrabMouseWithQCursor(this.nativePtr, param1);
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
	
	public int32 GrabShortcut(void* key)
	{
		return CQt.QWidget_GrabShortcut(this.nativePtr, key);
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
	
	public void UpdateWithQRect(void* param1)
	{
		CQt.QWidget_UpdateWithQRect(this.nativePtr, param1);
	}
	
	public void UpdateWithQRegion(void* param1)
	{
		CQt.QWidget_UpdateWithQRegion(this.nativePtr, param1);
	}
	
	public void Repaint2(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_Repaint2(this.nativePtr, x, y, w, h);
	}
	
	public void RepaintWithQRect(void* param1)
	{
		CQt.QWidget_RepaintWithQRect(this.nativePtr, param1);
	}
	
	public void RepaintWithQRegion(void* param1)
	{
		CQt.QWidget_RepaintWithQRegion(this.nativePtr, param1);
	}
	
	public virtual void SetVisible(bool visible)
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
	
	public void StackUnder(void* param1)
	{
		CQt.QWidget_StackUnder(this.nativePtr, param1);
	}
	
	public void Move(int32 x, int32 y)
	{
		CQt.QWidget_Move(this.nativePtr, x, y);
	}
	
	public void MoveWithQPoint(void* param1)
	{
		CQt.QWidget_MoveWithQPoint(this.nativePtr, param1);
	}
	
	public void Resize(int32 w, int32 h)
	{
		CQt.QWidget_Resize(this.nativePtr, w, h);
	}
	
	public void ResizeWithQSize(void* param1)
	{
		CQt.QWidget_ResizeWithQSize(this.nativePtr, param1);
	}
	
	public void SetGeometry(int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QWidget_SetGeometry(this.nativePtr, x, y, w, h);
	}
	
	public void SetGeometryWithGeometry(void* geometry)
	{
		CQt.QWidget_SetGeometryWithGeometry(this.nativePtr, geometry);
	}
	
	public libqt_string SaveGeometry()
	{
		return CQt.QWidget_SaveGeometry(this.nativePtr);
	}
	
	public bool RestoreGeometry(libqt_string geometry)
	{
		return CQt.QWidget_RestoreGeometry(this.nativePtr, geometry);
	}
	
	public void AdjustSize()
	{
		CQt.QWidget_AdjustSize(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QWidget_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* param1)
	{
		return CQt.QWidget_IsVisibleTo(this.nativePtr, param1);
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
	
	public void SetSizePolicy(void sizePolicy)
	{
		CQt.QWidget_SetSizePolicy(this.nativePtr, sizePolicy);
	}
	
	public void SetSizePolicy2(int64 horizontal, int64 vertical)
	{
		CQt.QWidget_SetSizePolicy2(this.nativePtr, horizontal, vertical);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QWidget_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual bool HasHeightForWidth()
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
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
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
	
	public void SetLayout(void* layout)
	{
		CQt.QWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void UpdateGeometry()
	{
		CQt.QWidget_UpdateGeometry(this.nativePtr);
	}
	
	public void SetParent(void* parent)
	{
		CQt.QWidget_SetParent(this.nativePtr, parent);
	}
	
	public void SetParent2(void* parent, int64 f)
	{
		CQt.QWidget_SetParent2(this.nativePtr, parent, f);
	}
	
	public void Scroll(int32 dx, int32 dy)
	{
		CQt.QWidget_Scroll(this.nativePtr, dx, dy);
	}
	
	public void Scroll2(int32 dx, int32 dy, void* param3)
	{
		CQt.QWidget_Scroll2(this.nativePtr, dx, dy, param3);
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
	
	public void AddAction(void* action)
	{
		CQt.QWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QWidget_Actions(this.nativePtr);
	}
	
	public void* AddActionWithText(libqt_string text)
	{
		return CQt.QWidget_AddActionWithText(this.nativePtr, text);
	}
	
	public void* AddAction2(void* icon, libqt_string text)
	{
		return CQt.QWidget_AddAction2(this.nativePtr, icon, text);
	}
	
	public void* AddAction3(libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction3(this.nativePtr, text, shortcut);
	}
	
	public void* AddAction4(void* icon, libqt_string text, void* shortcut)
	{
		return CQt.QWidget_AddAction4(this.nativePtr, icon, text, shortcut);
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
		CQt.QWidget_SetWindowFlag(this.nativePtr, param1);
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
	
	public void* ChildAtWithQPoint(void* p)
	{
		return CQt.QWidget_ChildAtWithQPoint(this.nativePtr, p);
	}
	
	public void SetAttribute(int64 param1)
	{
		CQt.QWidget_SetAttribute(this.nativePtr, param1);
	}
	
	public bool TestAttribute(int64 param1)
	{
		return CQt.QWidget_TestAttribute(this.nativePtr, param1);
	}
	
	public virtual void* PaintEngine()
	{
		return CQt.QWidget_PaintEngine(this.nativePtr);
	}
	
	public void EnsurePolished()
	{
		CQt.QWidget_EnsurePolished(this.nativePtr);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QWidget_IsAncestorOf(this.nativePtr, child);
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
	
	public void SetScreen(void* screen)
	{
		CQt.QWidget_SetScreen(this.nativePtr, screen);
	}
	
	public static void* CreateWindowContainer(void* window)
	{
		return CQt.QWidget_CreateWindowContainer(window);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QWidget_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QWidget_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void Render22(void* painter, void* targetOffset)
	{
		CQt.QWidget_Render22(this.nativePtr, painter, targetOffset);
	}
	
	public void Render32(void* painter, void* targetOffset, void* sourceRegion)
	{
		CQt.QWidget_Render32(this.nativePtr, painter, targetOffset, sourceRegion);
	}
	
	public void Render42(void* painter, void* targetOffset, void* sourceRegion, int64 renderFlags)
	{
		CQt.QWidget_Render42(this.nativePtr, painter, targetOffset, sourceRegion, renderFlags);
	}
	
	public void Grab1(void* rectangle)
	{
		CQt.QWidget_Grab1(this.nativePtr, rectangle);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QWidget_GrabGesture2(this.nativePtr, typeVal, flags);
	}
	
	public int32 GrabShortcut2(void* key, int64 context)
	{
		return CQt.QWidget_GrabShortcut2(this.nativePtr, key, context);
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
		CQt.QWidget_SetWindowFlag2(this.nativePtr, param1, on);
	}
	
	public void SetAttribute2(int64 param1, bool on)
	{
		CQt.QWidget_SetAttribute2(this.nativePtr, param1, on);
	}
	
	public static void* CreateWindowContainer2(void* window, void* parent)
	{
		return CQt.QWidget_CreateWindowContainer2(window, parent);
	}
	
	public static void* CreateWindowContainer3(void* window, void* parent, int64 flags)
	{
		return CQt.QWidget_CreateWindowContainer3(window, parent, flags);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
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
	public static extern void* QGraphicsView_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsView_Metacall")]
	public static extern int32 QGraphicsView_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsView_Tr")]
	public static extern libqt_string QGraphicsView_Tr(char8[] s);
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
	public static extern libqt_string QGraphicsView_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsView_Tr3")]
	public static extern libqt_string QGraphicsView_Tr3(char8[] s, char8[] c, int32 n);
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