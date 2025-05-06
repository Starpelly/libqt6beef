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
public struct QTimeLine
{
	[LinkName("QTimeLine_new")]
	public static extern void* QTimeLine_new();
	[LinkName("QTimeLine_new2")]
	public static extern void* QTimeLine_new2(int32 duration);
	[LinkName("QTimeLine_new3")]
	public static extern void* QTimeLine_new3(int32 duration, QObject parent);
	[LinkName("QTimeLine_MetaObject")]
	public static extern QMetaObject QTimeLine_MetaObject(void* c_this);
	[LinkName("QTimeLine_Metacast")]
	public static extern void QTimeLine_Metacast(void* c_this, char8[] param1);
	[LinkName("QTimeLine_Metacall")]
	public static extern int32 QTimeLine_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QTimeLine_Tr")]
	public static extern char8[] QTimeLine_Tr(char8[] s);
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
	public static extern QEasingCurve QTimeLine_EasingCurve(void* c_this);
	[LinkName("QTimeLine_SetEasingCurve")]
	public static extern void QTimeLine_SetEasingCurve(void* c_this, QEasingCurve curve);
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
	public static extern void QTimeLine_TimerEvent(void* c_this, QTimerEvent event);
	[LinkName("QTimeLine_Tr2")]
	public static extern char8[] QTimeLine_Tr2(char8[] s, char8[] c);
	[LinkName("QTimeLine_Tr3")]
	public static extern char8[] QTimeLine_Tr3(char8[] s, char8[] c, int32 n);
}