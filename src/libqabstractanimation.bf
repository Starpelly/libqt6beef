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
public struct QAbstractAnimation
{
	[LinkName("QAbstractAnimation_new")]
	public static extern void* QAbstractAnimation_new();
	[LinkName("QAbstractAnimation_new2")]
	public static extern void* QAbstractAnimation_new2(QObject parent);
	[LinkName("QAbstractAnimation_MetaObject")]
	public static extern QMetaObject QAbstractAnimation_MetaObject(void* c_this);
	[LinkName("QAbstractAnimation_Metacast")]
	public static extern void QAbstractAnimation_Metacast(void* c_this, char8[] param1);
	[LinkName("QAbstractAnimation_Metacall")]
	public static extern int32 QAbstractAnimation_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAbstractAnimation_Tr")]
	public static extern char8[] QAbstractAnimation_Tr(char8[] s);
	[LinkName("QAbstractAnimation_State")]
	public static extern int64 QAbstractAnimation_State(void* c_this);
	[LinkName("QAbstractAnimation_Group")]
	public static extern QAnimationGroup QAbstractAnimation_Group(void* c_this);
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
	[LinkName("QAbstractAnimation_Finished")]
	public static extern void QAbstractAnimation_Finished(void* c_this);
	[LinkName("QAbstractAnimation_StateChanged")]
	public static extern void QAbstractAnimation_StateChanged(void* c_this, int64 newState, int64 oldState);
	[LinkName("QAbstractAnimation_CurrentLoopChanged")]
	public static extern void QAbstractAnimation_CurrentLoopChanged(void* c_this, int32 currentLoop);
	[LinkName("QAbstractAnimation_DirectionChanged")]
	public static extern void QAbstractAnimation_DirectionChanged(void* c_this, int64 param1);
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
	public static extern bool QAbstractAnimation_Event(void* c_this, QEvent event);
	[LinkName("QAbstractAnimation_UpdateCurrentTime")]
	public static extern void QAbstractAnimation_UpdateCurrentTime(void* c_this, int32 currentTime);
	[LinkName("QAbstractAnimation_UpdateState")]
	public static extern void QAbstractAnimation_UpdateState(void* c_this, int64 newState, int64 oldState);
	[LinkName("QAbstractAnimation_UpdateDirection")]
	public static extern void QAbstractAnimation_UpdateDirection(void* c_this, int64 direction);
	[LinkName("QAbstractAnimation_Tr2")]
	public static extern char8[] QAbstractAnimation_Tr2(char8[] s, char8[] c);
	[LinkName("QAbstractAnimation_Tr3")]
	public static extern char8[] QAbstractAnimation_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QAbstractAnimation_Start1")]
	public static extern void QAbstractAnimation_Start1(void* c_this, int64 policy);
}
public struct QAnimationDriver
{
	[LinkName("QAnimationDriver_new")]
	public static extern void* QAnimationDriver_new();
	[LinkName("QAnimationDriver_new2")]
	public static extern void* QAnimationDriver_new2(QObject parent);
	[LinkName("QAnimationDriver_MetaObject")]
	public static extern QMetaObject QAnimationDriver_MetaObject(void* c_this);
	[LinkName("QAnimationDriver_Metacast")]
	public static extern void QAnimationDriver_Metacast(void* c_this, char8[] param1);
	[LinkName("QAnimationDriver_Metacall")]
	public static extern int32 QAnimationDriver_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAnimationDriver_Tr")]
	public static extern char8[] QAnimationDriver_Tr(char8[] s);
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
	[LinkName("QAnimationDriver_Started")]
	public static extern void QAnimationDriver_Started(void* c_this);
	[LinkName("QAnimationDriver_Stopped")]
	public static extern void QAnimationDriver_Stopped(void* c_this);
	[LinkName("QAnimationDriver_AdvanceAnimation")]
	public static extern void QAnimationDriver_AdvanceAnimation(void* c_this);
	[LinkName("QAnimationDriver_Start")]
	public static extern void QAnimationDriver_Start(void* c_this);
	[LinkName("QAnimationDriver_Stop")]
	public static extern void QAnimationDriver_Stop(void* c_this);
	[LinkName("QAnimationDriver_Tr2")]
	public static extern char8[] QAnimationDriver_Tr2(char8[] s, char8[] c);
	[LinkName("QAnimationDriver_Tr3")]
	public static extern char8[] QAnimationDriver_Tr3(char8[] s, char8[] c, int32 n);
}