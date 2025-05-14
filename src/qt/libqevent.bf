using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QWheelEvent__
{
	DefaultDeltasPerStep = 120,
}
[AllowDuplicates]
public enum QPlatformSurfaceEvent__SurfaceEventType
{
	SurfaceCreated = 0,
	SurfaceAboutToBeDestroyed = 1,
}
[AllowDuplicates]
public enum QContextMenuEvent__Reason
{
	Mouse = 0,
	Keyboard = 1,
	Other = 2,
}
[AllowDuplicates]
public enum QInputMethodEvent__AttributeType
{
	TextFormat = 0,
	Cursor = 1,
	Language = 2,
	Ruby = 3,
	Selection = 4,
}
[AllowDuplicates]
public enum QScrollEvent__ScrollState
{
	ScrollStarted = 0,
	ScrollUpdated = 1,
	ScrollFinished = 2,
}
public interface IQInputEvent
{
	void* NativePtr { get; }
}
public struct QInputEventPtr : IQInputEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQInputDevice m_dev)
	{
		return .(CQt.QInputEvent_new((int64)typeVal, (m_dev == default || m_dev.NativePtr == default) ? default : m_dev.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QInputEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QInputEvent_Clone(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QInputEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QInputEvent
{
	public QInputEventPtr handle;
	
	public static implicit operator QInputEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQInputDevice m_dev)
	{
		this.handle = QInputEventPtr.New(typeVal, m_dev);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QInputEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QInputEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QInputEvent_new")]
	public static extern void* QInputEvent_new(int64 typeVal, void* m_dev);
	[LinkName("QInputEvent_new2")]
	public static extern void* QInputEvent_new2(int64 typeVal, void* m_dev, int64 modifiers);
	[LinkName("QInputEvent_Clone")]
	public static extern void* QInputEvent_Clone(void* c_this);
	[LinkName("QInputEvent_Device")]
	public static extern void* QInputEvent_Device(void* c_this);
	[LinkName("QInputEvent_DeviceType")]
	public static extern int64 QInputEvent_DeviceType(void* c_this);
	[LinkName("QInputEvent_Modifiers")]
	public static extern int64 QInputEvent_Modifiers(void* c_this);
	[LinkName("QInputEvent_SetModifiers")]
	public static extern void QInputEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QInputEvent_Timestamp")]
	public static extern uint64 QInputEvent_Timestamp(void* c_this);
	[LinkName("QInputEvent_SetTimestamp")]
	public static extern void QInputEvent_SetTimestamp(void* c_this, uint64 timestamp);
	/// Delete this object from C++ memory
	[LinkName("QInputEvent_Delete")]
	public static extern void QInputEvent_Delete(void* self);
}
public interface IQPointerEvent
{
	void* NativePtr { get; }
}
public struct QPointerEventPtr : IQPointerEvent, IDisposable, IQInputEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQPointingDevice dev)
	{
		return .(CQt.QPointerEvent_new((int64)typeVal, (dev == default || dev.NativePtr == default) ? default : dev.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QPointerEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QPointerEvent_Clone(this.nativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QPointerEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QPointerEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QPointerEvent_IsEndEvent(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QPointerEvent
{
	public QPointerEventPtr handle;
	
	public static implicit operator QPointerEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQPointingDevice dev)
	{
		this.handle = QPointerEventPtr.New(typeVal, dev);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QPointerEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QPointerEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QPointerEvent_new")]
	public static extern void* QPointerEvent_new(int64 typeVal, void* dev);
	[LinkName("QPointerEvent_new2")]
	public static extern void* QPointerEvent_new2(int64 typeVal, void* dev, int64 modifiers);
	[LinkName("QPointerEvent_new3")]
	public static extern void* QPointerEvent_new3(int64 typeVal, void* dev, int64 modifiers, void[] points);
	[LinkName("QPointerEvent_Clone")]
	public static extern void* QPointerEvent_Clone(void* c_this);
	[LinkName("QPointerEvent_PointingDevice")]
	public static extern void* QPointerEvent_PointingDevice(void* c_this);
	[LinkName("QPointerEvent_PointerType")]
	public static extern int64 QPointerEvent_PointerType(void* c_this);
	[LinkName("QPointerEvent_SetTimestamp")]
	public static extern void QPointerEvent_SetTimestamp(void* c_this, uint64 timestamp);
	[LinkName("QPointerEvent_PointCount")]
	public static extern int32 QPointerEvent_PointCount(void* c_this);
	[LinkName("QPointerEvent_Point")]
	public static extern void* QPointerEvent_Point(void* c_this, int32 i);
	[LinkName("QPointerEvent_Points")]
	public static extern void[] QPointerEvent_Points(void* c_this);
	[LinkName("QPointerEvent_PointById")]
	public static extern void* QPointerEvent_PointById(void* c_this, int32 id);
	[LinkName("QPointerEvent_AllPointsGrabbed")]
	public static extern bool QPointerEvent_AllPointsGrabbed(void* c_this);
	[LinkName("QPointerEvent_IsBeginEvent")]
	public static extern bool QPointerEvent_IsBeginEvent(void* c_this);
	[LinkName("QPointerEvent_IsUpdateEvent")]
	public static extern bool QPointerEvent_IsUpdateEvent(void* c_this);
	[LinkName("QPointerEvent_IsEndEvent")]
	public static extern bool QPointerEvent_IsEndEvent(void* c_this);
	[LinkName("QPointerEvent_AllPointsAccepted")]
	public static extern bool QPointerEvent_AllPointsAccepted(void* c_this);
	[LinkName("QPointerEvent_SetAccepted")]
	public static extern void QPointerEvent_SetAccepted(void* c_this, bool accepted);
	[LinkName("QPointerEvent_ExclusiveGrabber")]
	public static extern void* QPointerEvent_ExclusiveGrabber(void* c_this, void* point);
	[LinkName("QPointerEvent_SetExclusiveGrabber")]
	public static extern void QPointerEvent_SetExclusiveGrabber(void* c_this, void* point, void* exclusiveGrabber);
	[LinkName("QPointerEvent_ClearPassiveGrabbers")]
	public static extern void QPointerEvent_ClearPassiveGrabbers(void* c_this, void* point);
	[LinkName("QPointerEvent_AddPassiveGrabber")]
	public static extern bool QPointerEvent_AddPassiveGrabber(void* c_this, void* point, void* grabber);
	[LinkName("QPointerEvent_RemovePassiveGrabber")]
	public static extern bool QPointerEvent_RemovePassiveGrabber(void* c_this, void* point, void* grabber);
	/// Delete this object from C++ memory
	[LinkName("QPointerEvent_Delete")]
	public static extern void QPointerEvent_Delete(void* self);
}
public interface IQSinglePointEvent
{
	void* NativePtr { get; }
}
public struct QSinglePointEventPtr : IQSinglePointEvent, IDisposable, IQPointerEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public void Dispose()
	{
		CQt.QSinglePointEvent_Delete(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QPointerEvent_Clone(this.nativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QSinglePointEvent
{
	public QSinglePointEventPtr handle;
	
	public static implicit operator QSinglePointEventPtr(Self self)
	{
		return self.handle;
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QSinglePointEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QSinglePointEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QSinglePointEvent_Clone")]
	public static extern void* QSinglePointEvent_Clone(void* c_this);
	[LinkName("QSinglePointEvent_Button")]
	public static extern int64 QSinglePointEvent_Button(void* c_this);
	[LinkName("QSinglePointEvent_Buttons")]
	public static extern int64 QSinglePointEvent_Buttons(void* c_this);
	[LinkName("QSinglePointEvent_Position")]
	public static extern void QSinglePointEvent_Position(void* c_this);
	[LinkName("QSinglePointEvent_ScenePosition")]
	public static extern void QSinglePointEvent_ScenePosition(void* c_this);
	[LinkName("QSinglePointEvent_GlobalPosition")]
	public static extern void QSinglePointEvent_GlobalPosition(void* c_this);
	[LinkName("QSinglePointEvent_IsBeginEvent")]
	public static extern bool QSinglePointEvent_IsBeginEvent(void* c_this);
	[LinkName("QSinglePointEvent_IsUpdateEvent")]
	public static extern bool QSinglePointEvent_IsUpdateEvent(void* c_this);
	[LinkName("QSinglePointEvent_IsEndEvent")]
	public static extern bool QSinglePointEvent_IsEndEvent(void* c_this);
	[LinkName("QSinglePointEvent_ExclusivePointGrabber")]
	public static extern void* QSinglePointEvent_ExclusivePointGrabber(void* c_this);
	[LinkName("QSinglePointEvent_SetExclusivePointGrabber")]
	public static extern void QSinglePointEvent_SetExclusivePointGrabber(void* c_this, void* exclusiveGrabber);
	/// Delete this object from C++ memory
	[LinkName("QSinglePointEvent_Delete")]
	public static extern void QSinglePointEvent_Delete(void* self);
}
public interface IQEnterEvent
{
	void* NativePtr { get; }
}
public struct QEnterEventPtr : IQEnterEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPointF localPos, IQPointF scenePos, IQPointF globalPos)
	{
		return .(CQt.QEnterEvent_new((localPos == default || localPos.NativePtr == default) ? default : localPos.NativePtr, (scenePos == default || scenePos.NativePtr == default) ? default : scenePos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QEnterEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QEnterEvent_Clone(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QEnterEvent_Pos(this.nativePtr);
	}
	
	public void GlobalPos()
	{
		CQt.QEnterEvent_GlobalPos(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QEnterEvent_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QEnterEvent_Y(this.nativePtr);
	}
	
	public int32 GlobalX()
	{
		return CQt.QEnterEvent_GlobalX(this.nativePtr);
	}
	
	public int32 GlobalY()
	{
		return CQt.QEnterEvent_GlobalY(this.nativePtr);
	}
	
	public void LocalPos()
	{
		CQt.QEnterEvent_LocalPos(this.nativePtr);
	}
	
	public void WindowPos()
	{
		CQt.QEnterEvent_WindowPos(this.nativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QEnterEvent_ScreenPos(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QEnterEvent
{
	public QEnterEventPtr handle;
	
	public static implicit operator QEnterEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPointF localPos, IQPointF scenePos, IQPointF globalPos)
	{
		this.handle = QEnterEventPtr.New(localPos, scenePos, globalPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void GlobalPos()
	{
		this.handle.GlobalPos();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public int32 GlobalX()
	{
		return this.handle.GlobalX();
	}
	
	public int32 GlobalY()
	{
		return this.handle.GlobalY();
	}
	
	public void LocalPos()
	{
		this.handle.LocalPos();
	}
	
	public void WindowPos()
	{
		this.handle.WindowPos();
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QEnterEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QEnterEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QEnterEvent_new")]
	public static extern void* QEnterEvent_new(void* localPos, void* scenePos, void* globalPos);
	[LinkName("QEnterEvent_new2")]
	public static extern void* QEnterEvent_new2(void* localPos, void* scenePos, void* globalPos, void* device);
	[LinkName("QEnterEvent_Clone")]
	public static extern void* QEnterEvent_Clone(void* c_this);
	[LinkName("QEnterEvent_Pos")]
	public static extern void QEnterEvent_Pos(void* c_this);
	[LinkName("QEnterEvent_GlobalPos")]
	public static extern void QEnterEvent_GlobalPos(void* c_this);
	[LinkName("QEnterEvent_X")]
	public static extern int32 QEnterEvent_X(void* c_this);
	[LinkName("QEnterEvent_Y")]
	public static extern int32 QEnterEvent_Y(void* c_this);
	[LinkName("QEnterEvent_GlobalX")]
	public static extern int32 QEnterEvent_GlobalX(void* c_this);
	[LinkName("QEnterEvent_GlobalY")]
	public static extern int32 QEnterEvent_GlobalY(void* c_this);
	[LinkName("QEnterEvent_LocalPos")]
	public static extern void QEnterEvent_LocalPos(void* c_this);
	[LinkName("QEnterEvent_WindowPos")]
	public static extern void QEnterEvent_WindowPos(void* c_this);
	[LinkName("QEnterEvent_ScreenPos")]
	public static extern void QEnterEvent_ScreenPos(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QEnterEvent_Delete")]
	public static extern void QEnterEvent_Delete(void* self);
}
public interface IQMouseEvent
{
	void* NativePtr { get; }
}
public struct QMouseEventPtr : IQMouseEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQPointF localPos, int64 button, int64 buttons, int64 modifiers)
	{
		return .(CQt.QMouseEvent_new((int64)typeVal, (localPos == default || localPos.NativePtr == default) ? default : localPos.NativePtr, (int64)button, buttons, modifiers));
	}
	
	public void Dispose()
	{
		CQt.QMouseEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QMouseEvent_Clone(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QMouseEvent_Pos(this.nativePtr);
	}
	
	public void GlobalPos()
	{
		CQt.QMouseEvent_GlobalPos(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QMouseEvent_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QMouseEvent_Y(this.nativePtr);
	}
	
	public int32 GlobalX()
	{
		return CQt.QMouseEvent_GlobalX(this.nativePtr);
	}
	
	public int32 GlobalY()
	{
		return CQt.QMouseEvent_GlobalY(this.nativePtr);
	}
	
	public void LocalPos()
	{
		CQt.QMouseEvent_LocalPos(this.nativePtr);
	}
	
	public void WindowPos()
	{
		CQt.QMouseEvent_WindowPos(this.nativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QMouseEvent_ScreenPos(this.nativePtr);
	}
	
	public int64 Source()
	{
		return CQt.QMouseEvent_Source(this.nativePtr);
	}
	
	public int64 Flags()
	{
		return CQt.QMouseEvent_Flags(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QMouseEvent
{
	public QMouseEventPtr handle;
	
	public static implicit operator QMouseEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQPointF localPos, int64 button, int64 buttons, int64 modifiers)
	{
		this.handle = QMouseEventPtr.New(typeVal, localPos, button, buttons, modifiers);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void GlobalPos()
	{
		this.handle.GlobalPos();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public int32 GlobalX()
	{
		return this.handle.GlobalX();
	}
	
	public int32 GlobalY()
	{
		return this.handle.GlobalY();
	}
	
	public void LocalPos()
	{
		this.handle.LocalPos();
	}
	
	public void WindowPos()
	{
		this.handle.WindowPos();
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public int64 Source()
	{
		return this.handle.Source();
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QMouseEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QMouseEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QMouseEvent_new")]
	public static extern void* QMouseEvent_new(int64 typeVal, void* localPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new2")]
	public static extern void* QMouseEvent_new2(int64 typeVal, void* localPos, void* globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new3")]
	public static extern void* QMouseEvent_new3(int64 typeVal, void* localPos, void* scenePos, void* globalPos, int64 button, int64 buttons, int64 modifiers);
	[LinkName("QMouseEvent_new4")]
	public static extern void* QMouseEvent_new4(int64 typeVal, void* localPos, void* scenePos, void* globalPos, int64 button, int64 buttons, int64 modifiers, int64 source);
	[LinkName("QMouseEvent_new5")]
	public static extern void* QMouseEvent_new5(int64 typeVal, void* localPos, int64 button, int64 buttons, int64 modifiers, void* device);
	[LinkName("QMouseEvent_new6")]
	public static extern void* QMouseEvent_new6(int64 typeVal, void* localPos, void* globalPos, int64 button, int64 buttons, int64 modifiers, void* device);
	[LinkName("QMouseEvent_new7")]
	public static extern void* QMouseEvent_new7(int64 typeVal, void* localPos, void* scenePos, void* globalPos, int64 button, int64 buttons, int64 modifiers, void* device);
	[LinkName("QMouseEvent_new8")]
	public static extern void* QMouseEvent_new8(int64 typeVal, void* localPos, void* scenePos, void* globalPos, int64 button, int64 buttons, int64 modifiers, int64 source, void* device);
	[LinkName("QMouseEvent_Clone")]
	public static extern void* QMouseEvent_Clone(void* c_this);
	[LinkName("QMouseEvent_Pos")]
	public static extern void QMouseEvent_Pos(void* c_this);
	[LinkName("QMouseEvent_GlobalPos")]
	public static extern void QMouseEvent_GlobalPos(void* c_this);
	[LinkName("QMouseEvent_X")]
	public static extern int32 QMouseEvent_X(void* c_this);
	[LinkName("QMouseEvent_Y")]
	public static extern int32 QMouseEvent_Y(void* c_this);
	[LinkName("QMouseEvent_GlobalX")]
	public static extern int32 QMouseEvent_GlobalX(void* c_this);
	[LinkName("QMouseEvent_GlobalY")]
	public static extern int32 QMouseEvent_GlobalY(void* c_this);
	[LinkName("QMouseEvent_LocalPos")]
	public static extern void QMouseEvent_LocalPos(void* c_this);
	[LinkName("QMouseEvent_WindowPos")]
	public static extern void QMouseEvent_WindowPos(void* c_this);
	[LinkName("QMouseEvent_ScreenPos")]
	public static extern void QMouseEvent_ScreenPos(void* c_this);
	[LinkName("QMouseEvent_Source")]
	public static extern int64 QMouseEvent_Source(void* c_this);
	[LinkName("QMouseEvent_Flags")]
	public static extern int64 QMouseEvent_Flags(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMouseEvent_Delete")]
	public static extern void QMouseEvent_Delete(void* self);
}
public interface IQHoverEvent
{
	void* NativePtr { get; }
}
public struct QHoverEventPtr : IQHoverEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQPointF scenePos, IQPointF globalPos, IQPointF oldPos)
	{
		return .(CQt.QHoverEvent_new((int64)typeVal, (scenePos == default || scenePos.NativePtr == default) ? default : scenePos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr, (oldPos == default || oldPos.NativePtr == default) ? default : oldPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QHoverEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QHoverEvent_Clone(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QHoverEvent_Pos(this.nativePtr);
	}
	
	public void PosF()
	{
		CQt.QHoverEvent_PosF(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QHoverEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public void OldPos()
	{
		CQt.QHoverEvent_OldPos(this.nativePtr);
	}
	
	public void OldPosF()
	{
		CQt.QHoverEvent_OldPosF(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QHoverEvent
{
	public QHoverEventPtr handle;
	
	public static implicit operator QHoverEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQPointF scenePos, IQPointF globalPos, IQPointF oldPos)
	{
		this.handle = QHoverEventPtr.New(typeVal, scenePos, globalPos, oldPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void PosF()
	{
		this.handle.PosF();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public void OldPos()
	{
		this.handle.OldPos();
	}
	
	public void OldPosF()
	{
		this.handle.OldPosF();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QHoverEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QHoverEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QHoverEvent_new")]
	public static extern void* QHoverEvent_new(int64 typeVal, void* scenePos, void* globalPos, void* oldPos);
	[LinkName("QHoverEvent_new2")]
	public static extern void* QHoverEvent_new2(int64 typeVal, void* pos, void* oldPos);
	[LinkName("QHoverEvent_new3")]
	public static extern void* QHoverEvent_new3(int64 typeVal, void* scenePos, void* globalPos, void* oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new4")]
	public static extern void* QHoverEvent_new4(int64 typeVal, void* scenePos, void* globalPos, void* oldPos, int64 modifiers, void* device);
	[LinkName("QHoverEvent_new5")]
	public static extern void* QHoverEvent_new5(int64 typeVal, void* pos, void* oldPos, int64 modifiers);
	[LinkName("QHoverEvent_new6")]
	public static extern void* QHoverEvent_new6(int64 typeVal, void* pos, void* oldPos, int64 modifiers, void* device);
	[LinkName("QHoverEvent_Clone")]
	public static extern void* QHoverEvent_Clone(void* c_this);
	[LinkName("QHoverEvent_Pos")]
	public static extern void QHoverEvent_Pos(void* c_this);
	[LinkName("QHoverEvent_PosF")]
	public static extern void QHoverEvent_PosF(void* c_this);
	[LinkName("QHoverEvent_IsUpdateEvent")]
	public static extern bool QHoverEvent_IsUpdateEvent(void* c_this);
	[LinkName("QHoverEvent_OldPos")]
	public static extern void QHoverEvent_OldPos(void* c_this);
	[LinkName("QHoverEvent_OldPosF")]
	public static extern void QHoverEvent_OldPosF(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QHoverEvent_Delete")]
	public static extern void QHoverEvent_Delete(void* self);
}
public interface IQWheelEvent
{
	void* NativePtr { get; }
}
public struct QWheelEventPtr : IQWheelEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPointF pos, IQPointF globalPos, IQPoint pixelDelta, IQPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted)
	{
		return .(CQt.QWheelEvent_new((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr, default, default, buttons, modifiers, (int64)phase, inverted));
	}
	
	public void Dispose()
	{
		CQt.QWheelEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QWheelEvent_Clone(this.nativePtr);
	}
	
	public void PixelDelta()
	{
		CQt.QWheelEvent_PixelDelta(this.nativePtr);
	}
	
	public void AngleDelta()
	{
		CQt.QWheelEvent_AngleDelta(this.nativePtr);
	}
	
	public int64 Phase()
	{
		return CQt.QWheelEvent_Phase(this.nativePtr);
	}
	
	public bool Inverted()
	{
		return CQt.QWheelEvent_Inverted(this.nativePtr);
	}
	
	public bool IsInverted()
	{
		return CQt.QWheelEvent_IsInverted(this.nativePtr);
	}
	
	public bool HasPixelDelta()
	{
		return CQt.QWheelEvent_HasPixelDelta(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QWheelEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QWheelEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QWheelEvent_IsEndEvent(this.nativePtr);
	}
	
	public int64 Source()
	{
		return CQt.QWheelEvent_Source(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QWheelEvent
{
	public QWheelEventPtr handle;
	
	public static implicit operator QWheelEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPointF pos, IQPointF globalPos, IQPoint pixelDelta, IQPoint angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted)
	{
		this.handle = QWheelEventPtr.New(pos, globalPos, default, default, buttons, modifiers, phase, inverted);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void PixelDelta()
	{
		this.handle.PixelDelta();
	}
	
	public void AngleDelta()
	{
		this.handle.AngleDelta();
	}
	
	public int64 Phase()
	{
		return this.handle.Phase();
	}
	
	public bool Inverted()
	{
		return this.handle.Inverted();
	}
	
	public bool IsInverted()
	{
		return this.handle.IsInverted();
	}
	
	public bool HasPixelDelta()
	{
		return this.handle.HasPixelDelta();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public int64 Source()
	{
		return this.handle.Source();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QWheelEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QWheelEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QWheelEvent_new")]
	public static extern void* QWheelEvent_new(void* pos, void* globalPos, void pixelDelta, void angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted);
	[LinkName("QWheelEvent_new2")]
	public static extern void* QWheelEvent_new2(void* pos, void* globalPos, void pixelDelta, void angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source);
	[LinkName("QWheelEvent_new3")]
	public static extern void* QWheelEvent_new3(void* pos, void* globalPos, void pixelDelta, void angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted, int64 source, void* device);
	[LinkName("QWheelEvent_Clone")]
	public static extern void* QWheelEvent_Clone(void* c_this);
	[LinkName("QWheelEvent_PixelDelta")]
	public static extern void QWheelEvent_PixelDelta(void* c_this);
	[LinkName("QWheelEvent_AngleDelta")]
	public static extern void QWheelEvent_AngleDelta(void* c_this);
	[LinkName("QWheelEvent_Phase")]
	public static extern int64 QWheelEvent_Phase(void* c_this);
	[LinkName("QWheelEvent_Inverted")]
	public static extern bool QWheelEvent_Inverted(void* c_this);
	[LinkName("QWheelEvent_IsInverted")]
	public static extern bool QWheelEvent_IsInverted(void* c_this);
	[LinkName("QWheelEvent_HasPixelDelta")]
	public static extern bool QWheelEvent_HasPixelDelta(void* c_this);
	[LinkName("QWheelEvent_IsBeginEvent")]
	public static extern bool QWheelEvent_IsBeginEvent(void* c_this);
	[LinkName("QWheelEvent_IsUpdateEvent")]
	public static extern bool QWheelEvent_IsUpdateEvent(void* c_this);
	[LinkName("QWheelEvent_IsEndEvent")]
	public static extern bool QWheelEvent_IsEndEvent(void* c_this);
	[LinkName("QWheelEvent_Source")]
	public static extern int64 QWheelEvent_Source(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QWheelEvent_Delete")]
	public static extern void QWheelEvent_Delete(void* self);
}
public interface IQTabletEvent
{
	void* NativePtr { get; }
}
public struct QTabletEventPtr : IQTabletEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 t, IQPointingDevice device, IQPointF pos, IQPointF globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons)
	{
		return .(CQt.QTabletEvent_new((int64)t, (device == default || device.NativePtr == default) ? default : device.NativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, (int64)button, buttons));
	}
	
	public void Dispose()
	{
		CQt.QTabletEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QTabletEvent_Clone(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QTabletEvent_Pos(this.nativePtr);
	}
	
	public void GlobalPos()
	{
		CQt.QTabletEvent_GlobalPos(this.nativePtr);
	}
	
	public void PosF()
	{
		CQt.QTabletEvent_PosF(this.nativePtr);
	}
	
	public void GlobalPosF()
	{
		CQt.QTabletEvent_GlobalPosF(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QTabletEvent_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QTabletEvent_Y(this.nativePtr);
	}
	
	public int32 GlobalX()
	{
		return CQt.QTabletEvent_GlobalX(this.nativePtr);
	}
	
	public int32 GlobalY()
	{
		return CQt.QTabletEvent_GlobalY(this.nativePtr);
	}
	
	public double HiResGlobalX()
	{
		return CQt.QTabletEvent_HiResGlobalX(this.nativePtr);
	}
	
	public double HiResGlobalY()
	{
		return CQt.QTabletEvent_HiResGlobalY(this.nativePtr);
	}
	
	public int64 UniqueId()
	{
		return CQt.QTabletEvent_UniqueId(this.nativePtr);
	}
	
	public double Pressure()
	{
		return CQt.QTabletEvent_Pressure(this.nativePtr);
	}
	
	public double Rotation()
	{
		return CQt.QTabletEvent_Rotation(this.nativePtr);
	}
	
	public double Z()
	{
		return CQt.QTabletEvent_Z(this.nativePtr);
	}
	
	public double TangentialPressure()
	{
		return CQt.QTabletEvent_TangentialPressure(this.nativePtr);
	}
	
	public double XTilt()
	{
		return CQt.QTabletEvent_XTilt(this.nativePtr);
	}
	
	public double YTilt()
	{
		return CQt.QTabletEvent_YTilt(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QTabletEvent
{
	public QTabletEventPtr handle;
	
	public static implicit operator QTabletEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 t, IQPointingDevice device, IQPointF pos, IQPointF globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons)
	{
		this.handle = QTabletEventPtr.New(t, device, pos, globalPos, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, button, buttons);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void GlobalPos()
	{
		this.handle.GlobalPos();
	}
	
	public void PosF()
	{
		this.handle.PosF();
	}
	
	public void GlobalPosF()
	{
		this.handle.GlobalPosF();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public int32 GlobalX()
	{
		return this.handle.GlobalX();
	}
	
	public int32 GlobalY()
	{
		return this.handle.GlobalY();
	}
	
	public double HiResGlobalX()
	{
		return this.handle.HiResGlobalX();
	}
	
	public double HiResGlobalY()
	{
		return this.handle.HiResGlobalY();
	}
	
	public int64 UniqueId()
	{
		return this.handle.UniqueId();
	}
	
	public double Pressure()
	{
		return this.handle.Pressure();
	}
	
	public double Rotation()
	{
		return this.handle.Rotation();
	}
	
	public double Z()
	{
		return this.handle.Z();
	}
	
	public double TangentialPressure()
	{
		return this.handle.TangentialPressure();
	}
	
	public double XTilt()
	{
		return this.handle.XTilt();
	}
	
	public double YTilt()
	{
		return this.handle.YTilt();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QTabletEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QTabletEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QTabletEvent_new")]
	public static extern void* QTabletEvent_new(int64 t, void* device, void* pos, void* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons);
	[LinkName("QTabletEvent_Clone")]
	public static extern void* QTabletEvent_Clone(void* c_this);
	[LinkName("QTabletEvent_Pos")]
	public static extern void QTabletEvent_Pos(void* c_this);
	[LinkName("QTabletEvent_GlobalPos")]
	public static extern void QTabletEvent_GlobalPos(void* c_this);
	[LinkName("QTabletEvent_PosF")]
	public static extern void QTabletEvent_PosF(void* c_this);
	[LinkName("QTabletEvent_GlobalPosF")]
	public static extern void QTabletEvent_GlobalPosF(void* c_this);
	[LinkName("QTabletEvent_X")]
	public static extern int32 QTabletEvent_X(void* c_this);
	[LinkName("QTabletEvent_Y")]
	public static extern int32 QTabletEvent_Y(void* c_this);
	[LinkName("QTabletEvent_GlobalX")]
	public static extern int32 QTabletEvent_GlobalX(void* c_this);
	[LinkName("QTabletEvent_GlobalY")]
	public static extern int32 QTabletEvent_GlobalY(void* c_this);
	[LinkName("QTabletEvent_HiResGlobalX")]
	public static extern double QTabletEvent_HiResGlobalX(void* c_this);
	[LinkName("QTabletEvent_HiResGlobalY")]
	public static extern double QTabletEvent_HiResGlobalY(void* c_this);
	[LinkName("QTabletEvent_UniqueId")]
	public static extern int64 QTabletEvent_UniqueId(void* c_this);
	[LinkName("QTabletEvent_Pressure")]
	public static extern double QTabletEvent_Pressure(void* c_this);
	[LinkName("QTabletEvent_Rotation")]
	public static extern double QTabletEvent_Rotation(void* c_this);
	[LinkName("QTabletEvent_Z")]
	public static extern double QTabletEvent_Z(void* c_this);
	[LinkName("QTabletEvent_TangentialPressure")]
	public static extern double QTabletEvent_TangentialPressure(void* c_this);
	[LinkName("QTabletEvent_XTilt")]
	public static extern double QTabletEvent_XTilt(void* c_this);
	[LinkName("QTabletEvent_YTilt")]
	public static extern double QTabletEvent_YTilt(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTabletEvent_Delete")]
	public static extern void QTabletEvent_Delete(void* self);
}
public interface IQNativeGestureEvent
{
	void* NativePtr { get; }
}
public struct QNativeGestureEventPtr : IQNativeGestureEvent, IDisposable, IQSinglePointEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQPointingDevice dev, IQPointF localPos, IQPointF scenePos, IQPointF globalPos, double value, uint64 sequenceId, uint64 intArgument)
	{
		return .(CQt.QNativeGestureEvent_new((int64)typeVal, (dev == default || dev.NativePtr == default) ? default : dev.NativePtr, (localPos == default || localPos.NativePtr == default) ? default : localPos.NativePtr, (scenePos == default || scenePos.NativePtr == default) ? default : scenePos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr, value, sequenceId, intArgument));
	}
	
	public void Dispose()
	{
		CQt.QNativeGestureEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QNativeGestureEvent_Clone(this.nativePtr);
	}
	
	public int64 GestureType()
	{
		return CQt.QNativeGestureEvent_GestureType(this.nativePtr);
	}
	
	public int32 FingerCount()
	{
		return CQt.QNativeGestureEvent_FingerCount(this.nativePtr);
	}
	
	public double Value()
	{
		return CQt.QNativeGestureEvent_Value(this.nativePtr);
	}
	
	public void Delta()
	{
		CQt.QNativeGestureEvent_Delta(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QNativeGestureEvent_Pos(this.nativePtr);
	}
	
	public void GlobalPos()
	{
		CQt.QNativeGestureEvent_GlobalPos(this.nativePtr);
	}
	
	public void LocalPos()
	{
		CQt.QNativeGestureEvent_LocalPos(this.nativePtr);
	}
	
	public void WindowPos()
	{
		CQt.QNativeGestureEvent_WindowPos(this.nativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QNativeGestureEvent_ScreenPos(this.nativePtr);
	}
	
	public int64 Button()
	{
		return CQt.QSinglePointEvent_Button(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QSinglePointEvent_Buttons(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QSinglePointEvent_Position(this.nativePtr);
	}
	
	public void ScenePosition()
	{
		CQt.QSinglePointEvent_ScenePosition(this.nativePtr);
	}
	
	public void GlobalPosition()
	{
		CQt.QSinglePointEvent_GlobalPosition(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QNativeGestureEvent
{
	public QNativeGestureEventPtr handle;
	
	public static implicit operator QNativeGestureEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQPointingDevice dev, IQPointF localPos, IQPointF scenePos, IQPointF globalPos, double value, uint64 sequenceId, uint64 intArgument)
	{
		this.handle = QNativeGestureEventPtr.New(typeVal, dev, localPos, scenePos, globalPos, value, sequenceId, intArgument);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 GestureType()
	{
		return this.handle.GestureType();
	}
	
	public int32 FingerCount()
	{
		return this.handle.FingerCount();
	}
	
	public double Value()
	{
		return this.handle.Value();
	}
	
	public void Delta()
	{
		this.handle.Delta();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void GlobalPos()
	{
		this.handle.GlobalPos();
	}
	
	public void LocalPos()
	{
		this.handle.LocalPos();
	}
	
	public void WindowPos()
	{
		this.handle.WindowPos();
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public void ScenePosition()
	{
		this.handle.ScenePosition();
	}
	
	public void GlobalPosition()
	{
		this.handle.GlobalPosition();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* ExclusivePointGrabber()
	{
		return this.handle.ExclusivePointGrabber();
	}
	
	public void SetExclusivePointGrabber(IQObject exclusiveGrabber)
	{
		this.handle.SetExclusivePointGrabber(exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QNativeGestureEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QNativeGestureEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QNativeGestureEvent_new")]
	public static extern void* QNativeGestureEvent_new(int64 typeVal, void* dev, void* localPos, void* scenePos, void* globalPos, double value, uint64 sequenceId, uint64 intArgument);
	[LinkName("QNativeGestureEvent_new2")]
	public static extern void* QNativeGestureEvent_new2(int64 typeVal, void* dev, int32 fingerCount, void* localPos, void* scenePos, void* globalPos, double value, void* delta);
	[LinkName("QNativeGestureEvent_new3")]
	public static extern void* QNativeGestureEvent_new3(int64 typeVal, void* dev, int32 fingerCount, void* localPos, void* scenePos, void* globalPos, double value, void* delta, uint64 sequenceId);
	[LinkName("QNativeGestureEvent_Clone")]
	public static extern void* QNativeGestureEvent_Clone(void* c_this);
	[LinkName("QNativeGestureEvent_GestureType")]
	public static extern int64 QNativeGestureEvent_GestureType(void* c_this);
	[LinkName("QNativeGestureEvent_FingerCount")]
	public static extern int32 QNativeGestureEvent_FingerCount(void* c_this);
	[LinkName("QNativeGestureEvent_Value")]
	public static extern double QNativeGestureEvent_Value(void* c_this);
	[LinkName("QNativeGestureEvent_Delta")]
	public static extern void QNativeGestureEvent_Delta(void* c_this);
	[LinkName("QNativeGestureEvent_Pos")]
	public static extern void QNativeGestureEvent_Pos(void* c_this);
	[LinkName("QNativeGestureEvent_GlobalPos")]
	public static extern void QNativeGestureEvent_GlobalPos(void* c_this);
	[LinkName("QNativeGestureEvent_LocalPos")]
	public static extern void QNativeGestureEvent_LocalPos(void* c_this);
	[LinkName("QNativeGestureEvent_WindowPos")]
	public static extern void QNativeGestureEvent_WindowPos(void* c_this);
	[LinkName("QNativeGestureEvent_ScreenPos")]
	public static extern void QNativeGestureEvent_ScreenPos(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QNativeGestureEvent_Delete")]
	public static extern void QNativeGestureEvent_Delete(void* self);
}
public interface IQKeyEvent
{
	void* NativePtr { get; }
}
public struct QKeyEventPtr : IQKeyEvent, IDisposable, IQInputEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, int32 key, int64 modifiers)
	{
		return .(CQt.QKeyEvent_new((int64)typeVal, key, modifiers));
	}
	
	public void Dispose()
	{
		CQt.QKeyEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QKeyEvent_Clone(this.nativePtr);
	}
	
	public int32 Key()
	{
		return CQt.QKeyEvent_Key(this.nativePtr);
	}
	
	public bool Matches(int64 key)
	{
		return CQt.QKeyEvent_Matches(this.nativePtr, (int64)key);
	}
	
	public int64 Modifiers()
	{
		return CQt.QKeyEvent_Modifiers(this.nativePtr);
	}
	
	public void KeyCombination()
	{
		CQt.QKeyEvent_KeyCombination(this.nativePtr);
	}
	
	public libqt_string Text()
	{
		return CQt.QKeyEvent_Text(this.nativePtr);
	}
	
	public bool IsAutoRepeat()
	{
		return CQt.QKeyEvent_IsAutoRepeat(this.nativePtr);
	}
	
	public int32 Count()
	{
		return CQt.QKeyEvent_Count(this.nativePtr);
	}
	
	public uint32 NativeScanCode()
	{
		return CQt.QKeyEvent_NativeScanCode(this.nativePtr);
	}
	
	public uint32 NativeVirtualKey()
	{
		return CQt.QKeyEvent_NativeVirtualKey(this.nativePtr);
	}
	
	public uint32 NativeModifiers()
	{
		return CQt.QKeyEvent_NativeModifiers(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QInputEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QKeyEvent
{
	public QKeyEventPtr handle;
	
	public static implicit operator QKeyEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, int32 key, int64 modifiers)
	{
		this.handle = QKeyEventPtr.New(typeVal, key, modifiers);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int32 Key()
	{
		return this.handle.Key();
	}
	
	public bool Matches(int64 key)
	{
		return this.handle.Matches(key);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void KeyCombination()
	{
		this.handle.KeyCombination();
	}
	
	public libqt_string Text()
	{
		return this.handle.Text();
	}
	
	public bool IsAutoRepeat()
	{
		return this.handle.IsAutoRepeat();
	}
	
	public int32 Count()
	{
		return this.handle.Count();
	}
	
	public uint32 NativeScanCode()
	{
		return this.handle.NativeScanCode();
	}
	
	public uint32 NativeVirtualKey()
	{
		return this.handle.NativeVirtualKey();
	}
	
	public uint32 NativeModifiers()
	{
		return this.handle.NativeModifiers();
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QKeyEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QKeyEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QKeyEvent_new")]
	public static extern void* QKeyEvent_new(int64 typeVal, int32 key, int64 modifiers);
	[LinkName("QKeyEvent_new2")]
	public static extern void* QKeyEvent_new2(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers);
	[LinkName("QKeyEvent_new3")]
	public static extern void* QKeyEvent_new3(int64 typeVal, int32 key, int64 modifiers, libqt_string text);
	[LinkName("QKeyEvent_new4")]
	public static extern void* QKeyEvent_new4(int64 typeVal, int32 key, int64 modifiers, libqt_string text, bool autorep);
	[LinkName("QKeyEvent_new5")]
	public static extern void* QKeyEvent_new5(int64 typeVal, int32 key, int64 modifiers, libqt_string text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new6")]
	public static extern void* QKeyEvent_new6(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text);
	[LinkName("QKeyEvent_new7")]
	public static extern void* QKeyEvent_new7(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep);
	[LinkName("QKeyEvent_new8")]
	public static extern void* QKeyEvent_new8(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep, uint16 count);
	[LinkName("QKeyEvent_new9")]
	public static extern void* QKeyEvent_new9(int64 typeVal, int32 key, int64 modifiers, uint32 nativeScanCode, uint32 nativeVirtualKey, uint32 nativeModifiers, libqt_string text, bool autorep, uint16 count, void* device);
	[LinkName("QKeyEvent_Clone")]
	public static extern void* QKeyEvent_Clone(void* c_this);
	[LinkName("QKeyEvent_Key")]
	public static extern int32 QKeyEvent_Key(void* c_this);
	[LinkName("QKeyEvent_Matches")]
	public static extern bool QKeyEvent_Matches(void* c_this, int64 key);
	[LinkName("QKeyEvent_Modifiers")]
	public static extern int64 QKeyEvent_Modifiers(void* c_this);
	[LinkName("QKeyEvent_KeyCombination")]
	public static extern void QKeyEvent_KeyCombination(void* c_this);
	[LinkName("QKeyEvent_Text")]
	public static extern libqt_string QKeyEvent_Text(void* c_this);
	[LinkName("QKeyEvent_IsAutoRepeat")]
	public static extern bool QKeyEvent_IsAutoRepeat(void* c_this);
	[LinkName("QKeyEvent_Count")]
	public static extern int32 QKeyEvent_Count(void* c_this);
	[LinkName("QKeyEvent_NativeScanCode")]
	public static extern uint32 QKeyEvent_NativeScanCode(void* c_this);
	[LinkName("QKeyEvent_NativeVirtualKey")]
	public static extern uint32 QKeyEvent_NativeVirtualKey(void* c_this);
	[LinkName("QKeyEvent_NativeModifiers")]
	public static extern uint32 QKeyEvent_NativeModifiers(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QKeyEvent_Delete")]
	public static extern void QKeyEvent_Delete(void* self);
}
public interface IQFocusEvent
{
	void* NativePtr { get; }
}
public struct QFocusEventPtr : IQFocusEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal)
	{
		return .(CQt.QFocusEvent_new((int64)typeVal));
	}
	
	public void Dispose()
	{
		CQt.QFocusEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QFocusEvent_Clone(this.nativePtr);
	}
	
	public bool GotFocus()
	{
		return CQt.QFocusEvent_GotFocus(this.nativePtr);
	}
	
	public bool LostFocus()
	{
		return CQt.QFocusEvent_LostFocus(this.nativePtr);
	}
	
	public int64 Reason()
	{
		return CQt.QFocusEvent_Reason(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QFocusEvent
{
	public QFocusEventPtr handle;
	
	public static implicit operator QFocusEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal)
	{
		this.handle = QFocusEventPtr.New(typeVal);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public bool GotFocus()
	{
		return this.handle.GotFocus();
	}
	
	public bool LostFocus()
	{
		return this.handle.LostFocus();
	}
	
	public int64 Reason()
	{
		return this.handle.Reason();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QFocusEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QFocusEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QFocusEvent_new")]
	public static extern void* QFocusEvent_new(int64 typeVal);
	[LinkName("QFocusEvent_new2")]
	public static extern void* QFocusEvent_new2(int64 typeVal, int64 reason);
	[LinkName("QFocusEvent_Clone")]
	public static extern void* QFocusEvent_Clone(void* c_this);
	[LinkName("QFocusEvent_GotFocus")]
	public static extern bool QFocusEvent_GotFocus(void* c_this);
	[LinkName("QFocusEvent_LostFocus")]
	public static extern bool QFocusEvent_LostFocus(void* c_this);
	[LinkName("QFocusEvent_Reason")]
	public static extern int64 QFocusEvent_Reason(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QFocusEvent_Delete")]
	public static extern void QFocusEvent_Delete(void* self);
}
public interface IQPaintEvent
{
	void* NativePtr { get; }
}
public struct QPaintEventPtr : IQPaintEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQRegion paintRegion)
	{
		return .(CQt.QPaintEvent_new((paintRegion == default || paintRegion.NativePtr == default) ? default : paintRegion.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QPaintEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QPaintEvent_Clone(this.nativePtr);
	}
	
	public void* Rect()
	{
		return CQt.QPaintEvent_Rect(this.nativePtr);
	}
	
	public void* Region()
	{
		return CQt.QPaintEvent_Region(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QPaintEvent
{
	public QPaintEventPtr handle;
	
	public static implicit operator QPaintEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQRegion paintRegion)
	{
		this.handle = QPaintEventPtr.New(paintRegion);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Rect()
	{
		return this.handle.Rect();
	}
	
	public void* Region()
	{
		return this.handle.Region();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QPaintEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QPaintEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QPaintEvent_new")]
	public static extern void* QPaintEvent_new(void* paintRegion);
	[LinkName("QPaintEvent_new2")]
	public static extern void* QPaintEvent_new2(void* paintRect);
	[LinkName("QPaintEvent_Clone")]
	public static extern void* QPaintEvent_Clone(void* c_this);
	[LinkName("QPaintEvent_Rect")]
	public static extern void* QPaintEvent_Rect(void* c_this);
	[LinkName("QPaintEvent_Region")]
	public static extern void* QPaintEvent_Region(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPaintEvent_Delete")]
	public static extern void QPaintEvent_Delete(void* self);
}
public interface IQMoveEvent
{
	void* NativePtr { get; }
}
public struct QMoveEventPtr : IQMoveEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPoint pos, IQPoint oldPos)
	{
		return .(CQt.QMoveEvent_new((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (oldPos == default || oldPos.NativePtr == default) ? default : oldPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QMoveEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QMoveEvent_Clone(this.nativePtr);
	}
	
	public void* Pos()
	{
		return CQt.QMoveEvent_Pos(this.nativePtr);
	}
	
	public void* OldPos()
	{
		return CQt.QMoveEvent_OldPos(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QMoveEvent
{
	public QMoveEventPtr handle;
	
	public static implicit operator QMoveEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPoint pos, IQPoint oldPos)
	{
		this.handle = QMoveEventPtr.New(pos, oldPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Pos()
	{
		return this.handle.Pos();
	}
	
	public void* OldPos()
	{
		return this.handle.OldPos();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QMoveEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QMoveEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QMoveEvent_new")]
	public static extern void* QMoveEvent_new(void* pos, void* oldPos);
	[LinkName("QMoveEvent_Clone")]
	public static extern void* QMoveEvent_Clone(void* c_this);
	[LinkName("QMoveEvent_Pos")]
	public static extern void* QMoveEvent_Pos(void* c_this);
	[LinkName("QMoveEvent_OldPos")]
	public static extern void* QMoveEvent_OldPos(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QMoveEvent_Delete")]
	public static extern void QMoveEvent_Delete(void* self);
}
public interface IQExposeEvent
{
	void* NativePtr { get; }
}
public struct QExposeEventPtr : IQExposeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQRegion m_region)
	{
		return .(CQt.QExposeEvent_new((m_region == default || m_region.NativePtr == default) ? default : m_region.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QExposeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QExposeEvent_Clone(this.nativePtr);
	}
	
	public void* Region()
	{
		return CQt.QExposeEvent_Region(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QExposeEvent
{
	public QExposeEventPtr handle;
	
	public static implicit operator QExposeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQRegion m_region)
	{
		this.handle = QExposeEventPtr.New(m_region);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Region()
	{
		return this.handle.Region();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QExposeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QExposeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QExposeEvent_new")]
	public static extern void* QExposeEvent_new(void* m_region);
	[LinkName("QExposeEvent_Clone")]
	public static extern void* QExposeEvent_Clone(void* c_this);
	[LinkName("QExposeEvent_Region")]
	public static extern void* QExposeEvent_Region(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QExposeEvent_Delete")]
	public static extern void QExposeEvent_Delete(void* self);
}
public interface IQPlatformSurfaceEvent
{
	void* NativePtr { get; }
}
public struct QPlatformSurfaceEventPtr : IQPlatformSurfaceEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 surfaceEventType)
	{
		return .(CQt.QPlatformSurfaceEvent_new((int64)surfaceEventType));
	}
	
	public void Dispose()
	{
		CQt.QPlatformSurfaceEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QPlatformSurfaceEvent_Clone(this.nativePtr);
	}
	
	public int64 SurfaceEventType()
	{
		return CQt.QPlatformSurfaceEvent_SurfaceEventType(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QPlatformSurfaceEvent
{
	public QPlatformSurfaceEventPtr handle;
	
	public static implicit operator QPlatformSurfaceEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 surfaceEventType)
	{
		this.handle = QPlatformSurfaceEventPtr.New(surfaceEventType);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 SurfaceEventType()
	{
		return this.handle.SurfaceEventType();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QPlatformSurfaceEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QPlatformSurfaceEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QPlatformSurfaceEvent_new")]
	public static extern void* QPlatformSurfaceEvent_new(int64 surfaceEventType);
	[LinkName("QPlatformSurfaceEvent_Clone")]
	public static extern void* QPlatformSurfaceEvent_Clone(void* c_this);
	[LinkName("QPlatformSurfaceEvent_SurfaceEventType")]
	public static extern int64 QPlatformSurfaceEvent_SurfaceEventType(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QPlatformSurfaceEvent_Delete")]
	public static extern void QPlatformSurfaceEvent_Delete(void* self);
}
public interface IQResizeEvent
{
	void* NativePtr { get; }
}
public struct QResizeEventPtr : IQResizeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQSize size, IQSize oldSize)
	{
		return .(CQt.QResizeEvent_new((size == default || size.NativePtr == default) ? default : size.NativePtr, (oldSize == default || oldSize.NativePtr == default) ? default : oldSize.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QResizeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QResizeEvent_Clone(this.nativePtr);
	}
	
	public void* Size()
	{
		return CQt.QResizeEvent_Size(this.nativePtr);
	}
	
	public void* OldSize()
	{
		return CQt.QResizeEvent_OldSize(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QResizeEvent
{
	public QResizeEventPtr handle;
	
	public static implicit operator QResizeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQSize size, IQSize oldSize)
	{
		this.handle = QResizeEventPtr.New(size, oldSize);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Size()
	{
		return this.handle.Size();
	}
	
	public void* OldSize()
	{
		return this.handle.OldSize();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QResizeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QResizeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QResizeEvent_new")]
	public static extern void* QResizeEvent_new(void* size, void* oldSize);
	[LinkName("QResizeEvent_Clone")]
	public static extern void* QResizeEvent_Clone(void* c_this);
	[LinkName("QResizeEvent_Size")]
	public static extern void* QResizeEvent_Size(void* c_this);
	[LinkName("QResizeEvent_OldSize")]
	public static extern void* QResizeEvent_OldSize(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QResizeEvent_Delete")]
	public static extern void QResizeEvent_Delete(void* self);
}
public interface IQCloseEvent
{
	void* NativePtr { get; }
}
public struct QCloseEventPtr : IQCloseEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QCloseEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QCloseEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QCloseEvent_Clone(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QCloseEvent
{
	public QCloseEventPtr handle;
	
	public static implicit operator QCloseEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QCloseEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QCloseEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QCloseEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QCloseEvent_new")]
	public static extern void* QCloseEvent_new();
	[LinkName("QCloseEvent_Clone")]
	public static extern void* QCloseEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QCloseEvent_Delete")]
	public static extern void QCloseEvent_Delete(void* self);
}
public interface IQIconDragEvent
{
	void* NativePtr { get; }
}
public struct QIconDragEventPtr : IQIconDragEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QIconDragEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QIconDragEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QIconDragEvent_Clone(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QIconDragEvent
{
	public QIconDragEventPtr handle;
	
	public static implicit operator QIconDragEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QIconDragEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QIconDragEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QIconDragEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QIconDragEvent_new")]
	public static extern void* QIconDragEvent_new();
	[LinkName("QIconDragEvent_Clone")]
	public static extern void* QIconDragEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QIconDragEvent_Delete")]
	public static extern void QIconDragEvent_Delete(void* self);
}
public interface IQShowEvent
{
	void* NativePtr { get; }
}
public struct QShowEventPtr : IQShowEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QShowEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QShowEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QShowEvent_Clone(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QShowEvent
{
	public QShowEventPtr handle;
	
	public static implicit operator QShowEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QShowEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QShowEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QShowEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QShowEvent_new")]
	public static extern void* QShowEvent_new();
	[LinkName("QShowEvent_Clone")]
	public static extern void* QShowEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QShowEvent_Delete")]
	public static extern void QShowEvent_Delete(void* self);
}
public interface IQHideEvent
{
	void* NativePtr { get; }
}
public struct QHideEventPtr : IQHideEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QHideEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QHideEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QHideEvent_Clone(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QHideEvent
{
	public QHideEventPtr handle;
	
	public static implicit operator QHideEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QHideEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QHideEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QHideEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QHideEvent_new")]
	public static extern void* QHideEvent_new();
	[LinkName("QHideEvent_Clone")]
	public static extern void* QHideEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QHideEvent_Delete")]
	public static extern void QHideEvent_Delete(void* self);
}
public interface IQContextMenuEvent
{
	void* NativePtr { get; }
}
public struct QContextMenuEventPtr : IQContextMenuEvent, IDisposable, IQInputEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 reason, IQPoint pos, IQPoint globalPos)
	{
		return .(CQt.QContextMenuEvent_new((int64)reason, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QContextMenuEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QContextMenuEvent_Clone(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QContextMenuEvent_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QContextMenuEvent_Y(this.nativePtr);
	}
	
	public int32 GlobalX()
	{
		return CQt.QContextMenuEvent_GlobalX(this.nativePtr);
	}
	
	public int32 GlobalY()
	{
		return CQt.QContextMenuEvent_GlobalY(this.nativePtr);
	}
	
	public void* Pos()
	{
		return CQt.QContextMenuEvent_Pos(this.nativePtr);
	}
	
	public void* GlobalPos()
	{
		return CQt.QContextMenuEvent_GlobalPos(this.nativePtr);
	}
	
	public int64 Reason()
	{
		return CQt.QContextMenuEvent_Reason(this.nativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QInputEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QContextMenuEvent
{
	public QContextMenuEventPtr handle;
	
	public static implicit operator QContextMenuEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 reason, IQPoint pos, IQPoint globalPos)
	{
		this.handle = QContextMenuEventPtr.New(reason, pos, globalPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public int32 GlobalX()
	{
		return this.handle.GlobalX();
	}
	
	public int32 GlobalY()
	{
		return this.handle.GlobalY();
	}
	
	public void* Pos()
	{
		return this.handle.Pos();
	}
	
	public void* GlobalPos()
	{
		return this.handle.GlobalPos();
	}
	
	public int64 Reason()
	{
		return this.handle.Reason();
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QContextMenuEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QContextMenuEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QContextMenuEvent_new")]
	public static extern void* QContextMenuEvent_new(int64 reason, void* pos, void* globalPos);
	[LinkName("QContextMenuEvent_new2")]
	public static extern void* QContextMenuEvent_new2(int64 reason, void* pos);
	[LinkName("QContextMenuEvent_new3")]
	public static extern void* QContextMenuEvent_new3(int64 reason, void* pos, void* globalPos, int64 modifiers);
	[LinkName("QContextMenuEvent_Clone")]
	public static extern void* QContextMenuEvent_Clone(void* c_this);
	[LinkName("QContextMenuEvent_X")]
	public static extern int32 QContextMenuEvent_X(void* c_this);
	[LinkName("QContextMenuEvent_Y")]
	public static extern int32 QContextMenuEvent_Y(void* c_this);
	[LinkName("QContextMenuEvent_GlobalX")]
	public static extern int32 QContextMenuEvent_GlobalX(void* c_this);
	[LinkName("QContextMenuEvent_GlobalY")]
	public static extern int32 QContextMenuEvent_GlobalY(void* c_this);
	[LinkName("QContextMenuEvent_Pos")]
	public static extern void* QContextMenuEvent_Pos(void* c_this);
	[LinkName("QContextMenuEvent_GlobalPos")]
	public static extern void* QContextMenuEvent_GlobalPos(void* c_this);
	[LinkName("QContextMenuEvent_Reason")]
	public static extern int64 QContextMenuEvent_Reason(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QContextMenuEvent_Delete")]
	public static extern void QContextMenuEvent_Delete(void* self);
}
public interface IQInputMethodEvent
{
	void* NativePtr { get; }
}
public struct QInputMethodEventPtr : IQInputMethodEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QInputMethodEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QInputMethodEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QInputMethodEvent_Clone(this.nativePtr);
	}
	
	public void SetCommitString(String commitString)
	{
		CQt.QInputMethodEvent_SetCommitString(this.nativePtr, libqt_string(commitString));
	}
	
	public void[] Attributes()
	{
		return CQt.QInputMethodEvent_Attributes(this.nativePtr);
	}
	
	public libqt_string PreeditString()
	{
		return CQt.QInputMethodEvent_PreeditString(this.nativePtr);
	}
	
	public libqt_string CommitString()
	{
		return CQt.QInputMethodEvent_CommitString(this.nativePtr);
	}
	
	public int32 ReplacementStart()
	{
		return CQt.QInputMethodEvent_ReplacementStart(this.nativePtr);
	}
	
	public int32 ReplacementLength()
	{
		return CQt.QInputMethodEvent_ReplacementLength(this.nativePtr);
	}
	
	public void SetCommitString2(String commitString, int32 replaceFrom)
	{
		CQt.QInputMethodEvent_SetCommitString2(this.nativePtr, libqt_string(commitString), replaceFrom);
	}
	
	public void SetCommitString3(String commitString, int32 replaceFrom, int32 replaceLength)
	{
		CQt.QInputMethodEvent_SetCommitString3(this.nativePtr, libqt_string(commitString), replaceFrom, replaceLength);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QInputMethodEvent
{
	public QInputMethodEventPtr handle;
	
	public static implicit operator QInputMethodEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QInputMethodEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void SetCommitString(String commitString)
	{
		this.handle.SetCommitString(commitString);
	}
	
	public void[] Attributes()
	{
		return this.handle.Attributes();
	}
	
	public libqt_string PreeditString()
	{
		return this.handle.PreeditString();
	}
	
	public libqt_string CommitString()
	{
		return this.handle.CommitString();
	}
	
	public int32 ReplacementStart()
	{
		return this.handle.ReplacementStart();
	}
	
	public int32 ReplacementLength()
	{
		return this.handle.ReplacementLength();
	}
	
	public void SetCommitString2(String commitString, int32 replaceFrom)
	{
		this.handle.SetCommitString2(commitString, replaceFrom);
	}
	
	public void SetCommitString3(String commitString, int32 replaceFrom, int32 replaceLength)
	{
		this.handle.SetCommitString3(commitString, replaceFrom, replaceLength);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QInputMethodEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QInputMethodEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QInputMethodEvent_new")]
	public static extern void* QInputMethodEvent_new();
	[LinkName("QInputMethodEvent_new2")]
	public static extern void* QInputMethodEvent_new2(libqt_string preeditText, void[] attributes);
	[LinkName("QInputMethodEvent_Clone")]
	public static extern void* QInputMethodEvent_Clone(void* c_this);
	[LinkName("QInputMethodEvent_SetCommitString")]
	public static extern void QInputMethodEvent_SetCommitString(void* c_this, libqt_string commitString);
	[LinkName("QInputMethodEvent_Attributes")]
	public static extern void[] QInputMethodEvent_Attributes(void* c_this);
	[LinkName("QInputMethodEvent_PreeditString")]
	public static extern libqt_string QInputMethodEvent_PreeditString(void* c_this);
	[LinkName("QInputMethodEvent_CommitString")]
	public static extern libqt_string QInputMethodEvent_CommitString(void* c_this);
	[LinkName("QInputMethodEvent_ReplacementStart")]
	public static extern int32 QInputMethodEvent_ReplacementStart(void* c_this);
	[LinkName("QInputMethodEvent_ReplacementLength")]
	public static extern int32 QInputMethodEvent_ReplacementLength(void* c_this);
	[LinkName("QInputMethodEvent_SetCommitString2")]
	public static extern void QInputMethodEvent_SetCommitString2(void* c_this, libqt_string commitString, int32 replaceFrom);
	[LinkName("QInputMethodEvent_SetCommitString3")]
	public static extern void QInputMethodEvent_SetCommitString3(void* c_this, libqt_string commitString, int32 replaceFrom, int32 replaceLength);
	/// Delete this object from C++ memory
	[LinkName("QInputMethodEvent_Delete")]
	public static extern void QInputMethodEvent_Delete(void* self);
}
public interface IQInputMethodQueryEvent
{
	void* NativePtr { get; }
}
public struct QInputMethodQueryEventPtr : IQInputMethodQueryEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 queries)
	{
		return .(CQt.QInputMethodQueryEvent_new(queries));
	}
	
	public void Dispose()
	{
		CQt.QInputMethodQueryEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QInputMethodQueryEvent_Clone(this.nativePtr);
	}
	
	public int64 Queries()
	{
		return CQt.QInputMethodQueryEvent_Queries(this.nativePtr);
	}
	
	public void SetValue(int64 query, IQVariant value)
	{
		CQt.QInputMethodQueryEvent_SetValue(this.nativePtr, (int64)query, (value == default || value.NativePtr == default) ? default : value.NativePtr);
	}
	
	public void Value(int64 query)
	{
		CQt.QInputMethodQueryEvent_Value(this.nativePtr, (int64)query);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QInputMethodQueryEvent
{
	public QInputMethodQueryEventPtr handle;
	
	public static implicit operator QInputMethodQueryEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 queries)
	{
		this.handle = QInputMethodQueryEventPtr.New(queries);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Queries()
	{
		return this.handle.Queries();
	}
	
	public void SetValue(int64 query, IQVariant value)
	{
		this.handle.SetValue(query, value);
	}
	
	public void Value(int64 query)
	{
		this.handle.Value(query);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QInputMethodQueryEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QInputMethodQueryEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QInputMethodQueryEvent_new")]
	public static extern void* QInputMethodQueryEvent_new(int64 queries);
	[LinkName("QInputMethodQueryEvent_Clone")]
	public static extern void* QInputMethodQueryEvent_Clone(void* c_this);
	[LinkName("QInputMethodQueryEvent_Queries")]
	public static extern int64 QInputMethodQueryEvent_Queries(void* c_this);
	[LinkName("QInputMethodQueryEvent_SetValue")]
	public static extern void QInputMethodQueryEvent_SetValue(void* c_this, int64 query, void* value);
	[LinkName("QInputMethodQueryEvent_Value")]
	public static extern void QInputMethodQueryEvent_Value(void* c_this, int64 query);
	/// Delete this object from C++ memory
	[LinkName("QInputMethodQueryEvent_Delete")]
	public static extern void QInputMethodQueryEvent_Delete(void* self);
}
public interface IQDropEvent
{
	void* NativePtr { get; }
}
public struct QDropEventPtr : IQDropEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPointF pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		return .(CQt.QDropEvent_new((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, actions, (data == default || data.NativePtr == default) ? default : data.NativePtr, buttons, modifiers));
	}
	
	public void Dispose()
	{
		CQt.QDropEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QDropEvent_Clone(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QDropEvent_Pos(this.nativePtr);
	}
	
	public void PosF()
	{
		CQt.QDropEvent_PosF(this.nativePtr);
	}
	
	public int64 MouseButtons()
	{
		return CQt.QDropEvent_MouseButtons(this.nativePtr);
	}
	
	public int64 KeyboardModifiers()
	{
		return CQt.QDropEvent_KeyboardModifiers(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QDropEvent_Position(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QDropEvent_Buttons(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QDropEvent_Modifiers(this.nativePtr);
	}
	
	public int64 PossibleActions()
	{
		return CQt.QDropEvent_PossibleActions(this.nativePtr);
	}
	
	public int64 ProposedAction()
	{
		return CQt.QDropEvent_ProposedAction(this.nativePtr);
	}
	
	public void AcceptProposedAction()
	{
		CQt.QDropEvent_AcceptProposedAction(this.nativePtr);
	}
	
	public int64 DropAction()
	{
		return CQt.QDropEvent_DropAction(this.nativePtr);
	}
	
	public void SetDropAction(int64 action)
	{
		CQt.QDropEvent_SetDropAction(this.nativePtr, (int64)action);
	}
	
	public void* Source()
	{
		return CQt.QDropEvent_Source(this.nativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QDropEvent_MimeData(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QDropEvent
{
	public QDropEventPtr handle;
	
	public static implicit operator QDropEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPointF pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		this.handle = QDropEventPtr.New(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void PosF()
	{
		this.handle.PosF();
	}
	
	public int64 MouseButtons()
	{
		return this.handle.MouseButtons();
	}
	
	public int64 KeyboardModifiers()
	{
		return this.handle.KeyboardModifiers();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public int64 PossibleActions()
	{
		return this.handle.PossibleActions();
	}
	
	public int64 ProposedAction()
	{
		return this.handle.ProposedAction();
	}
	
	public void AcceptProposedAction()
	{
		this.handle.AcceptProposedAction();
	}
	
	public int64 DropAction()
	{
		return this.handle.DropAction();
	}
	
	public void SetDropAction(int64 action)
	{
		this.handle.SetDropAction(action);
	}
	
	public void* Source()
	{
		return this.handle.Source();
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QDropEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QDropEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QDropEvent_new")]
	public static extern void* QDropEvent_new(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers);
	[LinkName("QDropEvent_new2")]
	public static extern void* QDropEvent_new2(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDropEvent_Clone")]
	public static extern void* QDropEvent_Clone(void* c_this);
	[LinkName("QDropEvent_Pos")]
	public static extern void QDropEvent_Pos(void* c_this);
	[LinkName("QDropEvent_PosF")]
	public static extern void QDropEvent_PosF(void* c_this);
	[LinkName("QDropEvent_MouseButtons")]
	public static extern int64 QDropEvent_MouseButtons(void* c_this);
	[LinkName("QDropEvent_KeyboardModifiers")]
	public static extern int64 QDropEvent_KeyboardModifiers(void* c_this);
	[LinkName("QDropEvent_Position")]
	public static extern void QDropEvent_Position(void* c_this);
	[LinkName("QDropEvent_Buttons")]
	public static extern int64 QDropEvent_Buttons(void* c_this);
	[LinkName("QDropEvent_Modifiers")]
	public static extern int64 QDropEvent_Modifiers(void* c_this);
	[LinkName("QDropEvent_PossibleActions")]
	public static extern int64 QDropEvent_PossibleActions(void* c_this);
	[LinkName("QDropEvent_ProposedAction")]
	public static extern int64 QDropEvent_ProposedAction(void* c_this);
	[LinkName("QDropEvent_AcceptProposedAction")]
	public static extern void QDropEvent_AcceptProposedAction(void* c_this);
	[LinkName("QDropEvent_DropAction")]
	public static extern int64 QDropEvent_DropAction(void* c_this);
	[LinkName("QDropEvent_SetDropAction")]
	public static extern void QDropEvent_SetDropAction(void* c_this, int64 action);
	[LinkName("QDropEvent_Source")]
	public static extern void* QDropEvent_Source(void* c_this);
	[LinkName("QDropEvent_MimeData")]
	public static extern void* QDropEvent_MimeData(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QDropEvent_Delete")]
	public static extern void QDropEvent_Delete(void* self);
}
public interface IQDragMoveEvent
{
	void* NativePtr { get; }
}
public struct QDragMoveEventPtr : IQDragMoveEvent, IDisposable, IQDropEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPoint pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		return .(CQt.QDragMoveEvent_new((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, actions, (data == default || data.NativePtr == default) ? default : data.NativePtr, buttons, modifiers));
	}
	
	public void Dispose()
	{
		CQt.QDragMoveEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QDragMoveEvent_Clone(this.nativePtr);
	}
	
	public void AnswerRect()
	{
		CQt.QDragMoveEvent_AnswerRect(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QDragMoveEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QDragMoveEvent_Ignore(this.nativePtr);
	}
	
	public void AcceptWithQRect(IQRect r)
	{
		CQt.QDragMoveEvent_AcceptWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void IgnoreWithQRect(IQRect r)
	{
		CQt.QDragMoveEvent_IgnoreWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Pos()
	{
		CQt.QDropEvent_Pos(this.nativePtr);
	}
	
	public void PosF()
	{
		CQt.QDropEvent_PosF(this.nativePtr);
	}
	
	public int64 MouseButtons()
	{
		return CQt.QDropEvent_MouseButtons(this.nativePtr);
	}
	
	public int64 KeyboardModifiers()
	{
		return CQt.QDropEvent_KeyboardModifiers(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QDropEvent_Position(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QDropEvent_Buttons(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QDropEvent_Modifiers(this.nativePtr);
	}
	
	public int64 PossibleActions()
	{
		return CQt.QDropEvent_PossibleActions(this.nativePtr);
	}
	
	public int64 ProposedAction()
	{
		return CQt.QDropEvent_ProposedAction(this.nativePtr);
	}
	
	public void AcceptProposedAction()
	{
		CQt.QDropEvent_AcceptProposedAction(this.nativePtr);
	}
	
	public int64 DropAction()
	{
		return CQt.QDropEvent_DropAction(this.nativePtr);
	}
	
	public void SetDropAction(int64 action)
	{
		CQt.QDropEvent_SetDropAction(this.nativePtr, (int64)action);
	}
	
	public void* Source()
	{
		return CQt.QDropEvent_Source(this.nativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QDropEvent_MimeData(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QDragMoveEvent
{
	public QDragMoveEventPtr handle;
	
	public static implicit operator QDragMoveEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPoint pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		this.handle = QDragMoveEventPtr.New(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void AnswerRect()
	{
		this.handle.AnswerRect();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public void AcceptWithQRect(IQRect r)
	{
		this.handle.AcceptWithQRect(r);
	}
	
	public void IgnoreWithQRect(IQRect r)
	{
		this.handle.IgnoreWithQRect(r);
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void PosF()
	{
		this.handle.PosF();
	}
	
	public int64 MouseButtons()
	{
		return this.handle.MouseButtons();
	}
	
	public int64 KeyboardModifiers()
	{
		return this.handle.KeyboardModifiers();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public int64 PossibleActions()
	{
		return this.handle.PossibleActions();
	}
	
	public int64 ProposedAction()
	{
		return this.handle.ProposedAction();
	}
	
	public void AcceptProposedAction()
	{
		this.handle.AcceptProposedAction();
	}
	
	public int64 DropAction()
	{
		return this.handle.DropAction();
	}
	
	public void SetDropAction(int64 action)
	{
		this.handle.SetDropAction(action);
	}
	
	public void* Source()
	{
		return this.handle.Source();
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QDragMoveEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QDragMoveEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QDragMoveEvent_new")]
	public static extern void* QDragMoveEvent_new(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers);
	[LinkName("QDragMoveEvent_new2")]
	public static extern void* QDragMoveEvent_new2(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers, int64 typeVal);
	[LinkName("QDragMoveEvent_Clone")]
	public static extern void* QDragMoveEvent_Clone(void* c_this);
	[LinkName("QDragMoveEvent_AnswerRect")]
	public static extern void QDragMoveEvent_AnswerRect(void* c_this);
	[LinkName("QDragMoveEvent_Accept")]
	public static extern void QDragMoveEvent_Accept(void* c_this);
	[LinkName("QDragMoveEvent_Ignore")]
	public static extern void QDragMoveEvent_Ignore(void* c_this);
	[LinkName("QDragMoveEvent_AcceptWithQRect")]
	public static extern void QDragMoveEvent_AcceptWithQRect(void* c_this, void* r);
	[LinkName("QDragMoveEvent_IgnoreWithQRect")]
	public static extern void QDragMoveEvent_IgnoreWithQRect(void* c_this, void* r);
	/// Delete this object from C++ memory
	[LinkName("QDragMoveEvent_Delete")]
	public static extern void QDragMoveEvent_Delete(void* self);
}
public interface IQDragEnterEvent
{
	void* NativePtr { get; }
}
public struct QDragEnterEventPtr : IQDragEnterEvent, IDisposable, IQDragMoveEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPoint pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		return .(CQt.QDragEnterEvent_new((pos == default || pos.NativePtr == default) ? default : pos.NativePtr, actions, (data == default || data.NativePtr == default) ? default : data.NativePtr, buttons, modifiers));
	}
	
	public void Dispose()
	{
		CQt.QDragEnterEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QDragEnterEvent_Clone(this.nativePtr);
	}
	
	public void AnswerRect()
	{
		CQt.QDragMoveEvent_AnswerRect(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QDragMoveEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QDragMoveEvent_Ignore(this.nativePtr);
	}
	
	public void AcceptWithQRect(IQRect r)
	{
		CQt.QDragMoveEvent_AcceptWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void IgnoreWithQRect(IQRect r)
	{
		CQt.QDragMoveEvent_IgnoreWithQRect(this.nativePtr, (r == default || r.NativePtr == default) ? default : r.NativePtr);
	}
	
	public void Pos()
	{
		CQt.QDropEvent_Pos(this.nativePtr);
	}
	
	public void PosF()
	{
		CQt.QDropEvent_PosF(this.nativePtr);
	}
	
	public int64 MouseButtons()
	{
		return CQt.QDropEvent_MouseButtons(this.nativePtr);
	}
	
	public int64 KeyboardModifiers()
	{
		return CQt.QDropEvent_KeyboardModifiers(this.nativePtr);
	}
	
	public void Position()
	{
		CQt.QDropEvent_Position(this.nativePtr);
	}
	
	public int64 Buttons()
	{
		return CQt.QDropEvent_Buttons(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QDropEvent_Modifiers(this.nativePtr);
	}
	
	public int64 PossibleActions()
	{
		return CQt.QDropEvent_PossibleActions(this.nativePtr);
	}
	
	public int64 ProposedAction()
	{
		return CQt.QDropEvent_ProposedAction(this.nativePtr);
	}
	
	public void AcceptProposedAction()
	{
		CQt.QDropEvent_AcceptProposedAction(this.nativePtr);
	}
	
	public int64 DropAction()
	{
		return CQt.QDropEvent_DropAction(this.nativePtr);
	}
	
	public void SetDropAction(int64 action)
	{
		CQt.QDropEvent_SetDropAction(this.nativePtr, (int64)action);
	}
	
	public void* Source()
	{
		return CQt.QDropEvent_Source(this.nativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QDropEvent_MimeData(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QDragEnterEvent
{
	public QDragEnterEventPtr handle;
	
	public static implicit operator QDragEnterEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPoint pos, int64 actions, IQMimeData data, int64 buttons, int64 modifiers)
	{
		this.handle = QDragEnterEventPtr.New(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void AnswerRect()
	{
		this.handle.AnswerRect();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public void AcceptWithQRect(IQRect r)
	{
		this.handle.AcceptWithQRect(r);
	}
	
	public void IgnoreWithQRect(IQRect r)
	{
		this.handle.IgnoreWithQRect(r);
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void PosF()
	{
		this.handle.PosF();
	}
	
	public int64 MouseButtons()
	{
		return this.handle.MouseButtons();
	}
	
	public int64 KeyboardModifiers()
	{
		return this.handle.KeyboardModifiers();
	}
	
	public void Position()
	{
		this.handle.Position();
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public int64 PossibleActions()
	{
		return this.handle.PossibleActions();
	}
	
	public int64 ProposedAction()
	{
		return this.handle.ProposedAction();
	}
	
	public void AcceptProposedAction()
	{
		this.handle.AcceptProposedAction();
	}
	
	public int64 DropAction()
	{
		return this.handle.DropAction();
	}
	
	public void SetDropAction(int64 action)
	{
		this.handle.SetDropAction(action);
	}
	
	public void* Source()
	{
		return this.handle.Source();
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QDragEnterEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QDragEnterEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QDragEnterEvent_new")]
	public static extern void* QDragEnterEvent_new(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers);
	[LinkName("QDragEnterEvent_Clone")]
	public static extern void* QDragEnterEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QDragEnterEvent_Delete")]
	public static extern void QDragEnterEvent_Delete(void* self);
}
public interface IQDragLeaveEvent
{
	void* NativePtr { get; }
}
public struct QDragLeaveEventPtr : IQDragLeaveEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QDragLeaveEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QDragLeaveEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QDragLeaveEvent_Clone(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QDragLeaveEvent
{
	public QDragLeaveEventPtr handle;
	
	public static implicit operator QDragLeaveEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QDragLeaveEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QDragLeaveEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QDragLeaveEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QDragLeaveEvent_new")]
	public static extern void* QDragLeaveEvent_new();
	[LinkName("QDragLeaveEvent_Clone")]
	public static extern void* QDragLeaveEvent_Clone(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QDragLeaveEvent_Delete")]
	public static extern void QDragLeaveEvent_Delete(void* self);
}
public interface IQHelpEvent
{
	void* NativePtr { get; }
}
public struct QHelpEventPtr : IQHelpEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal, IQPoint pos, IQPoint globalPos)
	{
		return .(CQt.QHelpEvent_new((int64)typeVal, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr, (globalPos == default || globalPos.NativePtr == default) ? default : globalPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QHelpEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QHelpEvent_Clone(this.nativePtr);
	}
	
	public int32 X()
	{
		return CQt.QHelpEvent_X(this.nativePtr);
	}
	
	public int32 Y()
	{
		return CQt.QHelpEvent_Y(this.nativePtr);
	}
	
	public int32 GlobalX()
	{
		return CQt.QHelpEvent_GlobalX(this.nativePtr);
	}
	
	public int32 GlobalY()
	{
		return CQt.QHelpEvent_GlobalY(this.nativePtr);
	}
	
	public void* Pos()
	{
		return CQt.QHelpEvent_Pos(this.nativePtr);
	}
	
	public void* GlobalPos()
	{
		return CQt.QHelpEvent_GlobalPos(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QHelpEvent
{
	public QHelpEventPtr handle;
	
	public static implicit operator QHelpEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal, IQPoint pos, IQPoint globalPos)
	{
		this.handle = QHelpEventPtr.New(typeVal, pos, globalPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int32 X()
	{
		return this.handle.X();
	}
	
	public int32 Y()
	{
		return this.handle.Y();
	}
	
	public int32 GlobalX()
	{
		return this.handle.GlobalX();
	}
	
	public int32 GlobalY()
	{
		return this.handle.GlobalY();
	}
	
	public void* Pos()
	{
		return this.handle.Pos();
	}
	
	public void* GlobalPos()
	{
		return this.handle.GlobalPos();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QHelpEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QHelpEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QHelpEvent_new")]
	public static extern void* QHelpEvent_new(int64 typeVal, void* pos, void* globalPos);
	[LinkName("QHelpEvent_Clone")]
	public static extern void* QHelpEvent_Clone(void* c_this);
	[LinkName("QHelpEvent_X")]
	public static extern int32 QHelpEvent_X(void* c_this);
	[LinkName("QHelpEvent_Y")]
	public static extern int32 QHelpEvent_Y(void* c_this);
	[LinkName("QHelpEvent_GlobalX")]
	public static extern int32 QHelpEvent_GlobalX(void* c_this);
	[LinkName("QHelpEvent_GlobalY")]
	public static extern int32 QHelpEvent_GlobalY(void* c_this);
	[LinkName("QHelpEvent_Pos")]
	public static extern void* QHelpEvent_Pos(void* c_this);
	[LinkName("QHelpEvent_GlobalPos")]
	public static extern void* QHelpEvent_GlobalPos(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QHelpEvent_Delete")]
	public static extern void QHelpEvent_Delete(void* self);
}
public interface IQStatusTipEvent
{
	void* NativePtr { get; }
}
public struct QStatusTipEventPtr : IQStatusTipEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String tip)
	{
		return .(CQt.QStatusTipEvent_new(libqt_string(tip)));
	}
	
	public void Dispose()
	{
		CQt.QStatusTipEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QStatusTipEvent_Clone(this.nativePtr);
	}
	
	public libqt_string Tip()
	{
		return CQt.QStatusTipEvent_Tip(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QStatusTipEvent
{
	public QStatusTipEventPtr handle;
	
	public static implicit operator QStatusTipEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(String tip)
	{
		this.handle = QStatusTipEventPtr.New(tip);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public libqt_string Tip()
	{
		return this.handle.Tip();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QStatusTipEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QStatusTipEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QStatusTipEvent_new")]
	public static extern void* QStatusTipEvent_new(libqt_string tip);
	[LinkName("QStatusTipEvent_Clone")]
	public static extern void* QStatusTipEvent_Clone(void* c_this);
	[LinkName("QStatusTipEvent_Tip")]
	public static extern libqt_string QStatusTipEvent_Tip(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QStatusTipEvent_Delete")]
	public static extern void QStatusTipEvent_Delete(void* self);
}
public interface IQWhatsThisClickedEvent
{
	void* NativePtr { get; }
}
public struct QWhatsThisClickedEventPtr : IQWhatsThisClickedEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String href)
	{
		return .(CQt.QWhatsThisClickedEvent_new(libqt_string(href)));
	}
	
	public void Dispose()
	{
		CQt.QWhatsThisClickedEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QWhatsThisClickedEvent_Clone(this.nativePtr);
	}
	
	public libqt_string Href()
	{
		return CQt.QWhatsThisClickedEvent_Href(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QWhatsThisClickedEvent
{
	public QWhatsThisClickedEventPtr handle;
	
	public static implicit operator QWhatsThisClickedEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(String href)
	{
		this.handle = QWhatsThisClickedEventPtr.New(href);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public libqt_string Href()
	{
		return this.handle.Href();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QWhatsThisClickedEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QWhatsThisClickedEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QWhatsThisClickedEvent_new")]
	public static extern void* QWhatsThisClickedEvent_new(libqt_string href);
	[LinkName("QWhatsThisClickedEvent_Clone")]
	public static extern void* QWhatsThisClickedEvent_Clone(void* c_this);
	[LinkName("QWhatsThisClickedEvent_Href")]
	public static extern libqt_string QWhatsThisClickedEvent_Href(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QWhatsThisClickedEvent_Delete")]
	public static extern void QWhatsThisClickedEvent_Delete(void* self);
}
public interface IQActionEvent
{
	void* NativePtr { get; }
}
public struct QActionEventPtr : IQActionEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int32 typeVal, IQAction action)
	{
		return .(CQt.QActionEvent_new(typeVal, (action == default || action.NativePtr == default) ? default : action.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QActionEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QActionEvent_Clone(this.nativePtr);
	}
	
	public void* Action()
	{
		return CQt.QActionEvent_Action(this.nativePtr);
	}
	
	public void* Before()
	{
		return CQt.QActionEvent_Before(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QActionEvent
{
	public QActionEventPtr handle;
	
	public static implicit operator QActionEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int32 typeVal, IQAction action)
	{
		this.handle = QActionEventPtr.New(typeVal, action);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Action()
	{
		return this.handle.Action();
	}
	
	public void* Before()
	{
		return this.handle.Before();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QActionEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QActionEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QActionEvent_new")]
	public static extern void* QActionEvent_new(int32 typeVal, void* action);
	[LinkName("QActionEvent_new2")]
	public static extern void* QActionEvent_new2(int32 typeVal, void* action, void* before);
	[LinkName("QActionEvent_Clone")]
	public static extern void* QActionEvent_Clone(void* c_this);
	[LinkName("QActionEvent_Action")]
	public static extern void* QActionEvent_Action(void* c_this);
	[LinkName("QActionEvent_Before")]
	public static extern void* QActionEvent_Before(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QActionEvent_Delete")]
	public static extern void QActionEvent_Delete(void* self);
}
public interface IQFileOpenEvent
{
	void* NativePtr { get; }
}
public struct QFileOpenEventPtr : IQFileOpenEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(String file)
	{
		return .(CQt.QFileOpenEvent_new(libqt_string(file)));
	}
	
	public void Dispose()
	{
		CQt.QFileOpenEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QFileOpenEvent_Clone(this.nativePtr);
	}
	
	public libqt_string File()
	{
		return CQt.QFileOpenEvent_File(this.nativePtr);
	}
	
	public void Url()
	{
		CQt.QFileOpenEvent_Url(this.nativePtr);
	}
	
	public bool OpenFile(IQFile file, int64 flags)
	{
		return CQt.QFileOpenEvent_OpenFile(this.nativePtr, (file == default || file.NativePtr == default) ? default : file.NativePtr, flags);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QFileOpenEvent
{
	public QFileOpenEventPtr handle;
	
	public static implicit operator QFileOpenEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(String file)
	{
		this.handle = QFileOpenEventPtr.New(file);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public libqt_string File()
	{
		return this.handle.File();
	}
	
	public void Url()
	{
		this.handle.Url();
	}
	
	public bool OpenFile(IQFile file, int64 flags)
	{
		return this.handle.OpenFile(file, flags);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QFileOpenEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QFileOpenEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QFileOpenEvent_new")]
	public static extern void* QFileOpenEvent_new(libqt_string file);
	[LinkName("QFileOpenEvent_new2")]
	public static extern void* QFileOpenEvent_new2(void* url);
	[LinkName("QFileOpenEvent_Clone")]
	public static extern void* QFileOpenEvent_Clone(void* c_this);
	[LinkName("QFileOpenEvent_File")]
	public static extern libqt_string QFileOpenEvent_File(void* c_this);
	[LinkName("QFileOpenEvent_Url")]
	public static extern void QFileOpenEvent_Url(void* c_this);
	[LinkName("QFileOpenEvent_OpenFile")]
	public static extern bool QFileOpenEvent_OpenFile(void* c_this, void* file, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QFileOpenEvent_Delete")]
	public static extern void QFileOpenEvent_Delete(void* self);
}
public interface IQToolBarChangeEvent
{
	void* NativePtr { get; }
}
public struct QToolBarChangeEventPtr : IQToolBarChangeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(bool t)
	{
		return .(CQt.QToolBarChangeEvent_new(t));
	}
	
	public void Dispose()
	{
		CQt.QToolBarChangeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QToolBarChangeEvent_Clone(this.nativePtr);
	}
	
	public bool Toggle()
	{
		return CQt.QToolBarChangeEvent_Toggle(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QToolBarChangeEvent
{
	public QToolBarChangeEventPtr handle;
	
	public static implicit operator QToolBarChangeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(bool t)
	{
		this.handle = QToolBarChangeEventPtr.New(t);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public bool Toggle()
	{
		return this.handle.Toggle();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QToolBarChangeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QToolBarChangeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QToolBarChangeEvent_new")]
	public static extern void* QToolBarChangeEvent_new(bool t);
	[LinkName("QToolBarChangeEvent_Clone")]
	public static extern void* QToolBarChangeEvent_Clone(void* c_this);
	[LinkName("QToolBarChangeEvent_Toggle")]
	public static extern bool QToolBarChangeEvent_Toggle(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QToolBarChangeEvent_Delete")]
	public static extern void QToolBarChangeEvent_Delete(void* self);
}
public interface IQShortcutEvent
{
	void* NativePtr { get; }
}
public struct QShortcutEventPtr : IQShortcutEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQKeySequence key, int32 id)
	{
		return .(CQt.QShortcutEvent_new((key == default || key.NativePtr == default) ? default : key.NativePtr, id));
	}
	
	public void Dispose()
	{
		CQt.QShortcutEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QShortcutEvent_Clone(this.nativePtr);
	}
	
	public void* Key()
	{
		return CQt.QShortcutEvent_Key(this.nativePtr);
	}
	
	public int32 ShortcutId()
	{
		return CQt.QShortcutEvent_ShortcutId(this.nativePtr);
	}
	
	public bool IsAmbiguous()
	{
		return CQt.QShortcutEvent_IsAmbiguous(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QShortcutEvent
{
	public QShortcutEventPtr handle;
	
	public static implicit operator QShortcutEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQKeySequence key, int32 id)
	{
		this.handle = QShortcutEventPtr.New(key, id);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Key()
	{
		return this.handle.Key();
	}
	
	public int32 ShortcutId()
	{
		return this.handle.ShortcutId();
	}
	
	public bool IsAmbiguous()
	{
		return this.handle.IsAmbiguous();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QShortcutEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QShortcutEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QShortcutEvent_new")]
	public static extern void* QShortcutEvent_new(void* key, int32 id);
	[LinkName("QShortcutEvent_new2")]
	public static extern void* QShortcutEvent_new2(void* key, int32 id, bool ambiguous);
	[LinkName("QShortcutEvent_Clone")]
	public static extern void* QShortcutEvent_Clone(void* c_this);
	[LinkName("QShortcutEvent_Key")]
	public static extern void* QShortcutEvent_Key(void* c_this);
	[LinkName("QShortcutEvent_ShortcutId")]
	public static extern int32 QShortcutEvent_ShortcutId(void* c_this);
	[LinkName("QShortcutEvent_IsAmbiguous")]
	public static extern bool QShortcutEvent_IsAmbiguous(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QShortcutEvent_Delete")]
	public static extern void QShortcutEvent_Delete(void* self);
}
public interface IQWindowStateChangeEvent
{
	void* NativePtr { get; }
}
public struct QWindowStateChangeEventPtr : IQWindowStateChangeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 oldState)
	{
		return .(CQt.QWindowStateChangeEvent_new(oldState));
	}
	
	public void Dispose()
	{
		CQt.QWindowStateChangeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QWindowStateChangeEvent_Clone(this.nativePtr);
	}
	
	public int64 OldState()
	{
		return CQt.QWindowStateChangeEvent_OldState(this.nativePtr);
	}
	
	public bool IsOverride()
	{
		return CQt.QWindowStateChangeEvent_IsOverride(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QWindowStateChangeEvent
{
	public QWindowStateChangeEventPtr handle;
	
	public static implicit operator QWindowStateChangeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 oldState)
	{
		this.handle = QWindowStateChangeEventPtr.New(oldState);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 OldState()
	{
		return this.handle.OldState();
	}
	
	public bool IsOverride()
	{
		return this.handle.IsOverride();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QWindowStateChangeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QWindowStateChangeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QWindowStateChangeEvent_new")]
	public static extern void* QWindowStateChangeEvent_new(int64 oldState);
	[LinkName("QWindowStateChangeEvent_new2")]
	public static extern void* QWindowStateChangeEvent_new2(int64 oldState, bool isOverride);
	[LinkName("QWindowStateChangeEvent_Clone")]
	public static extern void* QWindowStateChangeEvent_Clone(void* c_this);
	[LinkName("QWindowStateChangeEvent_OldState")]
	public static extern int64 QWindowStateChangeEvent_OldState(void* c_this);
	[LinkName("QWindowStateChangeEvent_IsOverride")]
	public static extern bool QWindowStateChangeEvent_IsOverride(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QWindowStateChangeEvent_Delete")]
	public static extern void QWindowStateChangeEvent_Delete(void* self);
}
public interface IQTouchEvent
{
	void* NativePtr { get; }
}
public struct QTouchEventPtr : IQTouchEvent, IDisposable, IQPointerEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 eventType)
	{
		return .(CQt.QTouchEvent_new((int64)eventType));
	}
	
	public void Dispose()
	{
		CQt.QTouchEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QTouchEvent_Clone(this.nativePtr);
	}
	
	public void* Target()
	{
		return CQt.QTouchEvent_Target(this.nativePtr);
	}
	
	public int64 TouchPointStates()
	{
		return CQt.QTouchEvent_TouchPointStates(this.nativePtr);
	}
	
	public void[] TouchPoints()
	{
		return CQt.QTouchEvent_TouchPoints(this.nativePtr);
	}
	
	public bool IsBeginEvent()
	{
		return CQt.QTouchEvent_IsBeginEvent(this.nativePtr);
	}
	
	public bool IsUpdateEvent()
	{
		return CQt.QTouchEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public bool IsEndEvent()
	{
		return CQt.QTouchEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 timestamp)
	{
		CQt.QPointerEvent_SetTimestamp(this.nativePtr, timestamp);
	}
	
	public int32 PointCount()
	{
		return CQt.QPointerEvent_PointCount(this.nativePtr);
	}
	
	public void* Point(int32 i)
	{
		return CQt.QPointerEvent_Point(this.nativePtr, i);
	}
	
	public void[] Points()
	{
		return CQt.QPointerEvent_Points(this.nativePtr);
	}
	
	public void* PointById(int32 id)
	{
		return CQt.QPointerEvent_PointById(this.nativePtr, id);
	}
	
	public bool AllPointsGrabbed()
	{
		return CQt.QPointerEvent_AllPointsGrabbed(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (exclusiveGrabber == default || exclusiveGrabber.NativePtr == default) ? default : exclusiveGrabber.NativePtr);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, (point == default || point.NativePtr == default) ? default : point.NativePtr, (grabber == default || grabber.NativePtr == default) ? default : grabber.NativePtr);
	}
	
	public void* Device()
	{
		return CQt.QInputEvent_Device(this.nativePtr);
	}
	
	public int64 DeviceType()
	{
		return CQt.QInputEvent_DeviceType(this.nativePtr);
	}
	
	public int64 Modifiers()
	{
		return CQt.QInputEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QInputEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QInputEvent_Timestamp(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QTouchEvent
{
	public QTouchEventPtr handle;
	
	public static implicit operator QTouchEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 eventType)
	{
		this.handle = QTouchEventPtr.New(eventType);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Target()
	{
		return this.handle.Target();
	}
	
	public int64 TouchPointStates()
	{
		return this.handle.TouchPointStates();
	}
	
	public void[] TouchPoints()
	{
		return this.handle.TouchPoints();
	}
	
	public virtual bool IsBeginEvent()
	{
		return this.handle.IsBeginEvent();
	}
	
	public virtual bool IsUpdateEvent()
	{
		return this.handle.IsUpdateEvent();
	}
	
	public virtual bool IsEndEvent()
	{
		return this.handle.IsEndEvent();
	}
	
	public void* PointingDevice()
	{
		return this.handle.PointingDevice();
	}
	
	public int64 PointerType()
	{
		return this.handle.PointerType();
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
	{
		this.handle.SetTimestamp(timestamp);
	}
	
	public int32 PointCount()
	{
		return this.handle.PointCount();
	}
	
	public void* Point(int32 i)
	{
		return this.handle.Point(i);
	}
	
	public void[] Points()
	{
		return this.handle.Points();
	}
	
	public void* PointById(int32 id)
	{
		return this.handle.PointById(id);
	}
	
	public bool AllPointsGrabbed()
	{
		return this.handle.AllPointsGrabbed();
	}
	
	public bool AllPointsAccepted()
	{
		return this.handle.AllPointsAccepted();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public void* ExclusiveGrabber(IQEventPoint point)
	{
		return this.handle.ExclusiveGrabber(point);
	}
	
	public void SetExclusiveGrabber(IQEventPoint point, IQObject exclusiveGrabber)
	{
		this.handle.SetExclusiveGrabber(point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(IQEventPoint point)
	{
		this.handle.ClearPassiveGrabbers(point);
	}
	
	public bool AddPassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.AddPassiveGrabber(point, grabber);
	}
	
	public bool RemovePassiveGrabber(IQEventPoint point, IQObject grabber)
	{
		return this.handle.RemovePassiveGrabber(point, grabber);
	}
	
	public void* Device()
	{
		return this.handle.Device();
	}
	
	public int64 DeviceType()
	{
		return this.handle.DeviceType();
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QTouchEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QTouchEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QTouchEvent_new")]
	public static extern void* QTouchEvent_new(int64 eventType);
	[LinkName("QTouchEvent_new2")]
	public static extern void* QTouchEvent_new2(int64 eventType, void* device, int64 modifiers, int64 touchPointStates);
	[LinkName("QTouchEvent_new3")]
	public static extern void* QTouchEvent_new3(int64 eventType, void* device);
	[LinkName("QTouchEvent_new4")]
	public static extern void* QTouchEvent_new4(int64 eventType, void* device, int64 modifiers);
	[LinkName("QTouchEvent_new5")]
	public static extern void* QTouchEvent_new5(int64 eventType, void* device, int64 modifiers, void[] touchPoints);
	[LinkName("QTouchEvent_new6")]
	public static extern void* QTouchEvent_new6(int64 eventType, void* device, int64 modifiers, int64 touchPointStates, void[] touchPoints);
	[LinkName("QTouchEvent_Clone")]
	public static extern void* QTouchEvent_Clone(void* c_this);
	[LinkName("QTouchEvent_Target")]
	public static extern void* QTouchEvent_Target(void* c_this);
	[LinkName("QTouchEvent_TouchPointStates")]
	public static extern int64 QTouchEvent_TouchPointStates(void* c_this);
	[LinkName("QTouchEvent_TouchPoints")]
	public static extern void[] QTouchEvent_TouchPoints(void* c_this);
	[LinkName("QTouchEvent_IsBeginEvent")]
	public static extern bool QTouchEvent_IsBeginEvent(void* c_this);
	[LinkName("QTouchEvent_IsUpdateEvent")]
	public static extern bool QTouchEvent_IsUpdateEvent(void* c_this);
	[LinkName("QTouchEvent_IsEndEvent")]
	public static extern bool QTouchEvent_IsEndEvent(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QTouchEvent_Delete")]
	public static extern void QTouchEvent_Delete(void* self);
}
public interface IQScrollPrepareEvent
{
	void* NativePtr { get; }
}
public struct QScrollPrepareEventPtr : IQScrollPrepareEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPointF startPos)
	{
		return .(CQt.QScrollPrepareEvent_new((startPos == default || startPos.NativePtr == default) ? default : startPos.NativePtr));
	}
	
	public void Dispose()
	{
		CQt.QScrollPrepareEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QScrollPrepareEvent_Clone(this.nativePtr);
	}
	
	public void StartPos()
	{
		CQt.QScrollPrepareEvent_StartPos(this.nativePtr);
	}
	
	public void ViewportSize()
	{
		CQt.QScrollPrepareEvent_ViewportSize(this.nativePtr);
	}
	
	public void ContentPosRange()
	{
		CQt.QScrollPrepareEvent_ContentPosRange(this.nativePtr);
	}
	
	public void ContentPos()
	{
		CQt.QScrollPrepareEvent_ContentPos(this.nativePtr);
	}
	
	public void SetViewportSize(IQSizeF size)
	{
		CQt.QScrollPrepareEvent_SetViewportSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void SetContentPosRange(IQRectF rect)
	{
		CQt.QScrollPrepareEvent_SetContentPosRange(this.nativePtr, (rect == default || rect.NativePtr == default) ? default : rect.NativePtr);
	}
	
	public void SetContentPos(IQPointF pos)
	{
		CQt.QScrollPrepareEvent_SetContentPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QScrollPrepareEvent
{
	public QScrollPrepareEventPtr handle;
	
	public static implicit operator QScrollPrepareEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPointF startPos)
	{
		this.handle = QScrollPrepareEventPtr.New(startPos);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void StartPos()
	{
		this.handle.StartPos();
	}
	
	public void ViewportSize()
	{
		this.handle.ViewportSize();
	}
	
	public void ContentPosRange()
	{
		this.handle.ContentPosRange();
	}
	
	public void ContentPos()
	{
		this.handle.ContentPos();
	}
	
	public void SetViewportSize(IQSizeF size)
	{
		this.handle.SetViewportSize(size);
	}
	
	public void SetContentPosRange(IQRectF rect)
	{
		this.handle.SetContentPosRange(rect);
	}
	
	public void SetContentPos(IQPointF pos)
	{
		this.handle.SetContentPos(pos);
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QScrollPrepareEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QScrollPrepareEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QScrollPrepareEvent_new")]
	public static extern void* QScrollPrepareEvent_new(void* startPos);
	[LinkName("QScrollPrepareEvent_Clone")]
	public static extern void* QScrollPrepareEvent_Clone(void* c_this);
	[LinkName("QScrollPrepareEvent_StartPos")]
	public static extern void QScrollPrepareEvent_StartPos(void* c_this);
	[LinkName("QScrollPrepareEvent_ViewportSize")]
	public static extern void QScrollPrepareEvent_ViewportSize(void* c_this);
	[LinkName("QScrollPrepareEvent_ContentPosRange")]
	public static extern void QScrollPrepareEvent_ContentPosRange(void* c_this);
	[LinkName("QScrollPrepareEvent_ContentPos")]
	public static extern void QScrollPrepareEvent_ContentPos(void* c_this);
	[LinkName("QScrollPrepareEvent_SetViewportSize")]
	public static extern void QScrollPrepareEvent_SetViewportSize(void* c_this, void* size);
	[LinkName("QScrollPrepareEvent_SetContentPosRange")]
	public static extern void QScrollPrepareEvent_SetContentPosRange(void* c_this, void* rect);
	[LinkName("QScrollPrepareEvent_SetContentPos")]
	public static extern void QScrollPrepareEvent_SetContentPos(void* c_this, void* pos);
	/// Delete this object from C++ memory
	[LinkName("QScrollPrepareEvent_Delete")]
	public static extern void QScrollPrepareEvent_Delete(void* self);
}
public interface IQScrollEvent
{
	void* NativePtr { get; }
}
public struct QScrollEventPtr : IQScrollEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQPointF contentPos, IQPointF overshoot, int64 scrollState)
	{
		return .(CQt.QScrollEvent_new((contentPos == default || contentPos.NativePtr == default) ? default : contentPos.NativePtr, (overshoot == default || overshoot.NativePtr == default) ? default : overshoot.NativePtr, (int64)scrollState));
	}
	
	public void Dispose()
	{
		CQt.QScrollEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QScrollEvent_Clone(this.nativePtr);
	}
	
	public void ContentPos()
	{
		CQt.QScrollEvent_ContentPos(this.nativePtr);
	}
	
	public void OvershootDistance()
	{
		CQt.QScrollEvent_OvershootDistance(this.nativePtr);
	}
	
	public int64 ScrollState()
	{
		return CQt.QScrollEvent_ScrollState(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QScrollEvent
{
	public QScrollEventPtr handle;
	
	public static implicit operator QScrollEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQPointF contentPos, IQPointF overshoot, int64 scrollState)
	{
		this.handle = QScrollEventPtr.New(contentPos, overshoot, scrollState);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void ContentPos()
	{
		this.handle.ContentPos();
	}
	
	public void OvershootDistance()
	{
		this.handle.OvershootDistance();
	}
	
	public int64 ScrollState()
	{
		return this.handle.ScrollState();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QScrollEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QScrollEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QScrollEvent_new")]
	public static extern void* QScrollEvent_new(void* contentPos, void* overshoot, int64 scrollState);
	[LinkName("QScrollEvent_Clone")]
	public static extern void* QScrollEvent_Clone(void* c_this);
	[LinkName("QScrollEvent_ContentPos")]
	public static extern void QScrollEvent_ContentPos(void* c_this);
	[LinkName("QScrollEvent_OvershootDistance")]
	public static extern void QScrollEvent_OvershootDistance(void* c_this);
	[LinkName("QScrollEvent_ScrollState")]
	public static extern int64 QScrollEvent_ScrollState(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QScrollEvent_Delete")]
	public static extern void QScrollEvent_Delete(void* self);
}
public interface IQScreenOrientationChangeEvent
{
	void* NativePtr { get; }
}
public struct QScreenOrientationChangeEventPtr : IQScreenOrientationChangeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(IQScreen screen, int64 orientation)
	{
		return .(CQt.QScreenOrientationChangeEvent_new((screen == default || screen.NativePtr == default) ? default : screen.NativePtr, (int64)orientation));
	}
	
	public void Dispose()
	{
		CQt.QScreenOrientationChangeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QScreenOrientationChangeEvent_Clone(this.nativePtr);
	}
	
	public void* Screen()
	{
		return CQt.QScreenOrientationChangeEvent_Screen(this.nativePtr);
	}
	
	public int64 Orientation()
	{
		return CQt.QScreenOrientationChangeEvent_Orientation(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QScreenOrientationChangeEvent
{
	public QScreenOrientationChangeEventPtr handle;
	
	public static implicit operator QScreenOrientationChangeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(IQScreen screen, int64 orientation)
	{
		this.handle = QScreenOrientationChangeEventPtr.New(screen, orientation);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public void* Screen()
	{
		return this.handle.Screen();
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QScreenOrientationChangeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QScreenOrientationChangeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QScreenOrientationChangeEvent_new")]
	public static extern void* QScreenOrientationChangeEvent_new(void* screen, int64 orientation);
	[LinkName("QScreenOrientationChangeEvent_Clone")]
	public static extern void* QScreenOrientationChangeEvent_Clone(void* c_this);
	[LinkName("QScreenOrientationChangeEvent_Screen")]
	public static extern void* QScreenOrientationChangeEvent_Screen(void* c_this);
	[LinkName("QScreenOrientationChangeEvent_Orientation")]
	public static extern int64 QScreenOrientationChangeEvent_Orientation(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QScreenOrientationChangeEvent_Delete")]
	public static extern void QScreenOrientationChangeEvent_Delete(void* self);
}
public interface IQApplicationStateChangeEvent
{
	void* NativePtr { get; }
}
public struct QApplicationStateChangeEventPtr : IQApplicationStateChangeEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 state)
	{
		return .(CQt.QApplicationStateChangeEvent_new((int64)state));
	}
	
	public void Dispose()
	{
		CQt.QApplicationStateChangeEvent_Delete(this.nativePtr);
	}
	
	public void* Clone()
	{
		return CQt.QApplicationStateChangeEvent_Clone(this.nativePtr);
	}
	
	public int64 ApplicationState()
	{
		return CQt.QApplicationStateChangeEvent_ApplicationState(this.nativePtr);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public void SetAccepted(bool accepted)
	{
		CQt.QEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public bool IsAccepted()
	{
		return CQt.QEvent_IsAccepted(this.nativePtr);
	}
	
	public void Accept()
	{
		CQt.QEvent_Accept(this.nativePtr);
	}
	
	public void Ignore()
	{
		CQt.QEvent_Ignore(this.nativePtr);
	}
	
	public bool IsInputEvent()
	{
		return CQt.QEvent_IsInputEvent(this.nativePtr);
	}
	
	public bool IsPointerEvent()
	{
		return CQt.QEvent_IsPointerEvent(this.nativePtr);
	}
	
	public bool IsSinglePointEvent()
	{
		return CQt.QEvent_IsSinglePointEvent(this.nativePtr);
	}
	
	public static int32 RegisterEventType()
	{
		return CQt.QEvent_RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QApplicationStateChangeEvent
{
	public QApplicationStateChangeEventPtr handle;
	
	public static implicit operator QApplicationStateChangeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 state)
	{
		this.handle = QApplicationStateChangeEventPtr.New(state);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public int64 ApplicationState()
	{
		return this.handle.ApplicationState();
	}
	
	public int64 Type()
	{
		return this.handle.Type();
	}
	
	public bool Spontaneous()
	{
		return this.handle.Spontaneous();
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		this.handle.SetAccepted(accepted);
	}
	
	public bool IsAccepted()
	{
		return this.handle.IsAccepted();
	}
	
	public void Accept()
	{
		this.handle.Accept();
	}
	
	public void Ignore()
	{
		this.handle.Ignore();
	}
	
	public bool IsInputEvent()
	{
		return this.handle.IsInputEvent();
	}
	
	public bool IsPointerEvent()
	{
		return this.handle.IsPointerEvent();
	}
	
	public bool IsSinglePointEvent()
	{
		return this.handle.IsSinglePointEvent();
	}
	
	public static int32 RegisterEventType()
	{
		return QApplicationStateChangeEventPtr.RegisterEventType();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QApplicationStateChangeEventPtr.RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QApplicationStateChangeEvent_new")]
	public static extern void* QApplicationStateChangeEvent_new(int64 state);
	[LinkName("QApplicationStateChangeEvent_Clone")]
	public static extern void* QApplicationStateChangeEvent_Clone(void* c_this);
	[LinkName("QApplicationStateChangeEvent_ApplicationState")]
	public static extern int64 QApplicationStateChangeEvent_ApplicationState(void* c_this);
	/// Delete this object from C++ memory
	[LinkName("QApplicationStateChangeEvent_Delete")]
	public static extern void QApplicationStateChangeEvent_Delete(void* self);
}
public interface IQInputMethodEvent__Attribute
{
	void* NativePtr { get; }
}
public struct QInputMethodEvent__AttributePtr : IQInputMethodEvent__Attribute, IDisposable
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typ, int32 s, int32 l, IQVariant val)
	{
		return .(CQt.QInputMethodEvent__Attribute_new((int64)typ, s, l, default));
	}
	
	public void Dispose()
	{
		CQt.QInputMethodEvent__Attribute_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QInputMethodEvent__AttributePtr param1)
	{
		CQt.QInputMethodEvent__Attribute_OperatorAssign(this.nativePtr, (param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
	}
	
}
public class QInputMethodEvent__Attribute
{
	public QInputMethodEvent__AttributePtr handle;
	
	public static implicit operator QInputMethodEvent__AttributePtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typ, int32 s, int32 l, IQVariant val)
	{
		this.handle = QInputMethodEvent__AttributePtr.New(typ, s, l, default);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OperatorAssign(QInputMethodEvent__AttributePtr param1)
	{
		this.handle.OperatorAssign(param1);
	}
	
}
extension CQt
{
	[LinkName("QInputMethodEvent__Attribute_new")]
	public static extern void* QInputMethodEvent__Attribute_new(int64 typ, int32 s, int32 l, void val);
	[LinkName("QInputMethodEvent__Attribute_new2")]
	public static extern void* QInputMethodEvent__Attribute_new2(int64 typ, int32 s, int32 l);
	[LinkName("QInputMethodEvent__Attribute_new3")]
	public static extern void* QInputMethodEvent__Attribute_new3(void* param1);
	[LinkName("QInputMethodEvent__Attribute_OperatorAssign")]
	public static extern void QInputMethodEvent__Attribute_OperatorAssign(void* c_this, void* param1);
	/// Delete this object from C++ memory
	[LinkName("QInputMethodEvent__Attribute_Delete")]
	public static extern void QInputMethodEvent__Attribute_Delete(void* self);
}