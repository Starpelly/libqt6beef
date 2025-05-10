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
public class QInputEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* m_dev)
	{
		this.nativePtr = CQt.QInputEvent_new(typeVal, m_dev);
	}
	
	public ~this()
	{
		CQt.QInputEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QPointerEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* dev)
	{
		this.nativePtr = CQt.QPointerEvent_new(typeVal, dev);
	}
	
	public ~this()
	{
		CQt.QPointerEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QPointerEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QPointerEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QPointerEvent_IsEndEvent(this.nativePtr);
	}
	
	public bool AllPointsAccepted()
	{
		return CQt.QPointerEvent_AllPointsAccepted(this.nativePtr);
	}
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QSinglePointEvent
{
	protected void* nativePtr;
	
	public ~this()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QEnterEvent
{
	protected void* nativePtr;
	
	public this(void* localPos, void* scenePos, void* globalPos)
	{
		this.nativePtr = CQt.QEnterEvent_new(localPos, scenePos, globalPos);
	}
	
	public ~this()
	{
		CQt.QEnterEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QMouseEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* localPos, int64 button, int64 buttons, int64 modifiers)
	{
		this.nativePtr = CQt.QMouseEvent_new(typeVal, localPos, button, buttons, modifiers);
	}
	
	public ~this()
	{
		CQt.QMouseEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QHoverEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* scenePos, void* globalPos, void* oldPos)
	{
		this.nativePtr = CQt.QHoverEvent_new(typeVal, scenePos, globalPos, oldPos);
	}
	
	public ~this()
	{
		CQt.QHoverEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsUpdateEvent()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QWheelEvent
{
	protected void* nativePtr;
	
	public this(void* pos, void* globalPos, void pixelDelta, void angleDelta, int64 buttons, int64 modifiers, int64 phase, bool inverted)
	{
		this.nativePtr = CQt.QWheelEvent_new(pos, globalPos, pixelDelta, angleDelta, buttons, modifiers, phase, inverted);
	}
	
	public ~this()
	{
		CQt.QWheelEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QWheelEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QWheelEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
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
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QTabletEvent
{
	protected void* nativePtr;
	
	public this(int64 t, void* device, void* pos, void* globalPos, double pressure, float xTilt, float yTilt, float tangentialPressure, double rotation, float z, int64 keyState, int64 button, int64 buttons)
	{
		this.nativePtr = CQt.QTabletEvent_new(t, device, pos, globalPos, pressure, xTilt, yTilt, tangentialPressure, rotation, z, keyState, button, buttons);
	}
	
	public ~this()
	{
		CQt.QTabletEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QNativeGestureEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* dev, void* localPos, void* scenePos, void* globalPos, double value, uint64 sequenceId, uint64 intArgument)
	{
		this.nativePtr = CQt.QNativeGestureEvent_new(typeVal, dev, localPos, scenePos, globalPos, value, sequenceId, intArgument);
	}
	
	public ~this()
	{
		CQt.QNativeGestureEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QSinglePointEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QSinglePointEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
	{
		return CQt.QSinglePointEvent_IsEndEvent(this.nativePtr);
	}
	
	public void* ExclusivePointGrabber()
	{
		return CQt.QSinglePointEvent_ExclusivePointGrabber(this.nativePtr);
	}
	
	public void SetExclusivePointGrabber(void* exclusiveGrabber)
	{
		CQt.QSinglePointEvent_SetExclusivePointGrabber(this.nativePtr, exclusiveGrabber);
	}
	
	public void* PointingDevice()
	{
		return CQt.QPointerEvent_PointingDevice(this.nativePtr);
	}
	
	public int64 PointerType()
	{
		return CQt.QPointerEvent_PointerType(this.nativePtr);
	}
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QKeyEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, int32 key, int64 modifiers)
	{
		this.nativePtr = CQt.QKeyEvent_new(typeVal, key, modifiers);
	}
	
	public ~this()
	{
		CQt.QKeyEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QKeyEvent_Clone(this.nativePtr);
	}
	
	public int32 Key()
	{
		return CQt.QKeyEvent_Key(this.nativePtr);
	}
	
	public bool Matches(int64 key)
	{
		return CQt.QKeyEvent_Matches(this.nativePtr, key);
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QFocusEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal)
	{
		this.nativePtr = CQt.QFocusEvent_new(typeVal);
	}
	
	public ~this()
	{
		CQt.QFocusEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QPaintEvent
{
	protected void* nativePtr;
	
	public this(void* paintRegion)
	{
		this.nativePtr = CQt.QPaintEvent_new(paintRegion);
	}
	
	public ~this()
	{
		CQt.QPaintEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QMoveEvent
{
	protected void* nativePtr;
	
	public this(void* pos, void* oldPos)
	{
		this.nativePtr = CQt.QMoveEvent_new(pos, oldPos);
	}
	
	public ~this()
	{
		CQt.QMoveEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QExposeEvent
{
	protected void* nativePtr;
	
	public this(void* m_region)
	{
		this.nativePtr = CQt.QExposeEvent_new(m_region);
	}
	
	public ~this()
	{
		CQt.QExposeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QPlatformSurfaceEvent
{
	protected void* nativePtr;
	
	public this(int64 surfaceEventType)
	{
		this.nativePtr = CQt.QPlatformSurfaceEvent_new(surfaceEventType);
	}
	
	public ~this()
	{
		CQt.QPlatformSurfaceEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QResizeEvent
{
	protected void* nativePtr;
	
	public this(void* size, void* oldSize)
	{
		this.nativePtr = CQt.QResizeEvent_new(size, oldSize);
	}
	
	public ~this()
	{
		CQt.QResizeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QCloseEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QCloseEvent_new();
	}
	
	public ~this()
	{
		CQt.QCloseEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QIconDragEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QIconDragEvent_new();
	}
	
	public ~this()
	{
		CQt.QIconDragEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QShowEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QShowEvent_new();
	}
	
	public ~this()
	{
		CQt.QShowEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QHideEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QHideEvent_new();
	}
	
	public ~this()
	{
		CQt.QHideEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QContextMenuEvent
{
	protected void* nativePtr;
	
	public this(int64 reason, void* pos, void* globalPos)
	{
		this.nativePtr = CQt.QContextMenuEvent_new(reason, pos, globalPos);
	}
	
	public ~this()
	{
		CQt.QContextMenuEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QInputMethodEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QInputMethodEvent_new();
	}
	
	public ~this()
	{
		CQt.QInputMethodEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QInputMethodEvent_Clone(this.nativePtr);
	}
	
	public void SetCommitString(libqt_string commitString)
	{
		CQt.QInputMethodEvent_SetCommitString(this.nativePtr, commitString);
	}
	
	public QInputMethodEvent__Attribute[] Attributes()
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
	
	public void SetCommitString2(libqt_string commitString, int32 replaceFrom)
	{
		CQt.QInputMethodEvent_SetCommitString2(this.nativePtr, commitString, replaceFrom);
	}
	
	public void SetCommitString3(libqt_string commitString, int32 replaceFrom, int32 replaceLength)
	{
		CQt.QInputMethodEvent_SetCommitString3(this.nativePtr, commitString, replaceFrom, replaceLength);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public virtual void SetAccepted(bool accepted)
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
extension CQt
{
	[LinkName("QInputMethodEvent_new")]
	public static extern void* QInputMethodEvent_new();
	[LinkName("QInputMethodEvent_new2")]
	public static extern void* QInputMethodEvent_new2(libqt_string preeditText, QInputMethodEvent__Attribute[] attributes);
	[LinkName("QInputMethodEvent_Clone")]
	public static extern void* QInputMethodEvent_Clone(void* c_this);
	[LinkName("QInputMethodEvent_SetCommitString")]
	public static extern void QInputMethodEvent_SetCommitString(void* c_this, libqt_string commitString);
	[LinkName("QInputMethodEvent_Attributes")]
	public static extern QInputMethodEvent__Attribute[] QInputMethodEvent_Attributes(void* c_this);
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
public class QInputMethodQueryEvent
{
	protected void* nativePtr;
	
	public this(int64 queries)
	{
		this.nativePtr = CQt.QInputMethodQueryEvent_new(queries);
	}
	
	public ~this()
	{
		CQt.QInputMethodQueryEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
	{
		return CQt.QInputMethodQueryEvent_Clone(this.nativePtr);
	}
	
	public int64 Queries()
	{
		return CQt.QInputMethodQueryEvent_Queries(this.nativePtr);
	}
	
	public void SetValue(int64 query, void* value)
	{
		CQt.QInputMethodQueryEvent_SetValue(this.nativePtr, query, value);
	}
	
	public void Value(int64 query)
	{
		CQt.QInputMethodQueryEvent_Value(this.nativePtr, query);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public virtual void SetAccepted(bool accepted)
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
public class QDropEvent
{
	protected void* nativePtr;
	
	public this(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers)
	{
		this.nativePtr = CQt.QDropEvent_new(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		CQt.QDropEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
		CQt.QDropEvent_SetDropAction(this.nativePtr, action);
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QDragMoveEvent
{
	protected void* nativePtr;
	
	public this(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers)
	{
		this.nativePtr = CQt.QDragMoveEvent_new(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		CQt.QDragMoveEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public void AcceptWithQRect(void* r)
	{
		CQt.QDragMoveEvent_AcceptWithQRect(this.nativePtr, r);
	}
	
	public void IgnoreWithQRect(void* r)
	{
		CQt.QDragMoveEvent_IgnoreWithQRect(this.nativePtr, r);
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
		CQt.QDropEvent_SetDropAction(this.nativePtr, action);
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QDragEnterEvent
{
	protected void* nativePtr;
	
	public this(void* pos, int64 actions, void* data, int64 buttons, int64 modifiers)
	{
		this.nativePtr = CQt.QDragEnterEvent_new(pos, actions, data, buttons, modifiers);
	}
	
	public ~this()
	{
		CQt.QDragEnterEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public void AcceptWithQRect(void* r)
	{
		CQt.QDragMoveEvent_AcceptWithQRect(this.nativePtr, r);
	}
	
	public void IgnoreWithQRect(void* r)
	{
		CQt.QDragMoveEvent_IgnoreWithQRect(this.nativePtr, r);
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
		CQt.QDropEvent_SetDropAction(this.nativePtr, action);
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QDragLeaveEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QDragLeaveEvent_new();
	}
	
	public ~this()
	{
		CQt.QDragLeaveEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QHelpEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal, void* pos, void* globalPos)
	{
		this.nativePtr = CQt.QHelpEvent_new(typeVal, pos, globalPos);
	}
	
	public ~this()
	{
		CQt.QHelpEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QStatusTipEvent
{
	protected void* nativePtr;
	
	public this(libqt_string tip)
	{
		this.nativePtr = CQt.QStatusTipEvent_new(tip);
	}
	
	public ~this()
	{
		CQt.QStatusTipEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QWhatsThisClickedEvent
{
	protected void* nativePtr;
	
	public this(libqt_string href)
	{
		this.nativePtr = CQt.QWhatsThisClickedEvent_new(href);
	}
	
	public ~this()
	{
		CQt.QWhatsThisClickedEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QActionEvent
{
	protected void* nativePtr;
	
	public this(int32 typeVal, void* action)
	{
		this.nativePtr = CQt.QActionEvent_new(typeVal, action);
	}
	
	public ~this()
	{
		CQt.QActionEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QFileOpenEvent
{
	protected void* nativePtr;
	
	public this(libqt_string file)
	{
		this.nativePtr = CQt.QFileOpenEvent_new(file);
	}
	
	public ~this()
	{
		CQt.QFileOpenEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public bool OpenFile(void* file, int64 flags)
	{
		return CQt.QFileOpenEvent_OpenFile(this.nativePtr, file, flags);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public virtual void SetAccepted(bool accepted)
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
public class QToolBarChangeEvent
{
	protected void* nativePtr;
	
	public this(bool t)
	{
		this.nativePtr = CQt.QToolBarChangeEvent_new(t);
	}
	
	public ~this()
	{
		CQt.QToolBarChangeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QShortcutEvent
{
	protected void* nativePtr;
	
	public this(void* key, int32 id)
	{
		this.nativePtr = CQt.QShortcutEvent_new(key, id);
	}
	
	public ~this()
	{
		CQt.QShortcutEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QWindowStateChangeEvent
{
	protected void* nativePtr;
	
	public this(int64 oldState)
	{
		this.nativePtr = CQt.QWindowStateChangeEvent_new(oldState);
	}
	
	public ~this()
	{
		CQt.QWindowStateChangeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QTouchEvent
{
	protected void* nativePtr;
	
	public this(int64 eventType)
	{
		this.nativePtr = CQt.QTouchEvent_new(eventType);
	}
	
	public ~this()
	{
		CQt.QTouchEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual bool IsBeginEvent()
	{
		return CQt.QTouchEvent_IsBeginEvent(this.nativePtr);
	}
	
	public virtual bool IsUpdateEvent()
	{
		return CQt.QTouchEvent_IsUpdateEvent(this.nativePtr);
	}
	
	public virtual bool IsEndEvent()
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
	
	public virtual void SetTimestamp(uint64 timestamp)
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
	
	public virtual void SetAccepted(bool accepted)
	{
		CQt.QPointerEvent_SetAccepted(this.nativePtr, accepted);
	}
	
	public void* ExclusiveGrabber(void* point)
	{
		return CQt.QPointerEvent_ExclusiveGrabber(this.nativePtr, point);
	}
	
	public void SetExclusiveGrabber(void* point, void* exclusiveGrabber)
	{
		CQt.QPointerEvent_SetExclusiveGrabber(this.nativePtr, point, exclusiveGrabber);
	}
	
	public void ClearPassiveGrabbers(void* point)
	{
		CQt.QPointerEvent_ClearPassiveGrabbers(this.nativePtr, point);
	}
	
	public bool AddPassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_AddPassiveGrabber(this.nativePtr, point, grabber);
	}
	
	public bool RemovePassiveGrabber(void* point, void* grabber)
	{
		return CQt.QPointerEvent_RemovePassiveGrabber(this.nativePtr, point, grabber);
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
public class QScrollPrepareEvent
{
	protected void* nativePtr;
	
	public this(void* startPos)
	{
		this.nativePtr = CQt.QScrollPrepareEvent_new(startPos);
	}
	
	public ~this()
	{
		CQt.QScrollPrepareEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public void SetViewportSize(void* size)
	{
		CQt.QScrollPrepareEvent_SetViewportSize(this.nativePtr, size);
	}
	
	public void SetContentPosRange(void* rect)
	{
		CQt.QScrollPrepareEvent_SetContentPosRange(this.nativePtr, rect);
	}
	
	public void SetContentPos(void* pos)
	{
		CQt.QScrollPrepareEvent_SetContentPos(this.nativePtr, pos);
	}
	
	public int64 Type()
	{
		return CQt.QEvent_Type(this.nativePtr);
	}
	
	public bool Spontaneous()
	{
		return CQt.QEvent_Spontaneous(this.nativePtr);
	}
	
	public virtual void SetAccepted(bool accepted)
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
public class QScrollEvent
{
	protected void* nativePtr;
	
	public this(void* contentPos, void* overshoot, int64 scrollState)
	{
		this.nativePtr = CQt.QScrollEvent_new(contentPos, overshoot, scrollState);
	}
	
	public ~this()
	{
		CQt.QScrollEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QScreenOrientationChangeEvent
{
	protected void* nativePtr;
	
	public this(void* screen, int64 orientation)
	{
		this.nativePtr = CQt.QScreenOrientationChangeEvent_new(screen, orientation);
	}
	
	public ~this()
	{
		CQt.QScreenOrientationChangeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QApplicationStateChangeEvent
{
	protected void* nativePtr;
	
	public this(int64 state)
	{
		this.nativePtr = CQt.QApplicationStateChangeEvent_new(state);
	}
	
	public ~this()
	{
		CQt.QApplicationStateChangeEvent_Delete(this.nativePtr);
	}
	
	public virtual void* Clone()
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
	
	public virtual void SetAccepted(bool accepted)
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
public class QInputMethodEvent__Attribute
{
	protected void* nativePtr;
	
	public this(int64 typ, int32 s, int32 l, void val)
	{
		this.nativePtr = CQt.QInputMethodEvent__Attribute_new(typ, s, l, val);
	}
	
	public ~this()
	{
		CQt.QInputMethodEvent__Attribute_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(QInputMethodEvent__Attribute* param1)
	{
		CQt.QInputMethodEvent__Attribute_OperatorAssign(this.nativePtr, param1);
	}
	
}
extension CQt
{
	[LinkName("QInputMethodEvent__Attribute_new")]
	public static extern void* QInputMethodEvent__Attribute_new(int64 typ, int32 s, int32 l, void val);
	[LinkName("QInputMethodEvent__Attribute_new2")]
	public static extern void* QInputMethodEvent__Attribute_new2(int64 typ, int32 s, int32 l);
	[LinkName("QInputMethodEvent__Attribute_new3")]
	public static extern void* QInputMethodEvent__Attribute_new3(QInputMethodEvent__Attribute* param1);
	[LinkName("QInputMethodEvent__Attribute_OperatorAssign")]
	public static extern void QInputMethodEvent__Attribute_OperatorAssign(void* c_this, QInputMethodEvent__Attribute* param1);
	/// Delete this object from C++ memory
	[LinkName("QInputMethodEvent__Attribute_Delete")]
	public static extern void QInputMethodEvent__Attribute_Delete(void* self);
}