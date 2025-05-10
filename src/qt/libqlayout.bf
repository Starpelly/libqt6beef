using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QLayout__SizeConstraint
{
	SetDefaultConstraint = 0,
	SetNoConstraint = 1,
	SetMinimumSize = 2,
	SetFixedSize = 3,
	SetMaximumSize = 4,
	SetMinAndMaxSize = 5,
}
public interface IQLayout
{
	void* NativePtr { get; }
}
public class QLayout : IQLayout, IQObject, IQLayoutItem
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QLayout_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QLayout_Tr(s);
	}
	
	public virtual int32 Spacing()
	{
		return CQt.QLayout_Spacing(this.nativePtr);
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QLayout_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QLayout_SetContentsMarginsWithMargins(this.nativePtr, (margins == default) ? default : (void*)margins.NativePtr);
	}
	
	public void UnsetContentsMargins()
	{
		CQt.QLayout_UnsetContentsMargins(this.nativePtr);
	}
	
	public void GetContentsMargins(int32* left, int32* top, int32* right, int32* bottom)
	{
		CQt.QLayout_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void ContentsMargins()
	{
		CQt.QLayout_ContentsMargins(this.nativePtr);
	}
	
	public void ContentsRect()
	{
		CQt.QLayout_ContentsRect(this.nativePtr);
	}
	
	public bool SetAlignment(IQWidget w, int64 alignment)
	{
		return CQt.QLayout_SetAlignment(this.nativePtr, (w == null) ? null : (void*)w.NativePtr, alignment);
	}
	
	public bool SetAlignment2(IQLayout l, int64 alignment)
	{
		return CQt.QLayout_SetAlignment2(this.nativePtr, (l == null) ? null : (void*)l.NativePtr, alignment);
	}
	
	public void SetSizeConstraint(int64 sizeConstraint)
	{
		CQt.QLayout_SetSizeConstraint(this.nativePtr, sizeConstraint);
	}
	
	public int64 SizeConstraint()
	{
		return CQt.QLayout_SizeConstraint(this.nativePtr);
	}
	
	public void SetMenuBar(IQWidget w)
	{
		CQt.QLayout_SetMenuBar(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void* MenuBar()
	{
		return CQt.QLayout_MenuBar(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QLayout_ParentWidget(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void Geometry()
	{
		CQt.QLayout_Geometry(this.nativePtr);
	}
	
	public bool Activate()
	{
		return CQt.QLayout_Activate(this.nativePtr);
	}
	
	public void Update()
	{
		CQt.QLayout_Update(this.nativePtr);
	}
	
	public void AddWidget(IQWidget w)
	{
		CQt.QLayout_AddWidget(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public virtual void AddItem(IQLayoutItem param1)
	{
		CQt.QLayout_AddItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public void RemoveWidget(IQWidget w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void MaximumSize()
	{
		CQt.QLayout_MaximumSize(this.nativePtr);
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		CQt.QLayout_SetGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return CQt.QLayout_ItemAt(this.nativePtr, index);
	}
	
	public virtual void* TakeAt(int32 index)
	{
		return CQt.QLayout_TakeAt(this.nativePtr, index);
	}
	
	public virtual int32 IndexOf(IQWidget param1)
	{
		return CQt.QLayout_IndexOf(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int32 IndexOfWithQLayoutItem(IQLayoutItem param1)
	{
		return CQt.QLayout_IndexOfWithQLayoutItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int32 Count()
	{
		return CQt.QLayout_Count(this.nativePtr);
	}
	
	public virtual bool IsEmpty()
	{
		return CQt.QLayout_IsEmpty(this.nativePtr);
	}
	
	public virtual int64 ControlTypes()
	{
		return CQt.QLayout_ControlTypes(this.nativePtr);
	}
	
	public virtual void* ReplaceWidget(IQWidget from, IQWidget to, int64 options)
	{
		return CQt.QLayout_ReplaceWidget(this.nativePtr, (from == null) ? null : (void*)from.NativePtr, (to == null) ? null : (void*)to.NativePtr, options);
	}
	
	public int32 TotalMinimumHeightForWidth(int32 w)
	{
		return CQt.QLayout_TotalMinimumHeightForWidth(this.nativePtr, w);
	}
	
	public int32 TotalHeightForWidth(int32 w)
	{
		return CQt.QLayout_TotalHeightForWidth(this.nativePtr, w);
	}
	
	public void TotalMinimumSize()
	{
		CQt.QLayout_TotalMinimumSize(this.nativePtr);
	}
	
	public void TotalMaximumSize()
	{
		CQt.QLayout_TotalMaximumSize(this.nativePtr);
	}
	
	public void TotalSizeHint()
	{
		CQt.QLayout_TotalSizeHint(this.nativePtr);
	}
	
	public virtual void* Layout()
	{
		return CQt.QLayout_Layout(this.nativePtr);
	}
	
	public void SetEnabled(bool enabled)
	{
		CQt.QLayout_SetEnabled(this.nativePtr, enabled);
	}
	
	public bool IsEnabled()
	{
		return CQt.QLayout_IsEnabled(this.nativePtr);
	}
	
	public static void ClosestAcceptableSize(IQWidget w, IQSize s)
	{
		CQt.QLayout_ClosestAcceptableSize((w == null) ? null : (void*)w.NativePtr, (s == default) ? default : (void*)s.NativePtr);
	}
	
	public void WidgetEvent(IQEvent param1)
	{
		CQt.QLayout_WidgetEvent(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual void ChildEvent(IQChildEvent e)
	{
		CQt.QLayout_ChildEvent(this.nativePtr, (e == null) ? null : (void*)e.NativePtr);
	}
	
	public void AddChildLayout(IQLayout l)
	{
		CQt.QLayout_AddChildLayout(this.nativePtr, (l == null) ? null : (void*)l.NativePtr);
	}
	
	public void AddChildWidget(IQWidget w)
	{
		CQt.QLayout_AddChildWidget(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public bool AdoptLayout(IQLayout layout)
	{
		return CQt.QLayout_AdoptLayout(this.nativePtr, (layout == null) ? null : (void*)layout.NativePtr);
	}
	
	public void AlignmentRect(IQRect param1)
	{
		CQt.QLayout_AlignmentRect(this.nativePtr, (param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QLayout_Tr3(s, c, n);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
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
	
	public virtual void SizeHint()
	{
		CQt.QLayoutItem_SizeHint(this.nativePtr);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QLayoutItem_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public virtual void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
	}
	
	public virtual void* SpacerItem()
	{
		return CQt.QLayoutItem_SpacerItem(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QLayout_new")]
	public static extern void* QLayout_new(void* parent);
	[LinkName("QLayout_new2")]
	public static extern void* QLayout_new2();
	[LinkName("QLayout_MetaObject")]
	public static extern void* QLayout_MetaObject(void* c_this);
	[LinkName("QLayout_Metacast")]
	public static extern void* QLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QLayout_Metacall")]
	public static extern int32 QLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QLayout_Tr")]
	public static extern libqt_string QLayout_Tr(char8* s);
	[LinkName("QLayout_Spacing")]
	public static extern int32 QLayout_Spacing(void* c_this);
	[LinkName("QLayout_SetSpacing")]
	public static extern void QLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QLayout_SetContentsMargins")]
	public static extern void QLayout_SetContentsMargins(void* c_this, int32 left, int32 top, int32 right, int32 bottom);
	[LinkName("QLayout_SetContentsMarginsWithMargins")]
	public static extern void QLayout_SetContentsMarginsWithMargins(void* c_this, void* margins);
	[LinkName("QLayout_UnsetContentsMargins")]
	public static extern void QLayout_UnsetContentsMargins(void* c_this);
	[LinkName("QLayout_GetContentsMargins")]
	public static extern void QLayout_GetContentsMargins(void* c_this, int32* left, int32* top, int32* right, int32* bottom);
	[LinkName("QLayout_ContentsMargins")]
	public static extern void QLayout_ContentsMargins(void* c_this);
	[LinkName("QLayout_ContentsRect")]
	public static extern void QLayout_ContentsRect(void* c_this);
	[LinkName("QLayout_SetAlignment")]
	public static extern bool QLayout_SetAlignment(void* c_this, void* w, int64 alignment);
	[LinkName("QLayout_SetAlignment2")]
	public static extern bool QLayout_SetAlignment2(void* c_this, void* l, int64 alignment);
	[LinkName("QLayout_SetSizeConstraint")]
	public static extern void QLayout_SetSizeConstraint(void* c_this, int64 sizeConstraint);
	[LinkName("QLayout_SizeConstraint")]
	public static extern int64 QLayout_SizeConstraint(void* c_this);
	[LinkName("QLayout_SetMenuBar")]
	public static extern void QLayout_SetMenuBar(void* c_this, void* w);
	[LinkName("QLayout_MenuBar")]
	public static extern void* QLayout_MenuBar(void* c_this);
	[LinkName("QLayout_ParentWidget")]
	public static extern void* QLayout_ParentWidget(void* c_this);
	[LinkName("QLayout_Invalidate")]
	public static extern void QLayout_Invalidate(void* c_this);
	[LinkName("QLayout_Geometry")]
	public static extern void QLayout_Geometry(void* c_this);
	[LinkName("QLayout_Activate")]
	public static extern bool QLayout_Activate(void* c_this);
	[LinkName("QLayout_Update")]
	public static extern void QLayout_Update(void* c_this);
	[LinkName("QLayout_AddWidget")]
	public static extern void QLayout_AddWidget(void* c_this, void* w);
	[LinkName("QLayout_AddItem")]
	public static extern void QLayout_AddItem(void* c_this, void* param1);
	[LinkName("QLayout_RemoveWidget")]
	public static extern void QLayout_RemoveWidget(void* c_this, void* w);
	[LinkName("QLayout_RemoveItem")]
	public static extern void QLayout_RemoveItem(void* c_this, void* param1);
	[LinkName("QLayout_ExpandingDirections")]
	public static extern int64 QLayout_ExpandingDirections(void* c_this);
	[LinkName("QLayout_MinimumSize")]
	public static extern void QLayout_MinimumSize(void* c_this);
	[LinkName("QLayout_MaximumSize")]
	public static extern void QLayout_MaximumSize(void* c_this);
	[LinkName("QLayout_SetGeometry")]
	public static extern void QLayout_SetGeometry(void* c_this, void* geometry);
	[LinkName("QLayout_ItemAt")]
	public static extern void* QLayout_ItemAt(void* c_this, int32 index);
	[LinkName("QLayout_TakeAt")]
	public static extern void* QLayout_TakeAt(void* c_this, int32 index);
	[LinkName("QLayout_IndexOf")]
	public static extern int32 QLayout_IndexOf(void* c_this, void* param1);
	[LinkName("QLayout_IndexOfWithQLayoutItem")]
	public static extern int32 QLayout_IndexOfWithQLayoutItem(void* c_this, void* param1);
	[LinkName("QLayout_Count")]
	public static extern int32 QLayout_Count(void* c_this);
	[LinkName("QLayout_IsEmpty")]
	public static extern bool QLayout_IsEmpty(void* c_this);
	[LinkName("QLayout_ControlTypes")]
	public static extern int64 QLayout_ControlTypes(void* c_this);
	[LinkName("QLayout_ReplaceWidget")]
	public static extern void* QLayout_ReplaceWidget(void* c_this, void* from, void* to, int64 options);
	[LinkName("QLayout_TotalMinimumHeightForWidth")]
	public static extern int32 QLayout_TotalMinimumHeightForWidth(void* c_this, int32 w);
	[LinkName("QLayout_TotalHeightForWidth")]
	public static extern int32 QLayout_TotalHeightForWidth(void* c_this, int32 w);
	[LinkName("QLayout_TotalMinimumSize")]
	public static extern void QLayout_TotalMinimumSize(void* c_this);
	[LinkName("QLayout_TotalMaximumSize")]
	public static extern void QLayout_TotalMaximumSize(void* c_this);
	[LinkName("QLayout_TotalSizeHint")]
	public static extern void QLayout_TotalSizeHint(void* c_this);
	[LinkName("QLayout_Layout")]
	public static extern void* QLayout_Layout(void* c_this);
	[LinkName("QLayout_SetEnabled")]
	public static extern void QLayout_SetEnabled(void* c_this, bool enabled);
	[LinkName("QLayout_IsEnabled")]
	public static extern bool QLayout_IsEnabled(void* c_this);
	[LinkName("QLayout_ClosestAcceptableSize")]
	public static extern void QLayout_ClosestAcceptableSize(void* w, void* s);
	[LinkName("QLayout_WidgetEvent")]
	public static extern void QLayout_WidgetEvent(void* c_this, void* param1);
	[LinkName("QLayout_ChildEvent")]
	public static extern void QLayout_ChildEvent(void* c_this, void* e);
	[LinkName("QLayout_AddChildLayout")]
	public static extern void QLayout_AddChildLayout(void* c_this, void* l);
	[LinkName("QLayout_AddChildWidget")]
	public static extern void QLayout_AddChildWidget(void* c_this, void* w);
	[LinkName("QLayout_AdoptLayout")]
	public static extern bool QLayout_AdoptLayout(void* c_this, void* layout);
	[LinkName("QLayout_AlignmentRect")]
	public static extern void QLayout_AlignmentRect(void* c_this, void* param1);
	[LinkName("QLayout_Tr2")]
	public static extern libqt_string QLayout_Tr2(char8* s, char8* c);
	[LinkName("QLayout_Tr3")]
	public static extern libqt_string QLayout_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QLayout_Delete")]
	public static extern void QLayout_Delete(void* self);
}