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
public class QBoxLayout
{
	protected void* nativePtr;
	
	public this(int64 param1)
	{
		this.nativePtr = CQt.QBoxLayout_new(param1);
	}
	
	public ~this()
	{
		CQt.QBoxLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QBoxLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QBoxLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QBoxLayout_Tr(s);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(void* spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, spacerItem);
	}
	
	public void AddWidget(void* param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, param1);
	}
	
	public void AddLayout(void* layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, layout);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public virtual void AddItem(void* param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, void* spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, spacerItem);
	}
	
	public void InsertWidget(int32 index, void* widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, widget);
	}
	
	public void InsertLayout(int32 index, void* layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, layout);
	}
	
	public void InsertItem(int32 index, void* param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(void* w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, w, stretch);
	}
	
	public bool SetStretchFactor2(void* l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public virtual void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public virtual int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public virtual void SetGeometry(void* geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, geometry);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QBoxLayout_Tr3(s, c, n);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(void* param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, param1, stretch);
	}
	
	public void AddWidget3(void* param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, param1, stretch, alignment);
	}
	
	public void AddLayout2(void* layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, void* widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, void* widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, void* layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, layout, stretch);
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
	
	public void RemoveWidget(void* w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, w);
	}
	
	public void RemoveItem(void* param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, param1);
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
	[LinkName("QBoxLayout_new")]
	public static extern void* QBoxLayout_new(int64 param1);
	[LinkName("QBoxLayout_new2")]
	public static extern void* QBoxLayout_new2(int64 param1, void* parent);
	[LinkName("QBoxLayout_MetaObject")]
	public static extern void* QBoxLayout_MetaObject(void* c_this);
	[LinkName("QBoxLayout_Metacast")]
	public static extern void* QBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QBoxLayout_Metacall")]
	public static extern int32 QBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QBoxLayout_Tr")]
	public static extern libqt_string QBoxLayout_Tr(char8[] s);
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
	public static extern libqt_string QBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QBoxLayout_Tr3")]
	public static extern libqt_string QBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
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
public class QHBoxLayout
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QHBoxLayout_new(parent);
	}
	
	public ~this()
	{
		CQt.QHBoxLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QHBoxLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QHBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QHBoxLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QHBoxLayout_Tr(s);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QHBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QHBoxLayout_Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(void* spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, spacerItem);
	}
	
	public void AddWidget(void* param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, param1);
	}
	
	public void AddLayout(void* layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, layout);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public virtual void AddItem(void* param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, void* spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, spacerItem);
	}
	
	public void InsertWidget(int32 index, void* widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, widget);
	}
	
	public void InsertLayout(int32 index, void* layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, layout);
	}
	
	public void InsertItem(int32 index, void* param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(void* w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, w, stretch);
	}
	
	public bool SetStretchFactor2(void* l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public virtual void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public virtual int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public virtual void SetGeometry(void* geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, geometry);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(void* param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, param1, stretch);
	}
	
	public void AddWidget3(void* param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, param1, stretch, alignment);
	}
	
	public void AddLayout2(void* layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, void* widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, void* widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, void* layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, layout, stretch);
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
	
	public void RemoveWidget(void* w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, w);
	}
	
	public void RemoveItem(void* param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, param1);
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
	[LinkName("QHBoxLayout_new")]
	public static extern void* QHBoxLayout_new(void* parent);
	[LinkName("QHBoxLayout_new2")]
	public static extern void* QHBoxLayout_new2();
	[LinkName("QHBoxLayout_MetaObject")]
	public static extern void* QHBoxLayout_MetaObject(void* c_this);
	[LinkName("QHBoxLayout_Metacast")]
	public static extern void* QHBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QHBoxLayout_Metacall")]
	public static extern int32 QHBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QHBoxLayout_Tr")]
	public static extern libqt_string QHBoxLayout_Tr(char8[] s);
	[LinkName("QHBoxLayout_Tr2")]
	public static extern libqt_string QHBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QHBoxLayout_Tr3")]
	public static extern libqt_string QHBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QHBoxLayout_Delete")]
	public static extern void QHBoxLayout_Delete(void* self);
}
public class QVBoxLayout
{
	protected void* nativePtr;
	
	public this(void* parent)
	{
		this.nativePtr = CQt.QVBoxLayout_new(parent);
	}
	
	public ~this()
	{
		CQt.QVBoxLayout_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QVBoxLayout_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QVBoxLayout_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QVBoxLayout_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QVBoxLayout_Tr(s);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QVBoxLayout_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QVBoxLayout_Tr3(s, c, n);
	}
	
	public int64 Direction()
	{
		return CQt.QBoxLayout_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QBoxLayout_SetDirection(this.nativePtr, direction);
	}
	
	public void AddSpacing(int32 size)
	{
		CQt.QBoxLayout_AddSpacing(this.nativePtr, size);
	}
	
	public void AddStretch()
	{
		CQt.QBoxLayout_AddStretch(this.nativePtr);
	}
	
	public void AddSpacerItem(void* spacerItem)
	{
		CQt.QBoxLayout_AddSpacerItem(this.nativePtr, spacerItem);
	}
	
	public void AddWidget(void* param1)
	{
		CQt.QBoxLayout_AddWidget(this.nativePtr, param1);
	}
	
	public void AddLayout(void* layout)
	{
		CQt.QBoxLayout_AddLayout(this.nativePtr, layout);
	}
	
	public void AddStrut(int32 param1)
	{
		CQt.QBoxLayout_AddStrut(this.nativePtr, param1);
	}
	
	public virtual void AddItem(void* param1)
	{
		CQt.QBoxLayout_AddItem(this.nativePtr, param1);
	}
	
	public void InsertSpacing(int32 index, int32 size)
	{
		CQt.QBoxLayout_InsertSpacing(this.nativePtr, index, size);
	}
	
	public void InsertStretch(int32 index)
	{
		CQt.QBoxLayout_InsertStretch(this.nativePtr, index);
	}
	
	public void InsertSpacerItem(int32 index, void* spacerItem)
	{
		CQt.QBoxLayout_InsertSpacerItem(this.nativePtr, index, spacerItem);
	}
	
	public void InsertWidget(int32 index, void* widget)
	{
		CQt.QBoxLayout_InsertWidget(this.nativePtr, index, widget);
	}
	
	public void InsertLayout(int32 index, void* layout)
	{
		CQt.QBoxLayout_InsertLayout(this.nativePtr, index, layout);
	}
	
	public void InsertItem(int32 index, void* param2)
	{
		CQt.QBoxLayout_InsertItem(this.nativePtr, index, param2);
	}
	
	public virtual int32 Spacing()
	{
		return CQt.QBoxLayout_Spacing(this.nativePtr);
	}
	
	public virtual void SetSpacing(int32 spacing)
	{
		CQt.QBoxLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public bool SetStretchFactor(void* w, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor(this.nativePtr, w, stretch);
	}
	
	public bool SetStretchFactor2(void* l, int32 stretch)
	{
		return CQt.QBoxLayout_SetStretchFactor2(this.nativePtr, l, stretch);
	}
	
	public void SetStretch(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_SetStretch(this.nativePtr, index, stretch);
	}
	
	public int32 Stretch(int32 index)
	{
		return CQt.QBoxLayout_Stretch(this.nativePtr, index);
	}
	
	public virtual void SizeHint()
	{
		CQt.QBoxLayout_SizeHint(this.nativePtr);
	}
	
	public virtual void MinimumSize()
	{
		CQt.QBoxLayout_MinimumSize(this.nativePtr);
	}
	
	public virtual void MaximumSize()
	{
		CQt.QBoxLayout_MaximumSize(this.nativePtr);
	}
	
	public virtual bool HasHeightForWidth()
	{
		return CQt.QBoxLayout_HasHeightForWidth(this.nativePtr);
	}
	
	public virtual int32 HeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_HeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int32 MinimumHeightForWidth(int32 param1)
	{
		return CQt.QBoxLayout_MinimumHeightForWidth(this.nativePtr, param1);
	}
	
	public virtual int64 ExpandingDirections()
	{
		return CQt.QBoxLayout_ExpandingDirections(this.nativePtr);
	}
	
	public virtual void Invalidate()
	{
		CQt.QBoxLayout_Invalidate(this.nativePtr);
	}
	
	public virtual void* ItemAt(int32 param1)
	{
		return CQt.QBoxLayout_ItemAt(this.nativePtr, param1);
	}
	
	public virtual void* TakeAt(int32 param1)
	{
		return CQt.QBoxLayout_TakeAt(this.nativePtr, param1);
	}
	
	public virtual int32 Count()
	{
		return CQt.QBoxLayout_Count(this.nativePtr);
	}
	
	public virtual void SetGeometry(void* geometry)
	{
		CQt.QBoxLayout_SetGeometry(this.nativePtr, geometry);
	}
	
	public void AddStretch1(int32 stretch)
	{
		CQt.QBoxLayout_AddStretch1(this.nativePtr, stretch);
	}
	
	public void AddWidget2(void* param1, int32 stretch)
	{
		CQt.QBoxLayout_AddWidget2(this.nativePtr, param1, stretch);
	}
	
	public void AddWidget3(void* param1, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_AddWidget3(this.nativePtr, param1, stretch, alignment);
	}
	
	public void AddLayout2(void* layout, int32 stretch)
	{
		CQt.QBoxLayout_AddLayout2(this.nativePtr, layout, stretch);
	}
	
	public void InsertStretch2(int32 index, int32 stretch)
	{
		CQt.QBoxLayout_InsertStretch2(this.nativePtr, index, stretch);
	}
	
	public void InsertWidget3(int32 index, void* widget, int32 stretch)
	{
		CQt.QBoxLayout_InsertWidget3(this.nativePtr, index, widget, stretch);
	}
	
	public void InsertWidget4(int32 index, void* widget, int32 stretch, int64 alignment)
	{
		CQt.QBoxLayout_InsertWidget4(this.nativePtr, index, widget, stretch, alignment);
	}
	
	public void InsertLayout3(int32 index, void* layout, int32 stretch)
	{
		CQt.QBoxLayout_InsertLayout3(this.nativePtr, index, layout, stretch);
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
	
	public void RemoveWidget(void* w)
	{
		CQt.QLayout_RemoveWidget(this.nativePtr, w);
	}
	
	public void RemoveItem(void* param1)
	{
		CQt.QLayout_RemoveItem(this.nativePtr, param1);
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
	[LinkName("QVBoxLayout_new")]
	public static extern void* QVBoxLayout_new(void* parent);
	[LinkName("QVBoxLayout_new2")]
	public static extern void* QVBoxLayout_new2();
	[LinkName("QVBoxLayout_MetaObject")]
	public static extern void* QVBoxLayout_MetaObject(void* c_this);
	[LinkName("QVBoxLayout_Metacast")]
	public static extern void* QVBoxLayout_Metacast(void* c_this, char8[] param1);
	[LinkName("QVBoxLayout_Metacall")]
	public static extern int32 QVBoxLayout_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QVBoxLayout_Tr")]
	public static extern libqt_string QVBoxLayout_Tr(char8[] s);
	[LinkName("QVBoxLayout_Tr2")]
	public static extern libqt_string QVBoxLayout_Tr2(char8[] s, char8[] c);
	[LinkName("QVBoxLayout_Tr3")]
	public static extern libqt_string QVBoxLayout_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QVBoxLayout_Delete")]
	public static extern void QVBoxLayout_Delete(void* self);
}