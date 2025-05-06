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
public struct QTimeLine : QObject
{
	[LinkName("QTimeLine_new")]
	public static extern QTimeLine* QTimeLine_new();
	[LinkName("QTimeLine_new2")]
	public static extern QTimeLine* QTimeLine_new2(int32 duration);
	[LinkName("QTimeLine_new3")]
	public static extern QTimeLine* QTimeLine_new3(int32 duration, QObject* parent);
	[LinkName("QTimeLine_MetaObject")]
	public static extern QMetaObject* QTimeLine_MetaObject(Self* c_this);
	[LinkName("QTimeLine_Metacast")]
	public static extern void* QTimeLine_Metacast(Self* c_this, char8[] param1);
	[LinkName("QTimeLine_Metacall")]
	public static extern int32 QTimeLine_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QTimeLine_Tr")]
	public static extern libqt_string QTimeLine_Tr(char8[] s);
	[LinkName("QTimeLine_State")]
	public static extern int64 QTimeLine_State(Self* c_this);
	[LinkName("QTimeLine_LoopCount")]
	public static extern int32 QTimeLine_LoopCount(Self* c_this);
	[LinkName("QTimeLine_SetLoopCount")]
	public static extern void QTimeLine_SetLoopCount(Self* c_this, int32 count);
	[LinkName("QTimeLine_Direction")]
	public static extern int64 QTimeLine_Direction(Self* c_this);
	[LinkName("QTimeLine_SetDirection")]
	public static extern void QTimeLine_SetDirection(Self* c_this, int64 direction);
	[LinkName("QTimeLine_Duration")]
	public static extern int32 QTimeLine_Duration(Self* c_this);
	[LinkName("QTimeLine_SetDuration")]
	public static extern void QTimeLine_SetDuration(Self* c_this, int32 duration);
	[LinkName("QTimeLine_StartFrame")]
	public static extern int32 QTimeLine_StartFrame(Self* c_this);
	[LinkName("QTimeLine_SetStartFrame")]
	public static extern void QTimeLine_SetStartFrame(Self* c_this, int32 frame);
	[LinkName("QTimeLine_EndFrame")]
	public static extern int32 QTimeLine_EndFrame(Self* c_this);
	[LinkName("QTimeLine_SetEndFrame")]
	public static extern void QTimeLine_SetEndFrame(Self* c_this, int32 frame);
	[LinkName("QTimeLine_SetFrameRange")]
	public static extern void QTimeLine_SetFrameRange(Self* c_this, int32 startFrame, int32 endFrame);
	[LinkName("QTimeLine_UpdateInterval")]
	public static extern int32 QTimeLine_UpdateInterval(Self* c_this);
	[LinkName("QTimeLine_SetUpdateInterval")]
	public static extern void QTimeLine_SetUpdateInterval(Self* c_this, int32 interval);
	[LinkName("QTimeLine_EasingCurve")]
	public static extern QEasingCurve QTimeLine_EasingCurve(Self* c_this);
	[LinkName("QTimeLine_SetEasingCurve")]
	public static extern void QTimeLine_SetEasingCurve(Self* c_this, QEasingCurve* curve);
	[LinkName("QTimeLine_CurrentTime")]
	public static extern int32 QTimeLine_CurrentTime(Self* c_this);
	[LinkName("QTimeLine_CurrentFrame")]
	public static extern int32 QTimeLine_CurrentFrame(Self* c_this);
	[LinkName("QTimeLine_CurrentValue")]
	public static extern double QTimeLine_CurrentValue(Self* c_this);
	[LinkName("QTimeLine_FrameForTime")]
	public static extern int32 QTimeLine_FrameForTime(Self* c_this, int32 msec);
	[LinkName("QTimeLine_ValueForTime")]
	public static extern double QTimeLine_ValueForTime(Self* c_this, int32 msec);
	[LinkName("QTimeLine_Start")]
	public static extern void QTimeLine_Start(Self* c_this);
	[LinkName("QTimeLine_Resume")]
	public static extern void QTimeLine_Resume(Self* c_this);
	[LinkName("QTimeLine_Stop")]
	public static extern void QTimeLine_Stop(Self* c_this);
	[LinkName("QTimeLine_SetPaused")]
	public static extern void QTimeLine_SetPaused(Self* c_this, bool paused);
	[LinkName("QTimeLine_SetCurrentTime")]
	public static extern void QTimeLine_SetCurrentTime(Self* c_this, int32 msec);
	[LinkName("QTimeLine_ToggleDirection")]
	public static extern void QTimeLine_ToggleDirection(Self* c_this);
	[LinkName("QTimeLine_TimerEvent")]
	public static extern void QTimeLine_TimerEvent(Self* c_this, QTimerEvent* event);
	[LinkName("QTimeLine_Tr2")]
	public static extern libqt_string QTimeLine_Tr2(char8[] s, char8[] c);
	[LinkName("QTimeLine_Tr3")]
	public static extern libqt_string QTimeLine_Tr3(char8[] s, char8[] c, int32 n);
}