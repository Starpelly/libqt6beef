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
public interface IQGraphicsSceneEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneEventPtr : IQGraphicsSceneEvent, IDisposable, IQEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New(int64 typeVal)
	{
		return .(CQt.QGraphicsSceneEvent_new((int64)typeVal));
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneEvent_Delete(this.nativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneEvent
{
	public QGraphicsSceneEventPtr handle;
	
	public static implicit operator QGraphicsSceneEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this(int64 typeVal)
	{
		this.handle = QGraphicsSceneEventPtr.New(typeVal);
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneMouseEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneMouseEventPtr : IQGraphicsSceneMouseEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneMouseEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneMouseEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneMouseEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneMouseEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneMouseEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ButtonDownPos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownPos(this.nativePtr, (int64)button);
	}
	
	public void SetButtonDownPos(int64 button, IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownPos(this.nativePtr, (int64)button, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ButtonDownScenePos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownScenePos(this.nativePtr, (int64)button);
	}
	
	public void SetButtonDownScenePos(int64 button, IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownScenePos(this.nativePtr, (int64)button, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ButtonDownScreenPos(int64 button)
	{
		CQt.QGraphicsSceneMouseEvent_ButtonDownScreenPos(this.nativePtr, (int64)button);
	}
	
	public void SetButtonDownScreenPos(int64 button, IQPoint pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetButtonDownScreenPos(this.nativePtr, (int64)button, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastPos()
	{
		CQt.QGraphicsSceneMouseEvent_LastPos(this.nativePtr);
	}
	
	public void SetLastPos(IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastScenePos()
	{
		CQt.QGraphicsSceneMouseEvent_LastScenePos(this.nativePtr);
	}
	
	public void SetLastScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastScreenPos()
	{
		CQt.QGraphicsSceneMouseEvent_LastScreenPos(this.nativePtr);
	}
	
	public void SetLastScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneMouseEvent_SetLastScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
		CQt.QGraphicsSceneMouseEvent_SetButton(this.nativePtr, (int64)button);
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
		CQt.QGraphicsSceneMouseEvent_SetSource(this.nativePtr, (int64)source);
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
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneMouseEvent
{
	public QGraphicsSceneMouseEventPtr handle;
	
	public static implicit operator QGraphicsSceneMouseEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneMouseEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public void ButtonDownPos(int64 button)
	{
		this.handle.ButtonDownPos(button);
	}
	
	public void SetButtonDownPos(int64 button, IQPointF pos)
	{
		this.handle.SetButtonDownPos(button, pos);
	}
	
	public void ButtonDownScenePos(int64 button)
	{
		this.handle.ButtonDownScenePos(button);
	}
	
	public void SetButtonDownScenePos(int64 button, IQPointF pos)
	{
		this.handle.SetButtonDownScenePos(button, pos);
	}
	
	public void ButtonDownScreenPos(int64 button)
	{
		this.handle.ButtonDownScreenPos(button);
	}
	
	public void SetButtonDownScreenPos(int64 button, IQPoint pos)
	{
		this.handle.SetButtonDownScreenPos(button, pos);
	}
	
	public void LastPos()
	{
		this.handle.LastPos();
	}
	
	public void SetLastPos(IQPointF pos)
	{
		this.handle.SetLastPos(pos);
	}
	
	public void LastScenePos()
	{
		this.handle.LastScenePos();
	}
	
	public void SetLastScenePos(IQPointF pos)
	{
		this.handle.SetLastScenePos(pos);
	}
	
	public void LastScreenPos()
	{
		this.handle.LastScreenPos();
	}
	
	public void SetLastScreenPos(IQPoint pos)
	{
		this.handle.SetLastScreenPos(pos);
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void SetButtons(int64 buttons)
	{
		this.handle.SetButtons(buttons);
	}
	
	public int64 Button()
	{
		return this.handle.Button();
	}
	
	public void SetButton(int64 button)
	{
		this.handle.SetButton(button);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public int64 Source()
	{
		return this.handle.Source();
	}
	
	public void SetSource(int64 source)
	{
		this.handle.SetSource(source);
	}
	
	public int64 Flags()
	{
		return this.handle.Flags();
	}
	
	public void SetFlags(int64 flags)
	{
		this.handle.SetFlags(flags);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneMouseEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneMouseEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneWheelEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneWheelEventPtr : IQGraphicsSceneWheelEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneWheelEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneWheelEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneWheelEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneWheelEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneWheelEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneWheelEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
		CQt.QGraphicsSceneWheelEvent_SetOrientation(this.nativePtr, (int64)orientation);
	}
	
	public int64 Phase()
	{
		return CQt.QGraphicsSceneWheelEvent_Phase(this.nativePtr);
	}
	
	public void SetPhase(int64 scrollPhase)
	{
		CQt.QGraphicsSceneWheelEvent_SetPhase(this.nativePtr, (int64)scrollPhase);
	}
	
	public void PixelDelta()
	{
		CQt.QGraphicsSceneWheelEvent_PixelDelta(this.nativePtr);
	}
	
	public void SetPixelDelta(IQPoint delta)
	{
		CQt.QGraphicsSceneWheelEvent_SetPixelDelta(this.nativePtr, default);
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
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneWheelEvent
{
	public QGraphicsSceneWheelEventPtr handle;
	
	public static implicit operator QGraphicsSceneWheelEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneWheelEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void SetButtons(int64 buttons)
	{
		this.handle.SetButtons(buttons);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public int32 Delta()
	{
		return this.handle.Delta();
	}
	
	public void SetDelta(int32 delta)
	{
		this.handle.SetDelta(delta);
	}
	
	public int64 Orientation()
	{
		return this.handle.Orientation();
	}
	
	public void SetOrientation(int64 orientation)
	{
		this.handle.SetOrientation(orientation);
	}
	
	public int64 Phase()
	{
		return this.handle.Phase();
	}
	
	public void SetPhase(int64 scrollPhase)
	{
		this.handle.SetPhase(scrollPhase);
	}
	
	public void PixelDelta()
	{
		this.handle.PixelDelta();
	}
	
	public void SetPixelDelta(IQPoint delta)
	{
		this.handle.SetPixelDelta(default);
	}
	
	public bool IsInverted()
	{
		return this.handle.IsInverted();
	}
	
	public void SetInverted(bool inverted)
	{
		this.handle.SetInverted(inverted);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneWheelEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneWheelEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneContextMenuEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneContextMenuEventPtr : IQGraphicsSceneContextMenuEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneContextMenuEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneContextMenuEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneContextMenuEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneContextMenuEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneContextMenuEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneContextMenuEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
		CQt.QGraphicsSceneContextMenuEvent_SetReason(this.nativePtr, (int64)reason);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneContextMenuEvent
{
	public QGraphicsSceneContextMenuEventPtr handle;
	
	public static implicit operator QGraphicsSceneContextMenuEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneContextMenuEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public int64 Reason()
	{
		return this.handle.Reason();
	}
	
	public void SetReason(int64 reason)
	{
		this.handle.SetReason(reason);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneContextMenuEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneContextMenuEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneHoverEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneHoverEventPtr : IQGraphicsSceneHoverEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneHoverEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneHoverEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneHoverEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneHoverEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneHoverEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastPos()
	{
		CQt.QGraphicsSceneHoverEvent_LastPos(this.nativePtr);
	}
	
	public void SetLastPos(IQPointF pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastScenePos()
	{
		CQt.QGraphicsSceneHoverEvent_LastScenePos(this.nativePtr);
	}
	
	public void SetLastScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void LastScreenPos()
	{
		CQt.QGraphicsSceneHoverEvent_LastScreenPos(this.nativePtr);
	}
	
	public void SetLastScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneHoverEvent_SetLastScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneHoverEvent
{
	public QGraphicsSceneHoverEventPtr handle;
	
	public static implicit operator QGraphicsSceneHoverEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneHoverEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public void LastPos()
	{
		this.handle.LastPos();
	}
	
	public void SetLastPos(IQPointF pos)
	{
		this.handle.SetLastPos(pos);
	}
	
	public void LastScenePos()
	{
		this.handle.LastScenePos();
	}
	
	public void SetLastScenePos(IQPointF pos)
	{
		this.handle.SetLastScenePos(pos);
	}
	
	public void LastScreenPos()
	{
		this.handle.LastScreenPos();
	}
	
	public void SetLastScreenPos(IQPoint pos)
	{
		this.handle.SetLastScreenPos(pos);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneHoverEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneHoverEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneHelpEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneHelpEventPtr : IQGraphicsSceneHelpEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneHelpEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneHelpEvent_Delete(this.nativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneHelpEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneHelpEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneHelpEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneHelpEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneHelpEvent
{
	public QGraphicsSceneHelpEventPtr handle;
	
	public static implicit operator QGraphicsSceneHelpEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneHelpEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneHelpEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneHelpEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneDragDropEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneDragDropEventPtr : IQGraphicsSceneDragDropEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneDragDropEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneDragDropEvent_Delete(this.nativePtr);
	}
	
	public void Pos()
	{
		CQt.QGraphicsSceneDragDropEvent_Pos(this.nativePtr);
	}
	
	public void SetPos(IQPointF pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScenePos()
	{
		CQt.QGraphicsSceneDragDropEvent_ScenePos(this.nativePtr);
	}
	
	public void SetScenePos(IQPointF pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetScenePos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void ScreenPos()
	{
		CQt.QGraphicsSceneDragDropEvent_ScreenPos(this.nativePtr);
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		CQt.QGraphicsSceneDragDropEvent_SetScreenPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
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
		CQt.QGraphicsSceneDragDropEvent_SetProposedAction(this.nativePtr, (int64)action);
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
		CQt.QGraphicsSceneDragDropEvent_SetDropAction(this.nativePtr, (int64)action);
	}
	
	public void* Source()
	{
		return CQt.QGraphicsSceneDragDropEvent_Source(this.nativePtr);
	}
	
	public void SetSource(IQWidget source)
	{
		CQt.QGraphicsSceneDragDropEvent_SetSource(this.nativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr);
	}
	
	public void* MimeData()
	{
		return CQt.QGraphicsSceneDragDropEvent_MimeData(this.nativePtr);
	}
	
	public void SetMimeData(IQMimeData data)
	{
		CQt.QGraphicsSceneDragDropEvent_SetMimeData(this.nativePtr, (data == default || data.NativePtr == default) ? default : data.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneDragDropEvent
{
	public QGraphicsSceneDragDropEventPtr handle;
	
	public static implicit operator QGraphicsSceneDragDropEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneDragDropEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void Pos()
	{
		this.handle.Pos();
	}
	
	public void SetPos(IQPointF pos)
	{
		this.handle.SetPos(pos);
	}
	
	public void ScenePos()
	{
		this.handle.ScenePos();
	}
	
	public void SetScenePos(IQPointF pos)
	{
		this.handle.SetScenePos(pos);
	}
	
	public void ScreenPos()
	{
		this.handle.ScreenPos();
	}
	
	public void SetScreenPos(IQPoint pos)
	{
		this.handle.SetScreenPos(pos);
	}
	
	public int64 Buttons()
	{
		return this.handle.Buttons();
	}
	
	public void SetButtons(int64 buttons)
	{
		this.handle.SetButtons(buttons);
	}
	
	public int64 Modifiers()
	{
		return this.handle.Modifiers();
	}
	
	public void SetModifiers(int64 modifiers)
	{
		this.handle.SetModifiers(modifiers);
	}
	
	public int64 PossibleActions()
	{
		return this.handle.PossibleActions();
	}
	
	public void SetPossibleActions(int64 actions)
	{
		this.handle.SetPossibleActions(actions);
	}
	
	public int64 ProposedAction()
	{
		return this.handle.ProposedAction();
	}
	
	public void SetProposedAction(int64 action)
	{
		this.handle.SetProposedAction(action);
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
	
	public void SetSource(IQWidget source)
	{
		this.handle.SetSource(source);
	}
	
	public void* MimeData()
	{
		return this.handle.MimeData();
	}
	
	public void SetMimeData(IQMimeData data)
	{
		this.handle.SetMimeData(data);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneDragDropEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneDragDropEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneResizeEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneResizeEventPtr : IQGraphicsSceneResizeEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneResizeEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneResizeEvent_Delete(this.nativePtr);
	}
	
	public void OldSize()
	{
		CQt.QGraphicsSceneResizeEvent_OldSize(this.nativePtr);
	}
	
	public void SetOldSize(IQSizeF size)
	{
		CQt.QGraphicsSceneResizeEvent_SetOldSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void NewSize()
	{
		CQt.QGraphicsSceneResizeEvent_NewSize(this.nativePtr);
	}
	
	public void SetNewSize(IQSizeF size)
	{
		CQt.QGraphicsSceneResizeEvent_SetNewSize(this.nativePtr, (size == default || size.NativePtr == default) ? default : size.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneResizeEvent
{
	public QGraphicsSceneResizeEventPtr handle;
	
	public static implicit operator QGraphicsSceneResizeEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneResizeEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OldSize()
	{
		this.handle.OldSize();
	}
	
	public void SetOldSize(IQSizeF size)
	{
		this.handle.SetOldSize(size);
	}
	
	public void NewSize()
	{
		this.handle.NewSize();
	}
	
	public void SetNewSize(IQSizeF size)
	{
		this.handle.SetNewSize(size);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneResizeEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneResizeEventPtr.RegisterEventType1(hint);
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
public interface IQGraphicsSceneMoveEvent
{
	void* NativePtr { get; }
}
public struct QGraphicsSceneMoveEventPtr : IQGraphicsSceneMoveEvent, IDisposable, IQGraphicsSceneEvent
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QGraphicsSceneMoveEvent_new());
	}
	
	public void Dispose()
	{
		CQt.QGraphicsSceneMoveEvent_Delete(this.nativePtr);
	}
	
	public void OldPos()
	{
		CQt.QGraphicsSceneMoveEvent_OldPos(this.nativePtr);
	}
	
	public void SetOldPos(IQPointF pos)
	{
		CQt.QGraphicsSceneMoveEvent_SetOldPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void NewPos()
	{
		CQt.QGraphicsSceneMoveEvent_NewPos(this.nativePtr);
	}
	
	public void SetNewPos(IQPointF pos)
	{
		CQt.QGraphicsSceneMoveEvent_SetNewPos(this.nativePtr, (pos == default || pos.NativePtr == default) ? default : pos.NativePtr);
	}
	
	public void* Widget()
	{
		return CQt.QGraphicsSceneEvent_Widget(this.nativePtr);
	}
	
	public void SetWidget(IQWidget widget)
	{
		CQt.QGraphicsSceneEvent_SetWidget(this.nativePtr, (widget == default || widget.NativePtr == default) ? default : widget.NativePtr);
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
	
	public void* Clone()
	{
		return CQt.QEvent_Clone(this.nativePtr);
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return CQt.QEvent_RegisterEventType1(hint);
	}
	
}
public class QGraphicsSceneMoveEvent
{
	public QGraphicsSceneMoveEventPtr handle;
	
	public static implicit operator QGraphicsSceneMoveEventPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QGraphicsSceneMoveEventPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public void OldPos()
	{
		this.handle.OldPos();
	}
	
	public void SetOldPos(IQPointF pos)
	{
		this.handle.SetOldPos(pos);
	}
	
	public void NewPos()
	{
		this.handle.NewPos();
	}
	
	public void SetNewPos(IQPointF pos)
	{
		this.handle.SetNewPos(pos);
	}
	
	public void* Widget()
	{
		return this.handle.Widget();
	}
	
	public void SetWidget(IQWidget widget)
	{
		this.handle.SetWidget(widget);
	}
	
	public uint64 Timestamp()
	{
		return this.handle.Timestamp();
	}
	
	public void SetTimestamp(uint64 ts)
	{
		this.handle.SetTimestamp(ts);
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
		return QGraphicsSceneMoveEventPtr.RegisterEventType();
	}
	
	public virtual void* Clone()
	{
		return this.handle.Clone();
	}
	
	public static int32 RegisterEventType1(int32 hint)
	{
		return QGraphicsSceneMoveEventPtr.RegisterEventType1(hint);
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