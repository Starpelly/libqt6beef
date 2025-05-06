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
public struct QAbstractAnimation : QObject
{
	[LinkName("QAbstractAnimation_new")]
	public static extern QAbstractAnimation* QAbstractAnimation_new();
	[LinkName("QAbstractAnimation_new2")]
	public static extern QAbstractAnimation* QAbstractAnimation_new2(QObject* parent);
	[LinkName("QAbstractAnimation_MetaObject")]
	public static extern QMetaObject* QAbstractAnimation_MetaObject(Self* c_this);
	[LinkName("QAbstractAnimation_Metacast")]
	public static extern void* QAbstractAnimation_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAbstractAnimation_Metacall")]
	public static extern int32 QAbstractAnimation_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAbstractAnimation_Tr")]
	public static extern libqt_string QAbstractAnimation_Tr(char8[] s);
	[LinkName("QAbstractAnimation_State")]
	public static extern int64 QAbstractAnimation_State(Self* c_this);
	[LinkName("QAbstractAnimation_Group")]
	public static extern QAnimationGroup* QAbstractAnimation_Group(Self* c_this);
	[LinkName("QAbstractAnimation_Direction")]
	public static extern int64 QAbstractAnimation_Direction(Self* c_this);
	[LinkName("QAbstractAnimation_SetDirection")]
	public static extern void QAbstractAnimation_SetDirection(Self* c_this, int64 direction);
	[LinkName("QAbstractAnimation_CurrentTime")]
	public static extern int32 QAbstractAnimation_CurrentTime(Self* c_this);
	[LinkName("QAbstractAnimation_CurrentLoopTime")]
	public static extern int32 QAbstractAnimation_CurrentLoopTime(Self* c_this);
	[LinkName("QAbstractAnimation_LoopCount")]
	public static extern int32 QAbstractAnimation_LoopCount(Self* c_this);
	[LinkName("QAbstractAnimation_SetLoopCount")]
	public static extern void QAbstractAnimation_SetLoopCount(Self* c_this, int32 loopCount);
	[LinkName("QAbstractAnimation_CurrentLoop")]
	public static extern int32 QAbstractAnimation_CurrentLoop(Self* c_this);
	[LinkName("QAbstractAnimation_Duration")]
	public static extern int32 QAbstractAnimation_Duration(Self* c_this);
	[LinkName("QAbstractAnimation_TotalDuration")]
	public static extern int32 QAbstractAnimation_TotalDuration(Self* c_this);
	[LinkName("QAbstractAnimation_Connect_Finished")]
	public static extern void QAbstractAnimation_Connect_Finished(Self* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_StateChanged")]
	public static extern void QAbstractAnimation_Connect_StateChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_CurrentLoopChanged")]
	public static extern void QAbstractAnimation_Connect_CurrentLoopChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Connect_DirectionChanged")]
	public static extern void QAbstractAnimation_Connect_DirectionChanged(Self* c_this, c_intptr slot);
	[LinkName("QAbstractAnimation_Start")]
	public static extern void QAbstractAnimation_Start(Self* c_this);
	[LinkName("QAbstractAnimation_Pause")]
	public static extern void QAbstractAnimation_Pause(Self* c_this);
	[LinkName("QAbstractAnimation_Resume")]
	public static extern void QAbstractAnimation_Resume(Self* c_this);
	[LinkName("QAbstractAnimation_SetPaused")]
	public static extern void QAbstractAnimation_SetPaused(Self* c_this, bool paused);
	[LinkName("QAbstractAnimation_Stop")]
	public static extern void QAbstractAnimation_Stop(Self* c_this);
	[LinkName("QAbstractAnimation_SetCurrentTime")]
	public static extern void QAbstractAnimation_SetCurrentTime(Self* c_this, int32 msecs);
	[LinkName("QAbstractAnimation_Event")]
	public static extern bool QAbstractAnimation_Event(Self* c_this, QEvent* event);
	[LinkName("QAbstractAnimation_UpdateCurrentTime")]
	public static extern void QAbstractAnimation_UpdateCurrentTime(Self* c_this, int32 currentTime);
	[LinkName("QAbstractAnimation_UpdateState")]
	public static extern void QAbstractAnimation_UpdateState(Self* c_this, int64 newState, int64 oldState);
	[LinkName("QAbstractAnimation_UpdateDirection")]
	public static extern void QAbstractAnimation_UpdateDirection(Self* c_this, int64 direction);
	[LinkName("QAbstractAnimation_Tr2")]
	public static extern libqt_string QAbstractAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractAnimation_Tr3")]
	public static extern libqt_string QAbstractAnimation_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractAnimation_Start1")]
	public static extern void QAbstractAnimation_Start1(Self* c_this, int64 policy);
}
public struct QAnimationDriver : QObject
{
	[LinkName("QAnimationDriver_new")]
	public static extern QAnimationDriver* QAnimationDriver_new();
	[LinkName("QAnimationDriver_new2")]
	public static extern QAnimationDriver* QAnimationDriver_new2(QObject* parent);
	[LinkName("QAnimationDriver_MetaObject")]
	public static extern QMetaObject* QAnimationDriver_MetaObject(Self* c_this);
	[LinkName("QAnimationDriver_Metacast")]
	public static extern void* QAnimationDriver_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAnimationDriver_Metacall")]
	public static extern int32 QAnimationDriver_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAnimationDriver_Tr")]
	public static extern libqt_string QAnimationDriver_Tr(char8[] s);
	[LinkName("QAnimationDriver_Advance")]
	public static extern void QAnimationDriver_Advance(Self* c_this);
	[LinkName("QAnimationDriver_Install")]
	public static extern void QAnimationDriver_Install(Self* c_this);
	[LinkName("QAnimationDriver_Uninstall")]
	public static extern void QAnimationDriver_Uninstall(Self* c_this);
	[LinkName("QAnimationDriver_IsRunning")]
	public static extern bool QAnimationDriver_IsRunning(Self* c_this);
	[LinkName("QAnimationDriver_Elapsed")]
	public static extern int64 QAnimationDriver_Elapsed(Self* c_this);
	[LinkName("QAnimationDriver_Connect_Started")]
	public static extern void QAnimationDriver_Connect_Started(Self* c_this, c_intptr slot);
	[LinkName("QAnimationDriver_Connect_Stopped")]
	public static extern void QAnimationDriver_Connect_Stopped(Self* c_this, c_intptr slot);
	[LinkName("QAnimationDriver_AdvanceAnimation")]
	public static extern void QAnimationDriver_AdvanceAnimation(Self* c_this);
	[LinkName("QAnimationDriver_Start")]
	public static extern void QAnimationDriver_Start(Self* c_this);
	[LinkName("QAnimationDriver_Stop")]
	public static extern void QAnimationDriver_Stop(Self* c_this);
	[LinkName("QAnimationDriver_Tr2")]
	public static extern libqt_string QAnimationDriver_Tr2(char8[] s, char8[] c);
	[LinkName("QAnimationDriver_Tr3")]
	public static extern libqt_string QAnimationDriver_Tr3(char8[] s, char8[] c, int32 n);
}