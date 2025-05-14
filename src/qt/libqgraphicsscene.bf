using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsScene__ItemIndexMethod
{
	BspTreeIndex = 0,
	NoIndex = -1,
}
[AllowDuplicates]
public enum QGraphicsScene__SceneLayer
{
	ItemLayer = 1,
	BackgroundLayer = 2,
	ForegroundLayer = 4,
	AllLayers = 65535,
}
public interface IQGraphicsScene
{
	void* NativePtr { get; }
}
public struct QGraphicsScenePtr : IQGraphicsScene, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsScene_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsScene_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsScene_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsScene_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsScene_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsScene_Tr(s);
	}
	
	public void SceneRect()
	{
		CQt.QGraphicsScene_SceneRect(this.nativePtr);
	}
	
	public double Width()
	{
		return CQt.QGraphicsScene_Width(this.nativePtr);
	}
	
	public double Height()
	{
		return CQt.QGraphicsScene_Height(this.nativePtr);
	}
	
	public void SetSceneRect(IQRectF rect)
	{
		CQt.QGraphicsScene_SetSceneRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetSceneRect2(double x, double y, double w, double h)
	{
		CQt.QGraphicsScene_SetSceneRect2(this.nativePtr, x, y, w, h);
	}
	
	public void Render(IQPainter painter)
	{
		CQt.QGraphicsScene_Render(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr);
	}
	
	public int64 ItemIndexMethod()
	{
		return CQt.QGraphicsScene_ItemIndexMethod(this.nativePtr);
	}
	
	public void SetItemIndexMethod(int64 method)
	{
		CQt.QGraphicsScene_SetItemIndexMethod(this.nativePtr, (int64)method);
	}
	
	public int32 BspTreeDepth()
	{
		return CQt.QGraphicsScene_BspTreeDepth(this.nativePtr);
	}
	
	public void SetBspTreeDepth(int32 depth)
	{
		CQt.QGraphicsScene_SetBspTreeDepth(this.nativePtr, depth);
	}
	
	public void ItemsBoundingRect()
	{
		CQt.QGraphicsScene_ItemsBoundingRect(this.nativePtr);
	}
	
	public void*[] Items()
	{
		return CQt.QGraphicsScene_Items(this.nativePtr);
	}
	
	public void*[] ItemsWithPos(IQPointF pos)
	{
		return CQt.QGraphicsScene_ItemsWithPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void*[] ItemsWithRect(IQRectF rect)
	{
		return CQt.QGraphicsScene_ItemsWithRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void*[] ItemsWithPath(IQPainterPath path)
	{
		return CQt.QGraphicsScene_ItemsWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void*[] Items2(double x, double y, double w, double h, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items2(this.nativePtr, x, y, w, h, (int64)mode, (int64)order);
	}
	
	public void*[] CollidingItems(IQGraphicsItem item)
	{
		return CQt.QGraphicsScene_CollidingItems(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ItemAt(IQPointF pos, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_ItemAt(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void* ItemAt2(double x, double y, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_ItemAt2(this.nativePtr, x, y, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void*[] SelectedItems()
	{
		return CQt.QGraphicsScene_SelectedItems(this.nativePtr);
	}
	
	public void SelectionArea()
	{
		CQt.QGraphicsScene_SelectionArea(this.nativePtr);
	}
	
	public void SetSelectionArea(IQPainterPath path, IQTransform deviceTransform)
	{
		CQt.QGraphicsScene_SetSelectionArea(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void SetSelectionAreaWithPath(IQPainterPath path)
	{
		CQt.QGraphicsScene_SetSelectionAreaWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void* CreateItemGroup(IQGraphicsItem[] items)
	{
		return CQt.QGraphicsScene_CreateItemGroup(this.nativePtr, null);
	}
	
	public void DestroyItemGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsScene_DestroyItemGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public void AddItem(IQGraphicsItem item)
	{
		CQt.QGraphicsScene_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* AddEllipse(IQRectF rect)
	{
		return CQt.QGraphicsScene_AddEllipse(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void* AddLine(IQLineF line)
	{
		return CQt.QGraphicsScene_AddLine(this.nativePtr, (line == default || line.NativePtr == default) ? default : line.NativePtr);
	}
	
	public void* AddPath(IQPainterPath path)
	{
		return CQt.QGraphicsScene_AddPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void* AddPixmap(IQPixmap pixmap)
	{
		return CQt.QGraphicsScene_AddPixmap(this.nativePtr, (pixmap == default || pixmap.NativePtr == default) ? default : pixmap.NativePtr);
	}
	
	public void* AddRect(IQRectF rect)
	{
		return CQt.QGraphicsScene_AddRect(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void* AddText(String text)
	{
		return CQt.QGraphicsScene_AddText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddSimpleText(String text)
	{
		return CQt.QGraphicsScene_AddSimpleText(this.nativePtr, libqt_string(text));
	}
	
	public void* AddWidget(IQWidget widget)
	{
		return CQt.QGraphicsScene_AddWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void* AddEllipse2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsScene_AddEllipse2(this.nativePtr, x, y, w, h);
	}
	
	public void* AddLine2(double x1, double y1, double x2, double y2)
	{
		return CQt.QGraphicsScene_AddLine2(this.nativePtr, x1, y1, x2, y2);
	}
	
	public void* AddRect2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsScene_AddRect2(this.nativePtr, x, y, w, h);
	}
	
	public void RemoveItem(IQGraphicsItem item)
	{
		CQt.QGraphicsScene_RemoveItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsScene_FocusItem(this.nativePtr);
	}
	
	public void SetFocusItem(IQGraphicsItem item)
	{
		CQt.QGraphicsScene_SetFocusItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsScene_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsScene_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsScene_ClearFocus(this.nativePtr);
	}
	
	public void SetStickyFocus(bool enabled)
	{
		CQt.QGraphicsScene_SetStickyFocus(this.nativePtr, enabled);
	}
	
	public bool StickyFocus()
	{
		return CQt.QGraphicsScene_StickyFocus(this.nativePtr);
	}
	
	public void* MouseGrabberItem()
	{
		return CQt.QGraphicsScene_MouseGrabberItem(this.nativePtr);
	}
	
	public void BackgroundBrush()
	{
		CQt.QGraphicsScene_BackgroundBrush(this.nativePtr);
	}
	
	public void SetBackgroundBrush(IQBrush brush)
	{
		CQt.QGraphicsScene_SetBackgroundBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void ForegroundBrush()
	{
		CQt.QGraphicsScene_ForegroundBrush(this.nativePtr);
	}
	
	public void SetForegroundBrush(IQBrush brush)
	{
		CQt.QGraphicsScene_SetForegroundBrush(this.nativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsScene_InputMethodQuery(this.nativePtr, (int64)query);
	}
	
	public void*[] Views()
	{
		return CQt.QGraphicsScene_Views(this.nativePtr);
	}
	
	public void Update(double x, double y, double w, double h)
	{
		CQt.QGraphicsScene_Update(this.nativePtr, x, y, w, h);
	}
	
	public void Invalidate(double x, double y, double w, double h)
	{
		CQt.QGraphicsScene_Invalidate(this.nativePtr, x, y, w, h);
	}
	
	public void* Style()
	{
		return CQt.QGraphicsScene_Style(this.nativePtr);
	}
	
	public void SetStyle(IQStyle style)
	{
		CQt.QGraphicsScene_SetStyle(this.nativePtr, (style == default || style.NativePtr == default) ? default : style.NativePtr);
	}
	
	public void Font()
	{
		CQt.QGraphicsScene_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QGraphicsScene_SetFont(this.nativePtr, (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void Palette()
	{
		CQt.QGraphicsScene_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QGraphicsScene_SetPalette(this.nativePtr, (palette == default || palette.NativePtr == default) ? default : palette.NativePtr);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsScene_IsActive(this.nativePtr);
	}
	
	public void* ActivePanel()
	{
		return CQt.QGraphicsScene_ActivePanel(this.nativePtr);
	}
	
	public void SetActivePanel(IQGraphicsItem item)
	{
		CQt.QGraphicsScene_SetActivePanel(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ActiveWindow()
	{
		return CQt.QGraphicsScene_ActiveWindow(this.nativePtr);
	}
	
	public void SetActiveWindow(IQGraphicsWidget widget)
	{
		CQt.QGraphicsScene_SetActiveWindow(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool SendEvent(IQGraphicsItem item, IQEvent event)
	{
		return CQt.QGraphicsScene_SendEvent(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public double MinimumRenderSize()
	{
		return CQt.QGraphicsScene_MinimumRenderSize(this.nativePtr);
	}
	
	public void SetMinimumRenderSize(double minSize)
	{
		CQt.QGraphicsScene_SetMinimumRenderSize(this.nativePtr, minSize);
	}
	
	public bool FocusOnTouch()
	{
		return CQt.QGraphicsScene_FocusOnTouch(this.nativePtr);
	}
	
	public void SetFocusOnTouch(bool enabled)
	{
		CQt.QGraphicsScene_SetFocusOnTouch(this.nativePtr, enabled);
	}
	
	public void Update2()
	{
		CQt.QGraphicsScene_Update2(this.nativePtr);
	}
	
	public void Invalidate2()
	{
		CQt.QGraphicsScene_Invalidate2(this.nativePtr);
	}
	
	public void Advance()
	{
		CQt.QGraphicsScene_Advance(this.nativePtr);
	}
	
	public void ClearSelection()
	{
		CQt.QGraphicsScene_ClearSelection(this.nativePtr);
	}
	
	public void Clear()
	{
		CQt.QGraphicsScene_Clear(this.nativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QGraphicsScene_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QGraphicsScene_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		CQt.QGraphicsScene_ContextMenuEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsScene_DragEnterEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsScene_DragMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsScene_DragLeaveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		CQt.QGraphicsScene_DropEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusInEvent(IQFocusEvent event)
	{
		CQt.QGraphicsScene_FocusInEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QGraphicsScene_FocusOutEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void HelpEvent(IQGraphicsSceneHelpEvent event)
	{
		CQt.QGraphicsScene_HelpEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyPressEvent(IQKeyEvent event)
	{
		CQt.QGraphicsScene_KeyPressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void KeyReleaseEvent(IQKeyEvent event)
	{
		CQt.QGraphicsScene_KeyReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsScene_MousePressEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsScene_MouseMoveEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsScene_MouseReleaseEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		CQt.QGraphicsScene_MouseDoubleClickEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void WheelEvent(IQGraphicsSceneWheelEvent event)
	{
		CQt.QGraphicsScene_WheelEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void InputMethodEvent(IQInputMethodEvent event)
	{
		CQt.QGraphicsScene_InputMethodEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void DrawBackground(IQPainter painter, IQRectF rect)
	{
		CQt.QGraphicsScene_DrawBackground(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void DrawForeground(IQPainter painter, IQRectF rect)
	{
		CQt.QGraphicsScene_DrawForeground(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsScene_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsScene_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsScene_Tr3(s, c, n);
	}
	
	public void Render2(IQPainter painter, IQRectF target)
	{
		CQt.QGraphicsScene_Render2(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr);
	}
	
	public void Render3(IQPainter painter, IQRectF target, IQRectF source)
	{
		CQt.QGraphicsScene_Render3(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr);
	}
	
	public void Render4(IQPainter painter, IQRectF target, IQRectF source, int64 aspectRatioMode)
	{
		CQt.QGraphicsScene_Render4(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (target == default || target.NativePtr == default) ? default : target.NativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr, (int64)aspectRatioMode);
	}
	
	public void*[] Items1(int64 order)
	{
		return CQt.QGraphicsScene_Items1(this.nativePtr, (int64)order);
	}
	
	public void*[] Items22(IQPointF pos, int64 mode)
	{
		return CQt.QGraphicsScene_Items22(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (int64)mode);
	}
	
	public void*[] Items3(IQPointF pos, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items3(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (int64)mode, (int64)order);
	}
	
	public void*[] Items4(IQPointF pos, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_Items4(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (int64)mode, (int64)order, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void*[] Items23(IQRectF rect, int64 mode)
	{
		return CQt.QGraphicsScene_Items23(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)mode);
	}
	
	public void*[] Items32(IQRectF rect, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items32(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)mode, (int64)order);
	}
	
	public void*[] Items42(IQRectF rect, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_Items42(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (int64)mode, (int64)order, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void*[] Items25(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsScene_Items25(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
	}
	
	public void*[] Items34(IQPainterPath path, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items34(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode, (int64)order);
	}
	
	public void*[] Items44(IQPainterPath path, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_Items44(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode, (int64)order, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void*[] Items7(double x, double y, double w, double h, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return CQt.QGraphicsScene_Items7(this.nativePtr, x, y, w, h, (int64)mode, (int64)order, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void*[] CollidingItems2(IQGraphicsItem item, int64 mode)
	{
		return CQt.QGraphicsScene_CollidingItems2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (int64)mode);
	}
	
	public void SetSelectionArea2(IQPainterPath path, int64 selectionOperation)
	{
		CQt.QGraphicsScene_SetSelectionArea2(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)selectionOperation);
	}
	
	public void SetSelectionArea3(IQPainterPath path, int64 selectionOperation, int64 mode)
	{
		CQt.QGraphicsScene_SetSelectionArea3(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)selectionOperation, (int64)mode);
	}
	
	public void SetSelectionArea4(IQPainterPath path, int64 selectionOperation, int64 mode, IQTransform deviceTransform)
	{
		CQt.QGraphicsScene_SetSelectionArea4(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)selectionOperation, (int64)mode, (deviceTransform == default || deviceTransform.NativePtr == default) ? default : deviceTransform.NativePtr);
	}
	
	public void* AddEllipse22(IQRectF rect, IQPen pen)
	{
		return CQt.QGraphicsScene_AddEllipse22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddEllipse3(IQRectF rect, IQPen pen, IQBrush brush)
	{
		return CQt.QGraphicsScene_AddEllipse3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* AddLine22(IQLineF line, IQPen pen)
	{
		return CQt.QGraphicsScene_AddLine22(this.nativePtr, (line == default || line.NativePtr == default) ? default : line.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddPath2(IQPainterPath path, IQPen pen)
	{
		return CQt.QGraphicsScene_AddPath2(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddPath3(IQPainterPath path, IQPen pen, IQBrush brush)
	{
		return CQt.QGraphicsScene_AddPath3(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* AddRect22(IQRectF rect, IQPen pen)
	{
		return CQt.QGraphicsScene_AddRect22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddRect3(IQRectF rect, IQPen pen, IQBrush brush)
	{
		return CQt.QGraphicsScene_AddRect3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* AddText2(String text, IQFont font)
	{
		return CQt.QGraphicsScene_AddText2(this.nativePtr, libqt_string(text), (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void* AddSimpleText2(String text, IQFont font)
	{
		return CQt.QGraphicsScene_AddSimpleText2(this.nativePtr, libqt_string(text), (font == default || font.NativePtr == default) ? default : font.NativePtr);
	}
	
	public void* AddWidget2(IQWidget widget, int64 wFlags)
	{
		return CQt.QGraphicsScene_AddWidget2(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, wFlags);
	}
	
	public void* AddEllipse5(double x, double y, double w, double h, IQPen pen)
	{
		return CQt.QGraphicsScene_AddEllipse5(this.nativePtr, x, y, w, h, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddEllipse6(double x, double y, double w, double h, IQPen pen, IQBrush brush)
	{
		return CQt.QGraphicsScene_AddEllipse6(this.nativePtr, x, y, w, h, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void* AddLine5(double x1, double y1, double x2, double y2, IQPen pen)
	{
		return CQt.QGraphicsScene_AddLine5(this.nativePtr, x1, y1, x2, y2, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddRect5(double x, double y, double w, double h, IQPen pen)
	{
		return CQt.QGraphicsScene_AddRect5(this.nativePtr, x, y, w, h, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr);
	}
	
	public void* AddRect6(double x, double y, double w, double h, IQPen pen, IQBrush brush)
	{
		return CQt.QGraphicsScene_AddRect6(this.nativePtr, x, y, w, h, (pen == default || pen.NativePtr == default) ? default : pen.NativePtr, (brush == default || brush.NativePtr == default) ? default : brush.NativePtr);
	}
	
	public void SetFocusItem2(IQGraphicsItem item, int64 focusReason)
	{
		CQt.QGraphicsScene_SetFocusItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (int64)focusReason);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsScene_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void Invalidate5(double x, double y, double w, double h, int64 layers)
	{
		CQt.QGraphicsScene_Invalidate5(this.nativePtr, x, y, w, h, layers);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsScene_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Invalidate1(IQRectF rect)
	{
		CQt.QGraphicsScene_Invalidate1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Invalidate22(IQRectF rect, int64 layers)
	{
		CQt.QGraphicsScene_Invalidate22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, layers);
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
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
	
}
public class QGraphicsScene
{
	public QGraphicsScenePtr handle;
	
	public static implicit operator QGraphicsScenePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsScenePtr.New();
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
		return QGraphicsScenePtr.Tr(s);
	}
	
	public void SceneRect()
	{
		this.handle.SceneRect();
	}
	
	public double Width()
	{
		return this.handle.Width();
	}
	
	public double Height()
	{
		return this.handle.Height();
	}
	
	public void SetSceneRect(IQRectF rect)
	{
		this.handle.SetSceneRect(rect);
	}
	
	public void SetSceneRect2(double x, double y, double w, double h)
	{
		this.handle.SetSceneRect2(x, y, w, h);
	}
	
	public void Render(IQPainter painter)
	{
		this.handle.Render(painter);
	}
	
	public int64 ItemIndexMethod()
	{
		return this.handle.ItemIndexMethod();
	}
	
	public void SetItemIndexMethod(int64 method)
	{
		this.handle.SetItemIndexMethod(method);
	}
	
	public int32 BspTreeDepth()
	{
		return this.handle.BspTreeDepth();
	}
	
	public void SetBspTreeDepth(int32 depth)
	{
		this.handle.SetBspTreeDepth(depth);
	}
	
	public void ItemsBoundingRect()
	{
		this.handle.ItemsBoundingRect();
	}
	
	public void*[] Items()
	{
		return this.handle.Items();
	}
	
	public void*[] ItemsWithPos(IQPointF pos)
	{
		return this.handle.ItemsWithPos(pos);
	}
	
	public void*[] ItemsWithRect(IQRectF rect)
	{
		return this.handle.ItemsWithRect(rect);
	}
	
	public void*[] ItemsWithPath(IQPainterPath path)
	{
		return this.handle.ItemsWithPath(path);
	}
	
	public void*[] Items2(double x, double y, double w, double h, int64 mode, int64 order)
	{
		return this.handle.Items2(x, y, w, h, mode, order);
	}
	
	public void*[] CollidingItems(IQGraphicsItem item)
	{
		return this.handle.CollidingItems(item);
	}
	
	public void* ItemAt(IQPointF pos, IQTransform deviceTransform)
	{
		return this.handle.ItemAt(pos, deviceTransform);
	}
	
	public void* ItemAt2(double x, double y, IQTransform deviceTransform)
	{
		return this.handle.ItemAt2(x, y, deviceTransform);
	}
	
	public void*[] SelectedItems()
	{
		return this.handle.SelectedItems();
	}
	
	public void SelectionArea()
	{
		this.handle.SelectionArea();
	}
	
	public void SetSelectionArea(IQPainterPath path, IQTransform deviceTransform)
	{
		this.handle.SetSelectionArea(path, deviceTransform);
	}
	
	public void SetSelectionAreaWithPath(IQPainterPath path)
	{
		this.handle.SetSelectionAreaWithPath(path);
	}
	
	public void* CreateItemGroup(IQGraphicsItem[] items)
	{
		return this.handle.CreateItemGroup(null);
	}
	
	public void DestroyItemGroup(IQGraphicsItemGroup group)
	{
		this.handle.DestroyItemGroup(group);
	}
	
	public void AddItem(IQGraphicsItem item)
	{
		this.handle.AddItem(item);
	}
	
	public void* AddEllipse(IQRectF rect)
	{
		return this.handle.AddEllipse(rect);
	}
	
	public void* AddLine(IQLineF line)
	{
		return this.handle.AddLine(line);
	}
	
	public void* AddPath(IQPainterPath path)
	{
		return this.handle.AddPath(path);
	}
	
	public void* AddPixmap(IQPixmap pixmap)
	{
		return this.handle.AddPixmap(pixmap);
	}
	
	public void* AddRect(IQRectF rect)
	{
		return this.handle.AddRect(rect);
	}
	
	public void* AddText(String text)
	{
		return this.handle.AddText(text);
	}
	
	public void* AddSimpleText(String text)
	{
		return this.handle.AddSimpleText(text);
	}
	
	public void* AddWidget(IQWidget widget)
	{
		return this.handle.AddWidget(widget);
	}
	
	public void* AddEllipse2(double x, double y, double w, double h)
	{
		return this.handle.AddEllipse2(x, y, w, h);
	}
	
	public void* AddLine2(double x1, double y1, double x2, double y2)
	{
		return this.handle.AddLine2(x1, y1, x2, y2);
	}
	
	public void* AddRect2(double x, double y, double w, double h)
	{
		return this.handle.AddRect2(x, y, w, h);
	}
	
	public void RemoveItem(IQGraphicsItem item)
	{
		this.handle.RemoveItem(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void SetFocusItem(IQGraphicsItem item)
	{
		this.handle.SetFocusItem(item);
	}
	
	public bool HasFocus()
	{
		return this.handle.HasFocus();
	}
	
	public void SetFocus()
	{
		this.handle.SetFocus();
	}
	
	public void ClearFocus()
	{
		this.handle.ClearFocus();
	}
	
	public void SetStickyFocus(bool enabled)
	{
		this.handle.SetStickyFocus(enabled);
	}
	
	public bool StickyFocus()
	{
		return this.handle.StickyFocus();
	}
	
	public void* MouseGrabberItem()
	{
		return this.handle.MouseGrabberItem();
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
	
	public virtual void InputMethodQuery(int64 query)
	{
		this.handle.InputMethodQuery(query);
	}
	
	public void*[] Views()
	{
		return this.handle.Views();
	}
	
	public void Update(double x, double y, double w, double h)
	{
		this.handle.Update(x, y, w, h);
	}
	
	public void Invalidate(double x, double y, double w, double h)
	{
		this.handle.Invalidate(x, y, w, h);
	}
	
	public void* Style()
	{
		return this.handle.Style();
	}
	
	public void SetStyle(IQStyle style)
	{
		this.handle.SetStyle(style);
	}
	
	public void Font()
	{
		this.handle.Font();
	}
	
	public void SetFont(IQFont font)
	{
		this.handle.SetFont(font);
	}
	
	public void Palette()
	{
		this.handle.Palette();
	}
	
	public void SetPalette(IQPalette palette)
	{
		this.handle.SetPalette(palette);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void* ActivePanel()
	{
		return this.handle.ActivePanel();
	}
	
	public void SetActivePanel(IQGraphicsItem item)
	{
		this.handle.SetActivePanel(item);
	}
	
	public void* ActiveWindow()
	{
		return this.handle.ActiveWindow();
	}
	
	public void SetActiveWindow(IQGraphicsWidget widget)
	{
		this.handle.SetActiveWindow(widget);
	}
	
	public bool SendEvent(IQGraphicsItem item, IQEvent event)
	{
		return this.handle.SendEvent(item, event);
	}
	
	public double MinimumRenderSize()
	{
		return this.handle.MinimumRenderSize();
	}
	
	public void SetMinimumRenderSize(double minSize)
	{
		this.handle.SetMinimumRenderSize(minSize);
	}
	
	public bool FocusOnTouch()
	{
		return this.handle.FocusOnTouch();
	}
	
	public void SetFocusOnTouch(bool enabled)
	{
		this.handle.SetFocusOnTouch(enabled);
	}
	
	public void Update2()
	{
		this.handle.Update2();
	}
	
	public void Invalidate2()
	{
		this.handle.Invalidate2();
	}
	
	public void Advance()
	{
		this.handle.Advance();
	}
	
	public void ClearSelection()
	{
		this.handle.ClearSelection();
	}
	
	public void Clear()
	{
		this.handle.Clear();
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public virtual void ContextMenuEvent(IQGraphicsSceneContextMenuEvent event)
	{
		this.handle.ContextMenuEvent(event);
	}
	
	public virtual void DragEnterEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragEnterEvent(event);
	}
	
	public virtual void DragMoveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragMoveEvent(event);
	}
	
	public virtual void DragLeaveEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DragLeaveEvent(event);
	}
	
	public virtual void DropEvent(IQGraphicsSceneDragDropEvent event)
	{
		this.handle.DropEvent(event);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		this.handle.FocusInEvent(event);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		this.handle.FocusOutEvent(event);
	}
	
	public virtual void HelpEvent(IQGraphicsSceneHelpEvent event)
	{
		this.handle.HelpEvent(event);
	}
	
	public virtual void KeyPressEvent(IQKeyEvent event)
	{
		this.handle.KeyPressEvent(event);
	}
	
	public virtual void KeyReleaseEvent(IQKeyEvent event)
	{
		this.handle.KeyReleaseEvent(event);
	}
	
	public virtual void MousePressEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MousePressEvent(event);
	}
	
	public virtual void MouseMoveEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseMoveEvent(event);
	}
	
	public virtual void MouseReleaseEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseReleaseEvent(event);
	}
	
	public virtual void MouseDoubleClickEvent(IQGraphicsSceneMouseEvent event)
	{
		this.handle.MouseDoubleClickEvent(event);
	}
	
	public virtual void WheelEvent(IQGraphicsSceneWheelEvent event)
	{
		this.handle.WheelEvent(event);
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
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return this.handle.FocusNextPrevChild(next);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsScenePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsScenePtr.Tr3(s, c, n);
	}
	
	public void Render2(IQPainter painter, IQRectF target)
	{
		this.handle.Render2(painter, target);
	}
	
	public void Render3(IQPainter painter, IQRectF target, IQRectF source)
	{
		this.handle.Render3(painter, target, source);
	}
	
	public void Render4(IQPainter painter, IQRectF target, IQRectF source, int64 aspectRatioMode)
	{
		this.handle.Render4(painter, target, source, aspectRatioMode);
	}
	
	public void*[] Items1(int64 order)
	{
		return this.handle.Items1(order);
	}
	
	public void*[] Items22(IQPointF pos, int64 mode)
	{
		return this.handle.Items22(pos, mode);
	}
	
	public void*[] Items3(IQPointF pos, int64 mode, int64 order)
	{
		return this.handle.Items3(pos, mode, order);
	}
	
	public void*[] Items4(IQPointF pos, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return this.handle.Items4(pos, mode, order, deviceTransform);
	}
	
	public void*[] Items23(IQRectF rect, int64 mode)
	{
		return this.handle.Items23(rect, mode);
	}
	
	public void*[] Items32(IQRectF rect, int64 mode, int64 order)
	{
		return this.handle.Items32(rect, mode, order);
	}
	
	public void*[] Items42(IQRectF rect, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return this.handle.Items42(rect, mode, order, deviceTransform);
	}
	
	public void*[] Items25(IQPainterPath path, int64 mode)
	{
		return this.handle.Items25(path, mode);
	}
	
	public void*[] Items34(IQPainterPath path, int64 mode, int64 order)
	{
		return this.handle.Items34(path, mode, order);
	}
	
	public void*[] Items44(IQPainterPath path, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return this.handle.Items44(path, mode, order, deviceTransform);
	}
	
	public void*[] Items7(double x, double y, double w, double h, int64 mode, int64 order, IQTransform deviceTransform)
	{
		return this.handle.Items7(x, y, w, h, mode, order, deviceTransform);
	}
	
	public void*[] CollidingItems2(IQGraphicsItem item, int64 mode)
	{
		return this.handle.CollidingItems2(item, mode);
	}
	
	public void SetSelectionArea2(IQPainterPath path, int64 selectionOperation)
	{
		this.handle.SetSelectionArea2(path, selectionOperation);
	}
	
	public void SetSelectionArea3(IQPainterPath path, int64 selectionOperation, int64 mode)
	{
		this.handle.SetSelectionArea3(path, selectionOperation, mode);
	}
	
	public void SetSelectionArea4(IQPainterPath path, int64 selectionOperation, int64 mode, IQTransform deviceTransform)
	{
		this.handle.SetSelectionArea4(path, selectionOperation, mode, deviceTransform);
	}
	
	public void* AddEllipse22(IQRectF rect, IQPen pen)
	{
		return this.handle.AddEllipse22(rect, pen);
	}
	
	public void* AddEllipse3(IQRectF rect, IQPen pen, IQBrush brush)
	{
		return this.handle.AddEllipse3(rect, pen, brush);
	}
	
	public void* AddLine22(IQLineF line, IQPen pen)
	{
		return this.handle.AddLine22(line, pen);
	}
	
	public void* AddPath2(IQPainterPath path, IQPen pen)
	{
		return this.handle.AddPath2(path, pen);
	}
	
	public void* AddPath3(IQPainterPath path, IQPen pen, IQBrush brush)
	{
		return this.handle.AddPath3(path, pen, brush);
	}
	
	public void* AddRect22(IQRectF rect, IQPen pen)
	{
		return this.handle.AddRect22(rect, pen);
	}
	
	public void* AddRect3(IQRectF rect, IQPen pen, IQBrush brush)
	{
		return this.handle.AddRect3(rect, pen, brush);
	}
	
	public void* AddText2(String text, IQFont font)
	{
		return this.handle.AddText2(text, font);
	}
	
	public void* AddSimpleText2(String text, IQFont font)
	{
		return this.handle.AddSimpleText2(text, font);
	}
	
	public void* AddWidget2(IQWidget widget, int64 wFlags)
	{
		return this.handle.AddWidget2(widget, wFlags);
	}
	
	public void* AddEllipse5(double x, double y, double w, double h, IQPen pen)
	{
		return this.handle.AddEllipse5(x, y, w, h, pen);
	}
	
	public void* AddEllipse6(double x, double y, double w, double h, IQPen pen, IQBrush brush)
	{
		return this.handle.AddEllipse6(x, y, w, h, pen, brush);
	}
	
	public void* AddLine5(double x1, double y1, double x2, double y2, IQPen pen)
	{
		return this.handle.AddLine5(x1, y1, x2, y2, pen);
	}
	
	public void* AddRect5(double x, double y, double w, double h, IQPen pen)
	{
		return this.handle.AddRect5(x, y, w, h, pen);
	}
	
	public void* AddRect6(double x, double y, double w, double h, IQPen pen, IQBrush brush)
	{
		return this.handle.AddRect6(x, y, w, h, pen, brush);
	}
	
	public void SetFocusItem2(IQGraphicsItem item, int64 focusReason)
	{
		this.handle.SetFocusItem2(item, focusReason);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void Invalidate5(double x, double y, double w, double h, int64 layers)
	{
		this.handle.Invalidate5(x, y, w, h, layers);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Invalidate1(IQRectF rect)
	{
		this.handle.Invalidate1(rect);
	}
	
	public void Invalidate22(IQRectF rect, int64 layers)
	{
		this.handle.Invalidate22(rect, layers);
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
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
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
		QGraphicsScenePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsScenePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsScenePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGraphicsScenePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsScene_new")]
	public static extern void* QGraphicsScene_new();
	[LinkName("QGraphicsScene_new2")]
	public static extern void* QGraphicsScene_new2(void* sceneRect);
	[LinkName("QGraphicsScene_new3")]
	public static extern void* QGraphicsScene_new3(double x, double y, double width, double height);
	[LinkName("QGraphicsScene_new4")]
	public static extern void* QGraphicsScene_new4(void* parent);
	[LinkName("QGraphicsScene_new5")]
	public static extern void* QGraphicsScene_new5(void* sceneRect, void* parent);
	[LinkName("QGraphicsScene_new6")]
	public static extern void* QGraphicsScene_new6(double x, double y, double width, double height, void* parent);
	[LinkName("QGraphicsScene_MetaObject")]
	public static extern void* QGraphicsScene_MetaObject(void* c_this);
	[LinkName("QGraphicsScene_Metacast")]
	public static extern void* QGraphicsScene_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsScene_Metacall")]
	public static extern int32 QGraphicsScene_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsScene_Tr")]
	public static extern libqt_string QGraphicsScene_Tr(char8* s);
	[LinkName("QGraphicsScene_SceneRect")]
	public static extern void QGraphicsScene_SceneRect(void* c_this);
	[LinkName("QGraphicsScene_Width")]
	public static extern double QGraphicsScene_Width(void* c_this);
	[LinkName("QGraphicsScene_Height")]
	public static extern double QGraphicsScene_Height(void* c_this);
	[LinkName("QGraphicsScene_SetSceneRect")]
	public static extern void QGraphicsScene_SetSceneRect(void* c_this, void* rect);
	[LinkName("QGraphicsScene_SetSceneRect2")]
	public static extern void QGraphicsScene_SetSceneRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Render")]
	public static extern void QGraphicsScene_Render(void* c_this, void* painter);
	[LinkName("QGraphicsScene_ItemIndexMethod")]
	public static extern int64 QGraphicsScene_ItemIndexMethod(void* c_this);
	[LinkName("QGraphicsScene_SetItemIndexMethod")]
	public static extern void QGraphicsScene_SetItemIndexMethod(void* c_this, int64 method);
	[LinkName("QGraphicsScene_BspTreeDepth")]
	public static extern int32 QGraphicsScene_BspTreeDepth(void* c_this);
	[LinkName("QGraphicsScene_SetBspTreeDepth")]
	public static extern void QGraphicsScene_SetBspTreeDepth(void* c_this, int32 depth);
	[LinkName("QGraphicsScene_ItemsBoundingRect")]
	public static extern void QGraphicsScene_ItemsBoundingRect(void* c_this);
	[LinkName("QGraphicsScene_Items")]
	public static extern void*[] QGraphicsScene_Items(void* c_this);
	[LinkName("QGraphicsScene_ItemsWithPos")]
	public static extern void*[] QGraphicsScene_ItemsWithPos(void* c_this, void* pos);
	[LinkName("QGraphicsScene_ItemsWithRect")]
	public static extern void*[] QGraphicsScene_ItemsWithRect(void* c_this, void* rect);
	[LinkName("QGraphicsScene_ItemsWithPath")]
	public static extern void*[] QGraphicsScene_ItemsWithPath(void* c_this, void* path);
	[LinkName("QGraphicsScene_Items2")]
	public static extern void*[] QGraphicsScene_Items2(void* c_this, double x, double y, double w, double h, int64 mode, int64 order);
	[LinkName("QGraphicsScene_CollidingItems")]
	public static extern void*[] QGraphicsScene_CollidingItems(void* c_this, void* item);
	[LinkName("QGraphicsScene_ItemAt")]
	public static extern void* QGraphicsScene_ItemAt(void* c_this, void* pos, void* deviceTransform);
	[LinkName("QGraphicsScene_ItemAt2")]
	public static extern void* QGraphicsScene_ItemAt2(void* c_this, double x, double y, void* deviceTransform);
	[LinkName("QGraphicsScene_SelectedItems")]
	public static extern void*[] QGraphicsScene_SelectedItems(void* c_this);
	[LinkName("QGraphicsScene_SelectionArea")]
	public static extern void QGraphicsScene_SelectionArea(void* c_this);
	[LinkName("QGraphicsScene_SetSelectionArea")]
	public static extern void QGraphicsScene_SetSelectionArea(void* c_this, void* path, void* deviceTransform);
	[LinkName("QGraphicsScene_SetSelectionAreaWithPath")]
	public static extern void QGraphicsScene_SetSelectionAreaWithPath(void* c_this, void* path);
	[LinkName("QGraphicsScene_CreateItemGroup")]
	public static extern void* QGraphicsScene_CreateItemGroup(void* c_this, void*[] items);
	[LinkName("QGraphicsScene_DestroyItemGroup")]
	public static extern void QGraphicsScene_DestroyItemGroup(void* c_this, void* group);
	[LinkName("QGraphicsScene_AddItem")]
	public static extern void QGraphicsScene_AddItem(void* c_this, void* item);
	[LinkName("QGraphicsScene_AddEllipse")]
	public static extern void* QGraphicsScene_AddEllipse(void* c_this, void* rect);
	[LinkName("QGraphicsScene_AddLine")]
	public static extern void* QGraphicsScene_AddLine(void* c_this, void* line);
	[LinkName("QGraphicsScene_AddPath")]
	public static extern void* QGraphicsScene_AddPath(void* c_this, void* path);
	[LinkName("QGraphicsScene_AddPixmap")]
	public static extern void* QGraphicsScene_AddPixmap(void* c_this, void* pixmap);
	[LinkName("QGraphicsScene_AddRect")]
	public static extern void* QGraphicsScene_AddRect(void* c_this, void* rect);
	[LinkName("QGraphicsScene_AddText")]
	public static extern void* QGraphicsScene_AddText(void* c_this, libqt_string text);
	[LinkName("QGraphicsScene_AddSimpleText")]
	public static extern void* QGraphicsScene_AddSimpleText(void* c_this, libqt_string text);
	[LinkName("QGraphicsScene_AddWidget")]
	public static extern void* QGraphicsScene_AddWidget(void* c_this, void* widget);
	[LinkName("QGraphicsScene_AddEllipse2")]
	public static extern void* QGraphicsScene_AddEllipse2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_AddLine2")]
	public static extern void* QGraphicsScene_AddLine2(void* c_this, double x1, double y1, double x2, double y2);
	[LinkName("QGraphicsScene_AddRect2")]
	public static extern void* QGraphicsScene_AddRect2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_RemoveItem")]
	public static extern void QGraphicsScene_RemoveItem(void* c_this, void* item);
	[LinkName("QGraphicsScene_FocusItem")]
	public static extern void* QGraphicsScene_FocusItem(void* c_this);
	[LinkName("QGraphicsScene_SetFocusItem")]
	public static extern void QGraphicsScene_SetFocusItem(void* c_this, void* item);
	[LinkName("QGraphicsScene_HasFocus")]
	public static extern bool QGraphicsScene_HasFocus(void* c_this);
	[LinkName("QGraphicsScene_SetFocus")]
	public static extern void QGraphicsScene_SetFocus(void* c_this);
	[LinkName("QGraphicsScene_ClearFocus")]
	public static extern void QGraphicsScene_ClearFocus(void* c_this);
	[LinkName("QGraphicsScene_SetStickyFocus")]
	public static extern void QGraphicsScene_SetStickyFocus(void* c_this, bool enabled);
	[LinkName("QGraphicsScene_StickyFocus")]
	public static extern bool QGraphicsScene_StickyFocus(void* c_this);
	[LinkName("QGraphicsScene_MouseGrabberItem")]
	public static extern void* QGraphicsScene_MouseGrabberItem(void* c_this);
	[LinkName("QGraphicsScene_BackgroundBrush")]
	public static extern void QGraphicsScene_BackgroundBrush(void* c_this);
	[LinkName("QGraphicsScene_SetBackgroundBrush")]
	public static extern void QGraphicsScene_SetBackgroundBrush(void* c_this, void* brush);
	[LinkName("QGraphicsScene_ForegroundBrush")]
	public static extern void QGraphicsScene_ForegroundBrush(void* c_this);
	[LinkName("QGraphicsScene_SetForegroundBrush")]
	public static extern void QGraphicsScene_SetForegroundBrush(void* c_this, void* brush);
	[LinkName("QGraphicsScene_InputMethodQuery")]
	public static extern void QGraphicsScene_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsScene_Views")]
	public static extern void*[] QGraphicsScene_Views(void* c_this);
	[LinkName("QGraphicsScene_Update")]
	public static extern void QGraphicsScene_Update(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Invalidate")]
	public static extern void QGraphicsScene_Invalidate(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsScene_Style")]
	public static extern void* QGraphicsScene_Style(void* c_this);
	[LinkName("QGraphicsScene_SetStyle")]
	public static extern void QGraphicsScene_SetStyle(void* c_this, void* style);
	[LinkName("QGraphicsScene_Font")]
	public static extern void QGraphicsScene_Font(void* c_this);
	[LinkName("QGraphicsScene_SetFont")]
	public static extern void QGraphicsScene_SetFont(void* c_this, void* font);
	[LinkName("QGraphicsScene_Palette")]
	public static extern void QGraphicsScene_Palette(void* c_this);
	[LinkName("QGraphicsScene_SetPalette")]
	public static extern void QGraphicsScene_SetPalette(void* c_this, void* palette);
	[LinkName("QGraphicsScene_IsActive")]
	public static extern bool QGraphicsScene_IsActive(void* c_this);
	[LinkName("QGraphicsScene_ActivePanel")]
	public static extern void* QGraphicsScene_ActivePanel(void* c_this);
	[LinkName("QGraphicsScene_SetActivePanel")]
	public static extern void QGraphicsScene_SetActivePanel(void* c_this, void* item);
	[LinkName("QGraphicsScene_ActiveWindow")]
	public static extern void* QGraphicsScene_ActiveWindow(void* c_this);
	[LinkName("QGraphicsScene_SetActiveWindow")]
	public static extern void QGraphicsScene_SetActiveWindow(void* c_this, void* widget);
	[LinkName("QGraphicsScene_SendEvent")]
	public static extern bool QGraphicsScene_SendEvent(void* c_this, void* item, void* event);
	[LinkName("QGraphicsScene_MinimumRenderSize")]
	public static extern double QGraphicsScene_MinimumRenderSize(void* c_this);
	[LinkName("QGraphicsScene_SetMinimumRenderSize")]
	public static extern void QGraphicsScene_SetMinimumRenderSize(void* c_this, double minSize);
	[LinkName("QGraphicsScene_FocusOnTouch")]
	public static extern bool QGraphicsScene_FocusOnTouch(void* c_this);
	[LinkName("QGraphicsScene_SetFocusOnTouch")]
	public static extern void QGraphicsScene_SetFocusOnTouch(void* c_this, bool enabled);
	[LinkName("QGraphicsScene_Update2")]
	public static extern void QGraphicsScene_Update2(void* c_this);
	[LinkName("QGraphicsScene_Invalidate2")]
	public static extern void QGraphicsScene_Invalidate2(void* c_this);
	[LinkName("QGraphicsScene_Advance")]
	public static extern void QGraphicsScene_Advance(void* c_this);
	[LinkName("QGraphicsScene_ClearSelection")]
	public static extern void QGraphicsScene_ClearSelection(void* c_this);
	[LinkName("QGraphicsScene_Clear")]
	public static extern void QGraphicsScene_Clear(void* c_this);
	[LinkName("QGraphicsScene_Event")]
	public static extern bool QGraphicsScene_Event(void* c_this, void* event);
	[LinkName("QGraphicsScene_EventFilter")]
	public static extern bool QGraphicsScene_EventFilter(void* c_this, void* watched, void* event);
	[LinkName("QGraphicsScene_ContextMenuEvent")]
	public static extern void QGraphicsScene_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_DragEnterEvent")]
	public static extern void QGraphicsScene_DragEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_DragMoveEvent")]
	public static extern void QGraphicsScene_DragMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_DragLeaveEvent")]
	public static extern void QGraphicsScene_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_DropEvent")]
	public static extern void QGraphicsScene_DropEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_FocusInEvent")]
	public static extern void QGraphicsScene_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_FocusOutEvent")]
	public static extern void QGraphicsScene_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_HelpEvent")]
	public static extern void QGraphicsScene_HelpEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_KeyPressEvent")]
	public static extern void QGraphicsScene_KeyPressEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_KeyReleaseEvent")]
	public static extern void QGraphicsScene_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_MousePressEvent")]
	public static extern void QGraphicsScene_MousePressEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_MouseMoveEvent")]
	public static extern void QGraphicsScene_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_MouseReleaseEvent")]
	public static extern void QGraphicsScene_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_MouseDoubleClickEvent")]
	public static extern void QGraphicsScene_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_WheelEvent")]
	public static extern void QGraphicsScene_WheelEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_InputMethodEvent")]
	public static extern void QGraphicsScene_InputMethodEvent(void* c_this, void* event);
	[LinkName("QGraphicsScene_DrawBackground")]
	public static extern void QGraphicsScene_DrawBackground(void* c_this, void* painter, void* rect);
	[LinkName("QGraphicsScene_DrawForeground")]
	public static extern void QGraphicsScene_DrawForeground(void* c_this, void* painter, void* rect);
	[LinkName("QGraphicsScene_FocusNextPrevChild")]
	public static extern bool QGraphicsScene_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsScene_Connect_Changed")]
	public static extern void QGraphicsScene_Connect_Changed(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScene_Connect_SceneRectChanged")]
	public static extern void QGraphicsScene_Connect_SceneRectChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScene_Connect_SelectionChanged")]
	public static extern void QGraphicsScene_Connect_SelectionChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScene_Connect_FocusItemChanged")]
	public static extern void QGraphicsScene_Connect_FocusItemChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsScene_Tr2")]
	public static extern libqt_string QGraphicsScene_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsScene_Tr3")]
	public static extern libqt_string QGraphicsScene_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QGraphicsScene_Render2")]
	public static extern void QGraphicsScene_Render2(void* c_this, void* painter, void* target);
	[LinkName("QGraphicsScene_Render3")]
	public static extern void QGraphicsScene_Render3(void* c_this, void* painter, void* target, void* source);
	[LinkName("QGraphicsScene_Render4")]
	public static extern void QGraphicsScene_Render4(void* c_this, void* painter, void* target, void* source, int64 aspectRatioMode);
	[LinkName("QGraphicsScene_Items1")]
	public static extern void*[] QGraphicsScene_Items1(void* c_this, int64 order);
	[LinkName("QGraphicsScene_Items22")]
	public static extern void*[] QGraphicsScene_Items22(void* c_this, void* pos, int64 mode);
	[LinkName("QGraphicsScene_Items3")]
	public static extern void*[] QGraphicsScene_Items3(void* c_this, void* pos, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items4")]
	public static extern void*[] QGraphicsScene_Items4(void* c_this, void* pos, int64 mode, int64 order, void* deviceTransform);
	[LinkName("QGraphicsScene_Items23")]
	public static extern void*[] QGraphicsScene_Items23(void* c_this, void* rect, int64 mode);
	[LinkName("QGraphicsScene_Items32")]
	public static extern void*[] QGraphicsScene_Items32(void* c_this, void* rect, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items42")]
	public static extern void*[] QGraphicsScene_Items42(void* c_this, void* rect, int64 mode, int64 order, void* deviceTransform);
	[LinkName("QGraphicsScene_Items25")]
	public static extern void*[] QGraphicsScene_Items25(void* c_this, void* path, int64 mode);
	[LinkName("QGraphicsScene_Items34")]
	public static extern void*[] QGraphicsScene_Items34(void* c_this, void* path, int64 mode, int64 order);
	[LinkName("QGraphicsScene_Items44")]
	public static extern void*[] QGraphicsScene_Items44(void* c_this, void* path, int64 mode, int64 order, void* deviceTransform);
	[LinkName("QGraphicsScene_Items7")]
	public static extern void*[] QGraphicsScene_Items7(void* c_this, double x, double y, double w, double h, int64 mode, int64 order, void* deviceTransform);
	[LinkName("QGraphicsScene_CollidingItems2")]
	public static extern void*[] QGraphicsScene_CollidingItems2(void* c_this, void* item, int64 mode);
	[LinkName("QGraphicsScene_SetSelectionArea2")]
	public static extern void QGraphicsScene_SetSelectionArea2(void* c_this, void* path, int64 selectionOperation);
	[LinkName("QGraphicsScene_SetSelectionArea3")]
	public static extern void QGraphicsScene_SetSelectionArea3(void* c_this, void* path, int64 selectionOperation, int64 mode);
	[LinkName("QGraphicsScene_SetSelectionArea4")]
	public static extern void QGraphicsScene_SetSelectionArea4(void* c_this, void* path, int64 selectionOperation, int64 mode, void* deviceTransform);
	[LinkName("QGraphicsScene_AddEllipse22")]
	public static extern void* QGraphicsScene_AddEllipse22(void* c_this, void* rect, void* pen);
	[LinkName("QGraphicsScene_AddEllipse3")]
	public static extern void* QGraphicsScene_AddEllipse3(void* c_this, void* rect, void* pen, void* brush);
	[LinkName("QGraphicsScene_AddLine22")]
	public static extern void* QGraphicsScene_AddLine22(void* c_this, void* line, void* pen);
	[LinkName("QGraphicsScene_AddPath2")]
	public static extern void* QGraphicsScene_AddPath2(void* c_this, void* path, void* pen);
	[LinkName("QGraphicsScene_AddPath3")]
	public static extern void* QGraphicsScene_AddPath3(void* c_this, void* path, void* pen, void* brush);
	[LinkName("QGraphicsScene_AddRect22")]
	public static extern void* QGraphicsScene_AddRect22(void* c_this, void* rect, void* pen);
	[LinkName("QGraphicsScene_AddRect3")]
	public static extern void* QGraphicsScene_AddRect3(void* c_this, void* rect, void* pen, void* brush);
	[LinkName("QGraphicsScene_AddText2")]
	public static extern void* QGraphicsScene_AddText2(void* c_this, libqt_string text, void* font);
	[LinkName("QGraphicsScene_AddSimpleText2")]
	public static extern void* QGraphicsScene_AddSimpleText2(void* c_this, libqt_string text, void* font);
	[LinkName("QGraphicsScene_AddWidget2")]
	public static extern void* QGraphicsScene_AddWidget2(void* c_this, void* widget, int64 wFlags);
	[LinkName("QGraphicsScene_AddEllipse5")]
	public static extern void* QGraphicsScene_AddEllipse5(void* c_this, double x, double y, double w, double h, void* pen);
	[LinkName("QGraphicsScene_AddEllipse6")]
	public static extern void* QGraphicsScene_AddEllipse6(void* c_this, double x, double y, double w, double h, void* pen, void* brush);
	[LinkName("QGraphicsScene_AddLine5")]
	public static extern void* QGraphicsScene_AddLine5(void* c_this, double x1, double y1, double x2, double y2, void* pen);
	[LinkName("QGraphicsScene_AddRect5")]
	public static extern void* QGraphicsScene_AddRect5(void* c_this, double x, double y, double w, double h, void* pen);
	[LinkName("QGraphicsScene_AddRect6")]
	public static extern void* QGraphicsScene_AddRect6(void* c_this, double x, double y, double w, double h, void* pen, void* brush);
	[LinkName("QGraphicsScene_SetFocusItem2")]
	public static extern void QGraphicsScene_SetFocusItem2(void* c_this, void* item, int64 focusReason);
	[LinkName("QGraphicsScene_SetFocus1")]
	public static extern void QGraphicsScene_SetFocus1(void* c_this, int64 focusReason);
	[LinkName("QGraphicsScene_Invalidate5")]
	public static extern void QGraphicsScene_Invalidate5(void* c_this, double x, double y, double w, double h, int64 layers);
	[LinkName("QGraphicsScene_Update1")]
	public static extern void QGraphicsScene_Update1(void* c_this, void* rect);
	[LinkName("QGraphicsScene_Invalidate1")]
	public static extern void QGraphicsScene_Invalidate1(void* c_this, void* rect);
	[LinkName("QGraphicsScene_Invalidate22")]
	public static extern void QGraphicsScene_Invalidate22(void* c_this, void* rect, int64 layers);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsScene_Delete")]
	public static extern void QGraphicsScene_Delete(void* self);
}