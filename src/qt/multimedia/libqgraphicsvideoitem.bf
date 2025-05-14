using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsVideoItem__
{
	Type = 14,
}
public interface IQGraphicsVideoItem
{
	void* NativePtr { get; }
}
public struct QGraphicsVideoItemPtr : IQGraphicsVideoItem, IDisposable, IQGraphicsObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsVideoItem_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsVideoItem_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsVideoItem_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsVideoItem_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsVideoItem_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsVideoItem_Tr(s);
	}
	
	public void* VideoSink()
	{
		return CQt.QGraphicsVideoItem_VideoSink(this.nativePtr);
	}
	
	public int64 AspectRatioMode()
	{
		return CQt.QGraphicsVideoItem_AspectRatioMode(this.nativePtr);
	}
	
	public void SetAspectRatioMode(int64 mode)
	{
		CQt.QGraphicsVideoItem_SetAspectRatioMode(this.nativePtr, (int64)mode);
	}
	
	public void Offset()
	{
		CQt.QGraphicsVideoItem_Offset(this.nativePtr);
	}
	
	public void SetOffset(IQPointF offset)
	{
		CQt.QGraphicsVideoItem_SetOffset(this.nativePtr, (offset == default || offset.NativePtr == default) ? default : offset.NativePtr);
	}
	
	public void Size()
	{
		CQt.QGraphicsVideoItem_Size(this.nativePtr);
	}
	
	public void SetSize(IQSizeF size)
	{
		CQt.QGraphicsVideoItem_SetSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void NativeSize()
	{
		CQt.QGraphicsVideoItem_NativeSize(this.nativePtr);
	}
	
	public void BoundingRect()
	{
		CQt.QGraphicsVideoItem_BoundingRect(this.nativePtr);
	}
	
	public void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsVideoItem_Paint(this.nativePtr, (painter == default || painter.NativePtr == default) ? default : painter.NativePtr, (option == default || option.NativePtr == default) ? default : option.NativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public int32 Type()
	{
		return CQt.QGraphicsVideoItem_Type(this.nativePtr);
	}
	
	public void TimerEvent(IQTimerEvent event)
	{
		CQt.QGraphicsVideoItem_TimerEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public void ItemChange(int64 change, IQVariant value)
	{
		CQt.QGraphicsVideoItem_ItemChange(this.nativePtr, (int64)change, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsVideoItem_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsVideoItem_Tr3(s, c, n);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_GrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		CQt.QGraphicsObject_UngrabGesture(this.nativePtr, (int64)typeVal);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		CQt.QGraphicsObject_GrabGesture2(this.nativePtr, (int64)typeVal, flags);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == default || group.NativePtr == default) ? default : group.NativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsItem_Flags(this.nativePtr);
	}
	
	public void SetFlag(int64 flag)
	{
		CQt.QGraphicsItem_SetFlag(this.nativePtr, (int64)flag);
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
		CQt.QGraphicsItem_SetCacheMode(this.nativePtr, (int64)mode);
	}
	
	public int64 PanelModality()
	{
		return CQt.QGraphicsItem_PanelModality(this.nativePtr);
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		CQt.QGraphicsItem_SetPanelModality(this.nativePtr, (int64)panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return CQt.QGraphicsItem_IsBlockedByModalPanel(this.nativePtr);
	}
	
	public libqt_string ToolTip()
	{
		return CQt.QGraphicsItem_ToolTip(this.nativePtr);
	}
	
	public void SetToolTip(String toolTip)
	{
		CQt.QGraphicsItem_SetToolTip(this.nativePtr, libqt_string(toolTip));
	}
	
	public void Cursor()
	{
		CQt.QGraphicsItem_Cursor(this.nativePtr);
	}
	
	public void SetCursor(IQCursor cursor)
	{
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default || cursor.NativePtr == default) ? default : cursor.NativePtr);
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
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == default || effect.NativePtr == default) ? default : effect.NativePtr);
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
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
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
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default || viewportTransform.NativePtr == default) ? default : viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr);
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
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		CQt.QGraphicsItem_SetTransformations(this.nativePtr, null);
	}
	
	public void TransformOriginPoint()
	{
		CQt.QGraphicsItem_TransformOriginPoint(this.nativePtr);
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default || origin.NativePtr == default) ? default : origin.NativePtr);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		CQt.QGraphicsItem_SetTransformOriginPoint2(this.nativePtr, ax, ay);
	}
	
	public void Advance(int32 phase)
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
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == default || sibling.NativePtr == default) ? default : sibling.NativePtr);
	}
	
	public void ChildrenBoundingRect()
	{
		CQt.QGraphicsItem_ChildrenBoundingRect(this.nativePtr);
	}
	
	public void SceneBoundingRect()
	{
		CQt.QGraphicsItem_SceneBoundingRect(this.nativePtr);
	}
	
	public void Shape()
	{
		CQt.QGraphicsItem_Shape(this.nativePtr);
	}
	
	public bool IsClipped()
	{
		return CQt.QGraphicsItem_IsClipped(this.nativePtr);
	}
	
	public void ClipPath()
	{
		CQt.QGraphicsItem_ClipPath(this.nativePtr);
	}
	
	public bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, (int64)mode);
	}
	
	public bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr, (int64)mode);
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
	
	public bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsItem_IsObscuredBy(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void OpaqueArea()
	{
		CQt.QGraphicsItem_OpaqueArea(this.nativePtr);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default || itemToDeviceTransform.NativePtr == default) ? default : itemToDeviceTransform.NativePtr);
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
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default || path.NativePtr == default) ? default : path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapToParent2(this.nativePtr, x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapToScene2(this.nativePtr, x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectToScene2(this.nativePtr, x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromParent2(this.nativePtr, x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		CQt.QGraphicsItem_MapFromScene2(this.nativePtr, x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromParent2(this.nativePtr, x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		CQt.QGraphicsItem_MapRectFromScene2(this.nativePtr, x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == default || child.NativePtr == default) ? default : child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr);
	}
	
	public bool IsUnderMouse()
	{
		return CQt.QGraphicsItem_IsUnderMouse(this.nativePtr);
	}
	
	public void Data(int32 key)
	{
		CQt.QGraphicsItem_Data(this.nativePtr, key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public int64 InputMethodHints()
	{
		return CQt.QGraphicsItem_InputMethodHints(this.nativePtr);
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		CQt.QGraphicsItem_SetInputMethodHints(this.nativePtr, hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == default || filterItem.NativePtr == default) ? default : filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, (int64)flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, (int64)mode, (cacheSize == default || cacheSize.NativePtr == default) ? default : cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, (int64)focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr, xmargin, ymargin);
	}
	
	public void EnsureVisible5(double x, double y, double w, double h, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible5(this.nativePtr, x, y, w, h, xmargin);
	}
	
	public void EnsureVisible6(double x, double y, double w, double h, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible6(this.nativePtr, x, y, w, h, xmargin, ymargin);
	}
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == default || other.NativePtr == default) ? default : other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default || matrix.NativePtr == default) ? default : matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, (int64)mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
}
public class QGraphicsVideoItem
{
	public QGraphicsVideoItemPtr handle;
	
	public static implicit operator QGraphicsVideoItemPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsVideoItemPtr.New();
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
		return QGraphicsVideoItemPtr.Tr(s);
	}
	
	public void* VideoSink()
	{
		return this.handle.VideoSink();
	}
	
	public int64 AspectRatioMode()
	{
		return this.handle.AspectRatioMode();
	}
	
	public void SetAspectRatioMode(int64 mode)
	{
		this.handle.SetAspectRatioMode(mode);
	}
	
	public void Offset()
	{
		this.handle.Offset();
	}
	
	public void SetOffset(IQPointF offset)
	{
		this.handle.SetOffset(offset);
	}
	
	public void Size()
	{
		this.handle.Size();
	}
	
	public void SetSize(IQSizeF size)
	{
		this.handle.SetSize(size);
	}
	
	public void NativeSize()
	{
		this.handle.NativeSize();
	}
	
	public virtual void BoundingRect()
	{
		this.handle.BoundingRect();
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		this.handle.Paint(painter, option, widget);
	}
	
	public virtual int32 Type()
	{
		return this.handle.Type();
	}
	
	public virtual void TimerEvent(IQTimerEvent event)
	{
		this.handle.TimerEvent(event);
	}
	
	public virtual void ItemChange(int64 change, IQVariant value)
	{
		this.handle.ItemChange(change, value);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsVideoItemPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsVideoItemPtr.Tr3(s, c, n);
	}
	
	public void GrabGesture(int64 typeVal)
	{
		this.handle.GrabGesture(typeVal);
	}
	
	public void UngrabGesture(int64 typeVal)
	{
		this.handle.UngrabGesture(typeVal);
	}
	
	public void GrabGesture2(int64 typeVal, int64 flags)
	{
		this.handle.GrabGesture2(typeVal, flags);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
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
		QGraphicsVideoItemPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsVideoItemPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsVideoItemPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGraphicsVideoItemPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public void* Scene()
	{
		return this.handle.Scene();
	}
	
	public void* ParentItem()
	{
		return this.handle.ParentItem();
	}
	
	public void* TopLevelItem()
	{
		return this.handle.TopLevelItem();
	}
	
	public void* ParentObject()
	{
		return this.handle.ParentObject();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public void* TopLevelWidget()
	{
		return this.handle.TopLevelWidget();
	}
	
	public void* Window()
	{
		return this.handle.Window();
	}
	
	public void* Panel()
	{
		return this.handle.Panel();
	}
	
	public void SetParentItem(IQGraphicsItem parent)
	{
		this.handle.SetParentItem(parent);
	}
	
	public void*[] ChildItems()
	{
		return this.handle.ChildItems();
	}
	
	public bool IsWidget()
	{
		return this.handle.IsWidget();
	}
	
	public bool IsWindow()
	{
		return this.handle.IsWindow();
	}
	
	public bool IsPanel()
	{
		return this.handle.IsPanel();
	}
	
	public void* ToGraphicsObject()
	{
		return this.handle.ToGraphicsObject();
	}
	
	public void* ToGraphicsObject2()
	{
		return this.handle.ToGraphicsObject2();
	}
	
	public void* Group()
	{
		return this.handle.Group();
	}
	
	public void SetGroup(IQGraphicsItemGroup group)
	{
		this.handle.SetGroup(group);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlag(int64 flag)
	{
		this.handle.SetFlag(flag);
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public int64 CacheMode()
	{
		return this.handle.CacheMode();
	}
	
	public void SetCacheMode(int64 mode)
	{
		this.handle.SetCacheMode(mode);
	}
	
	public int64 PanelModality()
	{
		return this.handle.PanelModality();
	}
	
	public void SetPanelModality(int64 panelModality)
	{
		this.handle.SetPanelModality(panelModality);
	}
	
	public bool IsBlockedByModalPanel()
	{
		return this.handle.IsBlockedByModalPanel();
	}
	
	public libqt_string ToolTip()
	{
		return this.handle.ToolTip();
	}
	
	public void SetToolTip(String toolTip)
	{
		this.handle.SetToolTip(toolTip);
	}
	
	public void Cursor()
	{
		this.handle.Cursor();
	}
	
	public void SetCursor(IQCursor cursor)
	{
		this.handle.SetCursor(cursor);
	}
	
	public bool HasCursor()
	{
		return this.handle.HasCursor();
	}
	
	public void UnsetCursor()
	{
		this.handle.UnsetCursor();
	}
	
	public bool IsVisible()
	{
		return this.handle.IsVisible();
	}
	
	public bool IsVisibleTo(IQGraphicsItem parent)
	{
		return this.handle.IsVisibleTo(parent);
	}
	
	public void SetVisible(bool visible)
	{
		this.handle.SetVisible(visible);
	}
	
	public void Hide()
	{
		this.handle.Hide();
	}
	
	public void Show()
	{
		this.handle.Show();
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsSelected()
	{
		return this.handle.IsSelected();
	}
	
	public void SetSelected(bool selected)
	{
		this.handle.SetSelected(selected);
	}
	
	public bool AcceptDrops()
	{
		return this.handle.AcceptDrops();
	}
	
	public void SetAcceptDrops(bool on)
	{
		this.handle.SetAcceptDrops(on);
	}
	
	public double Opacity()
	{
		return this.handle.Opacity();
	}
	
	public double EffectiveOpacity()
	{
		return this.handle.EffectiveOpacity();
	}
	
	public void SetOpacity(double opacity)
	{
		this.handle.SetOpacity(opacity);
	}
	
	public void* GraphicsEffect()
	{
		return this.handle.GraphicsEffect();
	}
	
	public void SetGraphicsEffect(IQGraphicsEffect effect)
	{
		this.handle.SetGraphicsEffect(effect);
	}
	
	public int64 AcceptedMouseButtons()
	{
		return this.handle.AcceptedMouseButtons();
	}
	
	public void SetAcceptedMouseButtons(int64 buttons)
	{
		this.handle.SetAcceptedMouseButtons(buttons);
	}
	
	public bool AcceptHoverEvents()
	{
		return this.handle.AcceptHoverEvents();
	}
	
	public void SetAcceptHoverEvents(bool enabled)
	{
		this.handle.SetAcceptHoverEvents(enabled);
	}
	
	public bool AcceptTouchEvents()
	{
		return this.handle.AcceptTouchEvents();
	}
	
	public void SetAcceptTouchEvents(bool enabled)
	{
		this.handle.SetAcceptTouchEvents(enabled);
	}
	
	public bool FiltersChildEvents()
	{
		return this.handle.FiltersChildEvents();
	}
	
	public void SetFiltersChildEvents(bool enabled)
	{
		this.handle.SetFiltersChildEvents(enabled);
	}
	
	public bool HandlesChildEvents()
	{
		return this.handle.HandlesChildEvents();
	}
	
	public void SetHandlesChildEvents(bool enabled)
	{
		this.handle.SetHandlesChildEvents(enabled);
	}
	
	public bool IsActive()
	{
		return this.handle.IsActive();
	}
	
	public void SetActive(bool active)
	{
		this.handle.SetActive(active);
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
	
	public void* FocusProxy()
	{
		return this.handle.FocusProxy();
	}
	
	public void SetFocusProxy(IQGraphicsItem item)
	{
		this.handle.SetFocusProxy(item);
	}
	
	public void* FocusItem()
	{
		return this.handle.FocusItem();
	}
	
	public void* FocusScopeItem()
	{
		return this.handle.FocusScopeItem();
	}
	
	public void GrabMouse()
	{
		this.handle.GrabMouse();
	}
	
	public void UngrabMouse()
	{
		this.handle.UngrabMouse();
	}
	
	public void GrabKeyboard()
	{
		this.handle.GrabKeyboard();
	}
	
	public void UngrabKeyboard()
	{
		this.handle.UngrabKeyboard();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public double X()
	{
		return this.handle.X();
	}
	
	public void SetX(double x)
	{
		this.handle.SetX(x);
	}
	
	public double Y()
	{
		return this.handle.Y();
	}
	
	public void SetY(double y)
	{
		this.handle.SetY(y);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void SetPos2(double x, double y)
	{
		this.handle.SetPos2(x, y);
	}
	
	public void MoveBy(double dx, double dy)
	{
		this.handle.MoveBy(dx, dy);
	}
	
	public void EnsureVisible()
	{
		this.handle.EnsureVisible();
	}
	
	public void EnsureVisible2(double x, double y, double w, double h)
	{
		this.handle.EnsureVisible2(x, y, w, h);
	}
	
	public void Transform()
	{
		this.handle.Transform();
	}
	
	public void SceneTransform()
	{
		this.handle.SceneTransform();
	}
	
	public void DeviceTransform(IQTransform viewportTransform)
	{
		this.handle.DeviceTransform(viewportTransform);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		this.handle.ItemTransform(other);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		this.handle.SetTransform(matrix);
	}
	
	public void ResetTransform()
	{
		this.handle.ResetTransform();
	}
	
	public void SetRotation(double angle)
	{
		this.handle.SetRotation(angle);
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public void SetScale(double scale)
	{
		this.handle.SetScale(scale);
	}
	
	public double Scale()
	{
		return this.handle.Scale();
	}
	
	public void*[] Transformations()
	{
		return this.handle.Transformations();
	}
	
	public void SetTransformations(IQGraphicsTransform[] transformations)
	{
		this.handle.SetTransformations(null);
	}
	
	public void TransformOriginPoint()
	{
		this.handle.TransformOriginPoint();
	}
	
	public void SetTransformOriginPoint(IQPointF origin)
	{
		this.handle.SetTransformOriginPoint(origin);
	}
	
	public void SetTransformOriginPoint2(double ax, double ay)
	{
		this.handle.SetTransformOriginPoint2(ax, ay);
	}
	
	public virtual void Advance(int32 phase)
	{
		this.handle.Advance(phase);
	}
	
	public double ZValue()
	{
		return this.handle.ZValue();
	}
	
	public void SetZValue(double z)
	{
		this.handle.SetZValue(z);
	}
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		this.handle.StackBefore(sibling);
	}
	
	public void ChildrenBoundingRect()
	{
		this.handle.ChildrenBoundingRect();
	}
	
	public void SceneBoundingRect()
	{
		this.handle.SceneBoundingRect();
	}
	
	public virtual void Shape()
	{
		this.handle.Shape();
	}
	
	public bool IsClipped()
	{
		return this.handle.IsClipped();
	}
	
	public void ClipPath()
	{
		this.handle.ClipPath();
	}
	
	public virtual bool Contains(IQPointF point)
	{
		return this.handle.Contains(point);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return this.handle.CollidesWithItem(other, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return this.handle.CollidesWithPath(path, mode);
	}
	
	public void*[] CollidingItems()
	{
		return this.handle.CollidingItems();
	}
	
	public bool IsObscured()
	{
		return this.handle.IsObscured();
	}
	
	public bool IsObscured2(double x, double y, double w, double h)
	{
		return this.handle.IsObscured2(x, y, w, h);
	}
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return this.handle.IsObscuredBy(item);
	}
	
	public virtual void OpaqueArea()
	{
		this.handle.OpaqueArea();
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		this.handle.BoundingRegion(itemToDeviceTransform);
	}
	
	public double BoundingRegionGranularity()
	{
		return this.handle.BoundingRegionGranularity();
	}
	
	public void SetBoundingRegionGranularity(double granularity)
	{
		this.handle.SetBoundingRegionGranularity(granularity);
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void Update2(double x, double y, double width, double height)
	{
		this.handle.Update2(x, y, width, height);
	}
	
	public void Scroll(double dx, double dy)
	{
		this.handle.Scroll(dx, dy);
	}
	
	public void MapToItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapToItem(item, point);
	}
	
	public void MapToParent(IQPointF point)
	{
		this.handle.MapToParent(point);
	}
	
	public void MapToScene(IQPointF point)
	{
		this.handle.MapToScene(point);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectToItem(item, rect);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		this.handle.MapRectToParent(rect);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		this.handle.MapRectToScene(rect);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapToItem4(item, path);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		this.handle.MapToParentWithPath(path);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		this.handle.MapToSceneWithPath(path);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		this.handle.MapFromItem(item, point);
	}
	
	public void MapFromParent(IQPointF point)
	{
		this.handle.MapFromParent(point);
	}
	
	public void MapFromScene(IQPointF point)
	{
		this.handle.MapFromScene(point);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		this.handle.MapRectFromItem(item, rect);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		this.handle.MapRectFromParent(rect);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		this.handle.MapRectFromScene(rect);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		this.handle.MapFromItem4(item, path);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		this.handle.MapFromParentWithPath(path);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		this.handle.MapFromSceneWithPath(path);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapToItem5(item, x, y);
	}
	
	public void MapToParent2(double x, double y)
	{
		this.handle.MapToParent2(x, y);
	}
	
	public void MapToScene2(double x, double y)
	{
		this.handle.MapToScene2(x, y);
	}
	
	public void MapRectToItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectToItem2(item, x, y, w, h);
	}
	
	public void MapRectToParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectToParent2(x, y, w, h);
	}
	
	public void MapRectToScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectToScene2(x, y, w, h);
	}
	
	public void MapFromItem5(IQGraphicsItem item, double x, double y)
	{
		this.handle.MapFromItem5(item, x, y);
	}
	
	public void MapFromParent2(double x, double y)
	{
		this.handle.MapFromParent2(x, y);
	}
	
	public void MapFromScene2(double x, double y)
	{
		this.handle.MapFromScene2(x, y);
	}
	
	public void MapRectFromItem2(IQGraphicsItem item, double x, double y, double w, double h)
	{
		this.handle.MapRectFromItem2(item, x, y, w, h);
	}
	
	public void MapRectFromParent2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromParent2(x, y, w, h);
	}
	
	public void MapRectFromScene2(double x, double y, double w, double h)
	{
		this.handle.MapRectFromScene2(x, y, w, h);
	}
	
	public bool IsAncestorOf(IQGraphicsItem child)
	{
		return this.handle.IsAncestorOf(child);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return this.handle.CommonAncestorItem(other);
	}
	
	public bool IsUnderMouse()
	{
		return this.handle.IsUnderMouse();
	}
	
	public void Data(int32 key)
	{
		this.handle.Data(key);
	}
	
	public void SetData(int32 key, IQVariant value)
	{
		this.handle.SetData(key, value);
	}
	
	public int64 InputMethodHints()
	{
		return this.handle.InputMethodHints();
	}
	
	public void SetInputMethodHints(int64 hints)
	{
		this.handle.SetInputMethodHints(hints);
	}
	
	public void InstallSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.InstallSceneEventFilter(filterItem);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		this.handle.RemoveSceneEventFilter(filterItem);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		this.handle.SetFlag2(flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		this.handle.SetCacheMode2(mode, cacheSize);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		this.handle.SetFocus1(focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		this.handle.EnsureVisible1(rect);
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
	
	public void ItemTransform2(IQGraphicsItem other, bool* ok)
	{
		this.handle.ItemTransform2(other, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		this.handle.SetTransform2(matrix, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return this.handle.CollidingItems1(mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return this.handle.IsObscured1(rect);
	}
	
	public void Update1(IQRectF rect)
	{
		this.handle.Update1(rect);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		this.handle.Scroll3(dx, dy, rect);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsVideoItem_new")]
	public static extern void* QGraphicsVideoItem_new();
	[LinkName("QGraphicsVideoItem_new2")]
	public static extern void* QGraphicsVideoItem_new2(void* parent);
	[LinkName("QGraphicsVideoItem_MetaObject")]
	public static extern void* QGraphicsVideoItem_MetaObject(void* c_this);
	[LinkName("QGraphicsVideoItem_Metacast")]
	public static extern void* QGraphicsVideoItem_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsVideoItem_Metacall")]
	public static extern int32 QGraphicsVideoItem_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsVideoItem_Tr")]
	public static extern libqt_string QGraphicsVideoItem_Tr(char8* s);
	[LinkName("QGraphicsVideoItem_VideoSink")]
	public static extern void* QGraphicsVideoItem_VideoSink(void* c_this);
	[LinkName("QGraphicsVideoItem_AspectRatioMode")]
	public static extern int64 QGraphicsVideoItem_AspectRatioMode(void* c_this);
	[LinkName("QGraphicsVideoItem_SetAspectRatioMode")]
	public static extern void QGraphicsVideoItem_SetAspectRatioMode(void* c_this, int64 mode);
	[LinkName("QGraphicsVideoItem_Offset")]
	public static extern void QGraphicsVideoItem_Offset(void* c_this);
	[LinkName("QGraphicsVideoItem_SetOffset")]
	public static extern void QGraphicsVideoItem_SetOffset(void* c_this, void* offset);
	[LinkName("QGraphicsVideoItem_Size")]
	public static extern void QGraphicsVideoItem_Size(void* c_this);
	[LinkName("QGraphicsVideoItem_SetSize")]
	public static extern void QGraphicsVideoItem_SetSize(void* c_this, void* size);
	[LinkName("QGraphicsVideoItem_NativeSize")]
	public static extern void QGraphicsVideoItem_NativeSize(void* c_this);
	[LinkName("QGraphicsVideoItem_BoundingRect")]
	public static extern void QGraphicsVideoItem_BoundingRect(void* c_this);
	[LinkName("QGraphicsVideoItem_Paint")]
	public static extern void QGraphicsVideoItem_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsVideoItem_Type")]
	public static extern int32 QGraphicsVideoItem_Type(void* c_this);
	[LinkName("QGraphicsVideoItem_Connect_NativeSizeChanged")]
	public static extern void QGraphicsVideoItem_Connect_NativeSizeChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsVideoItem_TimerEvent")]
	public static extern void QGraphicsVideoItem_TimerEvent(void* c_this, void* event);
	[LinkName("QGraphicsVideoItem_ItemChange")]
	public static extern void QGraphicsVideoItem_ItemChange(void* c_this, int64 change, void* value);
	[LinkName("QGraphicsVideoItem_Tr2")]
	public static extern libqt_string QGraphicsVideoItem_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsVideoItem_Tr3")]
	public static extern libqt_string QGraphicsVideoItem_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsVideoItem_Delete")]
	public static extern void QGraphicsVideoItem_Delete(void* self);
}