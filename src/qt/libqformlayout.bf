using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QFormLayout__FieldGrowthPolicy
{
	FieldsStayAtSizeHint = 0,
	ExpandingFieldsGrow = 1,
	AllNonFixedFieldsGrow = 2,
}
[AllowDuplicates]
public enum QFormLayout__RowWrapPolicy
{
	DontWrapRows = 0,
	WrapLongRows = 1,
	WrapAllRows = 2,
}
[AllowDuplicates]
public enum QFormLayout__ItemRole
{
	LabelRole = 0,
	FieldRole = 1,
	SpanningRole = 2,
}
public interface IQFormLayout
{
	void* NativePtr { get; }
}
public struct QFormLayoutPtr : IQFormLayout, IDisposable, IQLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQWidget parent)
	{
		return .(CQt.QFormLayout_new((parent == default || parent.NativePtr == default) ? default : parent.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QFormLayout_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QFormLayout_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QFormLayout_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QFormLayout_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QFormLayout_Tr(s);
	}
	
	public void SetFieldGrowthPolicy(int64 policy)
	{
		CQt.QFormLayout_SetFieldGrowthPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 FieldGrowthPolicy()
	{
		return CQt.QFormLayout_FieldGrowthPolicy(this.nativePtr);
	}
	
	public void SetRowWrapPolicy(int64 policy)
	{
		CQt.QFormLayout_SetRowWrapPolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 RowWrapPolicy()
	{
		return CQt.QFormLayout_RowWrapPolicy(this.nativePtr);
	}
	
	public void SetLabelAlignment(int64 alignment)
	{
		CQt.QFormLayout_SetLabelAlignment(this.nativePtr, alignment);
	}
	
	public int64 LabelAlignment()
	{
		return CQt.QFormLayout_LabelAlignment(this.nativePtr);
	}
	
	public void SetFormAlignment(int64 alignment)
	{
		CQt.QFormLayout_SetFormAlignment(this.nativePtr, alignment);
	}
	
	public int64 FormAlignment()
	{
		return CQt.QFormLayout_FormAlignment(this.nativePtr);
	}
	
	public void SetHorizontalSpacing(int32 spacing)
	{
		CQt.QFormLayout_SetHorizontalSpacing(this.nativePtr, spacing);
	}
	
	public int32 HorizontalSpacing()
	{
		return CQt.QFormLayout_HorizontalSpacing(this.nativePtr);
	}
	
	public void SetVerticalSpacing(int32 spacing)
	{
		CQt.QFormLayout_SetVerticalSpacing(this.nativePtr, spacing);
	}
	
	public int32 VerticalSpacing()
	{
		return CQt.QFormLayout_VerticalSpacing(this.nativePtr);
	}
	
	public int32 Spacing()
	{
		return CQt.QFormLayout_Spacing(this.nativePtr);
	}
	
	public void SetSpacing(int32 spacing)
	{
		CQt.QFormLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public void AddRow(IQWidget label, IQWidget field)
	{
		CQt.QFormLayout_AddRow(this.nativePtr, (label == default || label.NativePtr == default) ? default : label.NativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void AddRow2(IQWidget label, IQLayout field)
	{
		CQt.QFormLayout_AddRow2(this.nativePtr, (label == default || label.NativePtr == default) ? default : label.NativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void AddRow3(String labelText, IQWidget field)
	{
		CQt.QFormLayout_AddRow3(this.nativePtr, libqt_string(labelText), (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void AddRow4(String labelText, IQLayout field)
	{
		CQt.QFormLayout_AddRow4(this.nativePtr, libqt_string(labelText), (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void AddRowWithWidget(IQWidget widget)
	{
		CQt.QFormLayout_AddRowWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void AddRowWithLayout(IQLayout layout)
	{
		CQt.QFormLayout_AddRowWithLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void InsertRow(int32 row, IQWidget label, IQWidget field)
	{
		CQt.QFormLayout_InsertRow(this.nativePtr, row, (label == default || label.NativePtr == default) ? default : label.NativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void InsertRow2(int32 row, IQWidget label, IQLayout field)
	{
		CQt.QFormLayout_InsertRow2(this.nativePtr, row, (label == default || label.NativePtr == default) ? default : label.NativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void InsertRow3(int32 row, String labelText, IQWidget field)
	{
		CQt.QFormLayout_InsertRow3(this.nativePtr, row, libqt_string(labelText), (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void InsertRow4(int32 row, String labelText, IQLayout field)
	{
		CQt.QFormLayout_InsertRow4(this.nativePtr, row, libqt_string(labelText), (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void InsertRow5(int32 row, IQWidget widget)
	{
		CQt.QFormLayout_InsertRow5(this.nativePtr, row, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void InsertRow6(int32 row, IQLayout layout)
	{
		CQt.QFormLayout_InsertRow6(this.nativePtr, row, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void RemoveRow(int32 row)
	{
		CQt.QFormLayout_RemoveRow(this.nativePtr, row);
	}
	
	public void RemoveRowWithWidget(IQWidget widget)
	{
		CQt.QFormLayout_RemoveRowWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void RemoveRowWithLayout(IQLayout layout)
	{
		CQt.QFormLayout_RemoveRowWithLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void TakeRow(int32 row)
	{
		CQt.QFormLayout_TakeRow(this.nativePtr, row);
	}
	
	public void TakeRowWithWidget(IQWidget widget)
	{
		CQt.QFormLayout_TakeRowWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void TakeRowWithLayout(IQLayout layout)
	{
		CQt.QFormLayout_TakeRowWithLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void SetItem(int32 row, int64 role, IQLayoutItem item)
	{
		CQt.QFormLayout_SetItem(this.nativePtr, row, (int64)role, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void SetWidget(int32 row, int64 role, IQWidget widget)
	{
		CQt.QFormLayout_SetWidget(this.nativePtr, row, (int64)role, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public void SetLayout(int32 row, int64 role, IQLayout layout)
	{
		CQt.QFormLayout_SetLayout(this.nativePtr, row, (int64)role, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void SetRowVisible(int32 row, bool on)
	{
		CQt.QFormLayout_SetRowVisible(this.nativePtr, row, on);
	}
	
	public void SetRowVisible2(IQWidget widget, bool on)
	{
		CQt.QFormLayout_SetRowVisible2(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr, on);
	}
	
	public void SetRowVisible3(IQLayout layout, bool on)
	{
		CQt.QFormLayout_SetRowVisible3(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr, on);
	}
	
	public bool IsRowVisible(int32 row)
	{
		return CQt.QFormLayout_IsRowVisible(this.nativePtr, row);
	}
	
	public bool IsRowVisibleWithWidget(IQWidget widget)
	{
		return CQt.QFormLayout_IsRowVisibleWithWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
	}
	
	public bool IsRowVisibleWithLayout(IQLayout layout)
	{
		return CQt.QFormLayout_IsRowVisibleWithLayout(this.nativePtr, (layout == default || layout.NativePtr == default) ? default : layout.NativePtr);
	}
	
	public void* ItemAt(int32 row, int64 role)
	{
		return CQt.QFormLayout_ItemAt(this.nativePtr, row, (int64)role);
	}
	
	public void* LabelForField(IQWidget field)
	{
		return CQt.QFormLayout_LabelForField(this.nativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void* LabelForFieldWithField(IQLayout field)
	{
		return CQt.QFormLayout_LabelForFieldWithField(this.nativePtr, (field == default || field.NativePtr == default) ? default : field.NativePtr);
	}
	
	public void AddItem(IQLayoutItem item)
	{
		CQt.QFormLayout_AddItem(this.nativePtr, (item == default || item.NativePtr == default) ? default : item.NativePtr);
	}
	
	public void* ItemAtWithIndex(int32 index)
	{
		return CQt.QFormLayout_ItemAtWithIndex(this.nativePtr, index);
	}
	
	public void* TakeAt(int32 index)
	{
		return CQt.QFormLayout_TakeAt(this.nativePtr, index);
	}
	
	public void SetGeometry(IQRect rect)
	{
		CQt.QFormLayout_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void MinimumSize()
	{
		CQt.QFormLayout_MinimumSize(this.nativePtr);
	}
	
	public void SizeHint()
	{
		CQt.QFormLayout_SizeHint(this.nativePtr);
	}
	
	public void Invalidate()
	{
		CQt.QFormLayout_Invalidate(this.nativePtr);
	}
	
	public bool HasHeightForWidth()
	{
		return CQt.QFormLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public int32 HeightForWidth(int32 width)
	{
		return CQt.QFormLayout_HeightForWidth(this.nativePtr, width);
	}
	
	public int64 ExpandingDirections()
	{
		return CQt.QFormLayout_ExpandingDirections(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QFormLayout_Count(this.nativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QFormLayout_RowCount(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QFormLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QFormLayout_Tr3(s, c, n);
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
	
	public void AddWidget(IQWidget w)
	{
		CQt.QLayout_AddWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void RemoveWidget(IQWidget w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, (w == default || w.NativePtr == default) ? default : w.NativePtr);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
public class QFormLayout
{
	public QFormLayoutPtr handle;
	
	public static implicit operator QFormLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQWidget parent)
	{
		this.handle = QFormLayoutPtr.New(parent);
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
		return QFormLayoutPtr.Tr(s);
	}
	
	public void SetFieldGrowthPolicy(int64 policy)
	{
		this.handle.SetFieldGrowthPolicy(policy);
	}
	
	public int64 FieldGrowthPolicy()
	{
		return this.handle.FieldGrowthPolicy();
	}
	
	public void SetRowWrapPolicy(int64 policy)
	{
		this.handle.SetRowWrapPolicy(policy);
	}
	
	public int64 RowWrapPolicy()
	{
		return this.handle.RowWrapPolicy();
	}
	
	public void SetLabelAlignment(int64 alignment)
	{
		this.handle.SetLabelAlignment(alignment);
	}
	
	public int64 LabelAlignment()
	{
		return this.handle.LabelAlignment();
	}
	
	public void SetFormAlignment(int64 alignment)
	{
		this.handle.SetFormAlignment(alignment);
	}
	
	public int64 FormAlignment()
	{
		return this.handle.FormAlignment();
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
	
	public virtual int32 Spacing()
	{
		return this.handle.Spacing();
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public void AddRow(IQWidget label, IQWidget field)
	{
		this.handle.AddRow(label, field);
	}
	
	public void AddRow2(IQWidget label, IQLayout field)
	{
		this.handle.AddRow2(label, field);
	}
	
	public void AddRow3(String labelText, IQWidget field)
	{
		this.handle.AddRow3(labelText, field);
	}
	
	public void AddRow4(String labelText, IQLayout field)
	{
		this.handle.AddRow4(labelText, field);
	}
	
	public void AddRowWithWidget(IQWidget widget)
	{
		this.handle.AddRowWithWidget(widget);
	}
	
	public void AddRowWithLayout(IQLayout layout)
	{
		this.handle.AddRowWithLayout(layout);
	}
	
	public void InsertRow(int32 row, IQWidget label, IQWidget field)
	{
		this.handle.InsertRow(row, label, field);
	}
	
	public void InsertRow2(int32 row, IQWidget label, IQLayout field)
	{
		this.handle.InsertRow2(row, label, field);
	}
	
	public void InsertRow3(int32 row, String labelText, IQWidget field)
	{
		this.handle.InsertRow3(row, labelText, field);
	}
	
	public void InsertRow4(int32 row, String labelText, IQLayout field)
	{
		this.handle.InsertRow4(row, labelText, field);
	}
	
	public void InsertRow5(int32 row, IQWidget widget)
	{
		this.handle.InsertRow5(row, widget);
	}
	
	public void InsertRow6(int32 row, IQLayout layout)
	{
		this.handle.InsertRow6(row, layout);
	}
	
	public void RemoveRow(int32 row)
	{
		this.handle.RemoveRow(row);
	}
	
	public void RemoveRowWithWidget(IQWidget widget)
	{
		this.handle.RemoveRowWithWidget(widget);
	}
	
	public void RemoveRowWithLayout(IQLayout layout)
	{
		this.handle.RemoveRowWithLayout(layout);
	}
	
	public void TakeRow(int32 row)
	{
		this.handle.TakeRow(row);
	}
	
	public void TakeRowWithWidget(IQWidget widget)
	{
		this.handle.TakeRowWithWidget(widget);
	}
	
	public void TakeRowWithLayout(IQLayout layout)
	{
		this.handle.TakeRowWithLayout(layout);
	}
	
	public void SetItem(int32 row, int64 role, IQLayoutItem item)
	{
		this.handle.SetItem(row, role, item);
	}
	
	public void SetWidget(int32 row, int64 role, IQWidget widget)
	{
		this.handle.SetWidget(row, role, widget);
	}
	
	public void SetLayout(int32 row, int64 role, IQLayout layout)
	{
		this.handle.SetLayout(row, role, layout);
	}
	
	public void SetRowVisible(int32 row, bool on)
	{
		this.handle.SetRowVisible(row, on);
	}
	
	public void SetRowVisible2(IQWidget widget, bool on)
	{
		this.handle.SetRowVisible2(widget, on);
	}
	
	public void SetRowVisible3(IQLayout layout, bool on)
	{
		this.handle.SetRowVisible3(layout, on);
	}
	
	public bool IsRowVisible(int32 row)
	{
		return this.handle.IsRowVisible(row);
	}
	
	public bool IsRowVisibleWithWidget(IQWidget widget)
	{
		return this.handle.IsRowVisibleWithWidget(widget);
	}
	
	public bool IsRowVisibleWithLayout(IQLayout layout)
	{
		return this.handle.IsRowVisibleWithLayout(layout);
	}
	
	public void* ItemAt(int32 row, int64 role)
	{
		return this.handle.ItemAt(row, role);
	}
	
	public void* LabelForField(IQWidget field)
	{
		return this.handle.LabelForField(field);
	}
	
	public void* LabelForFieldWithField(IQLayout field)
	{
		return this.handle.LabelForFieldWithField(field);
	}
	
	public virtual void AddItem(IQLayoutItem item)
	{
		this.handle.AddItem(item);
	}
	
	public virtual void* ItemAtWithIndex(int32 index)
	{
		return this.handle.ItemAtWithIndex(index);
	}
	
	public virtual void* TakeAt(int32 index)
	{
		return this.handle.TakeAt(index);
	}
	
	public virtual void SetGeometry(IQRect rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public virtual void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public virtual void SizeHint()
	{
		this.handle.SizeHint();
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual bool HasHeightForWidth()
	{
		return this.handle.HasHeightForWidth();
	}
	
	public virtual int32 HeightForWidth(int32 width)
	{
		return this.handle.HeightForWidth(width);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return this.handle.ExpandingDirections();
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public int32 RowCount()
	{
		return this.handle.RowCount();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QFormLayoutPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QFormLayoutPtr.Tr3(s, c, n);
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
	
	public void AddWidget(IQWidget w)
	{
		this.handle.AddWidget(w);
	}
	
	public void RemoveWidget(IQWidget w)
	{
		this.handle.RemoveWidget(w);
	}
	
	public void RemoveItem(IQLayoutItem param1)
	{
		this.handle.RemoveItem(param1);
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
		QFormLayoutPtr.ClosestAcceptableSize(w, s);
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
		QFormLayoutPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QFormLayoutPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QFormLayoutPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QFormLayoutPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return this.handle.MinimumHeightForWidth(param1);
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
	[LinkName("QFormLayout_new")]
	public static extern void* QFormLayout_new(void* parent);
	[LinkName("QFormLayout_new2")]
	public static extern void* QFormLayout_new2();
	[LinkName("QFormLayout_MetaObject")]
	public static extern void* QFormLayout_MetaObject(void* c_this);
	[LinkName("QFormLayout_Metacast")]
	public static extern void* QFormLayout_Metacast(void* c_this, char8* param1);
	[LinkName("QFormLayout_Metacall")]
	public static extern int32 QFormLayout_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QFormLayout_Tr")]
	public static extern libqt_string QFormLayout_Tr(char8* s);
	[LinkName("QFormLayout_SetFieldGrowthPolicy")]
	public static extern void QFormLayout_SetFieldGrowthPolicy(void* c_this, int64 policy);
	[LinkName("QFormLayout_FieldGrowthPolicy")]
	public static extern int64 QFormLayout_FieldGrowthPolicy(void* c_this);
	[LinkName("QFormLayout_SetRowWrapPolicy")]
	public static extern void QFormLayout_SetRowWrapPolicy(void* c_this, int64 policy);
	[LinkName("QFormLayout_RowWrapPolicy")]
	public static extern int64 QFormLayout_RowWrapPolicy(void* c_this);
	[LinkName("QFormLayout_SetLabelAlignment")]
	public static extern void QFormLayout_SetLabelAlignment(void* c_this, int64 alignment);
	[LinkName("QFormLayout_LabelAlignment")]
	public static extern int64 QFormLayout_LabelAlignment(void* c_this);
	[LinkName("QFormLayout_SetFormAlignment")]
	public static extern void QFormLayout_SetFormAlignment(void* c_this, int64 alignment);
	[LinkName("QFormLayout_FormAlignment")]
	public static extern int64 QFormLayout_FormAlignment(void* c_this);
	[LinkName("QFormLayout_SetHorizontalSpacing")]
	public static extern void QFormLayout_SetHorizontalSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_HorizontalSpacing")]
	public static extern int32 QFormLayout_HorizontalSpacing(void* c_this);
	[LinkName("QFormLayout_SetVerticalSpacing")]
	public static extern void QFormLayout_SetVerticalSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_VerticalSpacing")]
	public static extern int32 QFormLayout_VerticalSpacing(void* c_this);
	[LinkName("QFormLayout_Spacing")]
	public static extern int32 QFormLayout_Spacing(void* c_this);
	[LinkName("QFormLayout_SetSpacing")]
	public static extern void QFormLayout_SetSpacing(void* c_this, int32 spacing);
	[LinkName("QFormLayout_AddRow")]
	public static extern void QFormLayout_AddRow(void* c_this, void* label, void* field);
	[LinkName("QFormLayout_AddRow2")]
	public static extern void QFormLayout_AddRow2(void* c_this, void* label, void* field);
	[LinkName("QFormLayout_AddRow3")]
	public static extern void QFormLayout_AddRow3(void* c_this, libqt_string labelText, void* field);
	[LinkName("QFormLayout_AddRow4")]
	public static extern void QFormLayout_AddRow4(void* c_this, libqt_string labelText, void* field);
	[LinkName("QFormLayout_AddRowWithWidget")]
	public static extern void QFormLayout_AddRowWithWidget(void* c_this, void* widget);
	[LinkName("QFormLayout_AddRowWithLayout")]
	public static extern void QFormLayout_AddRowWithLayout(void* c_this, void* layout);
	[LinkName("QFormLayout_InsertRow")]
	public static extern void QFormLayout_InsertRow(void* c_this, int32 row, void* label, void* field);
	[LinkName("QFormLayout_InsertRow2")]
	public static extern void QFormLayout_InsertRow2(void* c_this, int32 row, void* label, void* field);
	[LinkName("QFormLayout_InsertRow3")]
	public static extern void QFormLayout_InsertRow3(void* c_this, int32 row, libqt_string labelText, void* field);
	[LinkName("QFormLayout_InsertRow4")]
	public static extern void QFormLayout_InsertRow4(void* c_this, int32 row, libqt_string labelText, void* field);
	[LinkName("QFormLayout_InsertRow5")]
	public static extern void QFormLayout_InsertRow5(void* c_this, int32 row, void* widget);
	[LinkName("QFormLayout_InsertRow6")]
	public static extern void QFormLayout_InsertRow6(void* c_this, int32 row, void* layout);
	[LinkName("QFormLayout_RemoveRow")]
	public static extern void QFormLayout_RemoveRow(void* c_this, int32 row);
	[LinkName("QFormLayout_RemoveRowWithWidget")]
	public static extern void QFormLayout_RemoveRowWithWidget(void* c_this, void* widget);
	[LinkName("QFormLayout_RemoveRowWithLayout")]
	public static extern void QFormLayout_RemoveRowWithLayout(void* c_this, void* layout);
	[LinkName("QFormLayout_TakeRow")]
	public static extern void QFormLayout_TakeRow(void* c_this, int32 row);
	[LinkName("QFormLayout_TakeRowWithWidget")]
	public static extern void QFormLayout_TakeRowWithWidget(void* c_this, void* widget);
	[LinkName("QFormLayout_TakeRowWithLayout")]
	public static extern void QFormLayout_TakeRowWithLayout(void* c_this, void* layout);
	[LinkName("QFormLayout_SetItem")]
	public static extern void QFormLayout_SetItem(void* c_this, int32 row, int64 role, void* item);
	[LinkName("QFormLayout_SetWidget")]
	public static extern void QFormLayout_SetWidget(void* c_this, int32 row, int64 role, void* widget);
	[LinkName("QFormLayout_SetLayout")]
	public static extern void QFormLayout_SetLayout(void* c_this, int32 row, int64 role, void* layout);
	[LinkName("QFormLayout_SetRowVisible")]
	public static extern void QFormLayout_SetRowVisible(void* c_this, int32 row, bool on);
	[LinkName("QFormLayout_SetRowVisible2")]
	public static extern void QFormLayout_SetRowVisible2(void* c_this, void* widget, bool on);
	[LinkName("QFormLayout_SetRowVisible3")]
	public static extern void QFormLayout_SetRowVisible3(void* c_this, void* layout, bool on);
	[LinkName("QFormLayout_IsRowVisible")]
	public static extern bool QFormLayout_IsRowVisible(void* c_this, int32 row);
	[LinkName("QFormLayout_IsRowVisibleWithWidget")]
	public static extern bool QFormLayout_IsRowVisibleWithWidget(void* c_this, void* widget);
	[LinkName("QFormLayout_IsRowVisibleWithLayout")]
	public static extern bool QFormLayout_IsRowVisibleWithLayout(void* c_this, void* layout);
	[LinkName("QFormLayout_ItemAt")]
	public static extern void* QFormLayout_ItemAt(void* c_this, int32 row, int64 role);
	[LinkName("QFormLayout_LabelForField")]
	public static extern void* QFormLayout_LabelForField(void* c_this, void* field);
	[LinkName("QFormLayout_LabelForFieldWithField")]
	public static extern void* QFormLayout_LabelForFieldWithField(void* c_this, void* field);
	[LinkName("QFormLayout_AddItem")]
	public static extern void QFormLayout_AddItem(void* c_this, void* item);
	[LinkName("QFormLayout_ItemAtWithIndex")]
	public static extern void* QFormLayout_ItemAtWithIndex(void* c_this, int32 index);
	[LinkName("QFormLayout_TakeAt")]
	public static extern void* QFormLayout_TakeAt(void* c_this, int32 index);
	[LinkName("QFormLayout_SetGeometry")]
	public static extern void QFormLayout_SetGeometry(void* c_this, void* rect);
	[LinkName("QFormLayout_MinimumSize")]
	public static extern void QFormLayout_MinimumSize(void* c_this);
	[LinkName("QFormLayout_SizeHint")]
	public static extern void QFormLayout_SizeHint(void* c_this);
	[LinkName("QFormLayout_Invalidate")]
	public static extern void QFormLayout_Invalidate(void* c_this);
	[LinkName("QFormLayout_HasHeightForWidth")]
	public static extern bool QFormLayout_HasHeightForWidth(void* c_this);
	[LinkName("QFormLayout_HeightForWidth")]
	public static extern int32 QFormLayout_HeightForWidth(void* c_this, int32 width);
	[LinkName("QFormLayout_ExpandingDirections")]
	public static extern int64 QFormLayout_ExpandingDirections(void* c_this);
	[LinkName("QFormLayout_Count")]
	public static extern int32 QFormLayout_Count(void* c_this);
	[LinkName("QFormLayout_RowCount")]
	public static extern int32 QFormLayout_RowCount(void* c_this);
	[LinkName("QFormLayout_Tr2")]
	public static extern libqt_string QFormLayout_Tr2(char8* s, char8* c);
	[LinkName("QFormLayout_Tr3")]
	public static extern libqt_string QFormLayout_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QFormLayout_Delete")]
	public static extern void QFormLayout_Delete(void* self);
}
public interface IQFormLayout__TakeRowResult
{
	void* NativePtr { get; }
}
public struct QFormLayout__TakeRowResultPtr : IQFormLayout__TakeRowResult
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
}
public class QFormLayout__TakeRowResult
{
	public QFormLayout__TakeRowResultPtr handle;
	
	public static implicit operator QFormLayout__TakeRowResultPtr(Self self)
	{
		return self.handle;
	}
}
extension CQt
{
}