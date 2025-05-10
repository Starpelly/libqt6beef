using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsWidget__
{
	Type = 11,
}
public interface IQGraphicsWidget
{
	void* NativePtr { get; }
}
public class QGraphicsWidget : IQGraphicsWidget, IQGraphicsObject, IQGraphicsLayoutItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsWidget_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsWidget_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGraphicsWidget_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QGraphicsWidget_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGraphicsWidget_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsWidget_Tr(s);
	}
	
	public void* Layout()
	{
		return CQt.QGraphicsWidget_Layout(this.nativePtr);
	}
	
	public void SetLayout(IQGraphicsLayout layout)
	{
		CQt.QGraphicsWidget_SetLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
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
	
	public void SetStyle(IQStyle style)
	{
		CQt.QGraphicsWidget_SetStyle(this.nativePtr, (style == null) ? null : (void*)style.NativePtr);
	}
	
	public void Font()
	{
		CQt.QGraphicsWidget_Font(this.nativePtr);
	}
	
	public void SetFont(IQFont font)
	{
		CQt.QGraphicsWidget_SetFont(this.nativePtr, (font == default) ? default : (void*)font.NativePtr);
	}
	
	public void Palette()
	{
		CQt.QGraphicsWidget_Palette(this.nativePtr);
	}
	
	public void SetPalette(IQPalette palette)
	{
		CQt.QGraphicsWidget_SetPalette(this.nativePtr, (palette == default) ? default : (void*)palette.NativePtr);
	}
	
	public bool AutoFillBackground()
	{
		return CQt.QGraphicsWidget_AutoFillBackground(this.nativePtr);
	}
	
	public void SetAutoFillBackground(bool enabled)
	{
		CQt.QGraphicsWidget_SetAutoFillBackground(this.nativePtr, enabled);
	}
	
	public void Resize(IQSizeF size)
	{
		CQt.QGraphicsWidget_Resize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
	}
	
	public void Resize2(double w, double h)
	{
		CQt.QGraphicsWidget_Resize2(this.nativePtr, w, h);
	}
	
	public void Size()
	{
		CQt.QGraphicsWidget_Size(this.nativePtr);
	}
	
	public virtual void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsWidget_SetGeometry(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
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
	
	public void SetContentsMarginsWithMargins(IQMarginsF margins)
	{
		CQt.QGraphicsWidget_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void)margins.NativePtr);
	}
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsWidget_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetWindowFrameMargins(double left, double top, double right, double bottom)
	{
		CQt.QGraphicsWidget_SetWindowFrameMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetWindowFrameMarginsWithMargins(IQMarginsF margins)
	{
		CQt.QGraphicsWidget_SetWindowFrameMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void)margins.NativePtr);
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
	
	public void SetWindowTitle(String title)
	{
		CQt.QGraphicsWidget_SetWindowTitle(this.nativePtr, libqt_string(title));
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
	
	public static void SetTabOrder(IQGraphicsWidget first, IQGraphicsWidget second)
	{
		CQt.QGraphicsWidget_SetTabOrder((first == null) ? null : (void*)first.NativePtr, (second == null) ? null : (void*)second.NativePtr);
	}
	
	public void* FocusWidget()
	{
		return CQt.QGraphicsWidget_FocusWidget(this.nativePtr);
	}
	
	public int32 GrabShortcut(IQKeySequence sequence)
	{
		return CQt.QGraphicsWidget_GrabShortcut(this.nativePtr, (sequence == default) ? default : (void*)sequence.NativePtr);
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
	
	public void AddAction(IQAction action)
	{
		CQt.QGraphicsWidget_AddAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void AddActions(IQAction[] actions)
	{
		CQt.QGraphicsWidget_AddActions(this.nativePtr, null);
	}
	
	public void InsertActions(IQAction before, IQAction[] actions)
	{
		CQt.QGraphicsWidget_InsertActions(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, null);
	}
	
	public void InsertAction(IQAction before, IQAction action)
	{
		CQt.QGraphicsWidget_InsertAction(this.nativePtr, (before == null) ? null : (void*)before.NativePtr, (action == null) ? null : (void*)action.NativePtr);
	}
	
	public void RemoveAction(IQAction action)
	{
		CQt.QGraphicsWidget_RemoveAction(this.nativePtr, (action == null) ? null : (void*)action.NativePtr);
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
	
	public virtual int32 Type()
	{
		return CQt.QGraphicsWidget_Type(this.nativePtr);
	}
	
	public virtual void Paint(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsWidget_Paint(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
	}
	
	public virtual void PaintWindowFrame(IQPainter painter, IQStyleOptionGraphicsItem option, IQWidget widget)
	{
		CQt.QGraphicsWidget_PaintWindowFrame(this.nativePtr, (painter == null) ? null : (void*)painter.NativePtr, (option == null) ? null : (void*)option.NativePtr, (widget == null) ? null : (void*)widget.NativePtr);
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
	
	public virtual void InitStyleOption(IQStyleOption option)
	{
		CQt.QGraphicsWidget_InitStyleOption(this.nativePtr, (option == null) ? null : (void*)option.NativePtr);
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsWidget_SizeHint(this.nativePtr, which, (constraint == default) ? default : (void*)constraint.NativePtr);
	}
	
	public virtual void UpdateGeometry()
	{
		CQt.QGraphicsWidget_UpdateGeometry(this.nativePtr);
	}
	
	public virtual void ItemChange(int64 change, IQVariant value)
	{
		CQt.QGraphicsWidget_ItemChange(this.nativePtr, change, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public virtual void PropertyChange(String propertyName, IQVariant value)
	{
		CQt.QGraphicsWidget_PropertyChange(this.nativePtr, libqt_string(propertyName), (value == default) ? default : (void*)value.NativePtr);
	}
	
	public virtual bool SceneEvent(IQEvent event)
	{
		return CQt.QGraphicsWidget_SceneEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool WindowFrameEvent(IQEvent e)
	{
		return CQt.QGraphicsWidget_WindowFrameEvent(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public virtual int64 WindowFrameSectionAt(IQPointF pos)
	{
		return CQt.QGraphicsWidget_WindowFrameSectionAt(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QGraphicsWidget_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ChangeEvent(IQEvent event)
	{
		CQt.QGraphicsWidget_ChangeEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void CloseEvent(IQCloseEvent event)
	{
		CQt.QGraphicsWidget_CloseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void FocusInEvent(IQFocusEvent event)
	{
		CQt.QGraphicsWidget_FocusInEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool FocusNextPrevChild(bool next)
	{
		return CQt.QGraphicsWidget_FocusNextPrevChild(this.nativePtr, next);
	}
	
	public virtual void FocusOutEvent(IQFocusEvent event)
	{
		CQt.QGraphicsWidget_FocusOutEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void HideEvent(IQHideEvent event)
	{
		CQt.QGraphicsWidget_HideEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void MoveEvent(IQGraphicsSceneMoveEvent event)
	{
		CQt.QGraphicsWidget_MoveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void PolishEvent()
	{
		CQt.QGraphicsWidget_PolishEvent(this.nativePtr);
	}
	
	public virtual void ResizeEvent(IQGraphicsSceneResizeEvent event)
	{
		CQt.QGraphicsWidget_ResizeEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void ShowEvent(IQShowEvent event)
	{
		CQt.QGraphicsWidget_ShowEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void HoverMoveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsWidget_HoverMoveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void HoverLeaveEvent(IQGraphicsSceneHoverEvent event)
	{
		CQt.QGraphicsWidget_HoverLeaveEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void GrabMouseEvent(IQEvent event)
	{
		CQt.QGraphicsWidget_GrabMouseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void UngrabMouseEvent(IQEvent event)
	{
		CQt.QGraphicsWidget_UngrabMouseEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void GrabKeyboardEvent(IQEvent event)
	{
		CQt.QGraphicsWidget_GrabKeyboardEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual void UngrabKeyboardEvent(IQEvent event)
	{
		CQt.QGraphicsWidget_UngrabKeyboardEvent(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsWidget_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsWidget_Tr3(s, c, n);
	}
	
	public int32 GrabShortcut2(IQKeySequence sequence, int64 context)
	{
		return CQt.QGraphicsWidget_GrabShortcut2(this.nativePtr, (sequence == default) ? default : (void*)sequence.NativePtr, context);
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
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
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
		CQt.QGraphicsItem_SetParentItem(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
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
		CQt.QGraphicsItem_SetGroup(this.nativePtr, (group == null) ? null : (void*)group.NativePtr);
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
		CQt.QGraphicsItem_SetCursor(this.nativePtr, (cursor == default) ? default : (void*)cursor.NativePtr);
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
		return CQt.QGraphicsItem_IsVisibleTo(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
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
		CQt.QGraphicsItem_SetGraphicsEffect(this.nativePtr, (effect == null) ? null : (void*)effect.NativePtr);
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
		CQt.QGraphicsItem_SetFocusProxy(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
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
		CQt.QGraphicsItem_SetPos(this.nativePtr, (pos == default) ? default : (void*)pos.NativePtr);
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
		CQt.QGraphicsItem_DeviceTransform(this.nativePtr, (viewportTransform == default) ? default : (void*)viewportTransform.NativePtr);
	}
	
	public void ItemTransform(IQGraphicsItem other)
	{
		CQt.QGraphicsItem_ItemTransform(this.nativePtr, (other == null) ? null : (void*)other.NativePtr);
	}
	
	public void SetTransform(IQTransform matrix)
	{
		CQt.QGraphicsItem_SetTransform(this.nativePtr, (matrix == default) ? default : (void*)matrix.NativePtr);
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
		CQt.QGraphicsItem_SetTransformOriginPoint(this.nativePtr, (origin == default) ? default : (void*)origin.NativePtr);
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
	
	public void StackBefore(IQGraphicsItem sibling)
	{
		CQt.QGraphicsItem_StackBefore(this.nativePtr, (sibling == null) ? null : (void*)sibling.NativePtr);
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
	
	public virtual bool Contains(IQPointF point)
	{
		return CQt.QGraphicsItem_Contains(this.nativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public virtual bool CollidesWithItem(IQGraphicsItem other, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithItem(this.nativePtr, (other == null) ? null : (void*)other.NativePtr, mode);
	}
	
	public virtual bool CollidesWithPath(IQPainterPath path, int64 mode)
	{
		return CQt.QGraphicsItem_CollidesWithPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr, mode);
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
	
	public virtual bool IsObscuredBy(IQGraphicsItem item)
	{
		return CQt.QGraphicsItem_IsObscuredBy(this.nativePtr, (item == null) ? null : (void*)item.NativePtr);
	}
	
	public virtual void OpaqueArea()
	{
		CQt.QGraphicsItem_OpaqueArea(this.nativePtr);
	}
	
	public void BoundingRegion(IQTransform itemToDeviceTransform)
	{
		CQt.QGraphicsItem_BoundingRegion(this.nativePtr, (itemToDeviceTransform == default) ? default : (void*)itemToDeviceTransform.NativePtr);
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
		CQt.QGraphicsItem_MapToItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapToParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapToParent(this.nativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapToScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapToScene(this.nativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapRectToItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapRectToParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToParent(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapRectToScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectToScene(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapToItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToItem4(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapToParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToParentWithPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapToSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapToSceneWithPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapFromItem(IQGraphicsItem item, IQPointF point)
	{
		CQt.QGraphicsItem_MapFromItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapFromParent(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromParent(this.nativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapFromScene(IQPointF point)
	{
		CQt.QGraphicsItem_MapFromScene(this.nativePtr, (point == default) ? default : (void*)point.NativePtr);
	}
	
	public void MapRectFromItem(IQGraphicsItem item, IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapRectFromParent(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromParent(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapRectFromScene(IQRectF rect)
	{
		CQt.QGraphicsItem_MapRectFromScene(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void MapFromItem4(IQGraphicsItem item, IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromItem4(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapFromParentWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromParentWithPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapFromSceneWithPath(IQPainterPath path)
	{
		CQt.QGraphicsItem_MapFromSceneWithPath(this.nativePtr, (path == default) ? default : (void*)path.NativePtr);
	}
	
	public void MapToItem5(IQGraphicsItem item, double x, double y)
	{
		CQt.QGraphicsItem_MapToItem5(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, x, y);
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
		CQt.QGraphicsItem_MapRectToItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, x, y, w, h);
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
		CQt.QGraphicsItem_MapFromItem5(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, x, y);
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
		CQt.QGraphicsItem_MapRectFromItem2(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, x, y, w, h);
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
		return CQt.QGraphicsItem_IsAncestorOf(this.nativePtr, (child == null) ? null : (void*)child.NativePtr);
	}
	
	public void* CommonAncestorItem(IQGraphicsItem other)
	{
		return CQt.QGraphicsItem_CommonAncestorItem(this.nativePtr, (other == null) ? null : (void*)other.NativePtr);
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
		CQt.QGraphicsItem_SetData(this.nativePtr, key, (value == default) ? default : (void*)value.NativePtr);
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
		CQt.QGraphicsItem_InstallSceneEventFilter(this.nativePtr, (filterItem == null) ? null : (void*)filterItem.NativePtr);
	}
	
	public void RemoveSceneEventFilter(IQGraphicsItem filterItem)
	{
		CQt.QGraphicsItem_RemoveSceneEventFilter(this.nativePtr, (filterItem == null) ? null : (void*)filterItem.NativePtr);
	}
	
	public void SetFlag2(int64 flag, bool enabled)
	{
		CQt.QGraphicsItem_SetFlag2(this.nativePtr, flag, enabled);
	}
	
	public void SetCacheMode2(int64 mode, IQSize cacheSize)
	{
		CQt.QGraphicsItem_SetCacheMode2(this.nativePtr, mode, (cacheSize == default) ? default : (void*)cacheSize.NativePtr);
	}
	
	public void SetFocus1(int64 focusReason)
	{
		CQt.QGraphicsItem_SetFocus1(this.nativePtr, focusReason);
	}
	
	public void EnsureVisible1(IQRectF rect)
	{
		CQt.QGraphicsItem_EnsureVisible1(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void EnsureVisible22(IQRectF rect, int32 xmargin)
	{
		CQt.QGraphicsItem_EnsureVisible22(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xmargin);
	}
	
	public void EnsureVisible3(IQRectF rect, int32 xmargin, int32 ymargin)
	{
		CQt.QGraphicsItem_EnsureVisible3(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr, xmargin, ymargin);
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
		CQt.QGraphicsItem_ItemTransform2(this.nativePtr, (other == null) ? null : (void*)other.NativePtr, ok);
	}
	
	public void SetTransform2(IQTransform matrix, bool combine)
	{
		CQt.QGraphicsItem_SetTransform2(this.nativePtr, (matrix == default) ? default : (void*)matrix.NativePtr, combine);
	}
	
	public void*[] CollidingItems1(int64 mode)
	{
		return CQt.QGraphicsItem_CollidingItems1(this.nativePtr, mode);
	}
	
	public bool IsObscured1(IQRectF rect)
	{
		return CQt.QGraphicsItem_IsObscured1(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void Update1(IQRectF rect)
	{
		CQt.QGraphicsItem_Update1(this.nativePtr, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void Scroll3(double dx, double dy, IQRectF rect)
	{
		CQt.QGraphicsItem_Scroll3(this.nativePtr, dx, dy, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public void SetSizePolicy(IQSizePolicy policy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, (policy == default) ? default : (void*)policy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
	
	public void SetPreferredSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
	
	public void SetMaximumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, (size == default) ? default : (void*)size.NativePtr);
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
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
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
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, which, (constraint == default) ? default : (void*)constraint.NativePtr);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsWidget_new")]
	public static extern void* QGraphicsWidget_new();
	[LinkName("QGraphicsWidget_new2")]
	public static extern void* QGraphicsWidget_new2(void* parent);
	[LinkName("QGraphicsWidget_new3")]
	public static extern void* QGraphicsWidget_new3(void* parent, int64 wFlags);
	[LinkName("QGraphicsWidget_MetaObject")]
	public static extern void* QGraphicsWidget_MetaObject(void* c_this);
	[LinkName("QGraphicsWidget_Metacast")]
	public static extern void* QGraphicsWidget_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsWidget_Metacall")]
	public static extern int32 QGraphicsWidget_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsWidget_Tr")]
	public static extern libqt_string QGraphicsWidget_Tr(char8* s);
	[LinkName("QGraphicsWidget_Layout")]
	public static extern void* QGraphicsWidget_Layout(void* c_this);
	[LinkName("QGraphicsWidget_SetLayout")]
	public static extern void QGraphicsWidget_SetLayout(void* c_this, void* layout);
	[LinkName("QGraphicsWidget_AdjustSize")]
	public static extern void QGraphicsWidget_AdjustSize(void* c_this);
	[LinkName("QGraphicsWidget_LayoutDirection")]
	public static extern int64 QGraphicsWidget_LayoutDirection(void* c_this);
	[LinkName("QGraphicsWidget_SetLayoutDirection")]
	public static extern void QGraphicsWidget_SetLayoutDirection(void* c_this, int64 direction);
	[LinkName("QGraphicsWidget_UnsetLayoutDirection")]
	public static extern void QGraphicsWidget_UnsetLayoutDirection(void* c_this);
	[LinkName("QGraphicsWidget_Style")]
	public static extern void* QGraphicsWidget_Style(void* c_this);
	[LinkName("QGraphicsWidget_SetStyle")]
	public static extern void QGraphicsWidget_SetStyle(void* c_this, void* style);
	[LinkName("QGraphicsWidget_Font")]
	public static extern void QGraphicsWidget_Font(void* c_this);
	[LinkName("QGraphicsWidget_SetFont")]
	public static extern void QGraphicsWidget_SetFont(void* c_this, void* font);
	[LinkName("QGraphicsWidget_Palette")]
	public static extern void QGraphicsWidget_Palette(void* c_this);
	[LinkName("QGraphicsWidget_SetPalette")]
	public static extern void QGraphicsWidget_SetPalette(void* c_this, void* palette);
	[LinkName("QGraphicsWidget_AutoFillBackground")]
	public static extern bool QGraphicsWidget_AutoFillBackground(void* c_this);
	[LinkName("QGraphicsWidget_SetAutoFillBackground")]
	public static extern void QGraphicsWidget_SetAutoFillBackground(void* c_this, bool enabled);
	[LinkName("QGraphicsWidget_Resize")]
	public static extern void QGraphicsWidget_Resize(void* c_this, void* size);
	[LinkName("QGraphicsWidget_Resize2")]
	public static extern void QGraphicsWidget_Resize2(void* c_this, double w, double h);
	[LinkName("QGraphicsWidget_Size")]
	public static extern void QGraphicsWidget_Size(void* c_this);
	[LinkName("QGraphicsWidget_SetGeometry")]
	public static extern void QGraphicsWidget_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsWidget_SetGeometry2")]
	public static extern void QGraphicsWidget_SetGeometry2(void* c_this, double x, double y, double w, double h);
	[LinkName("QGraphicsWidget_Rect")]
	public static extern void QGraphicsWidget_Rect(void* c_this);
	[LinkName("QGraphicsWidget_SetContentsMargins")]
	public static extern void QGraphicsWidget_SetContentsMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_SetContentsMarginsWithMargins")]
	public static extern void QGraphicsWidget_SetContentsMarginsWithMargins(void* c_this, void margins);
	[LinkName("QGraphicsWidget_GetContentsMargins")]
	public static extern void QGraphicsWidget_GetContentsMargins(void* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsWidget_SetWindowFrameMargins")]
	public static extern void QGraphicsWidget_SetWindowFrameMargins(void* c_this, double left, double top, double right, double bottom);
	[LinkName("QGraphicsWidget_SetWindowFrameMarginsWithMargins")]
	public static extern void QGraphicsWidget_SetWindowFrameMarginsWithMargins(void* c_this, void margins);
	[LinkName("QGraphicsWidget_GetWindowFrameMargins")]
	public static extern void QGraphicsWidget_GetWindowFrameMargins(void* c_this, double* left, double* top, double* right, double* bottom);
	[LinkName("QGraphicsWidget_UnsetWindowFrameMargins")]
	public static extern void QGraphicsWidget_UnsetWindowFrameMargins(void* c_this);
	[LinkName("QGraphicsWidget_WindowFrameGeometry")]
	public static extern void QGraphicsWidget_WindowFrameGeometry(void* c_this);
	[LinkName("QGraphicsWidget_WindowFrameRect")]
	public static extern void QGraphicsWidget_WindowFrameRect(void* c_this);
	[LinkName("QGraphicsWidget_WindowFlags")]
	public static extern int64 QGraphicsWidget_WindowFlags(void* c_this);
	[LinkName("QGraphicsWidget_WindowType")]
	public static extern int64 QGraphicsWidget_WindowType(void* c_this);
	[LinkName("QGraphicsWidget_SetWindowFlags")]
	public static extern void QGraphicsWidget_SetWindowFlags(void* c_this, int64 wFlags);
	[LinkName("QGraphicsWidget_IsActiveWindow")]
	public static extern bool QGraphicsWidget_IsActiveWindow(void* c_this);
	[LinkName("QGraphicsWidget_SetWindowTitle")]
	public static extern void QGraphicsWidget_SetWindowTitle(void* c_this, libqt_string title);
	[LinkName("QGraphicsWidget_WindowTitle")]
	public static extern libqt_string QGraphicsWidget_WindowTitle(void* c_this);
	[LinkName("QGraphicsWidget_FocusPolicy")]
	public static extern int64 QGraphicsWidget_FocusPolicy(void* c_this);
	[LinkName("QGraphicsWidget_SetFocusPolicy")]
	public static extern void QGraphicsWidget_SetFocusPolicy(void* c_this, int64 policy);
	[LinkName("QGraphicsWidget_SetTabOrder")]
	public static extern void QGraphicsWidget_SetTabOrder(void* first, void* second);
	[LinkName("QGraphicsWidget_FocusWidget")]
	public static extern void* QGraphicsWidget_FocusWidget(void* c_this);
	[LinkName("QGraphicsWidget_GrabShortcut")]
	public static extern int32 QGraphicsWidget_GrabShortcut(void* c_this, void* sequence);
	[LinkName("QGraphicsWidget_ReleaseShortcut")]
	public static extern void QGraphicsWidget_ReleaseShortcut(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_SetShortcutEnabled")]
	public static extern void QGraphicsWidget_SetShortcutEnabled(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_SetShortcutAutoRepeat")]
	public static extern void QGraphicsWidget_SetShortcutAutoRepeat(void* c_this, int32 id);
	[LinkName("QGraphicsWidget_AddAction")]
	public static extern void QGraphicsWidget_AddAction(void* c_this, void* action);
	[LinkName("QGraphicsWidget_AddActions")]
	public static extern void QGraphicsWidget_AddActions(void* c_this, void*[] actions);
	[LinkName("QGraphicsWidget_InsertActions")]
	public static extern void QGraphicsWidget_InsertActions(void* c_this, void* before, void*[] actions);
	[LinkName("QGraphicsWidget_InsertAction")]
	public static extern void QGraphicsWidget_InsertAction(void* c_this, void* before, void* action);
	[LinkName("QGraphicsWidget_RemoveAction")]
	public static extern void QGraphicsWidget_RemoveAction(void* c_this, void* action);
	[LinkName("QGraphicsWidget_Actions")]
	public static extern void*[] QGraphicsWidget_Actions(void* c_this);
	[LinkName("QGraphicsWidget_SetAttribute")]
	public static extern void QGraphicsWidget_SetAttribute(void* c_this, int64 attribute);
	[LinkName("QGraphicsWidget_TestAttribute")]
	public static extern bool QGraphicsWidget_TestAttribute(void* c_this, int64 attribute);
	[LinkName("QGraphicsWidget_Type")]
	public static extern int32 QGraphicsWidget_Type(void* c_this);
	[LinkName("QGraphicsWidget_Paint")]
	public static extern void QGraphicsWidget_Paint(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsWidget_PaintWindowFrame")]
	public static extern void QGraphicsWidget_PaintWindowFrame(void* c_this, void* painter, void* option, void* widget);
	[LinkName("QGraphicsWidget_BoundingRect")]
	public static extern void QGraphicsWidget_BoundingRect(void* c_this);
	[LinkName("QGraphicsWidget_Shape")]
	public static extern void QGraphicsWidget_Shape(void* c_this);
	[LinkName("QGraphicsWidget_Connect_GeometryChanged")]
	public static extern void QGraphicsWidget_Connect_GeometryChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsWidget_Connect_LayoutChanged")]
	public static extern void QGraphicsWidget_Connect_LayoutChanged(void* c_this, c_intptr slot);
	[LinkName("QGraphicsWidget_Close")]
	public static extern bool QGraphicsWidget_Close(void* c_this);
	[LinkName("QGraphicsWidget_InitStyleOption")]
	public static extern void QGraphicsWidget_InitStyleOption(void* c_this, void* option);
	[LinkName("QGraphicsWidget_SizeHint")]
	public static extern void QGraphicsWidget_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsWidget_UpdateGeometry")]
	public static extern void QGraphicsWidget_UpdateGeometry(void* c_this);
	[LinkName("QGraphicsWidget_ItemChange")]
	public static extern void QGraphicsWidget_ItemChange(void* c_this, int64 change, void* value);
	[LinkName("QGraphicsWidget_PropertyChange")]
	public static extern void QGraphicsWidget_PropertyChange(void* c_this, libqt_string propertyName, void* value);
	[LinkName("QGraphicsWidget_SceneEvent")]
	public static extern bool QGraphicsWidget_SceneEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_WindowFrameEvent")]
	public static extern bool QGraphicsWidget_WindowFrameEvent(void* c_this, void* e);
	[LinkName("QGraphicsWidget_WindowFrameSectionAt")]
	public static extern int64 QGraphicsWidget_WindowFrameSectionAt(void* c_this, void* pos);
	[LinkName("QGraphicsWidget_Event")]
	public static extern bool QGraphicsWidget_Event(void* c_this, void* event);
	[LinkName("QGraphicsWidget_ChangeEvent")]
	public static extern void QGraphicsWidget_ChangeEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_CloseEvent")]
	public static extern void QGraphicsWidget_CloseEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_FocusInEvent")]
	public static extern void QGraphicsWidget_FocusInEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_FocusNextPrevChild")]
	public static extern bool QGraphicsWidget_FocusNextPrevChild(void* c_this, bool next);
	[LinkName("QGraphicsWidget_FocusOutEvent")]
	public static extern void QGraphicsWidget_FocusOutEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_HideEvent")]
	public static extern void QGraphicsWidget_HideEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_MoveEvent")]
	public static extern void QGraphicsWidget_MoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_PolishEvent")]
	public static extern void QGraphicsWidget_PolishEvent(void* c_this);
	[LinkName("QGraphicsWidget_ResizeEvent")]
	public static extern void QGraphicsWidget_ResizeEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_ShowEvent")]
	public static extern void QGraphicsWidget_ShowEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_HoverMoveEvent")]
	public static extern void QGraphicsWidget_HoverMoveEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_HoverLeaveEvent")]
	public static extern void QGraphicsWidget_HoverLeaveEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_GrabMouseEvent")]
	public static extern void QGraphicsWidget_GrabMouseEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_UngrabMouseEvent")]
	public static extern void QGraphicsWidget_UngrabMouseEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_GrabKeyboardEvent")]
	public static extern void QGraphicsWidget_GrabKeyboardEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_UngrabKeyboardEvent")]
	public static extern void QGraphicsWidget_UngrabKeyboardEvent(void* c_this, void* event);
	[LinkName("QGraphicsWidget_Tr2")]
	public static extern libqt_string QGraphicsWidget_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsWidget_Tr3")]
	public static extern libqt_string QGraphicsWidget_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QGraphicsWidget_GrabShortcut2")]
	public static extern int32 QGraphicsWidget_GrabShortcut2(void* c_this, void* sequence, int64 context);
	[LinkName("QGraphicsWidget_SetShortcutEnabled2")]
	public static extern void QGraphicsWidget_SetShortcutEnabled2(void* c_this, int32 id, bool enabled);
	[LinkName("QGraphicsWidget_SetShortcutAutoRepeat2")]
	public static extern void QGraphicsWidget_SetShortcutAutoRepeat2(void* c_this, int32 id, bool enabled);
	[LinkName("QGraphicsWidget_SetAttribute2")]
	public static extern void QGraphicsWidget_SetAttribute2(void* c_this, int64 attribute, bool on);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsWidget_Delete")]
	public static extern void QGraphicsWidget_Delete(void* self);
}