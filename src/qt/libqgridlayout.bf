using System;
using System.Interop;
namespace Qt;

public interface IQGridLayout
{
	void* NativePtr { get; }
}
public struct QGridLayoutPtr : IQGridLayout, IDisposable, IQLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QGridLayout_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QGridLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGridLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGridLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGridLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGridLayout_Tr(s);
	}
	
	public void SizeHint()
	{
		CQt.QGridLayout_SizeHint(this.nativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QGridLayout_MinimumSize(this.nativePtr);
	}
	
	public void MaximumSize()
	{
		CQt.QGridLayout_MaximumSize(this.nativePtr);
	}
	
	public void SetHorizontalSpacing(int32 spacing)
	{
		CQt.QGridLayout_SetHorizontalSpacing(this.nativePtr, spacing);
	}
	
	public int32 HorizontalSpacing()
	{
		return CQt.QGridLayout_HorizontalSpacing(this.nativePtr);
	}
	
	public void SetVerticalSpacing(int32 spacing)
	{
		CQt.QGridLayout_SetVerticalSpacing(this.nativePtr, spacing);
	}
	
	public int32 VerticalSpacing()
	{
		return CQt.QGridLayout_VerticalSpacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QGridLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public int32 Spacing()
	{
		return CQt.QGridLayout_Spacing(this.nativePtr);
	}
	
	public void SetRowStretch(int32 row, int32 stretch)
	{
		CQt.QGridLayout_SetRowStretch(this.nativePtr, row, stretch);
	}
	
	public void SetColumnStretch(int32 column, int32 stretch)
	{
		CQt.QGridLayout_SetColumnStretch(this.nativePtr, column, stretch);
	}
	
	public int32 RowStretch(int32 row)
	{
		return CQt.QGridLayout_RowStretch(this.nativePtr, row);
	}
	
	public int32 ColumnStretch(int32 column)
	{
		return CQt.QGridLayout_ColumnStretch(this.nativePtr, column);
	}
	
	public void SetRowMinimumHeight(int32 row, int32 minSize)
	{
		CQt.QGridLayout_SetRowMinimumHeight(this.nativePtr, row, minSize);
	}
	
	public void SetColumnMinimumWidth(int32 column, int32 minSize)
	{
		CQt.QGridLayout_SetColumnMinimumWidth(this.nativePtr, column, minSize);
	}
	
	public int32 RowMinimumHeight(int32 row)
	{
		return CQt.QGridLayout_RowMinimumHeight(this.nativePtr, row);
	}
	
	public int32 ColumnMinimumWidth(int32 column)
	{
		return CQt.QGridLayout_ColumnMinimumWidth(this.nativePtr, column);
	}
	
	public int32 ColumnCount()
	{
		return CQt.QGridLayout_ColumnCount(this.nativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QGridLayout_RowCount(this.nativePtr);
	}
	
	public void CellRect(int32 row, int32 column)
	{
		CQt.QGridLayout_CellRect(this.nativePtr, row, column);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QGridLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 param1)
	{
		return CQt.QGridLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QGridLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QGridLayout_ExpandingDirections(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QGridLayout_Invalidate(this.nativePtr);
	}
	
	public void AddWidget(IQWidget w)
	{
		CQt.QGridLayout_AddWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void AddWidget2(IQWidget param1, int32 row, int32 column)
	{
		CQt.QGridLayout_AddWidget2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column);
	}
	
	public void AddWidget3(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddWidget3(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddLayout(IQLayout param1, int32 row, int32 column)
	{
		CQt.QGridLayout_AddLayout(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column);
	}
	
	public void AddLayout2(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddLayout2(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void SetOriginCorner(int64 originCorner)
	{
		CQt.QGridLayout_SetOriginCorner(this.nativePtr, (int64)originCorner);
	}
	
	public int64 OriginCorner()
	{
		return CQt.QGridLayout_OriginCorner(this.nativePtr);
	}
	
	public void* ItemAt(int32 index)
	{
		return CQt.QGridLayout_ItemAt(this.nativePtr, index);
	}
	
	public void* ItemAtPosition(int32 row, int32 column)
	{
		return CQt.QGridLayout_ItemAtPosition(this.nativePtr, row, column);
	}
	
	public void* TakeAt(int32 index)
	{
		return CQt.QGridLayout_TakeAt(this.nativePtr, index);
	}
	
	public int32 Count()
	{
		return CQt.QGridLayout_Count(this.nativePtr);
	}
	
	public void SetGeometry(IQRect geometry)
	{
		CQt.QGridLayout_SetGeometry(this.nativePtr, (geometry == default || geometry.NativePtr == default) ? default : geometry.NativePtr);
	}
	
	public void AddItem(IQLayoutItem item, int32 row, int32 column)
	{
		CQt.QGridLayout_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column);
	}
	
	public void SetDefaultPositioning(int32 n, int64 orient)
	{
		CQt.QGridLayout_SetDefaultPositioning(this.nativePtr, n, (int64)orient);
	}
	
	public void GetItemPosition(int32 idx, int32* row, int32* column, int32* rowSpan, int32* columnSpan)
	{
		CQt.QGridLayout_GetItemPosition(this.nativePtr, idx, row, column, rowSpan, columnSpan);
	}
	
	public void AddItemWithQLayoutItem(IQLayoutItem param1)
	{
		CQt.QGridLayout_AddItemWithQLayoutItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGridLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGridLayout_Tr3(s, c, n);
	}
	
	public void AddWidget4(IQWidget param1, int32 row, int32 column, int64 param4)
	{
		CQt.QGridLayout_AddWidget4(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, param4);
	}
	
	public void AddWidget6(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddWidget6(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddLayout4(IQLayout param1, int32 row, int32 column, int64 param4)
	{
		CQt.QGridLayout_AddLayout4(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, param4);
	}
	
	public void AddLayout6(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddLayout6(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddItem4(IQLayoutItem item, int32 row, int32 column, int32 rowSpan)
	{
		CQt.QGridLayout_AddItem4(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, rowSpan);
	}
	
	public void AddItem5(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddItem5(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem6(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddItem6(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr, row, column, rowSpan, columnSpan, param6);
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
public class QGridLayout
{
	public QGridLayoutPtr handle;
	
	public static implicit operator QGridLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QGridLayoutPtr.New(parent);
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
		return QGridLayoutPtr.Tr(s);
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
	
	public void SetHorizontalSpacing(int32 spacing)
	{
		this.handle.SetHorizontalSpacing(spacing);
	}
	
	public int32 HorizontalSpacing()
	{
		return this.handle.HorizontalSpacing();
	}
	
	public void SetVerticalSpacing(int32 spacing)
	{
		this.handle.SetVerticalSpacing(spacing);
	}
	
	public int32 VerticalSpacing()
	{
		return this.handle.VerticalSpacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public void SetRowStretch(int32 row, int32 stretch)
	{
		this.handle.SetRowStretch(row, stretch);
	}
	
	public void SetColumnStretch(int32 column, int32 stretch)
	{
		this.handle.SetColumnStretch(column, stretch);
	}
	
	public int32 RowStretch(int32 row)
	{
		return this.handle.RowStretch(row);
	}
	
	public int32 ColumnStretch(int32 column)
	{
		return this.handle.ColumnStretch(column);
	}
	
	public void SetRowMinimumHeight(int32 row, int32 minSize)
	{
		this.handle.SetRowMinimumHeight(row, minSize);
	}
	
	public void SetColumnMinimumWidth(int32 column, int32 minSize)
	{
		this.handle.SetColumnMinimumWidth(column, minSize);
	}
	
	public int32 RowMinimumHeight(int32 row)
	{
		return this.handle.RowMinimumHeight(row);
	}
	
	public int32 ColumnMinimumWidth(int32 column)
	{
		return this.handle.ColumnMinimumWidth(column);
	}
	
	public int32 ColumnCount()
	{
		return this.handle.ColumnCount();
	}
	
	public int32 RowCount()
	{
		return this.handle.RowCount();
	}
	
	public void CellRect(int32 row, int32 column)
	{
		this.handle.CellRect(row, column);
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
	
	public void AddWidget(IQWidget w)
	{
		this.handle.AddWidget(w);
	}
	
	public void AddWidget2(IQWidget param1, int32 row, int32 column)
	{
		this.handle.AddWidget2(param1, row, column);
	}
	
	public void AddWidget3(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		this.handle.AddWidget3(param1, row, column, rowSpan, columnSpan);
	}
	
	public void AddLayout(IQLayout param1, int32 row, int32 column)
	{
		this.handle.AddLayout(param1, row, column);
	}
	
	public void AddLayout2(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		this.handle.AddLayout2(param1, row, column, rowSpan, columnSpan);
	}
	
	public void SetOriginCorner(int64 originCorner)
	{
		this.handle.SetOriginCorner(originCorner);
	}
	
	public int64 OriginCorner()
	{
		return this.handle.OriginCorner();
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return this.handle.ItemAt(index);
	}
	
	public void* ItemAtPosition(int32 row, int32 column)
	{
		return this.handle.ItemAtPosition(row, column);
	}
	
	public virtual void* TakeAt(int32 index)
	{
		return this.handle.TakeAt(index);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		this.handle.SetGeometry(geometry);
	}
	
	public void AddItem(IQLayoutItem item, int32 row, int32 column)
	{
		this.handle.AddItem(item, row, column);
	}
	
	public void SetDefaultPositioning(int32 n, int64 orient)
	{
		this.handle.SetDefaultPositioning(n, orient);
	}
	
	public void GetItemPosition(int32 idx, int32* row, int32* column, int32* rowSpan, int32* columnSpan)
	{
		this.handle.GetItemPosition(idx, row, column, rowSpan, columnSpan);
	}
	
	public virtual void AddItemWithQLayoutItem(IQLayoutItem param1)
	{
		this.handle.AddItemWithQLayoutItem(param1);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGridLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGridLayoutPtr.Tr3(s, c, n);
	}
	
	public void AddWidget4(IQWidget param1, int32 row, int32 column, int64 param4)
	{
		this.handle.AddWidget4(param1, row, column, param4);
	}
	
	public void AddWidget6(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		this.handle.AddWidget6(param1, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddLayout4(IQLayout param1, int32 row, int32 column, int64 param4)
	{
		this.handle.AddLayout4(param1, row, column, param4);
	}
	
	public void AddLayout6(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		this.handle.AddLayout6(param1, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddItem4(IQLayoutItem item, int32 row, int32 column, int32 rowSpan)
	{
		this.handle.AddItem4(item, row, column, rowSpan);
	}
	
	public void AddItem5(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		this.handle.AddItem5(item, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem6(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		this.handle.AddItem6(item, row, column, rowSpan, columnSpan, param6);
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
		QGridLayoutPtr.ClosestAcceptableSize(w, s);
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
		QGridLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGridLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGridLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGridLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
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
	[LinkName("QGridLayout_new")]
	public static extern void* QGridLayout_new(void* parent);
	[LinkName("QGridLayout_new2")]
	public static extern void* QGridLayout_new2();
	[LinkName("QGridLayout_MetaObject")]
	public static extern void* QGridLayout_MetaObject(void* c_this);
	[LinkName("QGridLayout_Metacast")]
	public static extern void* QGridLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QGridLayout_Metacall")]
	public static extern int32 QGridLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGridLayout_Tr")]
	public static extern libqt_string QGridLayout_Tr(char8* s);
	[LinkName("QGridLayout_SizeHint")]
	public static extern void QGridLayout_SizeHint(void* c_this);
	[LinkName("QGridLayout_MinimumSize")]
	public static extern void QGridLayout_MinimumSize(void* c_this);
	[LinkName("QGridLayout_MaximumSize")]
	public static extern void QGridLayout_MaximumSize(void* c_this);
	[LinkName("QGridLayout_SetHorizontalSpacing")]
	public static extern void QGridLayout_SetHorizontalSpacing(void* c_this, int32 spacing);
	[LinkName("QGridLayout_HorizontalSpacing")]
	public static extern int32 QGridLayout_HorizontalSpacing(void* c_this);
	[LinkName("QGridLayout_SetVerticalSpacing")]
	public static extern void QGridLayout_SetVerticalSpacing(void* c_this, int32 spacing);
	[LinkName("QGridLayout_VerticalSpacing")]
	public static extern int32 QGridLayout_VerticalSpacing(void* c_this);
	[LinkName("QGridLayout_SetSpacing")]
	public static extern void QGridLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QGridLayout_Spacing")]
	public static extern int32 QGridLayout_Spacing(void* c_this);
	[LinkName("QGridLayout_SetRowStretch")]
	public static extern void QGridLayout_SetRowStretch(void* c_this, int32 row, int32 stretch);
	[LinkName("QGridLayout_SetColumnStretch")]
	public static extern void QGridLayout_SetColumnStretch(void* c_this, int32 column, int32 stretch);
	[LinkName("QGridLayout_RowStretch")]
	public static extern int32 QGridLayout_RowStretch(void* c_this, int32 row);
	[LinkName("QGridLayout_ColumnStretch")]
	public static extern int32 QGridLayout_ColumnStretch(void* c_this, int32 column);
	[LinkName("QGridLayout_SetRowMinimumHeight")]
	public static extern void QGridLayout_SetRowMinimumHeight(void* c_this, int32 row, int32 minSize);
	[LinkName("QGridLayout_SetColumnMinimumWidth")]
	public static extern void QGridLayout_SetColumnMinimumWidth(void* c_this, int32 column, int32 minSize);
	[LinkName("QGridLayout_RowMinimumHeight")]
	public static extern int32 QGridLayout_RowMinimumHeight(void* c_this, int32 row);
	[LinkName("QGridLayout_ColumnMinimumWidth")]
	public static extern int32 QGridLayout_ColumnMinimumWidth(void* c_this, int32 column);
	[LinkName("QGridLayout_ColumnCount")]
	public static extern int32 QGridLayout_ColumnCount(void* c_this);
	[LinkName("QGridLayout_RowCount")]
	public static extern int32 QGridLayout_RowCount(void* c_this);
	[LinkName("QGridLayout_CellRect")]
	public static extern void QGridLayout_CellRect(void* c_this, int32 row, int32 column);
	[LinkName("QGridLayout_HasHeightForWidth")]
	public static extern bool QGridLayout_HasHeightForWidth(void* c_this);
	[LinkName("QGridLayout_HeightForWidth")]
	public static extern int32 QGridLayout_HeightForWidth(void* c_this, int32 param1);
	[LinkName("QGridLayout_MinimumHeightForWidth")]
	public static extern int32 QGridLayout_MinimumHeightForWidth(void* c_this, int32 param1);
	[LinkName("QGridLayout_ExpandingDirections")]
	public static extern int64 QGridLayout_ExpandingDirections(void* c_this);
	[LinkName("QGridLayout_Invalidate")]
	public static extern void QGridLayout_Invalidate(void* c_this);
	[LinkName("QGridLayout_AddWidget")]
	public static extern void QGridLayout_AddWidget(void* c_this, void* w);
	[LinkName("QGridLayout_AddWidget2")]
	public static extern void QGridLayout_AddWidget2(void* c_this, void* param1, int32 row, int32 column);
	[LinkName("QGridLayout_AddWidget3")]
	public static extern void QGridLayout_AddWidget3(void* c_this, void* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_AddLayout")]
	public static extern void QGridLayout_AddLayout(void* c_this, void* param1, int32 row, int32 column);
	[LinkName("QGridLayout_AddLayout2")]
	public static extern void QGridLayout_AddLayout2(void* c_this, void* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_SetOriginCorner")]
	public static extern void QGridLayout_SetOriginCorner(void* c_this, int64 originCorner);
	[LinkName("QGridLayout_OriginCorner")]
	public static extern int64 QGridLayout_OriginCorner(void* c_this);
	[LinkName("QGridLayout_ItemAt")]
	public static extern void* QGridLayout_ItemAt(void* c_this, int32 index);
	[LinkName("QGridLayout_ItemAtPosition")]
	public static extern void* QGridLayout_ItemAtPosition(void* c_this, int32 row, int32 column);
	[LinkName("QGridLayout_TakeAt")]
	public static extern void* QGridLayout_TakeAt(void* c_this, int32 index);
	[LinkName("QGridLayout_Count")]
	public static extern int32 QGridLayout_Count(void* c_this);
	[LinkName("QGridLayout_SetGeometry")]
	public static extern void QGridLayout_SetGeometry(void* c_this, void* geometry);
	[LinkName("QGridLayout_AddItem")]
	public static extern void QGridLayout_AddItem(void* c_this, void* item, int32 row, int32 column);
	[LinkName("QGridLayout_SetDefaultPositioning")]
	public static extern void QGridLayout_SetDefaultPositioning(void* c_this, int32 n, int64 orient);
	[LinkName("QGridLayout_GetItemPosition")]
	public static extern void QGridLayout_GetItemPosition(void* c_this, int32 idx, int32* row, int32* column, int32* rowSpan, int32* columnSpan);
	[LinkName("QGridLayout_AddItemWithQLayoutItem")]
	public static extern void QGridLayout_AddItemWithQLayoutItem(void* c_this, void* param1);
	[LinkName("QGridLayout_Tr2")]
	public static extern libqt_string QGridLayout_Tr2(char8* s, char8* c);
	[LinkName("QGridLayout_Tr3")]
	public static extern libqt_string QGridLayout_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QGridLayout_AddWidget4")]
	public static extern void QGridLayout_AddWidget4(void* c_this, void* param1, int32 row, int32 column, int64 param4);
	[LinkName("QGridLayout_AddWidget6")]
	public static extern void QGridLayout_AddWidget6(void* c_this, void* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
	[LinkName("QGridLayout_AddLayout4")]
	public static extern void QGridLayout_AddLayout4(void* c_this, void* param1, int32 row, int32 column, int64 param4);
	[LinkName("QGridLayout_AddLayout6")]
	public static extern void QGridLayout_AddLayout6(void* c_this, void* param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
	[LinkName("QGridLayout_AddItem4")]
	public static extern void QGridLayout_AddItem4(void* c_this, void* item, int32 row, int32 column, int32 rowSpan);
	[LinkName("QGridLayout_AddItem5")]
	public static extern void QGridLayout_AddItem5(void* c_this, void* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan);
	[LinkName("QGridLayout_AddItem6")]
	public static extern void QGridLayout_AddItem6(void* c_this, void* item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6);
	/// Delete this object from C++ memory
	[LinkName("QGridLayout_Delete")]
	public static extern void QGridLayout_Delete(void* self);
}