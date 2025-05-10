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
public class QGraphicsScene
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsScene_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsScene_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsScene_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsScene_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsScene_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void SetSceneRect(void* rect)
	{
		CQt.QGraphicsScene_SetSceneRect(this.nativePtr, rect);
	}
	
	public void SetSceneRect2(double x, double y, double w, double h)
	{
		CQt.QGraphicsScene_SetSceneRect2(this.nativePtr, x, y, w, h);
	}
	
	public void Render(void* painter)
	{
		CQt.QGraphicsScene_Render(this.nativePtr, painter);
	}
	
	public int64 ItemIndexMethod()
	{
		return CQt.QGraphicsScene_ItemIndexMethod(this.nativePtr);
	}
	
	public void SetItemIndexMethod(int64 method)
	{
		CQt.QGraphicsScene_SetItemIndexMethod(this.nativePtr, method);
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
	
	public void*[] ItemsWithPos(void* pos)
	{
		return CQt.QGraphicsScene_ItemsWithPos(this.nativePtr, pos);
	}
	
	public void*[] ItemsWithRect(void* rect)
	{
		return CQt.QGraphicsScene_ItemsWithRect(this.nativePtr, rect);
	}
	
	public void*[] ItemsWithPath(void* path)
	{
		return CQt.QGraphicsScene_ItemsWithPath(this.nativePtr, path);
	}
	
	public void*[] Items2(double x, double y, double w, double h, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items2(this.nativePtr, x, y, w, h, mode, order);
	}
	
	public void*[] CollidingItems(void* item)
	{
		return CQt.QGraphicsScene_CollidingItems(this.nativePtr, item);
	}
	
	public void* ItemAt(void* pos, void* deviceTransform)
	{
		return CQt.QGraphicsScene_ItemAt(this.nativePtr, pos, deviceTransform);
	}
	
	public void* ItemAt2(double x, double y, void* deviceTransform)
	{
		return CQt.QGraphicsScene_ItemAt2(this.nativePtr, x, y, deviceTransform);
	}
	
	public void*[] SelectedItems()
	{
		return CQt.QGraphicsScene_SelectedItems(this.nativePtr);
	}
	
	public void SelectionArea()
	{
		CQt.QGraphicsScene_SelectionArea(this.nativePtr);
	}
	
	public void SetSelectionArea(void* path, void* deviceTransform)
	{
		CQt.QGraphicsScene_SetSelectionArea(this.nativePtr, path, deviceTransform);
	}
	
	public void SetSelectionAreaWithPath(void* path)
	{
		CQt.QGraphicsScene_SetSelectionAreaWithPath(this.nativePtr, path);
	}
	
	public void* CreateItemGroup(void*[] items)
	{
		return CQt.QGraphicsScene_CreateItemGroup(this.nativePtr, items);
	}
	
	public void DestroyItemGroup(void* group)
	{
		CQt.QGraphicsScene_DestroyItemGroup(this.nativePtr, group);
	}
	
	public void AddItem(void* item)
	{
		CQt.QGraphicsScene_AddItem(this.nativePtr, item);
	}
	
	public void* AddEllipse(void* rect)
	{
		return CQt.QGraphicsScene_AddEllipse(this.nativePtr, rect);
	}
	
	public void* AddLine(void* line)
	{
		return CQt.QGraphicsScene_AddLine(this.nativePtr, line);
	}
	
	public void* AddPath(void* path)
	{
		return CQt.QGraphicsScene_AddPath(this.nativePtr, path);
	}
	
	public void* AddPixmap(void* pixmap)
	{
		return CQt.QGraphicsScene_AddPixmap(this.nativePtr, pixmap);
	}
	
	public void* AddRect(void* rect)
	{
		return CQt.QGraphicsScene_AddRect(this.nativePtr, rect);
	}
	
	public void* AddText(libqt_string text)
	{
		return CQt.QGraphicsScene_AddText(this.nativePtr, text);
	}
	
	public void* AddSimpleText(libqt_string text)
	{
		return CQt.QGraphicsScene_AddSimpleText(this.nativePtr, text);
	}
	
	public void* AddWidget(void* widget)
	{
		return CQt.QGraphicsScene_AddWidget(this.nativePtr, widget);
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
	
	public void RemoveItem(void* item)
	{
		CQt.QGraphicsScene_RemoveItem(this.nativePtr, item);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsScene_FocusItem(this.nativePtr);
	}
	
	public void SetFocusItem(void* item)
	{
		CQt.QGraphicsScene_SetFocusItem(this.nativePtr, item);
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
	
	public void SetBackgroundBrush(void* brush)
	{
		CQt.QGraphicsScene_SetBackgroundBrush(this.nativePtr, brush);
	}
	
	public void ForegroundBrush()
	{
		CQt.QGraphicsScene_ForegroundBrush(this.nativePtr);
	}
	
	public void SetForegroundBrush(void* brush)
	{
		CQt.QGraphicsScene_SetForegroundBrush(this.nativePtr, brush);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsScene_InputMethodQuery(this.nativePtr, query);
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
	
	public void SetStyle(void* style)
	{
		CQt.QGraphicsScene_SetStyle(this.nativePtr, style);
	}
	
	public void Font()
	{
		CQt.QGraphicsScene_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QGraphicsScene_SetFont(this.nativePtr, font);
	}
	
	public void Palette()
	{
		CQt.QGraphicsScene_Palette(this.nativePtr);
	}
	
	public void SetPalette(void* palette)
	{
		CQt.QGraphicsScene_SetPalette(this.nativePtr, palette);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsScene_IsActive(this.nativePtr);
	}
	
	public void* ActivePanel()
	{
		return CQt.QGraphicsScene_ActivePanel(this.nativePtr);
	}
	
	public void SetActivePanel(void* item)
	{
		CQt.QGraphicsScene_SetActivePanel(this.nativePtr, item);
	}
	
	public void* ActiveWindow()
	{
		return CQt.QGraphicsScene_ActiveWindow(this.nativePtr);
	}
	
	public void SetActiveWindow(void* widget)
	{
		CQt.QGraphicsScene_SetActiveWindow(this.nativePtr, widget);
	}
	
	public bool SendEvent(void* item, void* event)
	{
		return CQt.QGraphicsScene_SendEvent(this.nativePtr, item, event);
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
	
	public virtual bool Event(void* event)
	{
		return CQt.QGraphicsScene_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QGraphicsScene_EventFilter(this.nativePtr, watched, event);
	}
	
	public virtual void ContextMenuEvent(void* event)
	{
		CQt.QGraphicsScene_ContextMenuEvent(this.nativePtr, event);
	}
	
	public virtual void DragEnterEvent(void* event)
	{
		CQt.QGraphicsScene_DragEnterEvent(this.nativePtr, event);
	}
	
	public virtual void DragMoveEvent(void* event)
	{
		CQt.QGraphicsScene_DragMoveEvent(this.nativePtr, event);
	}
	
	public virtual void DragLeaveEvent(void* event)
	{
		CQt.QGraphicsScene_DragLeaveEvent(this.nativePtr, event);
	}
	
	public virtual void DropEvent(void* event)
	{
		CQt.QGraphicsScene_DropEvent(this.nativePtr, event);
	}
	
	public virtual void FocusInEvent(void* event)
	{
		CQt.QGraphicsScene_FocusInEvent(this.nativePtr, event);
	}
	
	public virtual void FocusOutEvent(void* event)
	{
		CQt.QGraphicsScene_FocusOutEvent(this.nativePtr, event);
	}
	
	public virtual void HelpEvent(void* event)
	{
		CQt.QGraphicsScene_HelpEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* event)
	{
		CQt.QGraphicsScene_KeyPressEvent(this.nativePtr, event);
	}
	
	public virtual void KeyReleaseEvent(void* event)
	{
		CQt.QGraphicsScene_KeyReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void MousePressEvent(void* event)
	{
		CQt.QGraphicsScene_MousePressEvent(this.nativePtr, event);
	}
	
	public virtual void MouseMoveEvent(void* event)
	{
		CQt.QGraphicsScene_MouseMoveEvent(this.nativePtr, event);
	}
	
	public virtual void MouseReleaseEvent(void* event)
	{
		CQt.QGraphicsScene_MouseReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void MouseDoubleClickEvent(void* event)
	{
		CQt.QGraphicsScene_MouseDoubleClickEvent(this.nativePtr, event);
	}
	
	public virtual void WheelEvent(void* event)
	{
		CQt.QGraphicsScene_WheelEvent(this.nativePtr, event);
	}
	
	public virtual void InputMethodEvent(void* event)
	{
		CQt.QGraphicsScene_InputMethodEvent(this.nativePtr, event);
	}
	
	public virtual void DrawBackground(void* painter, void* rect)
	{
		CQt.QGraphicsScene_DrawBackground(this.nativePtr, painter, rect);
	}
	
	public virtual void DrawForeground(void* painter, void* rect)
	{
		CQt.QGraphicsScene_DrawForeground(this.nativePtr, painter, rect);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsScene_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsScene_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsScene_Tr3(s, c, n);
	}
	
	public void Render2(void* painter, void* target)
	{
		CQt.QGraphicsScene_Render2(this.nativePtr, painter, target);
	}
	
	public void Render3(void* painter, void* target, void* source)
	{
		CQt.QGraphicsScene_Render3(this.nativePtr, painter, target, source);
	}
	
	public void Render4(void* painter, void* target, void* source, int64 aspectRatioMode)
	{
		CQt.QGraphicsScene_Render4(this.nativePtr, painter, target, source, aspectRatioMode);
	}
	
	public void*[] Items1(int64 order)
	{
		return CQt.QGraphicsScene_Items1(this.nativePtr, order);
	}
	
	public void*[] Items22(void* pos, int64 mode)
	{
		return CQt.QGraphicsScene_Items22(this.nativePtr, pos, mode);
	}
	
	public void*[] Items3(void* pos, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items3(this.nativePtr, pos, mode, order);
	}
	
	public void*[] Items4(void* pos, int64 mode, int64 order, void* deviceTransform)
	{
		return CQt.QGraphicsScene_Items4(this.nativePtr, pos, mode, order, deviceTransform);
	}
	
	public void*[] Items23(void* rect, int64 mode)
	{
		return CQt.QGraphicsScene_Items23(this.nativePtr, rect, mode);
	}
	
	public void*[] Items32(void* rect, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items32(this.nativePtr, rect, mode, order);
	}
	
	public void*[] Items42(void* rect, int64 mode, int64 order, void* deviceTransform)
	{
		return CQt.QGraphicsScene_Items42(this.nativePtr, rect, mode, order, deviceTransform);
	}
	
	public void*[] Items25(void* path, int64 mode)
	{
		return CQt.QGraphicsScene_Items25(this.nativePtr, path, mode);
	}
	
	public void*[] Items34(void* path, int64 mode, int64 order)
	{
		return CQt.QGraphicsScene_Items34(this.nativePtr, path, mode, order);
	}
	
	public void*[] Items44(void* path, int64 mode, int64 order, void* deviceTransform)
	{
		return CQt.QGraphicsScene_Items44(this.nativePtr, path, mode, order, deviceTransform);
	}
	
	public void*[] Items7(double x, double y, double w, double h, int64 mode, int64 order, void* deviceTransform)
	{
		return CQt.QGraphicsScene_Items7(this.nativePtr, x, y, w, h, mode, order, deviceTransform);
	}
	
	public void*[] CollidingItems2(void* item, int64 mode)
	{
		return CQt.QGraphicsScene_CollidingItems2(this.nativePtr, item, mode);
	}
	
	public void SetSelectionArea2(void* path, int64 selectionOperation)
	{
		CQt.QGraphicsScene_SetSelectionArea2(this.nativePtr, path, selectionOperation);
	}
	
	public void SetSelectionArea3(void* path, int64 selectionOperation, int64 mode)
	{
		CQt.QGraphicsScene_SetSelectionArea3(this.nativePtr, path, selectionOperation, mode);
	}
	
	public void SetSelectionArea4(void* path, int64 selectionOperation, int64 mode, void* deviceTransform)
	{
		CQt.QGraphicsScene_SetSelectionArea4(this.nativePtr, path, selectionOperation, mode, deviceTransform);
	}
	
	public void* AddEllipse22(void* rect, void* pen)
	{
		return CQt.QGraphicsScene_AddEllipse22(this.nativePtr, rect, pen);
	}
	
	public void* AddEllipse3(void* rect, void* pen, void* brush)
	{
		return CQt.QGraphicsScene_AddEllipse3(this.nativePtr, rect, pen, brush);
	}
	
	public void* AddLine22(void* line, void* pen)
	{
		return CQt.QGraphicsScene_AddLine22(this.nativePtr, line, pen);
	}
	
	public void* AddPath2(void* path, void* pen)
	{
		return CQt.QGraphicsScene_AddPath2(this.nativePtr, path, pen);
	}
	
	public void* AddPath3(void* path, void* pen, void* brush)
	{
		return CQt.QGraphicsScene_AddPath3(this.nativePtr, path, pen, brush);
	}
	
	public void* AddRect22(void* rect, void* pen)
	{
		return CQt.QGraphicsScene_AddRect22(this.nativePtr, rect, pen);
	}
	
	public void* AddRect3(void* rect, void* pen, void* brush)
	{
		return CQt.QGraphicsScene_AddRect3(this.nativePtr, rect, pen, brush);
	}
	
	public void* AddText2(libqt_string text, void* font)
	{
		return CQt.QGraphicsScene_AddText2(this.nativePtr, text, font);
	}
	
	public void* AddSimpleText2(libqt_string text, void* font)
	{
		return CQt.QGraphicsScene_AddSimpleText2(this.nativePtr, text, font);
	}
	
	public void* AddWidget2(void* widget, int64 wFlags)
	{
		return CQt.QGraphicsScene_AddWidget2(this.nativePtr, widget, wFlags);
	}
	
	public void* AddEllipse5(double x, double y, double w, double h, void* pen)
	{
		return CQt.QGraphicsScene_AddEllipse5(this.nativePtr, x, y, w, h, pen);
	}
	
	public void* AddEllipse6(double x, double y, double w, double h, void* pen, void* brush)
	{
		return CQt.QGraphicsScene_AddEllipse6(this.nativePtr, x, y, w, h, pen, brush);
	}
	
	public void* AddLine5(double x1, double y1, double x2, double y2, void* pen)
	{
		return CQt.QGraphicsScene_AddLine5(this.nativePtr, x1, y1, x2, y2, pen);
	}
	
	public void* AddRect5(double x, double y, double w, double h, void* pen)
	{
		return CQt.QGraphicsScene_AddRect5(this.nativePtr, x, y, w, h, pen);
	}
	
	public void* AddRect6(double x, double y, double w, double h, void* pen, void* brush)
	{
		return CQt.QGraphicsScene_AddRect6(this.nativePtr, x, y, w, h, pen, brush);
	}
	
	public void SetFocusItem2(void* item, int64 focusReason)
	{
		CQt.QGraphicsScene_SetFocusItem2(this.nativePtr, item, focusReason);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsScene_SetFocus1(this.nativePtr, focusReason);
	}
	
	public void Invalidate5(double x, double y, double w, double h, int64 layers)
	{
		CQt.QGraphicsScene_Invalidate5(this.nativePtr, x, y, w, h, layers);
	}
	
	public void Update1(void* rect)
	{
		CQt.QGraphicsScene_Update1(this.nativePtr, rect);
	}
	
	public void Invalidate1(void* rect)
	{
		CQt.QGraphicsScene_Invalidate1(this.nativePtr, rect);
	}
	
	public void Invalidate22(void* rect, int64 layers)
	{
		CQt.QGraphicsScene_Invalidate22(this.nativePtr, rect, layers);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
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
	public static extern void* QGraphicsScene_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsScene_Metacall")]
	public static extern int32 QGraphicsScene_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsScene_Tr")]
	public static extern libqt_string QGraphicsScene_Tr(char8[] s);
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
	public static extern libqt_string QGraphicsScene_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsScene_Tr3")]
	public static extern libqt_string QGraphicsScene_Tr3(char8[] s, char8[] c, int32 n);
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