using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QStackedLayout__StackingMode
{
	StackOne = 0,
	StackAll = 1,
}
public class QStackedLayout
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QStackedLayout_new(parent);
	}
	
	public ~this()
	{
		CQt.QStackedLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QStackedLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QStackedLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QStackedLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QStackedLayout_Tr(s);
	}
	
	public int32 AddWidget(void* w)
	{
		return CQt.QStackedLayout_AddWidget(this.nativePtr, w);
	}
	
	public int32 InsertWidget(int32 index, void* w)
	{
		return CQt.QStackedLayout_InsertWidget(this.nativePtr, index, w);
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
	
	public virtual int32 Count()
	{
		return CQt.QStackedLayout_Count(this.nativePtr);
	}
	
	public int64 StackingMode()
	{
		return CQt.QStackedLayout_StackingMode(this.nativePtr);
	}
	
	public void SetStackingMode(int64 stackingMode)
	{
		CQt.QStackedLayout_SetStackingMode(this.nativePtr, stackingMode);
	}
	
	public virtual void AddItem(void* item)
	{
		CQt.QStackedLayout_AddItem(this.nativePtr, item);
	}
	
	public virtual void SizeHint()
	{
		CQt.QStackedLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QStackedLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return CQt.QStackedLayout_ItemAt(this.nativePtr, param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return CQt.QStackedLayout_TakeAt(this.nativePtr, param1);
	}
	
	public virtual void SetGeometry(void* rect)
	{
		CQt.QStackedLayout_SetGeometry(this.nativePtr, rect);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QStackedLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 width)
	{
		return CQt.QStackedLayout_HeightForWidth(this.nativePtr, width);
	}
	
	public void SetCurrentIndex(int32 index)
	{
		CQt.QStackedLayout_SetCurrentIndex(this.nativePtr, index);
	}
	
	public void SetCurrentWidget(void* w)
	{
		CQt.QStackedLayout_SetCurrentWidget(this.nativePtr, w);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QStackedLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QStackedLayout_Tr3(s, c, n);
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
	
	public void RemoveWidget(void* w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, w);
	}
	
	public void RemoveItem(void* param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QLayout_ExpandingDirections(this.nativePtr);
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
	[LinkName("QStackedLayout_new")]
	public static extern void* QStackedLayout_new(void* parent);
	[LinkName("QStackedLayout_new2")]
	public static extern void* QStackedLayout_new2();
	[LinkName("QStackedLayout_new3")]
	public static extern void* QStackedLayout_new3(void* parentLayout);
	[LinkName("QStackedLayout_MetaObject")]
	public static extern void* QStackedLayout_MetaObject(void* c_this);
	[LinkName("QStackedLayout_Metacast")]
	public static extern void* QStackedLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QStackedLayout_Metacall")]
	public static extern int32 QStackedLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QStackedLayout_Tr")]
	public static extern libqt_string QStackedLayout_Tr(char8[] s);
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
	public static extern libqt_string QStackedLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QStackedLayout_Tr3")]
	public static extern libqt_string QStackedLayout_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QStackedLayout_Delete")]
	public static extern void QStackedLayout_Delete(void* self);
}