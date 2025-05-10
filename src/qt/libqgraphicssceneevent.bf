using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QGraphicsSceneContextMenuEvent__Reason
{
	Mouse = 0,
	Keyboard = 1,
	Other = 2,
}
public class QGraphicsSceneEvent
{
	protected void* nativePtr;
	
	public this(int64 typeVal)
	{
		this.nativePtr = CQt.QGraphicsSceneEvent_new(typeVal);
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneEvent_Delete(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneEvent_new")]
	public static extern void* QGraphicsSceneEvent_new(int64 typeVal);
	[LinkName("QGraphicsSceneEvent_Widget")]
	public static extern void* QGraphicsSceneEvent_Widget(void* c_this);
	[LinkName("QGraphicsSceneEvent_SetWidget")]
	public static extern void QGraphicsSceneEvent_SetWidget(void* c_this, void* widget);
	[LinkName("QGraphicsSceneEvent_Timestamp")]
	public static extern uint64 QGraphicsSceneEvent_Timestamp(void* c_this);
	[LinkName("QGraphicsSceneEvent_SetTimestamp")]
	public static extern void QGraphicsSceneEvent_SetTimestamp(void* c_this, uint64 ts);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneEvent_Delete")]
	public static extern void QGraphicsSceneEvent_Delete(void* self);
}
public class QGraphicsSceneMouseEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneMouseEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneMouseEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneMouseEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetPos(this.nativePtr, pos);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneMouseEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneMouseEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public void ButtonDownPos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownPos(this.nativePtr, button);
	}
	
	public void SetButtonDownPos(int64 button, void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownPos(this.nativePtr, button, pos);
	}
	
	public void ButtonDownScenePos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownScenePos(this.nativePtr, button);
	}
	
	public void SetButtonDownScenePos(int64 button, void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownScenePos(this.nativePtr, button, pos);
	}
	
	public void ButtonDownScreenPos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownScreenPos(this.nativePtr, button);
	}
	
	public void SetButtonDownScreenPos(int64 button, void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownScreenPos(this.nativePtr, button, pos);
	}
	
	public void LastPos()
	{
		CQt.QGraphicsSceneMouseEvent_LastPos(this.nativePtr);
	}
	
	public void SetLastPos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastPos(this.nativePtr, pos);
	}
	
	public void LastScenePos()
	{
		CQt.QGraphicsSceneMouseEvent_LastScenePos(this.nativePtr);
	}
	
	public void SetLastScenePos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastScenePos(this.nativePtr, pos);
	}
	
	public void LastScreenPos()
	{
		CQt.QGraphicsSceneMouseEvent_LastScreenPos(this.nativePtr);
	}
	
	public void SetLastScreenPos(void* pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastScreenPos(this.nativePtr, pos);
	}
	
	public int64 Buttons()
	{
		return CQt.QGraphicsSceneMouseEvent_Buttons(this.nativePtr);
	}
	
	public void SetButtons(int64 buttons)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtons(this.nativePtr, buttons);
	}
	
	public int64 Button()
	{
		return CQt.QGraphicsSceneMouseEvent_Button(this.nativePtr);
	}
	
	public void SetButton(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_SetButton(this.nativePtr, button);
	}
	
	public int64 Modifiers()
	{
		return CQt.QGraphicsSceneMouseEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QGraphicsSceneMouseEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public int64 Source()
	{
		return CQt.QGraphicsSceneMouseEvent_Source(this.nativePtr);
	}
	
	public void SetSource(int64 source)
	{
		CQt.QGraphicsSceneMouseEvent_SetSource(this.nativePtr, source);
	}
	
	public int64 Flags()
	{
		return CQt.QGraphicsSceneMouseEvent_Flags(this.nativePtr);
	}
	
	public void SetFlags(int64 flags)
	{
		CQt.QGraphicsSceneMouseEvent_SetFlags(this.nativePtr, flags);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneMouseEvent_new")]
	public static extern void* QGraphicsSceneMouseEvent_new();
	[LinkName("QGraphicsSceneMouseEvent_new2")]
	public static extern void* QGraphicsSceneMouseEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneMouseEvent_Pos")]
	public static extern void QGraphicsSceneMouseEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetPos")]
	public static extern void QGraphicsSceneMouseEvent_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_ScenePos")]
	public static extern void QGraphicsSceneMouseEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_ScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownPos")]
	public static extern void QGraphicsSceneMouseEvent_ButtonDownPos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownPos(void* c_this, int64 button, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScenePos")]
	public static extern void QGraphicsSceneMouseEvent_ButtonDownScenePos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScenePos(void* c_this, int64 button, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_ButtonDownScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_ButtonDownScreenPos(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_SetButtonDownScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetButtonDownScreenPos(void* c_this, int64 button, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastPos")]
	public static extern void QGraphicsSceneMouseEvent_LastPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScenePos")]
	public static extern void QGraphicsSceneMouseEvent_LastScenePos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_LastScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_LastScreenPos(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneMouseEvent_SetLastScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMouseEvent_Buttons")]
	public static extern int64 QGraphicsSceneMouseEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButtons")]
	public static extern void QGraphicsSceneMouseEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneMouseEvent_Button")]
	public static extern int64 QGraphicsSceneMouseEvent_Button(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetButton")]
	public static extern void QGraphicsSceneMouseEvent_SetButton(void* c_this, int64 button);
	[LinkName("QGraphicsSceneMouseEvent_Modifiers")]
	public static extern int64 QGraphicsSceneMouseEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetModifiers")]
	public static extern void QGraphicsSceneMouseEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneMouseEvent_Source")]
	public static extern int64 QGraphicsSceneMouseEvent_Source(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetSource")]
	public static extern void QGraphicsSceneMouseEvent_SetSource(void* c_this, int64 source);
	[LinkName("QGraphicsSceneMouseEvent_Flags")]
	public static extern int64 QGraphicsSceneMouseEvent_Flags(void* c_this);
	[LinkName("QGraphicsSceneMouseEvent_SetFlags")]
	public static extern void QGraphicsSceneMouseEvent_SetFlags(void* c_this, int64 flags);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneMouseEvent_Delete")]
	public static extern void QGraphicsSceneMouseEvent_Delete(void* self);
}
public class QGraphicsSceneWheelEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneWheelEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneWheelEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneWheelEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetPos(this.nativePtr, pos);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneWheelEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneWheelEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public int64 Buttons()
	{
		return CQt.QGraphicsSceneWheelEvent_Buttons(this.nativePtr);
	}
	
	public void SetButtons(int64 buttons)
	{
		CQt.QGraphicsSceneWheelEvent_SetButtons(this.nativePtr, buttons);
	}
	
	public int64 Modifiers()
	{
		return CQt.QGraphicsSceneWheelEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QGraphicsSceneWheelEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public int32 Delta()
	{
		return CQt.QGraphicsSceneWheelEvent_Delta(this.nativePtr);
	}
	
	public void SetDelta(int32 delta)
	{
		CQt.QGraphicsSceneWheelEvent_SetDelta(this.nativePtr, delta);
	}
	
	public int64 Orientation()
	{
		return CQt.QGraphicsSceneWheelEvent_Orientation(this.nativePtr);
	}
	
	public void SetOrientation(int64 orientation)
	{
		CQt.QGraphicsSceneWheelEvent_SetOrientation(this.nativePtr, orientation);
	}
	
	public int64 Phase()
	{
		return CQt.QGraphicsSceneWheelEvent_Phase(this.nativePtr);
	}
	
	public void SetPhase(int64 scrollPhase)
	{
		CQt.QGraphicsSceneWheelEvent_SetPhase(this.nativePtr, scrollPhase);
	}
	
	public void PixelDelta()
	{
		CQt.QGraphicsSceneWheelEvent_PixelDelta(this.nativePtr);
	}
	
	public void SetPixelDelta(void delta)
	{
		CQt.QGraphicsSceneWheelEvent_SetPixelDelta(this.nativePtr, delta);
	}
	
	public bool IsInverted()
	{
		return CQt.QGraphicsSceneWheelEvent_IsInverted(this.nativePtr);
	}
	
	public void SetInverted(bool inverted)
	{
		CQt.QGraphicsSceneWheelEvent_SetInverted(this.nativePtr, inverted);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneWheelEvent_new")]
	public static extern void* QGraphicsSceneWheelEvent_new();
	[LinkName("QGraphicsSceneWheelEvent_new2")]
	public static extern void* QGraphicsSceneWheelEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneWheelEvent_Pos")]
	public static extern void QGraphicsSceneWheelEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPos")]
	public static extern void QGraphicsSceneWheelEvent_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneWheelEvent_ScenePos")]
	public static extern void QGraphicsSceneWheelEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScenePos")]
	public static extern void QGraphicsSceneWheelEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneWheelEvent_ScreenPos")]
	public static extern void QGraphicsSceneWheelEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetScreenPos")]
	public static extern void QGraphicsSceneWheelEvent_SetScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneWheelEvent_Buttons")]
	public static extern int64 QGraphicsSceneWheelEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetButtons")]
	public static extern void QGraphicsSceneWheelEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneWheelEvent_Modifiers")]
	public static extern int64 QGraphicsSceneWheelEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetModifiers")]
	public static extern void QGraphicsSceneWheelEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneWheelEvent_Delta")]
	public static extern int32 QGraphicsSceneWheelEvent_Delta(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetDelta(void* c_this, int32 delta);
	[LinkName("QGraphicsSceneWheelEvent_Orientation")]
	public static extern int64 QGraphicsSceneWheelEvent_Orientation(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetOrientation")]
	public static extern void QGraphicsSceneWheelEvent_SetOrientation(void* c_this, int64 orientation);
	[LinkName("QGraphicsSceneWheelEvent_Phase")]
	public static extern int64 QGraphicsSceneWheelEvent_Phase(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPhase")]
	public static extern void QGraphicsSceneWheelEvent_SetPhase(void* c_this, int64 scrollPhase);
	[LinkName("QGraphicsSceneWheelEvent_PixelDelta")]
	public static extern void QGraphicsSceneWheelEvent_PixelDelta(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetPixelDelta")]
	public static extern void QGraphicsSceneWheelEvent_SetPixelDelta(void* c_this, void delta);
	[LinkName("QGraphicsSceneWheelEvent_IsInverted")]
	public static extern bool QGraphicsSceneWheelEvent_IsInverted(void* c_this);
	[LinkName("QGraphicsSceneWheelEvent_SetInverted")]
	public static extern void QGraphicsSceneWheelEvent_SetInverted(void* c_this, bool inverted);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneWheelEvent_Delete")]
	public static extern void QGraphicsSceneWheelEvent_Delete(void* self);
}
public class QGraphicsSceneContextMenuEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneContextMenuEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneContextMenuEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneContextMenuEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetPos(this.nativePtr, pos);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneContextMenuEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneContextMenuEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public int64 Modifiers()
	{
		return CQt.QGraphicsSceneContextMenuEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public int64 Reason()
	{
		return CQt.QGraphicsSceneContextMenuEvent_Reason(this.nativePtr);
	}
	
	public void SetReason(int64 reason)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetReason(this.nativePtr, reason);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneContextMenuEvent_new")]
	public static extern void* QGraphicsSceneContextMenuEvent_new();
	[LinkName("QGraphicsSceneContextMenuEvent_new2")]
	public static extern void* QGraphicsSceneContextMenuEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneContextMenuEvent_Pos")]
	public static extern void QGraphicsSceneContextMenuEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScenePos")]
	public static extern void QGraphicsSceneContextMenuEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScenePos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_ScreenPos")]
	public static extern void QGraphicsSceneContextMenuEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetScreenPos")]
	public static extern void QGraphicsSceneContextMenuEvent_SetScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneContextMenuEvent_Modifiers")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetModifiers")]
	public static extern void QGraphicsSceneContextMenuEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneContextMenuEvent_Reason")]
	public static extern int64 QGraphicsSceneContextMenuEvent_Reason(void* c_this);
	[LinkName("QGraphicsSceneContextMenuEvent_SetReason")]
	public static extern void QGraphicsSceneContextMenuEvent_SetReason(void* c_this, int64 reason);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneContextMenuEvent_Delete")]
	public static extern void QGraphicsSceneContextMenuEvent_Delete(void* self);
}
public class QGraphicsSceneHoverEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneHoverEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneHoverEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneHoverEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetPos(this.nativePtr, pos);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneHoverEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneHoverEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public void LastPos()
	{
		CQt.QGraphicsSceneHoverEvent_LastPos(this.nativePtr);
	}
	
	public void SetLastPos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastPos(this.nativePtr, pos);
	}
	
	public void LastScenePos()
	{
		CQt.QGraphicsSceneHoverEvent_LastScenePos(this.nativePtr);
	}
	
	public void SetLastScenePos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastScenePos(this.nativePtr, pos);
	}
	
	public void LastScreenPos()
	{
		CQt.QGraphicsSceneHoverEvent_LastScreenPos(this.nativePtr);
	}
	
	public void SetLastScreenPos(void* pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastScreenPos(this.nativePtr, pos);
	}
	
	public int64 Modifiers()
	{
		return CQt.QGraphicsSceneHoverEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QGraphicsSceneHoverEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneHoverEvent_new")]
	public static extern void* QGraphicsSceneHoverEvent_new();
	[LinkName("QGraphicsSceneHoverEvent_new2")]
	public static extern void* QGraphicsSceneHoverEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHoverEvent_Pos")]
	public static extern void QGraphicsSceneHoverEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetPos")]
	public static extern void QGraphicsSceneHoverEvent_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_ScenePos")]
	public static extern void QGraphicsSceneHoverEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_ScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastPos")]
	public static extern void QGraphicsSceneHoverEvent_LastPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScenePos")]
	public static extern void QGraphicsSceneHoverEvent_LastScenePos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScenePos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_LastScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_LastScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetLastScreenPos")]
	public static extern void QGraphicsSceneHoverEvent_SetLastScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHoverEvent_Modifiers")]
	public static extern int64 QGraphicsSceneHoverEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneHoverEvent_SetModifiers")]
	public static extern void QGraphicsSceneHoverEvent_SetModifiers(void* c_this, int64 modifiers);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneHoverEvent_Delete")]
	public static extern void QGraphicsSceneHoverEvent_Delete(void* self);
}
public class QGraphicsSceneHelpEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneHelpEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneHelpEvent_Delete(this.nativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneHelpEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneHelpEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneHelpEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneHelpEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneHelpEvent_new")]
	public static extern void* QGraphicsSceneHelpEvent_new();
	[LinkName("QGraphicsSceneHelpEvent_new2")]
	public static extern void* QGraphicsSceneHelpEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneHelpEvent_ScenePos")]
	public static extern void QGraphicsSceneHelpEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScenePos")]
	public static extern void QGraphicsSceneHelpEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneHelpEvent_ScreenPos")]
	public static extern void QGraphicsSceneHelpEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneHelpEvent_SetScreenPos")]
	public static extern void QGraphicsSceneHelpEvent_SetScreenPos(void* c_this, void* pos);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneHelpEvent_Delete")]
	public static extern void QGraphicsSceneHelpEvent_Delete(void* self);
}
public class QGraphicsSceneDragDropEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneDragDropEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneDragDropEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneDragDropEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(void* pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetPos(this.nativePtr, pos);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneDragDropEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(void* pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetScenePos(this.nativePtr, pos);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneDragDropEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(void* pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetScreenPos(this.nativePtr, pos);
	}
	
	public int64 Buttons()
	{
		return CQt.QGraphicsSceneDragDropEvent_Buttons(this.nativePtr);
	}
	
	public void SetButtons(int64 buttons)
	{
		CQt.QGraphicsSceneDragDropEvent_SetButtons(this.nativePtr, buttons);
	}
	
	public int64 Modifiers()
	{
		return CQt.QGraphicsSceneDragDropEvent_Modifiers(this.nativePtr);
	}
	
	public void SetModifiers(int64 modifiers)
	{
		CQt.QGraphicsSceneDragDropEvent_SetModifiers(this.nativePtr, modifiers);
	}
	
	public int64 PossibleActions()
	{
		return CQt.QGraphicsSceneDragDropEvent_PossibleActions(this.nativePtr);
	}
	
	public void SetPossibleActions(int64 actions)
	{
		CQt.QGraphicsSceneDragDropEvent_SetPossibleActions(this.nativePtr, actions);
	}
	
	public int64 ProposedAction()
	{
		return CQt.QGraphicsSceneDragDropEvent_ProposedAction(this.nativePtr);
	}
	
	public void SetProposedAction(int64 action)
	{
		CQt.QGraphicsSceneDragDropEvent_SetProposedAction(this.nativePtr, action);
	}
	
	public void AcceptProposedAction()
	{
		CQt.QGraphicsSceneDragDropEvent_AcceptProposedAction(this.nativePtr);
	}
	
	public int64 DropAction()
	{
		return CQt.QGraphicsSceneDragDropEvent_DropAction(this.nativePtr);
	}
	
	public void SetDropAction(int64 action)
	{
		CQt.QGraphicsSceneDragDropEvent_SetDropAction(this.nativePtr, action);
	}
	
	public void* Source()
	{
		return CQt.QGraphicsSceneDragDropEvent_Source(this.nativePtr);
	}
	
	public void SetSource(void* source)
	{
		CQt.QGraphicsSceneDragDropEvent_SetSource(this.nativePtr, source);
	}
	
	public void* MimeData()
	{
		return CQt.QGraphicsSceneDragDropEvent_MimeData(this.nativePtr);
	}
	
	public void SetMimeData(void* data)
	{
		CQt.QGraphicsSceneDragDropEvent_SetMimeData(this.nativePtr, data);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneDragDropEvent_new")]
	public static extern void* QGraphicsSceneDragDropEvent_new();
	[LinkName("QGraphicsSceneDragDropEvent_new2")]
	public static extern void* QGraphicsSceneDragDropEvent_new2(int64 typeVal);
	[LinkName("QGraphicsSceneDragDropEvent_Pos")]
	public static extern void QGraphicsSceneDragDropEvent_Pos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScenePos")]
	public static extern void QGraphicsSceneDragDropEvent_ScenePos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScenePos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScenePos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneDragDropEvent_ScreenPos")]
	public static extern void QGraphicsSceneDragDropEvent_ScreenPos(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetScreenPos")]
	public static extern void QGraphicsSceneDragDropEvent_SetScreenPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneDragDropEvent_Buttons")]
	public static extern int64 QGraphicsSceneDragDropEvent_Buttons(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetButtons")]
	public static extern void QGraphicsSceneDragDropEvent_SetButtons(void* c_this, int64 buttons);
	[LinkName("QGraphicsSceneDragDropEvent_Modifiers")]
	public static extern int64 QGraphicsSceneDragDropEvent_Modifiers(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetModifiers")]
	public static extern void QGraphicsSceneDragDropEvent_SetModifiers(void* c_this, int64 modifiers);
	[LinkName("QGraphicsSceneDragDropEvent_PossibleActions")]
	public static extern int64 QGraphicsSceneDragDropEvent_PossibleActions(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetPossibleActions")]
	public static extern void QGraphicsSceneDragDropEvent_SetPossibleActions(void* c_this, int64 actions);
	[LinkName("QGraphicsSceneDragDropEvent_ProposedAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_ProposedAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetProposedAction(void* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_AcceptProposedAction")]
	public static extern void QGraphicsSceneDragDropEvent_AcceptProposedAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_DropAction")]
	public static extern int64 QGraphicsSceneDragDropEvent_DropAction(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetDropAction")]
	public static extern void QGraphicsSceneDragDropEvent_SetDropAction(void* c_this, int64 action);
	[LinkName("QGraphicsSceneDragDropEvent_Source")]
	public static extern void* QGraphicsSceneDragDropEvent_Source(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetSource")]
	public static extern void QGraphicsSceneDragDropEvent_SetSource(void* c_this, void* source);
	[LinkName("QGraphicsSceneDragDropEvent_MimeData")]
	public static extern void* QGraphicsSceneDragDropEvent_MimeData(void* c_this);
	[LinkName("QGraphicsSceneDragDropEvent_SetMimeData")]
	public static extern void QGraphicsSceneDragDropEvent_SetMimeData(void* c_this, void* data);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneDragDropEvent_Delete")]
	public static extern void QGraphicsSceneDragDropEvent_Delete(void* self);
}
public class QGraphicsSceneResizeEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneResizeEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneResizeEvent_Delete(this.nativePtr);
	}
	
	public void OldSize()
	{
		CQt.QGraphicsSceneResizeEvent_OldSize(this.nativePtr);
	}
	
	public void SetOldSize(void* size)
	{
		CQt.QGraphicsSceneResizeEvent_SetOldSize(this.nativePtr, size);
	}
	
	public void NewSize()
	{
		CQt.QGraphicsSceneResizeEvent_NewSize(this.nativePtr);
	}
	
	public void SetNewSize(void* size)
	{
		CQt.QGraphicsSceneResizeEvent_SetNewSize(this.nativePtr, size);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneResizeEvent_new")]
	public static extern void* QGraphicsSceneResizeEvent_new();
	[LinkName("QGraphicsSceneResizeEvent_OldSize")]
	public static extern void QGraphicsSceneResizeEvent_OldSize(void* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetOldSize")]
	public static extern void QGraphicsSceneResizeEvent_SetOldSize(void* c_this, void* size);
	[LinkName("QGraphicsSceneResizeEvent_NewSize")]
	public static extern void QGraphicsSceneResizeEvent_NewSize(void* c_this);
	[LinkName("QGraphicsSceneResizeEvent_SetNewSize")]
	public static extern void QGraphicsSceneResizeEvent_SetNewSize(void* c_this, void* size);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneResizeEvent_Delete")]
	public static extern void QGraphicsSceneResizeEvent_Delete(void* self);
}
public class QGraphicsSceneMoveEvent
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QGraphicsSceneMoveEvent_new();
	}
	
	public ~this()
	{
		CQt.QGraphicsSceneMoveEvent_Delete(this.nativePtr);
	}
	
	public void OldPos()
	{
		CQt.QGraphicsSceneMoveEvent_OldPos(this.nativePtr);
	}
	
	public void SetOldPos(void* pos)
	{
		CQt.QGraphicsSceneMoveEvent_SetOldPos(this.nativePtr, pos);
	}
	
	public void NewPos()
	{
		CQt.QGraphicsSceneMoveEvent_NewPos(this.nativePtr);
	}
	
	public void SetNewPos(void* pos)
	{
		CQt.QGraphicsSceneMoveEvent_SetNewPos(this.nativePtr, pos);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(void* widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, widget);
	}
	
	public uint64 Timestamp()
	{
		return CQt.QGraphicsSceneEvent_Timestamp(this.nativePtr);
	}
	
	public void SetTimestamp(uint64 ts)
	{
		CQt.QGraphicsSceneEvent_SetTimestamp(this.nativePtr, ts);
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
	
	public virtual void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
extension CQt
{
	[LinkName("QGraphicsSceneMoveEvent_new")]
	public static extern void* QGraphicsSceneMoveEvent_new();
	[LinkName("QGraphicsSceneMoveEvent_OldPos")]
	public static extern void QGraphicsSceneMoveEvent_OldPos(void* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetOldPos")]
	public static extern void QGraphicsSceneMoveEvent_SetOldPos(void* c_this, void* pos);
	[LinkName("QGraphicsSceneMoveEvent_NewPos")]
	public static extern void QGraphicsSceneMoveEvent_NewPos(void* c_this);
	[LinkName("QGraphicsSceneMoveEvent_SetNewPos")]
	public static extern void QGraphicsSceneMoveEvent_SetNewPos(void* c_this, void* pos);
	/// Delete this object from C++ memory
	[LinkName("QGraphicsSceneMoveEvent_Delete")]
	public static extern void QGraphicsSceneMoveEvent_Delete(void* self);
}