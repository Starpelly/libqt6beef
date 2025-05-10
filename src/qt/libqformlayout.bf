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
public class QFormLayout
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QFormLayout_new(parent);
	}
	
	public ~this()
	{
		CQt.QFormLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QFormLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QFormLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QFormLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QFormLayout_Tr(s);
	}
	
	public void SetFieldGrowthPolicy(int64 policy)
	{
		CQt.QFormLayout_SetFieldGrowthPolicy(this.nativePtr, policy);
	}
	
	public int64 FieldGrowthPolicy()
	{
		return CQt.QFormLayout_FieldGrowthPolicy(this.nativePtr);
	}
	
	public void SetRowWrapPolicy(int64 policy)
	{
		CQt.QFormLayout_SetRowWrapPolicy(this.nativePtr, policy);
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
	
	public virtual int32 Spacing()
	{
		return CQt.QFormLayout_Spacing(this.nativePtr);
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QFormLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public void AddRow(void* label, void* field)
	{
		CQt.QFormLayout_AddRow(this.nativePtr, label, field);
	}
	
	public void AddRow2(void* label, void* field)
	{
		CQt.QFormLayout_AddRow2(this.nativePtr, label, field);
	}
	
	public void AddRow3(libqt_string labelText, void* field)
	{
		CQt.QFormLayout_AddRow3(this.nativePtr, labelText, field);
	}
	
	public void AddRow4(libqt_string labelText, void* field)
	{
		CQt.QFormLayout_AddRow4(this.nativePtr, labelText, field);
	}
	
	public void AddRowWithWidget(void* widget)
	{
		CQt.QFormLayout_AddRowWithWidget(this.nativePtr, widget);
	}
	
	public void AddRowWithLayout(void* layout)
	{
		CQt.QFormLayout_AddRowWithLayout(this.nativePtr, layout);
	}
	
	public void InsertRow(int32 row, void* label, void* field)
	{
		CQt.QFormLayout_InsertRow(this.nativePtr, row, label, field);
	}
	
	public void InsertRow2(int32 row, void* label, void* field)
	{
		CQt.QFormLayout_InsertRow2(this.nativePtr, row, label, field);
	}
	
	public void InsertRow3(int32 row, libqt_string labelText, void* field)
	{
		CQt.QFormLayout_InsertRow3(this.nativePtr, row, labelText, field);
	}
	
	public void InsertRow4(int32 row, libqt_string labelText, void* field)
	{
		CQt.QFormLayout_InsertRow4(this.nativePtr, row, labelText, field);
	}
	
	public void InsertRow5(int32 row, void* widget)
	{
		CQt.QFormLayout_InsertRow5(this.nativePtr, row, widget);
	}
	
	public void InsertRow6(int32 row, void* layout)
	{
		CQt.QFormLayout_InsertRow6(this.nativePtr, row, layout);
	}
	
	public void RemoveRow(int32 row)
	{
		CQt.QFormLayout_RemoveRow(this.nativePtr, row);
	}
	
	public void RemoveRowWithWidget(void* widget)
	{
		CQt.QFormLayout_RemoveRowWithWidget(this.nativePtr, widget);
	}
	
	public void RemoveRowWithLayout(void* layout)
	{
		CQt.QFormLayout_RemoveRowWithLayout(this.nativePtr, layout);
	}
	
	public QFormLayout__TakeRowResult TakeRow(int32 row)
	{
		return CQt.QFormLayout_TakeRow(this.nativePtr, row);
	}
	
	public QFormLayout__TakeRowResult TakeRowWithWidget(void* widget)
	{
		return CQt.QFormLayout_TakeRowWithWidget(this.nativePtr, widget);
	}
	
	public QFormLayout__TakeRowResult TakeRowWithLayout(void* layout)
	{
		return CQt.QFormLayout_TakeRowWithLayout(this.nativePtr, layout);
	}
	
	public void SetItem(int32 row, int64 role, void* item)
	{
		CQt.QFormLayout_SetItem(this.nativePtr, row, role, item);
	}
	
	public void SetWidget(int32 row, int64 role, void* widget)
	{
		CQt.QFormLayout_SetWidget(this.nativePtr, row, role, widget);
	}
	
	public void SetLayout(int32 row, int64 role, void* layout)
	{
		CQt.QFormLayout_SetLayout(this.nativePtr, row, role, layout);
	}
	
	public void SetRowVisible(int32 row, bool on)
	{
		CQt.QFormLayout_SetRowVisible(this.nativePtr, row, on);
	}
	
	public void SetRowVisible2(void* widget, bool on)
	{
		CQt.QFormLayout_SetRowVisible2(this.nativePtr, widget, on);
	}
	
	public void SetRowVisible3(void* layout, bool on)
	{
		CQt.QFormLayout_SetRowVisible3(this.nativePtr, layout, on);
	}
	
	public bool IsRowVisible(int32 row)
	{
		return CQt.QFormLayout_IsRowVisible(this.nativePtr, row);
	}
	
	public bool IsRowVisibleWithWidget(void* widget)
	{
		return CQt.QFormLayout_IsRowVisibleWithWidget(this.nativePtr, widget);
	}
	
	public bool IsRowVisibleWithLayout(void* layout)
	{
		return CQt.QFormLayout_IsRowVisibleWithLayout(this.nativePtr, layout);
	}
	
	public void* ItemAt(int32 row, int64 role)
	{
		return CQt.QFormLayout_ItemAt(this.nativePtr, row, role);
	}
	
	public void* LabelForField(void* field)
	{
		return CQt.QFormLayout_LabelForField(this.nativePtr, field);
	}
	
	public void* LabelForFieldWithField(void* field)
	{
		return CQt.QFormLayout_LabelForFieldWithField(this.nativePtr, field);
	}
	
	public virtual void AddItem(void* item)
	{
		CQt.QFormLayout_AddItem(this.nativePtr, item);
	}
	
	public virtual void* ItemAtWithIndex(int32 index)
	{
		return CQt.QFormLayout_ItemAtWithIndex(this.nativePtr, index);
	}
	
	public virtual void* TakeAt(int32 index)
	{
		return CQt.QFormLayout_TakeAt(this.nativePtr, index);
	}
	
	public virtual void SetGeometry(void* rect)
	{
		CQt.QFormLayout_SetGeometry(this.nativePtr, rect);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QFormLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void SizeHint()
	{
		CQt.QFormLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QFormLayout_Invalidate(this.nativePtr);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QFormLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 width)
	{
		return CQt.QFormLayout_HeightForWidth(this.nativePtr, width);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QFormLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual int32 Count()
	{
		return CQt.QFormLayout_Count(this.nativePtr);
	}
	
	public int32 RowCount()
	{
		return CQt.QFormLayout_RowCount(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QFormLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QFormLayout_Tr3(s, c, n);
	}
	
	public void SetContentsMargins(int32 left, int32 top, int32 right, int32 bottom)
	{
		CQt.QLayout_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void SetContentsMarginsWithMargins(void* margins)
	{
		CQt.QLayout_SetContentsMarginsWithMargins(this.nativePtr, margins);
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
	
	public bool SetAlignment(void* w, int64 alignment)
	{
		return CQt.QLayout_SetAlignment(this.nativePtr, w, alignment);
	}
	
	public bool SetAlignment2(void* l, int64 alignment)
	{
		return CQt.QLayout_SetAlignment2(this.nativePtr, l, alignment);
	}
	
	public void SetSizeConstraint(int64 sizeConstraint)
	{
		CQt.QLayout_SetSizeConstraint(this.nativePtr, sizeConstraint);
	}
	
	public int64 SizeConstraint()
	{
		return CQt.QLayout_SizeConstraint(this.nativePtr);
	}
	
	public void SetMenuBar(void* w)
	{
		CQt.QLayout_SetMenuBar(this.nativePtr, w);
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
	
	public void AddWidget(void* w)
	{
		CQt.QLayout_AddWidget(this.nativePtr, w);
	}
	
	public void RemoveWidget(void* w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, w);
	}
	
	public void RemoveItem(void* param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, param1);
	}
	
	public virtual void MaximumSize()
	{
		CQt.QLayout_MaximumSize(this.nativePtr);
	}
	
	public virtual int32 IndexOf(void* param1)
	{
		return CQt.QLayout_IndexOf(this.nativePtr, param1);
	}
	
	public virtual int32 IndexOfWithQLayoutItem(void* param1)
	{
		return CQt.QLayout_IndexOfWithQLayoutItem(this.nativePtr, param1);
	}
	
	public virtual bool IsEmpty()
	{
		return CQt.QLayout_IsEmpty(this.nativePtr);
	}
	
	public virtual int64 ControlTypes()
	{
		return CQt.QLayout_ControlTypes(this.nativePtr);
	}
	
	public virtual void* ReplaceWidget(void* from, void* to, int64 options)
	{
		return CQt.QLayout_ReplaceWidget(this.nativePtr, from, to, options);
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
	
	public static void ClosestAcceptableSize(void* w, void* s)
	{
		CQt.QLayout_ClosestAcceptableSize(w, s);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
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
	[LinkName("QFormLayout_new")]
	public static extern void* QFormLayout_new(void* parent);
	[LinkName("QFormLayout_new2")]
	public static extern void* QFormLayout_new2();
	[LinkName("QFormLayout_MetaObject")]
	public static extern void* QFormLayout_MetaObject(void* c_this);
	[LinkName("QFormLayout_Metacast")]
	public static extern void* QFormLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QFormLayout_Metacall")]
	public static extern int32 QFormLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QFormLayout_Tr")]
	public static extern libqt_string QFormLayout_Tr(char8[] s);
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
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRow(void* c_this, int32 row);
	[LinkName("QFormLayout_TakeRowWithWidget")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithWidget(void* c_this, void* widget);
	[LinkName("QFormLayout_TakeRowWithLayout")]
	public static extern QFormLayout__TakeRowResult QFormLayout_TakeRowWithLayout(void* c_this, void* layout);
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
	public static extern libqt_string QFormLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QFormLayout_Tr3")]
	public static extern libqt_string QFormLayout_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QFormLayout_Delete")]
	public static extern void QFormLayout_Delete(void* self);
}
public class QFormLayout__TakeRowResult
{
	protected void* nativePtr;
}
extension CQt
{
}