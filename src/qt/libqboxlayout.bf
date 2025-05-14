using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QBoxLayout__Direction
{
	LeftToRight = 0,
	RightToLeft = 1,
	TopToBottom = 2,
	BottomToTop = 3,
	Down = 2,
	Up = 3,
}
public interface IQBoxLayout
{
	void* NativePtr { get; }
}
public struct QBoxLayoutPtr : IQBoxLayout, IDisposable, IQLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 param1)
	{
		return .(CQt.QBoxLayout_new((int64)param1));
	}
	
	public void Dispose()
	{
		CQt.QBoxLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QBoxLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QBoxLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QBoxLayout_Tr(s);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, (int64)direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void AddWidget(IQWidget param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void AddLayout(IQLayout layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public void AddItem(IQLayoutItem param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, (l == default || l.NativePtr == default) ? default : l.NativePtr, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QBoxLayout_Tr3(s, c, n);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
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
	
	public void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
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
public class QBoxLayout
{
	public QBoxLayoutPtr handle;
	
	public static implicit operator QBoxLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 param1)
	{
		this.handle = QBoxLayoutPtr.New(param1);
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
		return QBoxLayoutPtr.Tr(s);
	}
	
	public int64 Direction()
	{
		return this.handle.Direction();
	}
	
	public void SetDirection(int64 direction)
	{
		this.handle.SetDirection(direction);
	}
	
	public void AddSpacing(int32 size)
	{
		this.handle.AddSpacing(size);
	}
	
	public void AddStretch()
	{
		this.handle.AddStretch();
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		this.handle.AddSpacerItem(spacerItem);
	}
	
	public void AddWidget(IQWidget param1)
	{
		this.handle.AddWidget(param1);
	}
	
	public void AddLayout(IQLayout layout)
	{
		this.handle.AddLayout(layout);
	}
	
	public void AddStrut(int32 param1)
	{
		this.handle.AddStrut(param1);
	}
	
	public virtual void AddItem(IQLayoutItem param1)
	{
		this.handle.AddItem(param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		this.handle.InsertSpacing(index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		this.handle.InsertStretch(index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		this.handle.InsertSpacerItem(index, spacerItem);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		this.handle.InsertWidget(index, widget);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		this.handle.InsertLayout(index, layout);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		this.handle.InsertItem(index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return this.handle.SetStretchFactor(w, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return this.handle.SetStretchFactor2(l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		this.handle.SetStretch(index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return this.handle.Stretch(index);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return this.handle.ItemAt(param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return this.handle.TakeAt(param1);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QBoxLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QBoxLayoutPtr.Tr3(s, c, n);
	}
	
	public void AddStretch1(int32 stretch)
	{
		this.handle.AddStretch1(stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		this.handle.AddWidget2(param1, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		this.handle.AddWidget3(param1, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		this.handle.AddLayout2(layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		this.handle.InsertStretch2(index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		this.handle.InsertWidget3(index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		this.handle.InsertWidget4(index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		this.handle.InsertLayout3(index, layout, stretch);
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
		QBoxLayoutPtr.ClosestAcceptableSize(w, s);
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
		QBoxLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QBoxLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QBoxLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QBoxLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
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
	[LinkName("QBoxLayout_new")]
	public static extern void* QBoxLayout_new(int64 param1);
	[LinkName("QBoxLayout_new2")]
	public static extern void* QBoxLayout_new2(int64 param1, void* parent);
	[LinkName("QBoxLayout_MetaObject")]
	public static extern void* QBoxLayout_MetaObject(void* c_this);
	[LinkName("QBoxLayout_Metacast")]
	public static extern void* QBoxLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QBoxLayout_Metacall")]
	public static extern int32 QBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QBoxLayout_Tr")]
	public static extern libqt_string QBoxLayout_Tr(char8* s);
	[LinkName("QBoxLayout_Direction")]
	public static extern int64 QBoxLayout_Direction(void* c_this);
	[LinkName("QBoxLayout_SetDirection")]
	public static extern void QBoxLayout_SetDirection(void* c_this, int64 direction);
	[LinkName("QBoxLayout_AddSpacing")]
	public static extern void QBoxLayout_AddSpacing(void* c_this, int32 size);
	[LinkName("QBoxLayout_AddStretch")]
	public static extern void QBoxLayout_AddStretch(void* c_this);
	[LinkName("QBoxLayout_AddSpacerItem")]
	public static extern void QBoxLayout_AddSpacerItem(void* c_this, void* spacerItem);
	[LinkName("QBoxLayout_AddWidget")]
	public static extern void QBoxLayout_AddWidget(void* c_this, void* param1);
	[LinkName("QBoxLayout_AddLayout")]
	public static extern void QBoxLayout_AddLayout(void* c_this, void* layout);
	[LinkName("QBoxLayout_AddStrut")]
	public static extern void QBoxLayout_AddStrut(void* c_this, int32 param1);
	[LinkName("QBoxLayout_AddItem")]
	public static extern void QBoxLayout_AddItem(void* c_this, void* param1);
	[LinkName("QBoxLayout_InsertSpacing")]
	public static extern void QBoxLayout_InsertSpacing(void* c_this, int32 index, int32 size);
	[LinkName("QBoxLayout_InsertStretch")]
	public static extern void QBoxLayout_InsertStretch(void* c_this, int32 index);
	[LinkName("QBoxLayout_InsertSpacerItem")]
	public static extern void QBoxLayout_InsertSpacerItem(void* c_this, int32 index, void* spacerItem);
	[LinkName("QBoxLayout_InsertWidget")]
	public static extern void QBoxLayout_InsertWidget(void* c_this, int32 index, void* widget);
	[LinkName("QBoxLayout_InsertLayout")]
	public static extern void QBoxLayout_InsertLayout(void* c_this, int32 index, void* layout);
	[LinkName("QBoxLayout_InsertItem")]
	public static extern void QBoxLayout_InsertItem(void* c_this, int32 index, void* param2);
	[LinkName("QBoxLayout_Spacing")]
	public static extern int32 QBoxLayout_Spacing(void* c_this);
	[LinkName("QBoxLayout_SetSpacing")]
	public static extern void QBoxLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QBoxLayout_SetStretchFactor")]
	public static extern bool QBoxLayout_SetStretchFactor(void* c_this, void* w, int32 stretch);
	[LinkName("QBoxLayout_SetStretchFactor2")]
	public static extern bool QBoxLayout_SetStretchFactor2(void* c_this, void* l, int32 stretch);
	[LinkName("QBoxLayout_SetStretch")]
	public static extern void QBoxLayout_SetStretch(void* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_Stretch")]
	public static extern int32 QBoxLayout_Stretch(void* c_this, int32 index);
	[LinkName("QBoxLayout_SizeHint")]
	public static extern void QBoxLayout_SizeHint(void* c_this);
	[LinkName("QBoxLayout_MinimumSize")]
	public static extern void QBoxLayout_MinimumSize(void* c_this);
	[LinkName("QBoxLayout_MaximumSize")]
	public static extern void QBoxLayout_MaximumSize(void* c_this);
	[LinkName("QBoxLayout_HasHeightForWidth")]
	public static extern bool QBoxLayout_HasHeightForWidth(void* c_this);
	[LinkName("QBoxLayout_HeightForWidth")]
	public static extern int32 QBoxLayout_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QBoxLayout_MinimumHeightForWidth")]
	public static extern int32 QBoxLayout_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QBoxLayout_ExpandingDirections")]
	public static extern int64 QBoxLayout_ExpandingDirections(void* c_this);
	[LinkName("QBoxLayout_Invalidate")]
	public static extern void QBoxLayout_Invalidate(void* c_this);
	[LinkName("QBoxLayout_ItemAt")]
	public static extern void* QBoxLayout_ItemAt(void* c_this, int32 param1);
	[LinkName("QBoxLayout_TakeAt")]
	public static extern void* QBoxLayout_TakeAt(void* c_this, int32 param1);
	[LinkName("QBoxLayout_Count")]
	public static extern int32 QBoxLayout_Count(void* c_this);
	[LinkName("QBoxLayout_SetGeometry")]
	public static extern void QBoxLayout_SetGeometry(void* c_this, void* geometry);
	[LinkName("QBoxLayout_Tr2")]
	public static extern libqt_string QBoxLayout_Tr2(char8* s, char8* c);
	[LinkName("QBoxLayout_Tr3")]
	public static extern libqt_string QBoxLayout_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QBoxLayout_AddStretch1")]
	public static extern void QBoxLayout_AddStretch1(void* c_this, int32 stretch);
	[LinkName("QBoxLayout_AddWidget2")]
	public static extern void QBoxLayout_AddWidget2(void* c_this, void* param1, int32 stretch);
	[LinkName("QBoxLayout_AddWidget3")]
	public static extern void QBoxLayout_AddWidget3(void* c_this, void* param1, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_AddLayout2")]
	public static extern void QBoxLayout_AddLayout2(void* c_this, void* layout, int32 stretch);
	[LinkName("QBoxLayout_InsertStretch2")]
	public static extern void QBoxLayout_InsertStretch2(void* c_this, int32 index, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget3")]
	public static extern void QBoxLayout_InsertWidget3(void* c_this, int32 index, void* widget, int32 stretch);
	[LinkName("QBoxLayout_InsertWidget4")]
	public static extern void QBoxLayout_InsertWidget4(void* c_this, int32 index, void* widget, int32 stretch, int64 alignment);
	[LinkName("QBoxLayout_InsertLayout3")]
	public static extern void QBoxLayout_InsertLayout3(void* c_this, int32 index, void* layout, int32 stretch);
	/// Delete this object from C++ memory
	[LinkName("QBoxLayout_Delete")]
	public static extern void QBoxLayout_Delete(void* self);
}
public interface IQHBoxLayout
{
	void* NativePtr { get; }
}
public struct QHBoxLayoutPtr : IQHBoxLayout, IDisposable, IQBoxLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QHBoxLayout_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QHBoxLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QHBoxLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QHBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QHBoxLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QHBoxLayout_Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QHBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QHBoxLayout_Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, (int64)direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void AddWidget(IQWidget param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void AddLayout(IQLayout layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public void AddItem(IQLayoutItem param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, (l == default || l.NativePtr == default) ? default : l.NativePtr, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
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
	
	public void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
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
public class QHBoxLayout
{
	public QHBoxLayoutPtr handle;
	
	public static implicit operator QHBoxLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QHBoxLayoutPtr.New(parent);
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
		return QHBoxLayoutPtr.Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QHBoxLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QHBoxLayoutPtr.Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return this.handle.Direction();
	}
	
	public void SetDirection(int64 direction)
	{
		this.handle.SetDirection(direction);
	}
	
	public void AddSpacing(int32 size)
	{
		this.handle.AddSpacing(size);
	}
	
	public void AddStretch()
	{
		this.handle.AddStretch();
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		this.handle.AddSpacerItem(spacerItem);
	}
	
	public void AddWidget(IQWidget param1)
	{
		this.handle.AddWidget(param1);
	}
	
	public void AddLayout(IQLayout layout)
	{
		this.handle.AddLayout(layout);
	}
	
	public void AddStrut(int32 param1)
	{
		this.handle.AddStrut(param1);
	}
	
	public virtual void AddItem(IQLayoutItem param1)
	{
		this.handle.AddItem(param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		this.handle.InsertSpacing(index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		this.handle.InsertStretch(index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		this.handle.InsertSpacerItem(index, spacerItem);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		this.handle.InsertWidget(index, widget);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		this.handle.InsertLayout(index, layout);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		this.handle.InsertItem(index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return this.handle.SetStretchFactor(w, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return this.handle.SetStretchFactor2(l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		this.handle.SetStretch(index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return this.handle.Stretch(index);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return this.handle.ItemAt(param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return this.handle.TakeAt(param1);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public void AddStretch1(int32 stretch)
	{
		this.handle.AddStretch1(stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		this.handle.AddWidget2(param1, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		this.handle.AddWidget3(param1, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		this.handle.AddLayout2(layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		this.handle.InsertStretch2(index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		this.handle.InsertWidget3(index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		this.handle.InsertWidget4(index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		this.handle.InsertLayout3(index, layout, stretch);
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
		QHBoxLayoutPtr.ClosestAcceptableSize(w, s);
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
		QHBoxLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QHBoxLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QHBoxLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QHBoxLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
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
	[LinkName("QHBoxLayout_new")]
	public static extern void* QHBoxLayout_new(void* parent);
	[LinkName("QHBoxLayout_new2")]
	public static extern void* QHBoxLayout_new2();
	[LinkName("QHBoxLayout_MetaObject")]
	public static extern void* QHBoxLayout_MetaObject(void* c_this);
	[LinkName("QHBoxLayout_Metacast")]
	public static extern void* QHBoxLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QHBoxLayout_Metacall")]
	public static extern int32 QHBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QHBoxLayout_Tr")]
	public static extern libqt_string QHBoxLayout_Tr(char8* s);
	[LinkName("QHBoxLayout_Tr2")]
	public static extern libqt_string QHBoxLayout_Tr2(char8* s, char8* c);
	[LinkName("QHBoxLayout_Tr3")]
	public static extern libqt_string QHBoxLayout_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QHBoxLayout_Delete")]
	public static extern void QHBoxLayout_Delete(void* self);
}
public interface IQVBoxLayout
{
	void* NativePtr { get; }
}
public struct QVBoxLayoutPtr : IQVBoxLayout, IDisposable, IQBoxLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QVBoxLayout_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QVBoxLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QVBoxLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QVBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QVBoxLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QVBoxLayout_Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QVBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QVBoxLayout_Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, (int64)direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void AddWidget(IQWidget param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void AddLayout(IQLayout layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public void AddItem(IQLayoutItem param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, (spacerItem == default || spacerItem.NativePtr == default) ? default : spacerItem.NativePtr);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, (param2 == default || param2.NativePtr == default) ? default : param2.NativePtr);
	}
	
	public int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, (l == default || l.NativePtr == default) ? default : l.NativePtr, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, stretch);
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
	
	public void* Widget()
	{
		return CQt.QLayoutItem_Widget(this.nativePtr);
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
public class QVBoxLayout
{
	public QVBoxLayoutPtr handle;
	
	public static implicit operator QVBoxLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QVBoxLayoutPtr.New(parent);
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
		return QVBoxLayoutPtr.Tr(s);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QVBoxLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QVBoxLayoutPtr.Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return this.handle.Direction();
	}
	
	public void SetDirection(int64 direction)
	{
		this.handle.SetDirection(direction);
	}
	
	public void AddSpacing(int32 size)
	{
		this.handle.AddSpacing(size);
	}
	
	public void AddStretch()
	{
		this.handle.AddStretch();
	}
	
	public void AddSpacerItem(IQSpacerItem spacerItem)
	{
		this.handle.AddSpacerItem(spacerItem);
	}
	
	public void AddWidget(IQWidget param1)
	{
		this.handle.AddWidget(param1);
	}
	
	public void AddLayout(IQLayout layout)
	{
		this.handle.AddLayout(layout);
	}
	
	public void AddStrut(int32 param1)
	{
		this.handle.AddStrut(param1);
	}
	
	public virtual void AddItem(IQLayoutItem param1)
	{
		this.handle.AddItem(param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		this.handle.InsertSpacing(index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		this.handle.InsertStretch(index);
	}
	
	public void InsertSpacerItem(int32 index, IQSpacerItem spacerItem)
	{
		this.handle.InsertSpacerItem(index, spacerItem);
	}
	
	public void InsertWidget(int32 index, IQWidget widget)
	{
		this.handle.InsertWidget(index, widget);
	}
	
	public void InsertLayout(int32 index, IQLayout layout)
	{
		this.handle.InsertLayout(index, layout);
	}
	
	public void InsertItem(int32 index, IQLayoutItem param2)
	{
		this.handle.InsertItem(index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public bool SetStretchFactor(IQWidget w, int32 stretch)
	{
		return this.handle.SetStretchFactor(w, stretch);
	}
	
	public bool SetStretchFactor2(IQLayout l, int32 stretch)
	{
		return this.handle.SetStretchFactor2(l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		this.handle.SetStretch(index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return this.handle.Stretch(index);
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return this.handle.HeightForWidth(param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return this.handle.ItemAt(param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return this.handle.TakeAt(param1);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public void AddStretch1(int32 stretch)
	{
		this.handle.AddStretch1(stretch);
	}
	
	public void AddWidget2(IQWidget param1, int32 stretch)
	{
		this.handle.AddWidget2(param1, stretch);
	}
	
	public void AddWidget3(IQWidget param1, int32 stretch, int64 alignment)
	{
		this.handle.AddWidget3(param1, stretch, alignment);
	}
	
	public void AddLayout2(IQLayout layout, int32 stretch)
	{
		this.handle.AddLayout2(layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		this.handle.InsertStretch2(index, stretch);
	}
	
	public void InsertWidget3(int32 index, IQWidget widget, int32 stretch)
	{
		this.handle.InsertWidget3(index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, IQWidget widget, int32 stretch, int64 alignment)
	{
		this.handle.InsertWidget4(index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, IQLayout layout, int32 stretch)
	{
		this.handle.InsertLayout3(index, layout, stretch);
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
		QVBoxLayoutPtr.ClosestAcceptableSize(w, s);
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
		QVBoxLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QVBoxLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QVBoxLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QVBoxLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual void* Widget()
	{
		return this.handle.Widget();
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
	[LinkName("QVBoxLayout_new")]
	public static extern void* QVBoxLayout_new(void* parent);
	[LinkName("QVBoxLayout_new2")]
	public static extern void* QVBoxLayout_new2();
	[LinkName("QVBoxLayout_MetaObject")]
	public static extern void* QVBoxLayout_MetaObject(void* c_this);
	[LinkName("QVBoxLayout_Metacast")]
	public static extern void* QVBoxLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QVBoxLayout_Metacall")]
	public static extern int32 QVBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QVBoxLayout_Tr")]
	public static extern libqt_string QVBoxLayout_Tr(char8* s);
	[LinkName("QVBoxLayout_Tr2")]
	public static extern libqt_string QVBoxLayout_Tr2(char8* s, char8* c);
	[LinkName("QVBoxLayout_Tr3")]
	public static extern libqt_string QVBoxLayout_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QVBoxLayout_Delete")]
	public static extern void QVBoxLayout_Delete(void* self);
}