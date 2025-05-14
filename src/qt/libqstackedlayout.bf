using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStackedLayout__StackingMode
{
	StackOne = 0,
	StackAll = 1,
}
public interface IQStackedLayout
{
	void* NativePtr { get; }
}
public struct QStackedLayoutPtr : IQStackedLayout, IDisposable, IQLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QStackedLayout_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QStackedLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QStackedLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QStackedLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QStackedLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QStackedLayout_Tr(s);
	}
	
	public int32 AddWidget(IQWidget w)
	{
		return CQt.QStackedLayout_AddWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public int32 InsertWidget(int32 index, IQWidget w)
	{
		return CQt.QStackedLayout_InsertWidget(this.nativePtr, index, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void* CurrentWidget()
	{
		return CQt.QStackedLayout_CurrentWidget(this.nativePtr);
	}
	
	public int32 CurrentIndex()
	{
		return CQt.QStackedLayout_CurrentIndex(this.nativePtr);
	}
	
	public void* Widget(int32 param1)
	{
		return CQt.QStackedLayout_Widget(this.nativePtr, param1);
	}
	
	public int32 Count()
	{
		return CQt.QStackedLayout_Count(this.nativePtr);
	}
	
	public int64 StackingMode()
	{
		return CQt.QStackedLayout_StackingMode(this.nativePtr);
	}
	
	public void SetStackingMode(int64 stackingMode)
	{
		CQt.QStackedLayout_SetStackingMode(this.nativePtr, (int64)stackingMode);
	}
	
	public void AddItem(IQLayoutItem item)
	{
		CQt.QStackedLayout_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QStackedLayout_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QStackedLayout_MinimumSize(this.nativePtr);
	}
	
	public void* ItemAt(int32 param1)
	{
		return CQt.QStackedLayout_ItemAt(this.nativePtr, param1);
	}
	
	public void* TakeAt(int32 param1)
	{
		return CQt.QStackedLayout_TakeAt(this.nativePtr, param1);
	}
	
	public void SetGeometry(IQRect rect)
	{
		CQt.QStackedLayout_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QStackedLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 width)
	{
		return CQt.QStackedLayout_HeightForWidth(this.nativePtr, width);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		CQt.QStackedLayout_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void SetCurrentWidget(IQWidget w)
	{
		CQt.QStackedLayout_SetCurrentWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QStackedLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QStackedLayout_Tr3(s, c, n);
	}
	
	public int32 Spacing()
	{
		return CQt.QLayout_Spacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QLayout_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		CQt.QLayout_SetContentsMarginsWithMargins(this.nativePtr, (margins == default || margins.NativePtr == default) ? default : margins.NativePtr);
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
		return CQt.QLayout_SetAlignment(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr, alignment);
	}
	
	public bool SetAlignment2(IQLayout l, int64 alignment)
	{
		return CQt.QLayout_SetAlignment2(this.nativePtr, (l == default || l.NativePtr == default) ? default : l.NativePtr, alignment);
	}
	
	public void SetSizeConstraint(int64 sizeConstraint)
	{
		CQt.QLayout_SetSizeConstraint(this.nativePtr, (int64)sizeConstraint);
	}
	
	public int64 SizeConstraint()
	{
		return CQt.QLayout_SizeConstraint(this.nativePtr);
	}
	
	public void SetMenuBar(IQWidget w)
	{
		CQt.QLayout_SetMenuBar(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void* MenuBar()
	{
		return CQt.QLayout_MenuBar(this.nativePtr);
	}
	
	public void* ParentWidget()
	{
		return CQt.QLayout_ParentWidget(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QLayout_Invalidate(this.nativePtr);
	}
	
	public void Geometry()
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
	
	public void RemoveWidget(IQWidget w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QLayout_ExpandingDirections(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QLayout_MaximumSize(this.nativePtr);
	}
	
	public int32 IndexOf(IQWidget param1)
	{
		return CQt.QLayout_IndexOf(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public int32 IndexOfWithQLayoutItem(IQLayoutItem param1)
	{
		return CQt.QLayout_IndexOfWithQLayoutItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public bool IsEmpty()
	{
		return CQt.QLayout_IsEmpty(this.nativePtr);
	}
	
	public int64 ControlTypes()
	{
		return CQt.QLayout_ControlTypes(this.nativePtr);
	}
	
	public void* ReplaceWidget(IQWidget from, IQWidget to, int64 options)
	{
		return CQt.QLayout_ReplaceWidget(this.nativePtr, (from == default || from.NativePtr == default) ? default : from.NativePtr, (to == default || to.NativePtr == default) ? default : to.NativePtr, options);
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
	
	public void* Layout()
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
		CQt.QLayout_ClosestAcceptableSize((w == default || w.NativePtr == default) ? default : w.NativePtr, (s == default || s.NativePtr == default) ? default : s.NativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
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
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QLayoutItem_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public void* SpacerItem()
	{
		return CQt.QLayoutItem_SpacerItem(this.nativePtr);
	}
	
	public int64 Alignment()
	{
		return CQt.QLayoutItem_Alignment(this.nativePtr);
	}
	
}
public class QStackedLayout
{
	public QStackedLayoutPtr handle;
	
	public static implicit operator QStackedLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QStackedLayoutPtr.New(parent);
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
		return QStackedLayoutPtr.Tr(s);
	}
	
	public int32 AddWidget(IQWidget w)
	{
		return this.handle.AddWidget(w);
	}
	
	public int32 InsertWidget(int32 index, IQWidget w)
	{
		return this.handle.InsertWidget(index, w);
	}
	
	public void* CurrentWidget()
	{
		return this.handle.CurrentWidget();
	}
	
	public int32 CurrentIndex()
	{
		return this.handle.CurrentIndex();
	}
	
	public void* Widget(int32 param1)
	{
		return this.handle.Widget(param1);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public int64 StackingMode()
	{
		return this.handle.StackingMode();
	}
	
	public void SetStackingMode(int64 stackingMode)
	{
		this.handle.SetStackingMode(stackingMode);
	}
	
	public virtual void AddItem(IQLayoutItem item)
	{
		this.handle.AddItem(item);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return this.handle.ItemAt(param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return this.handle.TakeAt(param1);
	}
	
	public virtual void SetGeometry(IQRect rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 width)
	{
		return this.handle.HeightForWidth(width);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		this.handle.SetCurrentIndex(index);
	}
	
	public void SetCurrentWidget(IQWidget w)
	{
		this.handle.SetCurrentWidget(w);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QStackedLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QStackedLayoutPtr.Tr3(s, c, n);
	}
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(IQMargins margins)
	{
		this.handle.SetContentsMarginsWithMargins(margins);
	}
	
	public void UnsetContentsMargins()
	{
		this.handle.UnsetContentsMargins();
	}
	
	public void GetContentsMargins(int32* left, int32* top, int32* right, int32* bottom)
	{
		this.handle.GetContentsMargins(left, top, right, bottom);
	}
	
	public void ContentsMargins()
	{
		this.handle.ContentsMargins();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public bool SetAlignment(IQWidget w, int64 alignment)
	{
		return this.handle.SetAlignment(w, alignment);
	}
	
	public bool SetAlignment2(IQLayout l, int64 alignment)
	{
		return this.handle.SetAlignment2(l, alignment);
	}
	
	public void SetSizeConstraint(int64 sizeConstraint)
	{
		this.handle.SetSizeConstraint(sizeConstraint);
	}
	
	public int64 SizeConstraint()
	{
		return this.handle.SizeConstraint();
	}
	
	public void SetMenuBar(IQWidget w)
	{
		this.handle.SetMenuBar(w);
	}
	
	public void* MenuBar()
	{
		return this.handle.MenuBar();
	}
	
	public void* ParentWidget()
	{
		return this.handle.ParentWidget();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void Geometry()
	{
		this.handle.Geometry();
	}
	
	public bool Activate()
	{
		return this.handle.Activate();
	}
	
	public void Update()
	{
		this.handle.Update();
	}
	
	public void RemoveWidget(IQWidget w)
	{
		this.handle.RemoveWidget(w);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		this.handle.RemoveItem(param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual int32 IndexOf(IQWidget param1)
	{
		return this.handle.IndexOf(param1);
	}
	
	public virtual int32 IndexOfWithQLayoutItem(IQLayoutItem param1)
	{
		return this.handle.IndexOfWithQLayoutItem(param1);
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public virtual int64 ControlTypes()
	{
		return this.handle.ControlTypes();
	}
	
	public virtual void* ReplaceWidget(IQWidget from, IQWidget to, int64 options)
	{
		return this.handle.ReplaceWidget(from, to, options);
	}
	
	public int32 TotalMinimumHeightForWidth(int32 w)
	{
		return this.handle.TotalMinimumHeightForWidth(w);
	}
	
	public int32 TotalHeightForWidth(int32 w)
	{
		return this.handle.TotalHeightForWidth(w);
	}
	
	public void TotalMinimumSize()
	{
		this.handle.TotalMinimumSize();
	}
	
	public void TotalMaximumSize()
	{
		this.handle.TotalMaximumSize();
	}
	
	public void TotalSizeHint()
	{
		this.handle.TotalSizeHint();
	}
	
	public virtual void* Layout()
	{
		return this.handle.Layout();
	}
	
	public void SetEnabled(bool enabled)
	{
		this.handle.SetEnabled(enabled);
	}
	
	public bool IsEnabled()
	{
		return this.handle.IsEnabled();
	}
	
	public static void ClosestAcceptableSize(IQWidget w, IQSize s)
	{
		QStackedLayoutPtr.ClosestAcceptableSize(w, s);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
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
		QStackedLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QStackedLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QStackedLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QStackedLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual void* SpacerItem()
	{
		return this.handle.SpacerItem();
	}
	
	public int64 Alignment()
	{
		return this.handle.Alignment();
	}
	
}
extension CQt
{
	[LinkName("QStackedLayout_new")]
	public static extern void* QStackedLayout_new(void* parent);
	[LinkName("QStackedLayout_new2")]
	public static extern void* QStackedLayout_new2();
	[LinkName("QStackedLayout_new3")]
	public static extern void* QStackedLayout_new3(void* parentLayout);
	[LinkName("QStackedLayout_MetaObject")]
	public static extern void* QStackedLayout_MetaObject(void* c_this);
	[LinkName("QStackedLayout_Metacast")]
	public static extern void* QStackedLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QStackedLayout_Metacall")]
	public static extern int32 QStackedLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QStackedLayout_Tr")]
	public static extern libqt_string QStackedLayout_Tr(char8* s);
	[LinkName("QStackedLayout_AddWidget")]
	public static extern int32 QStackedLayout_AddWidget(void* c_this, void* w);
	[LinkName("QStackedLayout_InsertWidget")]
	public static extern int32 QStackedLayout_InsertWidget(void* c_this, int32 index, void* w);
	[LinkName("QStackedLayout_CurrentWidget")]
	public static extern void* QStackedLayout_CurrentWidget(void* c_this);
	[LinkName("QStackedLayout_CurrentIndex")]
	public static extern int32 QStackedLayout_CurrentIndex(void* c_this);
	[LinkName("QStackedLayout_Widget")]
	public static extern void* QStackedLayout_Widget(void* c_this, int32 param1);
	[LinkName("QStackedLayout_Count")]
	public static extern int32 QStackedLayout_Count(void* c_this);
	[LinkName("QStackedLayout_StackingMode")]
	public static extern int64 QStackedLayout_StackingMode(void* c_this);
	[LinkName("QStackedLayout_SetStackingMode")]
	public static extern void QStackedLayout_SetStackingMode(void* c_this, int64 stackingMode);
	[LinkName("QStackedLayout_AddItem")]
	public static extern void QStackedLayout_AddItem(void* c_this, void* item);
	[LinkName("QStackedLayout_SizeHint")]
	public static extern void QStackedLayout_SizeHint(void* c_this);
	[LinkName("QStackedLayout_MinimumSize")]
	public static extern void QStackedLayout_MinimumSize(void* c_this);
	[LinkName("QStackedLayout_ItemAt")]
	public static extern void* QStackedLayout_ItemAt(void* c_this, int32 param1);
	[LinkName("QStackedLayout_TakeAt")]
	public static extern void* QStackedLayout_TakeAt(void* c_this, int32 param1);
	[LinkName("QStackedLayout_SetGeometry")]
	public static extern void QStackedLayout_SetGeometry(void* c_this, void* rect);
	[LinkName("QStackedLayout_HasHeightForWidth")]
	public static extern bool QStackedLayout_HasHeightForWidth(void* c_this);
	[LinkName("QStackedLayout_HeightForWidth")]
	public static extern int32 QStackedLayout_HeightForWidth(void* c_this, int32 width);
	[LinkName("QStackedLayout_Connect_WidgetRemoved")]
	public static extern void QStackedLayout_Connect_WidgetRemoved(void* c_this, c_intptr slot);
	[LinkName("QStackedLayout_Connect_CurrentChanged")]
	public static extern void QStackedLayout_Connect_CurrentChanged(void* c_this, c_intptr slot);
	[LinkName("QStackedLayout_SetCurrentIndex")]
	public static extern void QStackedLayout_SetCurrentIndex(void* c_this, int32 index);
	[LinkName("QStackedLayout_SetCurrentWidget")]
	public static extern void QStackedLayout_SetCurrentWidget(void* c_this, void* w);
	[LinkName("QStackedLayout_Tr2")]
	public static extern libqt_string QStackedLayout_Tr2(char8* s, char8* c);
	[LinkName("QStackedLayout_Tr3")]
	public static extern libqt_string QStackedLayout_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStackedLayout_Delete")]
	public static extern void QStackedLayout_Delete(void* self);
}