using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsProxyWidget__
{
	Type = 12,
}
public class QGraphicsProxyWidget
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsProxyWidget_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsProxyWidget_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsProxyWidget_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QGraphicsProxyWidget_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsProxyWidget_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QGraphicsProxyWidget_Tr(s);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsProxyWidget_SetWidget(this.nativePtr, widget);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsProxyWidget_Widget(this.nativePtr);
	}
	
	public void SubWidgetRect(void* widget)
	{
		CQt.QGraphicsProxyWidget_SubWidgetRect(this.nativePtr, widget);
	}
	
	public virtual void SetGeometry(void* rect)
	{
		CQt.QGraphicsProxyWidget_SetGeometry(this.nativePtr, rect);
	}
	
	public virtual void Paint(void* painter, void* option, void* widget)
	{
		CQt.QGraphicsProxyWidget_Paint(this.nativePtr, painter, option, widget);
	}
	
	public virtual int32 Type()
	{
		return CQt.QGraphicsProxyWidget_Type(this.nativePtr);
	}
	
	public void* CreateProxyForChildWidget(void* child)
	{
		return CQt.QGraphicsProxyWidget_CreateProxyForChildWidget(this.nativePtr, child);
	}
	
	public virtual void ItemChange(int64 change, void* value)
	{
		CQt.QGraphicsProxyWidget_ItemChange(this.nativePtr, change, value);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QGraphicsProxyWidget_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* object, void* event)
	{
		return CQt.QGraphicsProxyWidget_EventFilter(this.nativePtr, object, event);
	}
	
	public virtual void ShowEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_ShowEvent(this.nativePtr, event);
	}
	
	public virtual void HideEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_HideEvent(this.nativePtr, event);
	}
	
	public virtual void ContextMenuEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_ContextMenuEvent(this.nativePtr, event);
	}
	
	public virtual void DragEnterEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_DragEnterEvent(this.nativePtr, event);
	}
	
	public virtual void DragLeaveEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_DragLeaveEvent(this.nativePtr, event);
	}
	
	public virtual void DragMoveEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_DragMoveEvent(this.nativePtr, event);
	}
	
	public virtual void DropEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_DropEvent(this.nativePtr, event);
	}
	
	public virtual void HoverEnterEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_HoverEnterEvent(this.nativePtr, event);
	}
	
	public virtual void HoverLeaveEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_HoverLeaveEvent(this.nativePtr, event);
	}
	
	public virtual void HoverMoveEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_HoverMoveEvent(this.nativePtr, event);
	}
	
	public virtual void GrabMouseEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_GrabMouseEvent(this.nativePtr, event);
	}
	
	public virtual void UngrabMouseEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_UngrabMouseEvent(this.nativePtr, event);
	}
	
	public virtual void MouseMoveEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_MouseMoveEvent(this.nativePtr, event);
	}
	
	public virtual void MousePressEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_MousePressEvent(this.nativePtr, event);
	}
	
	public virtual void MouseReleaseEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_MouseReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void MouseDoubleClickEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_MouseDoubleClickEvent(this.nativePtr, event);
	}
	
	public virtual void WheelEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_WheelEvent(this.nativePtr, event);
	}
	
	public virtual void KeyPressEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_KeyPressEvent(this.nativePtr, event);
	}
	
	public virtual void KeyReleaseEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_KeyReleaseEvent(this.nativePtr, event);
	}
	
	public virtual void FocusInEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_FocusInEvent(this.nativePtr, event);
	}
	
	public virtual void FocusOutEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_FocusOutEvent(this.nativePtr, event);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsProxyWidget_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual void InputMethodQuery(int64 query)
	{
		CQt.QGraphicsProxyWidget_InputMethodQuery(this.nativePtr, query);
	}
	
	public virtual void InputMethodEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_InputMethodEvent(this.nativePtr, event);
	}
	
	public virtual void SizeHint(int64 which, void* constraint)
	{
		CQt.QGraphicsProxyWidget_SizeHint(this.nativePtr, which, constraint);
	}
	
	public virtual void ResizeEvent(void* event)
	{
		CQt.QGraphicsProxyWidget_ResizeEvent(this.nativePtr, event);
	}
	
	public void* NewProxyWidget(void* param1)
	{
		return CQt.QGraphicsProxyWidget_NewProxyWidget(this.nativePtr, param1);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QGraphicsProxyWidget_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QGraphicsProxyWidget_Tr3(s, c, n);
	}
	
	public void* Layout()
	{
		return CQt.QGraphicsWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(void* layout)
	{
		CQt.QGraphicsWidget_SetLayout(this.nativePtr, layout);
	}
	
	public void AdjustSize()
	{
		CQt.QGraphicsWidget_AdjustSize(this.nativePtr);
	}
	
	public int64 LayoutDirection()
	{
		return CQt.QGraphicsWidget_LayoutDirection(this.nativePtr);
	}
	
	public void SetLayoutDirection(int64 direction)
	{
		CQt.QGraphicsWidget_SetLayoutDirection(this.nativePtr, direction);
	}
	
	public void UnsetLayoutDirection()
	{
		CQt.QGraphicsWidget_UnsetLayoutDirection(this.nativePtr);
	}
	
	public void* Style()
	{
		return CQt.QGraphicsWidget_Style(this.nativePtr);
	}
	
	public void SetStyle(void* style)
	{
		CQt.QGraphicsWidget_SetStyle(this.nativePtr, style);
	}
	
	public void Font()
	{
		CQt.QGraphicsWidget_Font(this.nativePtr);
	}
	
	public void SetFont(void* font)
	{
		CQt.QGraphicsWidget_SetFont(this.nativePtr, font);
	}
	
	public void Palette()
	{
		CQt.QGraphicsWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(void* palette)
	{
		CQt.QGraphicsWidget_SetPalette(this.nativePtr, palette);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QGraphicsWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QGraphicsWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void Resize(void* size)
	{
		CQt.QGraphicsWidget_Resize(this.nativePtr, size);
	}
	
	public void Resize2(double w, double h)
	{
		CQt.QGraphicsWidget_Resize2(this.nativePtr, w, h);
	}
	
	public void Size()
	{
		CQt.QGraphicsWidget_Size(this.nativePtr);
	}
	
	public void SetGeometry2(double x, double y, double w, double h)
	{
		CQt.QGraphicsWidget_SetGeometry2(this.nativePtr, x, y, w, h);
	}
	
	public void Rect()
	{
		CQt.QGraphicsWidget_Rect(this.nativePtr);
	}
	
	public void SetContentsMargins(double left, double top, double right, double bottom)
	{
		CQt.QGraphicsWidget_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(void margins)
	{
		CQt.QGraphicsWidget_SetContentsMarginsWithMargins(this.nativePtr, margins);
	}
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsWidget_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetWindowFrameMargins(double left, double top, double right, double bottom)
	{
		CQt.QGraphicsWidget_SetWindowFrameMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetWindowFrameMarginsWithMargins(void margins)
	{
		CQt.QGraphicsWidget_SetWindowFrameMarginsWithMargins(this.nativePtr, margins);
	}
	
	public void GetWindowFrameMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsWidget_GetWindowFrameMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void UnsetWindowFrameMargins()
	{
		CQt.QGraphicsWidget_UnsetWindowFrameMargins(this.nativePtr);
	}
	
	public void WindowFrameGeometry()
	{
		CQt.QGraphicsWidget_WindowFrameGeometry(this.nativePtr);
	}
	
	public void WindowFrameRect()
	{
		CQt.QGraphicsWidget_WindowFrameRect(this.nativePtr);
	}
	
	public int64 WindowFlags()
	{
		return CQt.QGraphicsWidget_WindowFlags(this.nativePtr);
	}
	
	public int64 WindowType()
	{
		return CQt.QGraphicsWidget_WindowType(this.nativePtr);
	}
	
	public void SetWindowFlags(int64 wFlags)
	{
		CQt.QGraphicsWidget_SetWindowFlags(this.nativePtr, wFlags);
	}
	
	public bool IsActiveWindow()
	{
		return CQt.QGraphicsWidget_IsActiveWindow(this.nativePtr);
	}
	
	public void SetWindowTitle(libqt_string title)
	{
		CQt.QGraphicsWidget_SetWindowTitle(this.nativePtr, title);
	}
	
	public libqt_string WindowTitle()
	{
		return CQt.QGraphicsWidget_WindowTitle(this.nativePtr);
	}
	
	public int64 FocusPolicy()
	{
		return CQt.QGraphicsWidget_FocusPolicy(this.nativePtr);
	}
	
	public void SetFocusPolicy(int64 policy)
	{
		CQt.QGraphicsWidget_SetFocusPolicy(this.nativePtr, policy);
	}
	
	public static void SetTabOrder(void* first, void* second)
	{
		CQt.QGraphicsWidget_SetTabOrder(first, second);
	}
	
	public void* FocusWidget()
	{
		return CQt.QGraphicsWidget_FocusWidget(this.nativePtr);
	}
	
	public int32 GrabShortcut(void* sequence)
	{
		return CQt.QGraphicsWidget_GrabShortcut(this.nativePtr, sequence);
	}
	
	public void ReleaseShortcut(int32 id)
	{
		CQt.QGraphicsWidget_ReleaseShortcut(this.nativePtr, id);
	}
	
	public void SetShortcutEnabled(int32 id)
	{
		CQt.QGraphicsWidget_SetShortcutEnabled(this.nativePtr, id);
	}
	
	public void SetShortcutAutoRepeat(int32 id)
	{
		CQt.QGraphicsWidget_SetShortcutAutoRepeat(this.nativePtr, id);
	}
	
	public void AddAction(void* action)
	{
		CQt.QGraphicsWidget_AddAction(this.nativePtr, action);
	}
	
	public void AddActions(void*[] actions)
	{
		CQt.QGraphicsWidget_AddActions(this.nativePtr, actions);
	}
	
	public void InsertActions(void* before, void*[] actions)
	{
		CQt.QGraphicsWidget_InsertActions(this.nativePtr, before, actions);
	}
	
	public void InsertAction(void* before, void* action)
	{
		CQt.QGraphicsWidget_InsertAction(this.nativePtr, before, action);
	}
	
	public void RemoveAction(void* action)
	{
		CQt.QGraphicsWidget_RemoveAction(this.nativePtr, action);
	}
	
	public void*[] Actions()
	{
		return CQt.QGraphicsWidget_Actions(this.nativePtr);
	}
	
	public void SetAttribute(int64 attribute)
	{
		CQt.QGraphicsWidget_SetAttribute(this.nativePtr, attribute);
	}
	
	public bool TestAttribute(int64 attribute)
	{
		return CQt.QGraphicsWidget_TestAttribute(this.nativePtr, attribute);
	}
	
	public virtual void PaintWindowFrame(void* painter, void* option, void* widget)
	{
		CQt.QGraphicsWidget_PaintWindowFrame(this.nativePtr, painter, option, widget);
	}
	
	public virtual void BoundingRect()
	{
		CQt.QGraphicsWidget_BoundingRect(this.nativePtr);
	}
	
	public virtual void Shape()
	{
		CQt.QGraphicsWidget_Shape(this.nativePtr);
	}
	
	public bool Close()
	{
		return CQt.QGraphicsWidget_Close(this.nativePtr);
	}
	
	public int32 GrabShortcut2(void* sequence, int64 context)
	{
		return CQt.QGraphicsWidget_GrabShortcut2(this.nativePtr, sequence, context);
	}
	
	public void SetShortcutEnabled2(int32 id, bool enabled)
	{
		CQt.QGraphicsWidget_SetShortcutEnabled2(this.nativePtr, id, enabled);
	}
	
	public void SetShortcutAutoRepeat2(int32 id, bool enabled)
	{
		CQt.QGraphicsWidget_SetShortcutAutoRepeat2(this.nativePtr, id, enabled);
	}
	
	public void SetAttribute2(int64 attribute, bool on)
	{
		CQt.QGraphicsWidget_SetAttribute2(this.nativePtr, attribute, on);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_GrabGesture(this.nativePtr, typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_UngrabGesture(this.nativePtr, typeVal);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QGraphicsObject_GrabGesture2(this.nativePtr, typeVal, flags);
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
	
	public void* Scene()
	{
		return CQt.QGraphicsItem_Scene(this.nativePtr);
	}
	
	public void* ParentItem()
	{
		return CQt.QGraphicsItem_ParentItem(this.nativePtr);
	}
	
	public void* TopLevelItem()
	{
		return CQt.QGraphicsItem_TopLevelItem(this.nativePtr);
	}
	
	public void* ParentObject()
	{
		return CQt.QGraphicsItem_ParentObject(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QGraphicsItem_ParentWidget(this.nativePtr);
	}
	
	public void* TopLevelWidget()
	{
		return CQt.QGraphicsItem_TopLevelWidget(this.nativePtr);
	}
	
	public void* Window()
	{
		return CQt.QGraphicsItem_Window(this.nativePtr);
	}
	
	public void* Panel()
	{
		return CQt.QGraphicsItem_Panel(this.nativePtr);
	}
	
	public void SetParentItem(void* parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, parent);
	}
	
	public void*[] ChildItems()
	{
		return CQt.QGraphicsItem_ChildItems(this.nativePtr);
	}
	
	public bool IsWidget()
	{
		return CQt.QGraphicsItem_IsWidget(this.nativePtr);
	}
	
	public bool IsWindow()
	{
		return CQt.QGraphicsItem_IsWindow(this.nativePtr);
	}
	
	public bool IsPanel()
	{
		return CQt.QGraphicsItem_IsPanel(this.nativePtr);
	}
	
	public void* ToGraphicsObject()
	{
		return CQt.QGraphicsItem_ToGraphicsObject(this.nativePtr);
	}
	
	public void* ToGraphicsObject2()
	{
		return CQt.QGraphicsItem_ToGraphicsObject2(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QGraphicsItem_Group(this.nativePtr);
	}
	
	public void SetGroup(void* group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, group);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, flag);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsItem_SetFlags(this.nativePtr, flags);
	}
	
	public int64 CacheMode()
	{
		return CQt.QGraphicsItem_CacheMode(this.nativePtr);
	}
	
	public void SetCacheMode(int64 mode)
	{
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(libqt_string toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, toolTip);
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(void* cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, cursor);
	}
	
	public bool HasCursor()
	{
		return CQt.QGraphicsItem_HasCursor(this.nativePtr);
	}
	
	public void UnsetCursor()
	{
		CQt.QGraphicsItem_UnsetCursor(this.nativePtr);
	}
	
	public bool IsVisible()
	{
		return CQt.QGraphicsItem_IsVisible(this.nativePtr);
	}
	
	public bool IsVisibleTo(void* parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, parent);
	}
	
	public void SetVisible(bool visible)
	{
		CQt.QGraphicsItem_SetVisible(this.nativePtr, visible);
	}
	
	public void Hide()
	{
		CQt.QGraphicsItem_Hide(this.nativePtr);
	}
	
	public void Show()
	{
		CQt.QGraphicsItem_Show(this.nativePtr);
	}
	
	public bool IsEnabled()
	{
		return CQt.QGraphicsItem_IsEnabled(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QGraphicsItem_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsSelected()
	{
		return CQt.QGraphicsItem_IsSelected(this.nativePtr);
	}
	
	public void SetSelected(bool selected)
	{
		CQt.QGraphicsItem_SetSelected(this.nativePtr, selected);
	}
	
	public bool AcceptDrops()
	{
		return CQt.QGraphicsItem_AcceptDrops(this.nativePtr);
	}
	
	public void SetAcceptDrops(bool on)
	{
		CQt.QGraphicsItem_SetAcceptDrops(this.nativePtr, on);
	}
	
	public double Opacity()
	{
		return CQt.QGraphicsItem_Opacity(this.nativePtr);
	}
	
	public double EffectiveOpacity()
	{
		return CQt.QGraphicsItem_EffectiveOpacity(this.nativePtr);
	}
	
	public void SetOpacity(double opacity)
	{
		CQt.QGraphicsItem_SetOpacity(this.nativePtr, opacity);
	}
	
	public void* GraphicsEffect()
	{
		return CQt.QGraphicsItem_GraphicsEffect(this.nativePtr);
	}
	
	public void SetGraphicsEffect(void* effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return CQt.QGraphicsItem_AcceptedMouseButtons(this.nativePtr);
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		CQt.QGraphicsItem_SetAcceptedMouseButtons(this.nativePtr, buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return CQt.QGraphicsItem_AcceptHoverEvents(this.nativePtr);
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptHoverEvents(this.nativePtr, enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return CQt.QGraphicsItem_AcceptTouchEvents(this.nativePtr);
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetAcceptTouchEvents(this.nativePtr, enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return CQt.QGraphicsItem_FiltersChildEvents(this.nativePtr);
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetFiltersChildEvents(this.nativePtr, enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return CQt.QGraphicsItem_HandlesChildEvents(this.nativePtr);
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		CQt.QGraphicsItem_SetHandlesChildEvents(this.nativePtr, enabled);
	}
	
	public bool IsActive()
	{
		return CQt.QGraphicsItem_IsActive(this.nativePtr);
	}
	
	public void SetActive(bool active)
	{
		CQt.QGraphicsItem_SetActive(this.nativePtr, active);
	}
	
	public bool HasFocus()
	{
		return CQt.QGraphicsItem_HasFocus(this.nativePtr);
	}
	
	public void SetFocus()
	{
		CQt.QGraphicsItem_SetFocus(this.nativePtr);
	}
	
	public void ClearFocus()
	{
		CQt.QGraphicsItem_ClearFocus(this.nativePtr);
	}
	
	public void* FocusProxy()
	{
		return CQt.QGraphicsItem_FocusProxy(this.nativePtr);
	}
	
	public void SetFocusProxy(void* item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, item);
	}
	
	public void* FocusItem()
	{
		return CQt.QGraphicsItem_FocusItem(this.nativePtr);
	}
	
	public void* FocusScopeItem()
	{
		return CQt.QGraphicsItem_FocusScopeItem(this.nativePtr);
	}
	
	public void GrabMouse()
	{
		CQt.QGraphicsItem_GrabMouse(this.nativePtr);
	}
	
	public void UngrabMouse()
	{
		CQt.QGraphicsItem_UngrabMouse(this.nativePtr);
	}
	
	public void GrabKeyboard()
	{
		CQt.QGraphicsItem_GrabKeyboard(this.nativePtr);
	}
	
	public void UngrabKeyboard()
	{
		CQt.QGraphicsItem_UngrabKeyboard(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsItem_Pos(this.nativePtr);
	}
	
	public double X()
	{
		return CQt.QGraphicsItem_X(this.nativePtr);
	}
	
	public void SetX(double x)
	{
		CQt.QGraphicsItem_SetX(this.nativePtr, x);
	}
	
	public double Y()
	{
		return CQt.QGraphicsItem_Y(this.nativePtr);
	}
	
	public void SetY(double y)
	{
		CQt.QGraphicsItem_SetY(this.nativePtr, y);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsItem_ScenePos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, pos);
	}
	
	public void SetPos2(double x, double y)
	{
		CQt.QGraphicsItem_SetPos2(this.nativePtr, x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		CQt.QGraphicsItem_MoveBy(this.nativePtr, dx, dy);
	}
	
	public void EnsureVisible()
	{
		CQt.QGraphicsItem_EnsureVisible(this.nativePtr);
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_EnsureVisible2(this.nativePtr, x, y, w, h);
	}
	
	public void Transform()
	{
		CQt.QGraphicsItem_Transform(this.nativePtr);
	}
	
	public void SceneTransform()
	{
		CQt.QGraphicsItem_SceneTransform(this.nativePtr);
	}
	
	public void DeviceTransform(void* viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, viewportTransform);
	}
	
	public void ItemTransform(void* other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, other);
	}
	
	public void SetTransform(void* matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, matrix);
	}
	
	public void ResetTransform()
	{
		CQt.QGraphicsItem_ResetTransform(this.nativePtr);
	}
	
	public void SetRotation(double angle)
	{
		CQt.QGraphicsItem_SetRotation(this.nativePtr, angle);
	}
	
	public double Rotation()
	{
		return CQt.QGraphicsItem_Rotation(this.nativePtr);
	}
	
	public void SetScale(double scale)
	{
		CQt.QGraphicsItem_SetScale(this.nativePtr, scale);
	}
	
	public double Scale()
	{
		return CQt.QGraphicsItem_Scale(this.nativePtr);
	}
	
	public void*[] Transformations()
	{
		return CQt.QGraphicsItem_Transformations(this.nativePtr);
	}
	
	public void SetTransformations(void*[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, transformations);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(void* origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		CQt.QGraphicsItem_Advance(this.nativePtr, phase);
	}
	
	public double ZValue()
	{
		return CQt.QGraphicsItem_ZValue(this.nativePtr);
	}
	
	public void SetZValue(double z)
	{
		CQt.QGraphicsItem_SetZValue(this.nativePtr, z);
	}
	
	public void StackBefore(void* sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public virtual bool Contains(void* point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, point);
	}
	
	public virtual bool CollidesWithItem(void* other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, other, mode);
	}
	
	public virtual bool CollidesWithPath(void* path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return CQt.QGraphicsItem_CollidingItems(this.nativePtr);
	}
	
	public bool IsObscured()
	{
		return CQt.QGraphicsItem_IsObscured(this.nativePtr);
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return CQt.QGraphicsItem_IsObscured2(this.nativePtr, x, y, w, h);
	}
	
	public virtual bool IsObscuredBy(void* item)
	{
		return CQt.QGraphicsItem_IsObscuredBy(this.nativePtr, item);
	}
	
	public virtual void OpaqueArea()
	{
		CQt.QGraphicsItem_OpaqueArea(this.nativePtr);
	}
	
	public void BoundingRegion(void* itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return CQt.QGraphicsItem_BoundingRegionGranularity(this.nativePtr);
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		CQt.QGraphicsItem_SetBoundingRegionGranularity(this.nativePtr, granularity);
	}
	
	public void Update()
	{
		CQt.QGraphicsItem_Update(this.nativePtr);
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		CQt.QGraphicsItem_Update2(this.nativePtr, x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		CQt.QGraphicsItem_Scroll(this.nativePtr, dx, dy);
	}
	
	public void MapToItem(void* item, void* point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, item, point);
	}
	
	public void MapToParent(void* point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, point);
	}
	
	public void MapToScene(void* point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, point);
	}
	
	public void MapRectToItem(void* item, void* rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, item, rect);
	}
	
	public void MapRectToParent(void* rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, rect);
	}
	
	public void MapRectToScene(void* rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, rect);
	}
	
	public void MapToItem4(void* item, void* path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, item, path);
	}
	
	public void MapToParentWithPath(void* path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, path);
	}
	
	public void MapToSceneWithPath(void* path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, path);
	}
	
	public void MapFromItem(void* item, void* point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, item, point);
	}
	
	public void MapFromParent(void* point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, point);
	}
	
	public void MapFromScene(void* point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, point);
	}
	
	public void MapRectFromItem(void* item, void* rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, item, rect);
	}
	
	public void MapRectFromParent(void* rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, rect);
	}
	
	public void MapRectFromScene(void* rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, rect);
	}
	
	public void MapFromItem4(void* item, void* path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, item, path);
	}
	
	public void MapFromParentWithPath(void* path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, path);
	}
	
	public void MapFromSceneWithPath(void* path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, path);
	}
	
	public void MapToItem5(void* item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(void* item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(void* item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(void* item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(void* child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, child);
	}
	
	public void* CommonAncestorItem(void* other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, other);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, void* value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, value);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(void* filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, filterItem);
	}
	
	public void RemoveSceneEventFilter(void* filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, void* cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, focusReason);
	}
	
	public void EnsureVisible1(void* rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, rect);
	}
	
	public void EnsureVisible22(void* rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, rect, xmargin);
	}
	
	public void EnsureVisible3(void* rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, rect, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(void* other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, other, ok);
	}
	
	public void SetTransform2(void* matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, mode);
	}
	
	public bool IsObscured1(void* rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, rect);
	}
	
	public void Update1(void* rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, rect);
	}
	
	public void Scroll3(double dx, double dy, void* rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, rect);
	}
	
	public void SetSizePolicy(void* policy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, policy);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, size);
	}
	
	public void SetMinimumSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize2(this.nativePtr, w, h);
	}
	
	public void MinimumSize()
	{
		CQt.QGraphicsLayoutItem_MinimumSize(this.nativePtr);
	}
	
	public void SetMinimumWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetMinimumWidth(this.nativePtr, width);
	}
	
	public double MinimumWidth()
	{
		return CQt.QGraphicsLayoutItem_MinimumWidth(this.nativePtr);
	}
	
	public void SetMinimumHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetMinimumHeight(this.nativePtr, height);
	}
	
	public double MinimumHeight()
	{
		return CQt.QGraphicsLayoutItem_MinimumHeight(this.nativePtr);
	}
	
	public void SetPreferredSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, size);
	}
	
	public void SetPreferredSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize2(this.nativePtr, w, h);
	}
	
	public void PreferredSize()
	{
		CQt.QGraphicsLayoutItem_PreferredSize(this.nativePtr);
	}
	
	public void SetPreferredWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetPreferredWidth(this.nativePtr, width);
	}
	
	public double PreferredWidth()
	{
		return CQt.QGraphicsLayoutItem_PreferredWidth(this.nativePtr);
	}
	
	public void SetPreferredHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetPreferredHeight(this.nativePtr, height);
	}
	
	public double PreferredHeight()
	{
		return CQt.QGraphicsLayoutItem_PreferredHeight(this.nativePtr);
	}
	
	public void SetMaximumSize(void* size)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, size);
	}
	
	public void SetMaximumSize2(double w, double h)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize2(this.nativePtr, w, h);
	}
	
	public void MaximumSize()
	{
		CQt.QGraphicsLayoutItem_MaximumSize(this.nativePtr);
	}
	
	public void SetMaximumWidth(double width)
	{
		CQt.QGraphicsLayoutItem_SetMaximumWidth(this.nativePtr, width);
	}
	
	public double MaximumWidth()
	{
		return CQt.QGraphicsLayoutItem_MaximumWidth(this.nativePtr);
	}
	
	public void SetMaximumHeight(double height)
	{
		CQt.QGraphicsLayoutItem_SetMaximumHeight(this.nativePtr, height);
	}
	
	public double MaximumHeight()
	{
		return CQt.QGraphicsLayoutItem_MaximumHeight(this.nativePtr);
	}
	
	public void Geometry()
	{
		CQt.QGraphicsLayoutItem_Geometry(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QGraphicsLayoutItem_ContentsRect(this.nativePtr);
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint(this.nativePtr, which);
	}
	
	public virtual bool IsEmpty()
	{
		return CQt.QGraphicsLayoutItem_IsEmpty(this.nativePtr);
	}
	
	public void* ParentLayoutItem()
	{
		return CQt.QGraphicsLayoutItem_ParentLayoutItem(this.nativePtr);
	}
	
	public void SetParentLayoutItem(void* parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, parent);
	}
	
	public bool IsLayout()
	{
		return CQt.QGraphicsLayoutItem_IsLayout(this.nativePtr);
	}
	
	public void* GraphicsItem()
	{
		return CQt.QGraphicsLayoutItem_GraphicsItem(this.nativePtr);
	}
	
	public bool OwnedByLayout()
	{
		return CQt.QGraphicsLayoutItem_OwnedByLayout(this.nativePtr);
	}
	
	public void SetSizePolicy3(int64 hPolicy, int64 vPolicy, int64 controlType)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy3(this.nativePtr, hPolicy, vPolicy, controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, void* constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, which, constraint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsProxyWidget_new")]
	public static extern void* QGraphicsProxyWidget_new();
	[LinkName("QGraphicsProxyWidget_new2")]
	public static extern void* QGraphicsProxyWidget_new2(void* parent);
	[LinkName("QGraphicsProxyWidget_new3")]
	public static extern void* QGraphicsProxyWidget_new3(void* parent, int64 wFlags);
	[LinkName("QGraphicsProxyWidget_MetaObject")]
	public static extern void* QGraphicsProxyWidget_MetaObject(void* c_this);
	[LinkName("QGraphicsProxyWidget_Metacast")]
	public static extern void* QGraphicsProxyWidget_Metacast(void* c_this, char8[] param1);
	[LinkName("QGraphicsProxyWidget_Metacall")]
	public static extern int32 QGraphicsProxyWidget_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QGraphicsProxyWidget_Tr")]
	public static extern libqt_string QGraphicsProxyWidget_Tr(char8[] s);
	[LinkName("QGraphicsProxyWidget_SetWidget")]
	public static extern void QGraphicsProxyWidget_SetWidget(void* c_this, void* widget);
	[LinkName("QGraphicsProxyWidget_Widget")]
	public static extern void* QGraphicsProxyWidget_Widget(void* c_this);
	[LinkName("QGraphicsProxyWidget_SubWidgetRect")]
	public static extern void QGraphicsProxyWidget_SubWidgetRect(void* c_this, void* widget);
	[LinkName("QGraphicsProxyWidget_SetGeometry")]
	public static extern void QGraphicsProxyWidget_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsProxyWidget_Paint")]
	public static extern void QGraphicsProxyWidget_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsProxyWidget_Type")]
	public static extern int32 QGraphicsProxyWidget_Type(void* c_this);
	[LinkName("QGraphicsProxyWidget_CreateProxyForChildWidget")]
	public static extern void* QGraphicsProxyWidget_CreateProxyForChildWidget(void* c_this, void* child);
	[LinkName("QGraphicsProxyWidget_ItemChange")]
	public static extern void QGraphicsProxyWidget_ItemChange(void* c_this, int64 change, void* value);
	[LinkName("QGraphicsProxyWidget_Event")]
	public static extern bool QGraphicsProxyWidget_Event(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_EventFilter")]
	public static extern bool QGraphicsProxyWidget_EventFilter(void* c_this, void* object, void* event);
	[LinkName("QGraphicsProxyWidget_ShowEvent")]
	public static extern void QGraphicsProxyWidget_ShowEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_HideEvent")]
	public static extern void QGraphicsProxyWidget_HideEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_ContextMenuEvent")]
	public static extern void QGraphicsProxyWidget_ContextMenuEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_DragEnterEvent")]
	public static extern void QGraphicsProxyWidget_DragEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_DragLeaveEvent")]
	public static extern void QGraphicsProxyWidget_DragLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_DragMoveEvent")]
	public static extern void QGraphicsProxyWidget_DragMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_DropEvent")]
	public static extern void QGraphicsProxyWidget_DropEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_HoverEnterEvent")]
	public static extern void QGraphicsProxyWidget_HoverEnterEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_HoverLeaveEvent")]
	public static extern void QGraphicsProxyWidget_HoverLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_HoverMoveEvent")]
	public static extern void QGraphicsProxyWidget_HoverMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_GrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_GrabMouseEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_UngrabMouseEvent")]
	public static extern void QGraphicsProxyWidget_UngrabMouseEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_MouseMoveEvent")]
	public static extern void QGraphicsProxyWidget_MouseMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_MousePressEvent")]
	public static extern void QGraphicsProxyWidget_MousePressEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_MouseReleaseEvent")]
	public static extern void QGraphicsProxyWidget_MouseReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_MouseDoubleClickEvent")]
	public static extern void QGraphicsProxyWidget_MouseDoubleClickEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_WheelEvent")]
	public static extern void QGraphicsProxyWidget_WheelEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_KeyPressEvent")]
	public static extern void QGraphicsProxyWidget_KeyPressEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_KeyReleaseEvent")]
	public static extern void QGraphicsProxyWidget_KeyReleaseEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_FocusInEvent")]
	public static extern void QGraphicsProxyWidget_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_FocusOutEvent")]
	public static extern void QGraphicsProxyWidget_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_FocusNextPrevChild")]
	public static extern bool QGraphicsProxyWidget_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsProxyWidget_InputMethodQuery")]
	public static extern void QGraphicsProxyWidget_InputMethodQuery(void* c_this, int64 query);
	[LinkName("QGraphicsProxyWidget_InputMethodEvent")]
	public static extern void QGraphicsProxyWidget_InputMethodEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_SizeHint")]
	public static extern void QGraphicsProxyWidget_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsProxyWidget_ResizeEvent")]
	public static extern void QGraphicsProxyWidget_ResizeEvent(void* c_this, void* event);
	[LinkName("QGraphicsProxyWidget_NewProxyWidget")]
	public static extern void* QGraphicsProxyWidget_NewProxyWidget(void* c_this, void* param1);
	[LinkName("QGraphicsProxyWidget_Tr2")]
	public static extern libqt_string QGraphicsProxyWidget_Tr2(char8[] s, char8[] c);
	[LinkName("QGraphicsProxyWidget_Tr3")]
	public static extern libqt_string QGraphicsProxyWidget_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsProxyWidget_Delete")]
	public static extern void QGraphicsProxyWidget_Delete(void* self);
}