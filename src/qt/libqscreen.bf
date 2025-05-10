using System;
using System.Interop;
namespace Qt;

public interface IQScreen
{
	void* NativePtr { get; }
}
public class QScreen : IQScreen, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public ~this()
	{
		CQt.QScreen_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QScreen_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QScreen_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QScreen_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QScreen_Tr(s);
	}
	
	public libqt_string Name()
	{
		return CQt.QScreen_Name(this.nativePtr);
	}
	
	public libqt_string Manufacturer()
	{
		return CQt.QScreen_Manufacturer(this.nativePtr);
	}
	
	public libqt_string Model()
	{
		return CQt.QScreen_Model(this.nativePtr);
	}
	
	public libqt_string SerialNumber()
	{
		return CQt.QScreen_SerialNumber(this.nativePtr);
	}
	
	public int32 Depth()
	{
		return CQt.QScreen_Depth(this.nativePtr);
	}
	
	public void Size()
	{
		CQt.QScreen_Size(this.nativePtr);
	}
	
	public void Geometry()
	{
		CQt.QScreen_Geometry(this.nativePtr);
	}
	
	public void PhysicalSize()
	{
		CQt.QScreen_PhysicalSize(this.nativePtr);
	}
	
	public double PhysicalDotsPerInchX()
	{
		return CQt.QScreen_PhysicalDotsPerInchX(this.nativePtr);
	}
	
	public double PhysicalDotsPerInchY()
	{
		return CQt.QScreen_PhysicalDotsPerInchY(this.nativePtr);
	}
	
	public double PhysicalDotsPerInch()
	{
		return CQt.QScreen_PhysicalDotsPerInch(this.nativePtr);
	}
	
	public double LogicalDotsPerInchX()
	{
		return CQt.QScreen_LogicalDotsPerInchX(this.nativePtr);
	}
	
	public double LogicalDotsPerInchY()
	{
		return CQt.QScreen_LogicalDotsPerInchY(this.nativePtr);
	}
	
	public double LogicalDotsPerInch()
	{
		return CQt.QScreen_LogicalDotsPerInch(this.nativePtr);
	}
	
	public double DevicePixelRatio()
	{
		return CQt.QScreen_DevicePixelRatio(this.nativePtr);
	}
	
	public void AvailableSize()
	{
		CQt.QScreen_AvailableSize(this.nativePtr);
	}
	
	public void AvailableGeometry()
	{
		CQt.QScreen_AvailableGeometry(this.nativePtr);
	}
	
	public void*[] VirtualSiblings()
	{
		return CQt.QScreen_VirtualSiblings(this.nativePtr);
	}
	
	public void* VirtualSiblingAt(IQPoint point)
	{
		return CQt.QScreen_VirtualSiblingAt(this.nativePtr, (point == default) ? default : (void)point.NativePtr);
	}
	
	public void VirtualSize()
	{
		CQt.QScreen_VirtualSize(this.nativePtr);
	}
	
	public void VirtualGeometry()
	{
		CQt.QScreen_VirtualGeometry(this.nativePtr);
	}
	
	public void AvailableVirtualSize()
	{
		CQt.QScreen_AvailableVirtualSize(this.nativePtr);
	}
	
	public void AvailableVirtualGeometry()
	{
		CQt.QScreen_AvailableVirtualGeometry(this.nativePtr);
	}
	
	public int64 PrimaryOrientation()
	{
		return CQt.QScreen_PrimaryOrientation(this.nativePtr);
	}
	
	public int64 Orientation()
	{
		return CQt.QScreen_Orientation(this.nativePtr);
	}
	
	public int64 NativeOrientation()
	{
		return CQt.QScreen_NativeOrientation(this.nativePtr);
	}
	
	public int32 AngleBetween(int64 a, int64 b)
	{
		return CQt.QScreen_AngleBetween(this.nativePtr, a, b);
	}
	
	public void TransformBetween(int64 a, int64 b, IQRect target)
	{
		CQt.QScreen_TransformBetween(this.nativePtr, a, b, (target == default) ? default : (void*)target.NativePtr);
	}
	
	public void MapBetween(int64 a, int64 b, IQRect rect)
	{
		CQt.QScreen_MapBetween(this.nativePtr, a, b, (rect == default) ? default : (void*)rect.NativePtr);
	}
	
	public bool IsPortrait(int64 orientation)
	{
		return CQt.QScreen_IsPortrait(this.nativePtr, orientation);
	}
	
	public bool IsLandscape(int64 orientation)
	{
		return CQt.QScreen_IsLandscape(this.nativePtr, orientation);
	}
	
	public void GrabWindow()
	{
		CQt.QScreen_GrabWindow(this.nativePtr);
	}
	
	public double RefreshRate()
	{
		return CQt.QScreen_RefreshRate(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QScreen_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QScreen_Tr3(s, c, n);
	}
	
	public void GrabWindow1(c_uintptr window)
	{
		CQt.QScreen_GrabWindow1(this.nativePtr, window);
	}
	
	public void GrabWindow2(c_uintptr window, int32 x)
	{
		CQt.QScreen_GrabWindow2(this.nativePtr, window, x);
	}
	
	public void GrabWindow3(c_uintptr window, int32 x, int32 y)
	{
		CQt.QScreen_GrabWindow3(this.nativePtr, window, x, y);
	}
	
	public void GrabWindow4(c_uintptr window, int32 x, int32 y, int32 w)
	{
		CQt.QScreen_GrabWindow4(this.nativePtr, window, x, y, w);
	}
	
	public void GrabWindow5(c_uintptr window, int32 x, int32 y, int32 w, int32 h)
	{
		CQt.QScreen_GrabWindow5(this.nativePtr, window, x, y, w, h);
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
	
}
extension CQt
{
	[LinkName("QScreen_MetaObject")]
	public static extern void* QScreen_MetaObject(void* c_this);
	[LinkName("QScreen_Metacast")]
	public static extern void* QScreen_Metacast(void* c_this, char8* param1);
	[LinkName("QScreen_Metacall")]
	public static extern int32 QScreen_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QScreen_Tr")]
	public static extern libqt_string QScreen_Tr(char8* s);
	[LinkName("QScreen_Name")]
	public static extern libqt_string QScreen_Name(void* c_this);
	[LinkName("QScreen_Manufacturer")]
	public static extern libqt_string QScreen_Manufacturer(void* c_this);
	[LinkName("QScreen_Model")]
	public static extern libqt_string QScreen_Model(void* c_this);
	[LinkName("QScreen_SerialNumber")]
	public static extern libqt_string QScreen_SerialNumber(void* c_this);
	[LinkName("QScreen_Depth")]
	public static extern int32 QScreen_Depth(void* c_this);
	[LinkName("QScreen_Size")]
	public static extern void QScreen_Size(void* c_this);
	[LinkName("QScreen_Geometry")]
	public static extern void QScreen_Geometry(void* c_this);
	[LinkName("QScreen_PhysicalSize")]
	public static extern void QScreen_PhysicalSize(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchX")]
	public static extern double QScreen_PhysicalDotsPerInchX(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInchY")]
	public static extern double QScreen_PhysicalDotsPerInchY(void* c_this);
	[LinkName("QScreen_PhysicalDotsPerInch")]
	public static extern double QScreen_PhysicalDotsPerInch(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInchX")]
	public static extern double QScreen_LogicalDotsPerInchX(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInchY")]
	public static extern double QScreen_LogicalDotsPerInchY(void* c_this);
	[LinkName("QScreen_LogicalDotsPerInch")]
	public static extern double QScreen_LogicalDotsPerInch(void* c_this);
	[LinkName("QScreen_DevicePixelRatio")]
	public static extern double QScreen_DevicePixelRatio(void* c_this);
	[LinkName("QScreen_AvailableSize")]
	public static extern void QScreen_AvailableSize(void* c_this);
	[LinkName("QScreen_AvailableGeometry")]
	public static extern void QScreen_AvailableGeometry(void* c_this);
	[LinkName("QScreen_VirtualSiblings")]
	public static extern void*[] QScreen_VirtualSiblings(void* c_this);
	[LinkName("QScreen_VirtualSiblingAt")]
	public static extern void* QScreen_VirtualSiblingAt(void* c_this, void point);
	[LinkName("QScreen_VirtualSize")]
	public static extern void QScreen_VirtualSize(void* c_this);
	[LinkName("QScreen_VirtualGeometry")]
	public static extern void QScreen_VirtualGeometry(void* c_this);
	[LinkName("QScreen_AvailableVirtualSize")]
	public static extern void QScreen_AvailableVirtualSize(void* c_this);
	[LinkName("QScreen_AvailableVirtualGeometry")]
	public static extern void QScreen_AvailableVirtualGeometry(void* c_this);
	[LinkName("QScreen_PrimaryOrientation")]
	public static extern int64 QScreen_PrimaryOrientation(void* c_this);
	[LinkName("QScreen_Orientation")]
	public static extern int64 QScreen_Orientation(void* c_this);
	[LinkName("QScreen_NativeOrientation")]
	public static extern int64 QScreen_NativeOrientation(void* c_this);
	[LinkName("QScreen_AngleBetween")]
	public static extern int32 QScreen_AngleBetween(void* c_this, int64 a, int64 b);
	[LinkName("QScreen_TransformBetween")]
	public static extern void QScreen_TransformBetween(void* c_this, int64 a, int64 b, void* target);
	[LinkName("QScreen_MapBetween")]
	public static extern void QScreen_MapBetween(void* c_this, int64 a, int64 b, void* rect);
	[LinkName("QScreen_IsPortrait")]
	public static extern bool QScreen_IsPortrait(void* c_this, int64 orientation);
	[LinkName("QScreen_IsLandscape")]
	public static extern bool QScreen_IsLandscape(void* c_this, int64 orientation);
	[LinkName("QScreen_GrabWindow")]
	public static extern void QScreen_GrabWindow(void* c_this);
	[LinkName("QScreen_RefreshRate")]
	public static extern double QScreen_RefreshRate(void* c_this);
	[LinkName("QScreen_ResolveInterface")]
	public static extern void* QScreen_ResolveInterface(void* c_this, char8* name, int32 revision);
	[LinkName("QScreen_Connect_GeometryChanged")]
	public static extern void QScreen_Connect_GeometryChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_AvailableGeometryChanged")]
	public static extern void QScreen_Connect_AvailableGeometryChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PhysicalSizeChanged")]
	public static extern void QScreen_Connect_PhysicalSizeChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PhysicalDotsPerInchChanged")]
	public static extern void QScreen_Connect_PhysicalDotsPerInchChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_LogicalDotsPerInchChanged")]
	public static extern void QScreen_Connect_LogicalDotsPerInchChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_VirtualGeometryChanged")]
	public static extern void QScreen_Connect_VirtualGeometryChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_PrimaryOrientationChanged")]
	public static extern void QScreen_Connect_PrimaryOrientationChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_OrientationChanged")]
	public static extern void QScreen_Connect_OrientationChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Connect_RefreshRateChanged")]
	public static extern void QScreen_Connect_RefreshRateChanged(void* c_this, c_intptr slot);
	[LinkName("QScreen_Tr2")]
	public static extern libqt_string QScreen_Tr2(char8* s, char8* c);
	[LinkName("QScreen_Tr3")]
	public static extern libqt_string QScreen_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QScreen_GrabWindow1")]
	public static extern void QScreen_GrabWindow1(void* c_this, c_uintptr window);
	[LinkName("QScreen_GrabWindow2")]
	public static extern void QScreen_GrabWindow2(void* c_this, c_uintptr window, int32 x);
	[LinkName("QScreen_GrabWindow3")]
	public static extern void QScreen_GrabWindow3(void* c_this, c_uintptr window, int32 x, int32 y);
	[LinkName("QScreen_GrabWindow4")]
	public static extern void QScreen_GrabWindow4(void* c_this, c_uintptr window, int32 x, int32 y, int32 w);
	[LinkName("QScreen_GrabWindow5")]
	public static extern void QScreen_GrabWindow5(void* c_this, c_uintptr window, int32 x, int32 y, int32 w, int32 h);
	/// Delete this object from C++ memory
	[LinkName("QScreen_Delete")]
	public static extern void QScreen_Delete(void* self);
}