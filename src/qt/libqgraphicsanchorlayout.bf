using System;
using System.Interop;
namespace Qt;

public interface IQGraphicsAnchor
{
	void* NativePtr { get; }
}
public struct QGraphicsAnchorPtr : IQGraphicsAnchor, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QGraphicsAnchor_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QGraphicsAnchor_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QGraphicsAnchor_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QGraphicsAnchor_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QGraphicsAnchor_Tr(s);
	}
	
	public void SetSpacing(double spacing)
	{
		CQt.QGraphicsAnchor_SetSpacing(this.nativePtr, spacing);
	}
	
	public void UnsetSpacing()
	{
		CQt.QGraphicsAnchor_UnsetSpacing(this.nativePtr);
	}
	
	public double Spacing()
	{
		return CQt.QGraphicsAnchor_Spacing(this.nativePtr);
	}
	
	public void SetSizePolicy(int64 policy)
	{
		CQt.QGraphicsAnchor_SetSizePolicy(this.nativePtr, (int64)policy);
	}
	
	public int64 SizePolicy()
	{
		return CQt.QGraphicsAnchor_SizePolicy(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QGraphicsAnchor_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QGraphicsAnchor_Tr3(s, c, n);
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
	
}
public class QGraphicsAnchor
{
	public QGraphicsAnchorPtr handle;
	
	public static implicit operator QGraphicsAnchorPtr(Self self)
	{
		return self.handle;
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
		return QGraphicsAnchorPtr.Tr(s);
	}
	
	public void SetSpacing(double spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public void UnsetSpacing()
	{
		this.handle.UnsetSpacing();
	}
	
	public double Spacing()
	{
		return this.handle.Spacing();
	}
	
	public void SetSizePolicy(int64 policy)
	{
		this.handle.SetSizePolicy(policy);
	}
	
	public int64 SizePolicy()
	{
		return this.handle.SizePolicy();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QGraphicsAnchorPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QGraphicsAnchorPtr.Tr3(s, c, n);
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
		QGraphicsAnchorPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QGraphicsAnchorPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QGraphicsAnchorPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QGraphicsAnchorPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsAnchor_MetaObject")]
	public static extern void* QGraphicsAnchor_MetaObject(void* c_this);
	[LinkName("QGraphicsAnchor_Metacast")]
	public static extern void* QGraphicsAnchor_Metacast(void* c_this, char8* param1);
	[LinkName("QGraphicsAnchor_Metacall")]
	public static extern int32 QGraphicsAnchor_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QGraphicsAnchor_Tr")]
	public static extern libqt_string QGraphicsAnchor_Tr(char8* s);
	[LinkName("QGraphicsAnchor_SetSpacing")]
	public static extern void QGraphicsAnchor_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsAnchor_UnsetSpacing")]
	public static extern void QGraphicsAnchor_UnsetSpacing(void* c_this);
	[LinkName("QGraphicsAnchor_Spacing")]
	public static extern double QGraphicsAnchor_Spacing(void* c_this);
	[LinkName("QGraphicsAnchor_SetSizePolicy")]
	public static extern void QGraphicsAnchor_SetSizePolicy(void* c_this, int64 policy);
	[LinkName("QGraphicsAnchor_SizePolicy")]
	public static extern int64 QGraphicsAnchor_SizePolicy(void* c_this);
	[LinkName("QGraphicsAnchor_Tr2")]
	public static extern libqt_string QGraphicsAnchor_Tr2(char8* s, char8* c);
	[LinkName("QGraphicsAnchor_Tr3")]
	public static extern libqt_string QGraphicsAnchor_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsAnchor_Delete")]
	public static extern void QGraphicsAnchor_Delete(void* self);
}
public interface IQGraphicsAnchorLayout
{
	void* NativePtr { get; }
}
public struct QGraphicsAnchorLayoutPtr : IQGraphicsAnchorLayout, IDisposable, IQGraphicsLayout
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsAnchorLayout_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsAnchorLayout_Delete(this.nativePtr);
	}
	
	public void* AddAnchor(IQGraphicsLayoutItem firstItem, int64 firstEdge, IQGraphicsLayoutItem secondItem, int64 secondEdge)
	{
		return CQt.QGraphicsAnchorLayout_AddAnchor(this.nativePtr, (firstItem == default || firstItem.NativePtr == default) ? default : firstItem.NativePtr, (int64)firstEdge, (secondItem == default || secondItem.NativePtr == default) ? default : secondItem.NativePtr, (int64)secondEdge);
	}
	
	public void* Anchor(IQGraphicsLayoutItem firstItem, int64 firstEdge, IQGraphicsLayoutItem secondItem, int64 secondEdge)
	{
		return CQt.QGraphicsAnchorLayout_Anchor(this.nativePtr, (firstItem == default || firstItem.NativePtr == default) ? default : firstItem.NativePtr, (int64)firstEdge, (secondItem == default || secondItem.NativePtr == default) ? default : secondItem.NativePtr, (int64)secondEdge);
	}
	
	public void AddCornerAnchors(IQGraphicsLayoutItem firstItem, int64 firstCorner, IQGraphicsLayoutItem secondItem, int64 secondCorner)
	{
		CQt.QGraphicsAnchorLayout_AddCornerAnchors(this.nativePtr, (firstItem == default || firstItem.NativePtr == default) ? default : firstItem.NativePtr, (int64)firstCorner, (secondItem == default || secondItem.NativePtr == default) ? default : secondItem.NativePtr, (int64)secondCorner);
	}
	
	public void AddAnchors(IQGraphicsLayoutItem firstItem, IQGraphicsLayoutItem secondItem)
	{
		CQt.QGraphicsAnchorLayout_AddAnchors(this.nativePtr, (firstItem == default || firstItem.NativePtr == default) ? default : firstItem.NativePtr, (secondItem == default || secondItem.NativePtr == default) ? default : secondItem.NativePtr);
	}
	
	public void SetHorizontalSpacing(double spacing)
	{
		CQt.QGraphicsAnchorLayout_SetHorizontalSpacing(this.nativePtr, spacing);
	}
	
	public void SetVerticalSpacing(double spacing)
	{
		CQt.QGraphicsAnchorLayout_SetVerticalSpacing(this.nativePtr, spacing);
	}
	
	public void SetSpacing(double spacing)
	{
		CQt.QGraphicsAnchorLayout_SetSpacing(this.nativePtr, spacing);
	}
	
	public double HorizontalSpacing()
	{
		return CQt.QGraphicsAnchorLayout_HorizontalSpacing(this.nativePtr);
	}
	
	public double VerticalSpacing()
	{
		return CQt.QGraphicsAnchorLayout_VerticalSpacing(this.nativePtr);
	}
	
	public void RemoveAt(int32 index)
	{
		CQt.QGraphicsAnchorLayout_RemoveAt(this.nativePtr, index);
	}
	
	public void SetGeometry(IQRectF rect)
	{
		CQt.QGraphicsAnchorLayout_SetGeometry(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QGraphicsAnchorLayout_Count(this.nativePtr);
	}
	
	public void* ItemAt(int32 index)
	{
		return CQt.QGraphicsAnchorLayout_ItemAt(this.nativePtr, index);
	}
	
	public void Invalidate()
	{
		CQt.QGraphicsAnchorLayout_Invalidate(this.nativePtr);
	}
	
	public void SizeHint(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsAnchorLayout_SizeHint(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
	}
	
	public void AddAnchors3(IQGraphicsLayoutItem firstItem, IQGraphicsLayoutItem secondItem, int64 orientations)
	{
		CQt.QGraphicsAnchorLayout_AddAnchors3(this.nativePtr, (firstItem == default || firstItem.NativePtr == default) ? default : firstItem.NativePtr, (secondItem == default || secondItem.NativePtr == default) ? default : secondItem.NativePtr, orientations);
	}
	
	public void SetContentsMargins(double left, double top, double right, double bottom)
	{
		CQt.QGraphicsLayout_SetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		CQt.QGraphicsLayout_GetContentsMargins(this.nativePtr, left, top, right, bottom);
	}
	
	public void Activate()
	{
		CQt.QGraphicsLayout_Activate(this.nativePtr);
	}
	
	public bool IsActivated()
	{
		return CQt.QGraphicsLayout_IsActivated(this.nativePtr);
	}
	
	public void UpdateGeometry()
	{
		CQt.QGraphicsLayout_UpdateGeometry(this.nativePtr);
	}
	
	public void WidgetEvent(IQEvent e)
	{
		CQt.QGraphicsLayout_WidgetEvent(this.nativePtr, (e == default || e.NativePtr == default) ? default : e.NativePtr);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		CQt.QGraphicsLayout_SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return CQt.QGraphicsLayout_InstantInvalidatePropagation();
	}
	
	public void SetSizePolicy(IQSizePolicy policy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy(this.nativePtr, (policy == default || policy.NativePtr == default) ? default : policy.NativePtr);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		CQt.QGraphicsLayoutItem_SetSizePolicy2(this.nativePtr, (int64)hPolicy, (int64)vPolicy);
	}
	
	public void SizePolicy()
	{
		CQt.QGraphicsLayoutItem_SizePolicy(this.nativePtr);
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		CQt.QGraphicsLayoutItem_SetMinimumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetPreferredSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetMaximumSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
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
		CQt.QGraphicsLayoutItem_EffectiveSizeHint(this.nativePtr, (int64)which);
	}
	
	public bool IsEmpty()
	{
		return CQt.QGraphicsLayoutItem_IsEmpty(this.nativePtr);
	}
	
	public void* ParentLayoutItem()
	{
		return CQt.QGraphicsLayoutItem_ParentLayoutItem(this.nativePtr);
	}
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		CQt.QGraphicsLayoutItem_SetParentLayoutItem(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
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
		CQt.QGraphicsLayoutItem_SetSizePolicy3(this.nativePtr, (int64)hPolicy, (int64)vPolicy, (int64)controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		CQt.QGraphicsLayoutItem_EffectiveSizeHint2(this.nativePtr, (int64)which, (constraint == default || constraint.NativePtr == default) ? default : constraint.NativePtr);
	}
	
}
public class QGraphicsAnchorLayout
{
	public QGraphicsAnchorLayoutPtr handle;
	
	public static implicit operator QGraphicsAnchorLayoutPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsAnchorLayoutPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* AddAnchor(IQGraphicsLayoutItem firstItem, int64 firstEdge, IQGraphicsLayoutItem secondItem, int64 secondEdge)
	{
		return this.handle.AddAnchor(firstItem, firstEdge, secondItem, secondEdge);
	}
	
	public void* Anchor(IQGraphicsLayoutItem firstItem, int64 firstEdge, IQGraphicsLayoutItem secondItem, int64 secondEdge)
	{
		return this.handle.Anchor(firstItem, firstEdge, secondItem, secondEdge);
	}
	
	public void AddCornerAnchors(IQGraphicsLayoutItem firstItem, int64 firstCorner, IQGraphicsLayoutItem secondItem, int64 secondCorner)
	{
		this.handle.AddCornerAnchors(firstItem, firstCorner, secondItem, secondCorner);
	}
	
	public void AddAnchors(IQGraphicsLayoutItem firstItem, IQGraphicsLayoutItem secondItem)
	{
		this.handle.AddAnchors(firstItem, secondItem);
	}
	
	public void SetHorizontalSpacing(double spacing)
	{
		this.handle.SetHorizontalSpacing(spacing);
	}
	
	public void SetVerticalSpacing(double spacing)
	{
		this.handle.SetVerticalSpacing(spacing);
	}
	
	public void SetSpacing(double spacing)
	{
		this.handle.SetSpacing(spacing);
	}
	
	public double HorizontalSpacing()
	{
		return this.handle.HorizontalSpacing();
	}
	
	public double VerticalSpacing()
	{
		return this.handle.VerticalSpacing();
	}
	
	public virtual void RemoveAt(int32 index)
	{
		this.handle.RemoveAt(index);
	}
	
	public virtual void SetGeometry(IQRectF rect)
	{
		this.handle.SetGeometry(rect);
	}
	
	public virtual int32 Count()
	{
		return this.handle.Count();
	}
	
	public virtual void* ItemAt(int32 index)
	{
		return this.handle.ItemAt(index);
	}
	
	public virtual void Invalidate()
	{
		this.handle.Invalidate();
	}
	
	public virtual void SizeHint(int64 which, IQSizeF constraint)
	{
		this.handle.SizeHint(which, constraint);
	}
	
	public void AddAnchors3(IQGraphicsLayoutItem firstItem, IQGraphicsLayoutItem secondItem, int64 orientations)
	{
		this.handle.AddAnchors3(firstItem, secondItem, orientations);
	}
	
	public void SetContentsMargins(double left, double top, double right, double bottom)
	{
		this.handle.SetContentsMargins(left, top, right, bottom);
	}
	
	public virtual void GetContentsMargins(double* left, double* top, double* right, double* bottom)
	{
		this.handle.GetContentsMargins(left, top, right, bottom);
	}
	
	public void Activate()
	{
		this.handle.Activate();
	}
	
	public bool IsActivated()
	{
		return this.handle.IsActivated();
	}
	
	public virtual void UpdateGeometry()
	{
		this.handle.UpdateGeometry();
	}
	
	public virtual void WidgetEvent(IQEvent e)
	{
		this.handle.WidgetEvent(e);
	}
	
	public static void SetInstantInvalidatePropagation(bool enable)
	{
		QGraphicsAnchorLayoutPtr.SetInstantInvalidatePropagation(enable);
	}
	
	public static bool InstantInvalidatePropagation()
	{
		return QGraphicsAnchorLayoutPtr.InstantInvalidatePropagation();
	}
	
	public void SetSizePolicy(IQSizePolicy policy)
	{
		this.handle.SetSizePolicy(policy);
	}
	
	public void SetSizePolicy2(int64 hPolicy, int64 vPolicy)
	{
		this.handle.SetSizePolicy2(hPolicy, vPolicy);
	}
	
	public void SizePolicy()
	{
		this.handle.SizePolicy();
	}
	
	public void SetMinimumSize(IQSizeF size)
	{
		this.handle.SetMinimumSize(size);
	}
	
	public void SetMinimumSize2(double w, double h)
	{
		this.handle.SetMinimumSize2(w, h);
	}
	
	public void MinimumSize()
	{
		this.handle.MinimumSize();
	}
	
	public void SetMinimumWidth(double width)
	{
		this.handle.SetMinimumWidth(width);
	}
	
	public double MinimumWidth()
	{
		return this.handle.MinimumWidth();
	}
	
	public void SetMinimumHeight(double height)
	{
		this.handle.SetMinimumHeight(height);
	}
	
	public double MinimumHeight()
	{
		return this.handle.MinimumHeight();
	}
	
	public void SetPreferredSize(IQSizeF size)
	{
		this.handle.SetPreferredSize(size);
	}
	
	public void SetPreferredSize2(double w, double h)
	{
		this.handle.SetPreferredSize2(w, h);
	}
	
	public void PreferredSize()
	{
		this.handle.PreferredSize();
	}
	
	public void SetPreferredWidth(double width)
	{
		this.handle.SetPreferredWidth(width);
	}
	
	public double PreferredWidth()
	{
		return this.handle.PreferredWidth();
	}
	
	public void SetPreferredHeight(double height)
	{
		this.handle.SetPreferredHeight(height);
	}
	
	public double PreferredHeight()
	{
		return this.handle.PreferredHeight();
	}
	
	public void SetMaximumSize(IQSizeF size)
	{
		this.handle.SetMaximumSize(size);
	}
	
	public void SetMaximumSize2(double w, double h)
	{
		this.handle.SetMaximumSize2(w, h);
	}
	
	public void MaximumSize()
	{
		this.handle.MaximumSize();
	}
	
	public void SetMaximumWidth(double width)
	{
		this.handle.SetMaximumWidth(width);
	}
	
	public double MaximumWidth()
	{
		return this.handle.MaximumWidth();
	}
	
	public void SetMaximumHeight(double height)
	{
		this.handle.SetMaximumHeight(height);
	}
	
	public double MaximumHeight()
	{
		return this.handle.MaximumHeight();
	}
	
	public void Geometry()
	{
		this.handle.Geometry();
	}
	
	public void ContentsRect()
	{
		this.handle.ContentsRect();
	}
	
	public void EffectiveSizeHint(int64 which)
	{
		this.handle.EffectiveSizeHint(which);
	}
	
	public virtual bool IsEmpty()
	{
		return this.handle.IsEmpty();
	}
	
	public void* ParentLayoutItem()
	{
		return this.handle.ParentLayoutItem();
	}
	
	public void SetParentLayoutItem(IQGraphicsLayoutItem parent)
	{
		this.handle.SetParentLayoutItem(parent);
	}
	
	public bool IsLayout()
	{
		return this.handle.IsLayout();
	}
	
	public void* GraphicsItem()
	{
		return this.handle.GraphicsItem();
	}
	
	public bool OwnedByLayout()
	{
		return this.handle.OwnedByLayout();
	}
	
	public void SetSizePolicy3(int64 hPolicy, int64 vPolicy, int64 controlType)
	{
		this.handle.SetSizePolicy3(hPolicy, vPolicy, controlType);
	}
	
	public void EffectiveSizeHint2(int64 which, IQSizeF constraint)
	{
		this.handle.EffectiveSizeHint2(which, constraint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsAnchorLayout_new")]
	public static extern void* QGraphicsAnchorLayout_new();
	[LinkName("QGraphicsAnchorLayout_new2")]
	public static extern void* QGraphicsAnchorLayout_new2(void* parent);
	[LinkName("QGraphicsAnchorLayout_AddAnchor")]
	public static extern void* QGraphicsAnchorLayout_AddAnchor(void* c_this, void* firstItem, int64 firstEdge, void* secondItem, int64 secondEdge);
	[LinkName("QGraphicsAnchorLayout_Anchor")]
	public static extern void* QGraphicsAnchorLayout_Anchor(void* c_this, void* firstItem, int64 firstEdge, void* secondItem, int64 secondEdge);
	[LinkName("QGraphicsAnchorLayout_AddCornerAnchors")]
	public static extern void QGraphicsAnchorLayout_AddCornerAnchors(void* c_this, void* firstItem, int64 firstCorner, void* secondItem, int64 secondCorner);
	[LinkName("QGraphicsAnchorLayout_AddAnchors")]
	public static extern void QGraphicsAnchorLayout_AddAnchors(void* c_this, void* firstItem, void* secondItem);
	[LinkName("QGraphicsAnchorLayout_SetHorizontalSpacing")]
	public static extern void QGraphicsAnchorLayout_SetHorizontalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_SetVerticalSpacing")]
	public static extern void QGraphicsAnchorLayout_SetVerticalSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_SetSpacing")]
	public static extern void QGraphicsAnchorLayout_SetSpacing(void* c_this, double spacing);
	[LinkName("QGraphicsAnchorLayout_HorizontalSpacing")]
	public static extern double QGraphicsAnchorLayout_HorizontalSpacing(void* c_this);
	[LinkName("QGraphicsAnchorLayout_VerticalSpacing")]
	public static extern double QGraphicsAnchorLayout_VerticalSpacing(void* c_this);
	[LinkName("QGraphicsAnchorLayout_RemoveAt")]
	public static extern void QGraphicsAnchorLayout_RemoveAt(void* c_this, int32 index);
	[LinkName("QGraphicsAnchorLayout_SetGeometry")]
	public static extern void QGraphicsAnchorLayout_SetGeometry(void* c_this, void* rect);
	[LinkName("QGraphicsAnchorLayout_Count")]
	public static extern int32 QGraphicsAnchorLayout_Count(void* c_this);
	[LinkName("QGraphicsAnchorLayout_ItemAt")]
	public static extern void* QGraphicsAnchorLayout_ItemAt(void* c_this, int32 index);
	[LinkName("QGraphicsAnchorLayout_Invalidate")]
	public static extern void QGraphicsAnchorLayout_Invalidate(void* c_this);
	[LinkName("QGraphicsAnchorLayout_SizeHint")]
	public static extern void QGraphicsAnchorLayout_SizeHint(void* c_this, int64 which, void* constraint);
	[LinkName("QGraphicsAnchorLayout_AddAnchors3")]
	public static extern void QGraphicsAnchorLayout_AddAnchors3(void* c_this, void* firstItem, void* secondItem, int64 orientations);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsAnchorLayout_Delete")]
	public static extern void QGraphicsAnchorLayout_Delete(void* self);
}