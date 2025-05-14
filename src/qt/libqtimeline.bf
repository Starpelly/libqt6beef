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
public interface IQTimeLine
{
	void* NativePtr { get; }
}
public struct QTimeLinePtr : IQTimeLine, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QTimeLine_new());
	}
	
	public void Dispose()
	{
		CQt.QTimeLine_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QTimeLine_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QTimeLine_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QTimeLine_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
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
		CQt.QTimeLine_SetDirection(this.nativePtr, (int64)direction);
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
	
	public void SetEasingCurve(IQEasingCurve curve)
	{
		CQt.QTimeLine_SetEasingCurve(this.nativePtr, (curve == default || curve.NativePtr == default) ? default : curve.NativePtr);
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
	
	public double ValueForTime(int32 msec)
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
	
	public void TimerEvent(IQTimerEvent event)
	{
		CQt.QTimeLine_TimerEvent(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QTimeLine_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QTimeLine_Tr3(s, c, n);
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
public class QTimeLine
{
	public QTimeLinePtr handle;
	
	public static implicit operator QTimeLinePtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QTimeLinePtr.New();
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
		return QTimeLinePtr.Tr(s);
	}
	
	public int64 State()
	{
		return this.handle.State();
	}
	
	public int32 LoopCount()
	{
		return this.handle.LoopCount();
	}
	
	public void SetLoopCount(int32 count)
	{
		this.handle.SetLoopCount(count);
	}
	
	public int64 Direction()
	{
		return this.handle.Direction();
	}
	
	public void SetDirection(int64 direction)
	{
		this.handle.SetDirection(direction);
	}
	
	public int32 Duration()
	{
		return this.handle.Duration();
	}
	
	public void SetDuration(int32 duration)
	{
		this.handle.SetDuration(duration);
	}
	
	public int32 StartFrame()
	{
		return this.handle.StartFrame();
	}
	
	public void SetStartFrame(int32 frame)
	{
		this.handle.SetStartFrame(frame);
	}
	
	public int32 EndFrame()
	{
		return this.handle.EndFrame();
	}
	
	public void SetEndFrame(int32 frame)
	{
		this.handle.SetEndFrame(frame);
	}
	
	public void SetFrameRange(int32 startFrame, int32 endFrame)
	{
		this.handle.SetFrameRange(startFrame, endFrame);
	}
	
	public int32 UpdateInterval()
	{
		return this.handle.UpdateInterval();
	}
	
	public void SetUpdateInterval(int32 interval)
	{
		this.handle.SetUpdateInterval(interval);
	}
	
	public void EasingCurve()
	{
		this.handle.EasingCurve();
	}
	
	public void SetEasingCurve(IQEasingCurve curve)
	{
		this.handle.SetEasingCurve(curve);
	}
	
	public int32 CurrentTime()
	{
		return this.handle.CurrentTime();
	}
	
	public int32 CurrentFrame()
	{
		return this.handle.CurrentFrame();
	}
	
	public double CurrentValue()
	{
		return this.handle.CurrentValue();
	}
	
	public int32 FrameForTime(int32 msec)
	{
		return this.handle.FrameForTime(msec);
	}
	
	public virtual double ValueForTime(int32 msec)
	{
		return this.handle.ValueForTime(msec);
	}
	
	public void Start()
	{
		this.handle.Start();
	}
	
	public void Resume()
	{
		this.handle.Resume();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void SetPaused(bool paused)
	{
		this.handle.SetPaused(paused);
	}
	
	public void SetCurrentTime(int32 msec)
	{
		this.handle.SetCurrentTime(msec);
	}
	
	public void ToggleDirection()
	{
		this.handle.ToggleDirection();
	}
	
	public virtual void TimerEvent(IQTimerEvent event)
	{
		this.handle.TimerEvent(event);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QTimeLinePtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QTimeLinePtr.Tr3(s, c, n);
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
		QTimeLinePtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QTimeLinePtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QTimeLinePtr.DisconnectWithQMetaObjectConnection(param1);
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
		QTimeLinePtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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
	public static extern void* QTimeLine_Metacast(void* c_this, char8* param1);
	[LinkName("QTimeLine_Metacall")]
	public static extern int32 QTimeLine_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QTimeLine_Tr")]
	public static extern libqt_string QTimeLine_Tr(char8* s);
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
	public static extern libqt_string QTimeLine_Tr2(char8* s, char8* c);
	[LinkName("QTimeLine_Tr3")]
	public static extern libqt_string QTimeLine_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QTimeLine_Delete")]
	public static extern void QTimeLine_Delete(void* self);
}