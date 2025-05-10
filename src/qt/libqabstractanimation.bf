using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAbstractAnimation__Direction
{
	Forward = 0,
	Backward = 1,
}
[AllowDuplicates]
public enum QAbstractAnimation__State
{
	Stopped = 0,
	Paused = 1,
	Running = 2,
}
[AllowDuplicates]
public enum QAbstractAnimation__DeletionPolicy
{
	KeepWhenStopped = 0,
	DeleteWhenStopped = 1,
}
public class QAbstractAnimation
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAbstractAnimation_new();
	}
	
	public ~this()
	{
		CQt.QAbstractAnimation_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAbstractAnimation_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAbstractAnimation_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAbstractAnimation_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAbstractAnimation_Tr(s);
	}
	
	public int64 State()
	{
		return CQt.QAbstractAnimation_State(this.nativePtr);
	}
	
	public void* Group()
	{
		return CQt.QAbstractAnimation_Group(this.nativePtr);
	}
	
	public int64 Direction()
	{
		return CQt.QAbstractAnimation_Direction(this.nativePtr);
	}
	
	public void SetDirection(int64 direction)
	{
		CQt.QAbstractAnimation_SetDirection(this.nativePtr, direction);
	}
	
	public int32 CurrentTime()
	{
		return CQt.QAbstractAnimation_CurrentTime(this.nativePtr);
	}
	
	public int32 CurrentLoopTime()
	{
		return CQt.QAbstractAnimation_CurrentLoopTime(this.nativePtr);
	}
	
	public int32 LoopCount()
	{
		return CQt.QAbstractAnimation_LoopCount(this.nativePtr);
	}
	
	public void SetLoopCount(int32 loopCount)
	{
		CQt.QAbstractAnimation_SetLoopCount(this.nativePtr, loopCount);
	}
	
	public int32 CurrentLoop()
	{
		return CQt.QAbstractAnimation_CurrentLoop(this.nativePtr);
	}
	
	public virtual int32 Duration()
	{
		return CQt.QAbstractAnimation_Duration(this.nativePtr);
	}
	
	public int32 TotalDuration()
	{
		return CQt.QAbstractAnimation_TotalDuration(this.nativePtr);
	}
	
	public void Start()
	{
		CQt.QAbstractAnimation_Start(this.nativePtr);
	}
	
	public void Pause()
	{
		CQt.QAbstractAnimation_Pause(this.nativePtr);
	}
	
	public void Resume()
	{
		CQt.QAbstractAnimation_Resume(this.nativePtr);
	}
	
	public void SetPaused(bool paused)
	{
		CQt.QAbstractAnimation_SetPaused(this.nativePtr, paused);
	}
	
	public void Stop()
	{
		CQt.QAbstractAnimation_Stop(this.nativePtr);
	}
	
	public void SetCurrentTime(int32 msecs)
	{
		CQt.QAbstractAnimation_SetCurrentTime(this.nativePtr, msecs);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QAbstractAnimation_Event(this.nativePtr, event);
	}
	
	public virtual void UpdateCurrentTime(int32 currentTime)
	{
		CQt.QAbstractAnimation_UpdateCurrentTime(this.nativePtr, currentTime);
	}
	
	public virtual void UpdateState(int64 newState, int64 oldState)
	{
		CQt.QAbstractAnimation_UpdateState(this.nativePtr, newState, oldState);
	}
	
	public virtual void UpdateDirection(int64 direction)
	{
		CQt.QAbstractAnimation_UpdateDirection(this.nativePtr, direction);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAbstractAnimation_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAbstractAnimation_Tr3(s, c, n);
	}
	
	public void Start1(int64 policy)
	{
		CQt.QAbstractAnimation_Start1(this.nativePtr, policy);
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
	[LinkName("QAbstractAnimation_new")]
	public static extern void* QAbstractAnimation_new();
	[LinkName("QAbstractAnimation_new2")]
	public static extern void* QAbstractAnimation_new2(void* parent);
	[LinkName("QAbstractAnimation_MetaObject")]
	public static extern void* QAbstractAnimation_MetaObject(void* c_this);
	[LinkName("QAbstractAnimation_Metacast")]
	public static extern void* QAbstractAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractAnimation_Metacall")]
	public static extern int32 QAbstractAnimation_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractAnimation_Tr")]
	public static extern libqt_string QAbstractAnimation_Tr(char8[] s);
	[LinkName("QAbstractAnimation_State")]
	public static extern int64 QAbstractAnimation_State(void* c_this);
	[LinkName("QAbstractAnimation_Group")]
	public static extern void* QAbstractAnimation_Group(void* c_this);
	[LinkName("QAbstractAnimation_Direction")]
	public static extern int64 QAbstractAnimation_Direction(void* c_this);
	[LinkName("QAbstractAnimation_SetDirection")]
	public static extern void QAbstractAnimation_SetDirection(void* c_this, int64 direction);
	[LinkName("QAbstractAnimation_CurrentTime")]
	public static extern int32 QAbstractAnimation_CurrentTime(void* c_this);
	[LinkName("QAbstractAnimation_CurrentLoopTime")]
	public static extern int32 QAbstractAnimation_CurrentLoopTime(void* c_this);
	[LinkName("QAbstractAnimation_LoopCount")]
	public static extern int32 QAbstractAnimation_LoopCount(void* c_this);
	[LinkName("QAbstractAnimation_SetLoopCount")]
	public static extern void QAbstractAnimation_SetLoopCount(void* c_this, int32 loopCount);
	[LinkName("QAbstractAnimation_CurrentLoop")]
	public static extern int32 QAbstractAnimation_CurrentLoop(void* c_this);
	[LinkName("QAbstractAnimation_Duration")]
	public static extern int32 QAbstractAnimation_Duration(void* c_this);
	[LinkName("QAbstractAnimation_TotalDuration")]
	public static extern int32 QAbstractAnimation_TotalDuration(void* c_this);
	[LinkName("QAbstractAnimation_Connect_Finished")]
	public static extern void QAbstractAnimation_Connect_Finished(void* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_StateChanged")]
	public static extern void QAbstractAnimation_Connect_StateChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_CurrentLoopChanged")]
	public static extern void QAbstractAnimation_Connect_CurrentLoopChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_DirectionChanged")]
	public static extern void QAbstractAnimation_Connect_DirectionChanged(void* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Start")]
	public static extern void QAbstractAnimation_Start(void* c_this);
	[LinkName("QAbstractAnimation_Pause")]
	public static extern void QAbstractAnimation_Pause(void* c_this);
	[LinkName("QAbstractAnimation_Resume")]
	public static extern void QAbstractAnimation_Resume(void* c_this);
	[LinkName("QAbstractAnimation_SetPaused")]
	public static extern void QAbstractAnimation_SetPaused(void* c_this, bool paused);
	[LinkName("QAbstractAnimation_Stop")]
	public static extern void QAbstractAnimation_Stop(void* c_this);
	[LinkName("QAbstractAnimation_SetCurrentTime")]
	public static extern void QAbstractAnimation_SetCurrentTime(void* c_this, int32 msecs);
	[LinkName("QAbstractAnimation_Event")]
	public static extern bool QAbstractAnimation_Event(void* c_this, void* event);
	[LinkName("QAbstractAnimation_UpdateCurrentTime")]
	public static extern void QAbstractAnimation_UpdateCurrentTime(void* c_this, int32 currentTime);
	[LinkName("QAbstractAnimation_UpdateState")]
	public static extern void QAbstractAnimation_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QAbstractAnimation_UpdateDirection")]
	public static extern void QAbstractAnimation_UpdateDirection(void* c_this, int64 direction);
	[LinkName("QAbstractAnimation_Tr2")]
	public static extern libqt_string QAbstractAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractAnimation_Tr3")]
	public static extern libqt_string QAbstractAnimation_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractAnimation_Start1")]
	public static extern void QAbstractAnimation_Start1(void* c_this, int64 policy);
	/// Delete this object from C++ memory
	[LinkName("QAbstractAnimation_Delete")]
	public static extern void QAbstractAnimation_Delete(void* self);
}
public class QAnimationDriver
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAnimationDriver_new();
	}
	
	public ~this()
	{
		CQt.QAnimationDriver_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QAnimationDriver_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QAnimationDriver_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QAnimationDriver_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
	{
		return CQt.QAnimationDriver_Tr(s);
	}
	
	public virtual void Advance()
	{
		CQt.QAnimationDriver_Advance(this.nativePtr);
	}
	
	public void Install()
	{
		CQt.QAnimationDriver_Install(this.nativePtr);
	}
	
	public void Uninstall()
	{
		CQt.QAnimationDriver_Uninstall(this.nativePtr);
	}
	
	public bool IsRunning()
	{
		return CQt.QAnimationDriver_IsRunning(this.nativePtr);
	}
	
	public virtual int64 Elapsed()
	{
		return CQt.QAnimationDriver_Elapsed(this.nativePtr);
	}
	
	public void AdvanceAnimation()
	{
		CQt.QAnimationDriver_AdvanceAnimation(this.nativePtr);
	}
	
	public virtual void Start()
	{
		CQt.QAnimationDriver_Start(this.nativePtr);
	}
	
	public virtual void Stop()
	{
		CQt.QAnimationDriver_Stop(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QAnimationDriver_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QAnimationDriver_Tr3(s, c, n);
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
	[LinkName("QAnimationDriver_new")]
	public static extern void* QAnimationDriver_new();
	[LinkName("QAnimationDriver_new2")]
	public static extern void* QAnimationDriver_new2(void* parent);
	[LinkName("QAnimationDriver_MetaObject")]
	public static extern void* QAnimationDriver_MetaObject(void* c_this);
	[LinkName("QAnimationDriver_Metacast")]
	public static extern void* QAnimationDriver_Metacast(void* c_this, char8[] param1);
	[LinkName("QAnimationDriver_Metacall")]
	public static extern int32 QAnimationDriver_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAnimationDriver_Tr")]
	public static extern libqt_string QAnimationDriver_Tr(char8[] s);
	[LinkName("QAnimationDriver_Advance")]
	public static extern void QAnimationDriver_Advance(void* c_this);
	[LinkName("QAnimationDriver_Install")]
	public static extern void QAnimationDriver_Install(void* c_this);
	[LinkName("QAnimationDriver_Uninstall")]
	public static extern void QAnimationDriver_Uninstall(void* c_this);
	[LinkName("QAnimationDriver_IsRunning")]
	public static extern bool QAnimationDriver_IsRunning(void* c_this);
	[LinkName("QAnimationDriver_Elapsed")]
	public static extern int64 QAnimationDriver_Elapsed(void* c_this);
	[LinkName("QAnimationDriver_Connect_Started")]
	public static extern void QAnimationDriver_Connect_Started(void* c_this, c_intptr slot);
	[LinkName("QAnimationDriver_Connect_Stopped")]
	public static extern void QAnimationDriver_Connect_Stopped(void* c_this, c_intptr slot);
	[LinkName("QAnimationDriver_AdvanceAnimation")]
	public static extern void QAnimationDriver_AdvanceAnimation(void* c_this);
	[LinkName("QAnimationDriver_Start")]
	public static extern void QAnimationDriver_Start(void* c_this);
	[LinkName("QAnimationDriver_Stop")]
	public static extern void QAnimationDriver_Stop(void* c_this);
	[LinkName("QAnimationDriver_Tr2")]
	public static extern libqt_string QAnimationDriver_Tr2(char8[] s, char8[] c);
	[LinkName("QAnimationDriver_Tr3")]
	public static extern libqt_string QAnimationDriver_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QAnimationDriver_Delete")]
	public static extern void QAnimationDriver_Delete(void* self);
}