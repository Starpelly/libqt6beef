using System;
using System.Interop;
namespace Qt;

public interface IQGridLayout
{
	void* NativePtr { get; }
}
public class QGridLayout : IQGridLayout, IQLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(IQWidget parent)
	{
		this.nativePtr = CQt.QGridLayout_new((parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public ~this()
	{
		CQt.QGridLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QGridLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QGridLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QGridLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGridLayout_Tr(s);
	}
	
	public virtual void SizeHint()
	{
		CQt.QGridLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QGridLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void MaximumSize()
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
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QGridLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public virtual int32 Spacing()
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
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QGridLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QGridLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QGridLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QGridLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QGridLayout_Invalidate(this.nativePtr);
	}
	
	public void AddWidget(IQWidget w)
	{
		CQt.QGridLayout_AddWidget(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void AddWidget2(IQWidget param1, int32 row, int32 column)
	{
		CQt.QGridLayout_AddWidget2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column);
	}
	
	public void AddWidget3(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddWidget3(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddLayout(IQLayout param1, int32 row, int32 column)
	{
		CQt.QGridLayout_AddLayout(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column);
	}
	
	public void AddLayout2(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddLayout2(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void SetOriginCorner(int64 originCorner)
	{
		CQt.QGridLayout_SetOriginCorner(this.nativePtr, originCorner);
	}
	
	public int64 OriginCorner()
	{
		return CQt.QGridLayout_OriginCorner(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return CQt.QGridLayout_ItemAt(this.nativePtr, index);
	}
	
	public void* ItemAtPosition(int32 row, int32 column)
	{
		return CQt.QGridLayout_ItemAtPosition(this.nativePtr, row, column);
	}
	
	public virtual void* TakeAt(int32 index)
	{
		return CQt.QGridLayout_TakeAt(this.nativePtr, index);
	}
	
	public virtual int32 Count()
	{
		return CQt.QGridLayout_Count(this.nativePtr);
	}
	
	public virtual void SetGeometry(IQRect geometry)
	{
		CQt.QGridLayout_SetGeometry(this.nativePtr, (geometry == default) ? default : (void*)geometry.NativePtr);
	}
	
	public void AddItem(IQLayoutItem item, int32 row, int32 column)
	{
		CQt.QGridLayout_AddItem(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column);
	}
	
	public void SetDefaultPositioning(int32 n, int64 orient)
	{
		CQt.QGridLayout_SetDefaultPositioning(this.nativePtr, n, orient);
	}
	
	public void GetItemPosition(int32 idx, int32* row, int32* column, int32* rowSpan, int32* columnSpan)
	{
		CQt.QGridLayout_GetItemPosition(this.nativePtr, idx, row, column, rowSpan, columnSpan);
	}
	
	public virtual void AddItemWithQLayoutItem(IQLayoutItem param1)
	{
		CQt.QGridLayout_AddItemWithQLayoutItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
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
		CQt.QGridLayout_AddWidget4(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, param4);
	}
	
	public void AddWidget6(IQWidget param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddWidget6(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddLayout4(IQLayout param1, int32 row, int32 column, int64 param4)
	{
		CQt.QGridLayout_AddLayout4(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, param4);
	}
	
	public void AddLayout6(IQLayout param1, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddLayout6(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr, row, column, rowSpan, columnSpan, param6);
	}
	
	public void AddItem4(IQLayoutItem item, int32 row, int32 column, int32 rowSpan)
	{
		CQt.QGridLayout_AddItem4(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, rowSpan);
	}
	
	public void AddItem5(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan)
	{
		CQt.QGridLayout_AddItem5(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, rowSpan, columnSpan);
	}
	
	public void AddItem6(IQLayoutItem item, int32 row, int32 column, int32 rowSpan, int32 columnSpan, int64 param6)
	{
		CQt.QGridLayout_AddItem6(this.nativePtr, (item == null) ? null : (void*)item.NativePtr, row, column, rowSpan, columnSpan, param6);
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
	
	public void RemoveWidget(IQWidget w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, (w == null) ? null : (void*)w.NativePtr);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int32 IndexOf(IQWidget param1)
	{
		return CQt.QLayout_IndexOf(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
	}
	
	public virtual int32 IndexOfWithQLayoutItem(IQLayoutItem param1)
	{
		return CQt.QLayout_IndexOfWithQLayoutItem(this.nativePtr, (param1 == null) ? null : (void*)param1.NativePtr);
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