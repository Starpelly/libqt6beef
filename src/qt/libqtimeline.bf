using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QTimeLine__State
{
	NotRunning = 0,
	Paused = 1,
	Running = 2,
}
[AllowDuplicates]
public enum QTimeLine__Direction
{
	Forward = 0,
	Backward = 1,
}
public class QTimeLine
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QTimeLine_new();
	}
	
	public ~this()
	{
		CQt.QTimeLine_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QTimeLine_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QTimeLine_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QTimeLine_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QTimeLine_Tr(s);
	}
	
	public int64 State()
	{
		return CQt.QTimeLine_State(this.nativePtr);
	}
	
	public int32 LoopCount()
	{
		return CQt.QTimeLine_LoopCount(this.nativePtr);
	}
	
	public void SetLoopCount(int32 count)
	{
		CQt.QTimeLine_SetLoopCount(this.nativePtr, count);
	}
	
	public int64 Direction()
	{
		return CQt.QTimeLine_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QTimeLine_SetDirection(this.nativePtr, direction);
	}
	
	public int32 Duration()
	{
		return CQt.QTimeLine_Duration(this.nativePtr);
	}
	
	public void SetDuration(int32 duration)
	{
		CQt.QTimeLine_SetDuration(this.nativePtr, duration);
	}
	
	public int32 StartFrame()
	{
		return CQt.QTimeLine_StartFrame(this.nativePtr);
	}
	
	public void SetStartFrame(int32 frame)
	{
		CQt.QTimeLine_SetStartFrame(this.nativePtr, frame);
	}
	
	public int32 EndFrame()
	{
		return CQt.QTimeLine_EndFrame(this.nativePtr);
	}
	
	public void SetEndFrame(int32 frame)
	{
		CQt.QTimeLine_SetEndFrame(this.nativePtr, frame);
	}
	
	public void SetFrameRange(int32 startFrame, int32 endFrame)
	{
		CQt.QTimeLine_SetFrameRange(this.nativePtr, startFrame, endFrame);
	}
	
	public int32 UpdateInterval()
	{
		return CQt.QTimeLine_UpdateInterval(this.nativePtr);
	}
	
	public void SetUpdateInterval(int32 interval)
	{
		CQt.QTimeLine_SetUpdateInterval(this.nativePtr, interval);
	}
	
	public void EasingCurve()
	{
		CQt.QTimeLine_EasingCurve(this.nativePtr);
	}
	
	public void SetEasingCurve(void* curve)
	{
		CQt.QTimeLine_SetEasingCurve(this.nativePtr, curve);
	}
	
	public int32 CurrentTime()
	{
		return CQt.QTimeLine_CurrentTime(this.nativePtr);
	}
	
	public int32 CurrentFrame()
	{
		return CQt.QTimeLine_CurrentFrame(this.nativePtr);
	}
	
	public double CurrentValue()
	{
		return CQt.QTimeLine_CurrentValue(this.nativePtr);
	}
	
	public int32 FrameForTime(int32 msec)
	{
		return CQt.QTimeLine_FrameForTime(this.nativePtr, msec);
	}
	
	public virtual double ValueForTime(int32 msec)
	{
		return CQt.QTimeLine_ValueForTime(this.nativePtr, msec);
	}
	
	public void Start()
	{
		CQt.QTimeLine_Start(this.nativePtr);
	}
	
	public void Resume()
	{
		CQt.QTimeLine_Resume(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QTimeLine_Stop(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QTimeLine_SetPaused(this.nativePtr, paused);
	}
	
	public void SetCurrentTime(int32 msec)
	{
		CQt.QTimeLine_SetCurrentTime(this.nativePtr, msec);
	}
	
	public void ToggleDirection()
	{
		CQt.QTimeLine_ToggleDirection(this.nativePtr);
	}
	
	public virtual void TimerEvent(void* event)
	{
		CQt.QTimeLine_TimerEvent(this.nativePtr, event);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QTimeLine_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QTimeLine_Tr3(s, c, n);
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
	
}
extension CQt
{
	[LinkName("QTimeLine_new")]
	public static extern void* QTimeLine_new();
	[LinkName("QTimeLine_new2")]
	public static extern void* QTimeLine_new2(int32 duration);
	[LinkName("QTimeLine_new3")]
	public static extern void* QTimeLine_new3(int32 duration, void* parent);
	[LinkName("QTimeLine_MetaObject")]
	public static extern void* QTimeLine_MetaObject(void* c_this);
	[LinkName("QTimeLine_Metacast")]
	public static extern void* QTimeLine_Metacast(void* c_this, char8[] param1);
	[LinkName("QTimeLine_Metacall")]
	public static extern int32 QTimeLine_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTimeLine_Tr")]
	public static extern libqt_string QTimeLine_Tr(char8[] s);
	[LinkName("QTimeLine_State")]
	public static extern int64 QTimeLine_State(void* c_this);
	[LinkName("QTimeLine_LoopCount")]
	public static extern int32 QTimeLine_LoopCount(void* c_this);
	[LinkName("QTimeLine_SetLoopCount")]
	public static extern void QTimeLine_SetLoopCount(void* c_this, int32 count);
	[LinkName("QTimeLine_Direction")]
	public static extern int64 QTimeLine_Direction(void* c_this);
	[LinkName("QTimeLine_SetDirection")]
	public static extern void QTimeLine_SetDirection(void* c_this, int64 direction);
	[LinkName("QTimeLine_Duration")]
	public static extern int32 QTimeLine_Duration(void* c_this);
	[LinkName("QTimeLine_SetDuration")]
	public static extern void QTimeLine_SetDuration(void* c_this, int32 duration);
	[LinkName("QTimeLine_StartFrame")]
	public static extern int32 QTimeLine_StartFrame(void* c_this);
	[LinkName("QTimeLine_SetStartFrame")]
	public static extern void QTimeLine_SetStartFrame(void* c_this, int32 frame);
	[LinkName("QTimeLine_EndFrame")]
	public static extern int32 QTimeLine_EndFrame(void* c_this);
	[LinkName("QTimeLine_SetEndFrame")]
	public static extern void QTimeLine_SetEndFrame(void* c_this, int32 frame);
	[LinkName("QTimeLine_SetFrameRange")]
	public static extern void QTimeLine_SetFrameRange(void* c_this, int32 startFrame, int32 endFrame);
	[LinkName("QTimeLine_UpdateInterval")]
	public static extern int32 QTimeLine_UpdateInterval(void* c_this);
	[LinkName("QTimeLine_SetUpdateInterval")]
	public static extern void QTimeLine_SetUpdateInterval(void* c_this, int32 interval);
	[LinkName("QTimeLine_EasingCurve")]
	public static extern void QTimeLine_EasingCurve(void* c_this);
	[LinkName("QTimeLine_SetEasingCurve")]
	public static extern void QTimeLine_SetEasingCurve(void* c_this, void* curve);
	[LinkName("QTimeLine_CurrentTime")]
	public static extern int32 QTimeLine_CurrentTime(void* c_this);
	[LinkName("QTimeLine_CurrentFrame")]
	public static extern int32 QTimeLine_CurrentFrame(void* c_this);
	[LinkName("QTimeLine_CurrentValue")]
	public static extern double QTimeLine_CurrentValue(void* c_this);
	[LinkName("QTimeLine_FrameForTime")]
	public static extern int32 QTimeLine_FrameForTime(void* c_this, int32 msec);
	[LinkName("QTimeLine_ValueForTime")]
	public static extern double QTimeLine_ValueForTime(void* c_this, int32 msec);
	[LinkName("QTimeLine_Start")]
	public static extern void QTimeLine_Start(void* c_this);
	[LinkName("QTimeLine_Resume")]
	public static extern void QTimeLine_Resume(void* c_this);
	[LinkName("QTimeLine_Stop")]
	public static extern void QTimeLine_Stop(void* c_this);
	[LinkName("QTimeLine_SetPaused")]
	public static extern void QTimeLine_SetPaused(void* c_this, bool paused);
	[LinkName("QTimeLine_SetCurrentTime")]
	public static extern void QTimeLine_SetCurrentTime(void* c_this, int32 msec);
	[LinkName("QTimeLine_ToggleDirection")]
	public static extern void QTimeLine_ToggleDirection(void* c_this);
	[LinkName("QTimeLine_TimerEvent")]
	public static extern void QTimeLine_TimerEvent(void* c_this, void* event);
	[LinkName("QTimeLine_Tr2")]
	public static extern libqt_string QTimeLine_Tr2(char8[] s, char8[] c);
	[LinkName("QTimeLine_Tr3")]
	public static extern libqt_string QTimeLine_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTimeLine_Delete")]
	public static extern void QTimeLine_Delete(void* self);
}