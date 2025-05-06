using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMovie__MovieState
{
	NotRunning = 0,
	Paused = 1,
	Running = 2,
}
[AllowDuplicates]
public enum QMovie__CacheMode
{
	CacheNone = 0,
	CacheAll = 1,
}
public struct QMovie
{
	[LinkName("QMovie_new")]
	public static extern void* QMovie_new();
	[LinkName("QMovie_new2")]
	public static extern void* QMovie_new2(QIODevice device);
	[LinkName("QMovie_new3")]
	public static extern void* QMovie_new3(char8[] fileName);
	[LinkName("QMovie_new4")]
	public static extern void* QMovie_new4(QObject parent);
	[LinkName("QMovie_new5")]
	public static extern void* QMovie_new5(QIODevice device, uint8[] format);
	[LinkName("QMovie_new6")]
	public static extern void* QMovie_new6(QIODevice device, uint8[] format, QObject parent);
	[LinkName("QMovie_new7")]
	public static extern void* QMovie_new7(char8[] fileName, uint8[] format);
	[LinkName("QMovie_new8")]
	public static extern void* QMovie_new8(char8[] fileName, uint8[] format, QObject parent);
	[LinkName("QMovie_MetaObject")]
	public static extern QMetaObject QMovie_MetaObject(void* c_this);
	[LinkName("QMovie_Metacast")]
	public static extern void QMovie_Metacast(void* c_this, char8[] param1);
	[LinkName("QMovie_Metacall")]
	public static extern int32 QMovie_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMovie_Tr")]
	public static extern char8[] QMovie_Tr(char8[] s);
	[LinkName("QMovie_SupportedFormats")]
	public static extern uint8[][] QMovie_SupportedFormats();
	[LinkName("QMovie_SetDevice")]
	public static extern void QMovie_SetDevice(void* c_this, QIODevice device);
	[LinkName("QMovie_Device")]
	public static extern QIODevice QMovie_Device(void* c_this);
	[LinkName("QMovie_SetFileName")]
	public static extern void QMovie_SetFileName(void* c_this, char8[] fileName);
	[LinkName("QMovie_FileName")]
	public static extern char8[] QMovie_FileName(void* c_this);
	[LinkName("QMovie_SetFormat")]
	public static extern void QMovie_SetFormat(void* c_this, uint8[] format);
	[LinkName("QMovie_Format")]
	public static extern uint8[] QMovie_Format(void* c_this);
	[LinkName("QMovie_SetBackgroundColor")]
	public static extern void QMovie_SetBackgroundColor(void* c_this, QColor color);
	[LinkName("QMovie_BackgroundColor")]
	public static extern QColor QMovie_BackgroundColor(void* c_this);
	[LinkName("QMovie_State")]
	public static extern int64 QMovie_State(void* c_this);
	[LinkName("QMovie_FrameRect")]
	public static extern QRect QMovie_FrameRect(void* c_this);
	[LinkName("QMovie_CurrentImage")]
	public static extern QImage QMovie_CurrentImage(void* c_this);
	[LinkName("QMovie_CurrentPixmap")]
	public static extern QPixmap QMovie_CurrentPixmap(void* c_this);
	[LinkName("QMovie_IsValid")]
	public static extern bool QMovie_IsValid(void* c_this);
	[LinkName("QMovie_LastError")]
	public static extern int64 QMovie_LastError(void* c_this);
	[LinkName("QMovie_LastErrorString")]
	public static extern char8[] QMovie_LastErrorString(void* c_this);
	[LinkName("QMovie_JumpToFrame")]
	public static extern bool QMovie_JumpToFrame(void* c_this, int32 frameNumber);
	[LinkName("QMovie_LoopCount")]
	public static extern int32 QMovie_LoopCount(void* c_this);
	[LinkName("QMovie_FrameCount")]
	public static extern int32 QMovie_FrameCount(void* c_this);
	[LinkName("QMovie_NextFrameDelay")]
	public static extern int32 QMovie_NextFrameDelay(void* c_this);
	[LinkName("QMovie_CurrentFrameNumber")]
	public static extern int32 QMovie_CurrentFrameNumber(void* c_this);
	[LinkName("QMovie_Speed")]
	public static extern int32 QMovie_Speed(void* c_this);
	[LinkName("QMovie_ScaledSize")]
	public static extern QSize QMovie_ScaledSize(void* c_this);
	[LinkName("QMovie_SetScaledSize")]
	public static extern void QMovie_SetScaledSize(void* c_this, QSize size);
	[LinkName("QMovie_CacheMode")]
	public static extern int64 QMovie_CacheMode(void* c_this);
	[LinkName("QMovie_SetCacheMode")]
	public static extern void QMovie_SetCacheMode(void* c_this, int64 mode);
	[LinkName("QMovie_Started")]
	public static extern void QMovie_Started(void* c_this);
	[LinkName("QMovie_Resized")]
	public static extern void QMovie_Resized(void* c_this, QSize size);
	[LinkName("QMovie_Updated")]
	public static extern void QMovie_Updated(void* c_this, QRect rect);
	[LinkName("QMovie_StateChanged")]
	public static extern void QMovie_StateChanged(void* c_this, int64 state);
	[LinkName("QMovie_Error")]
	public static extern void QMovie_Error(void* c_this, int64 errorVal);
	[LinkName("QMovie_Finished")]
	public static extern void QMovie_Finished(void* c_this);
	[LinkName("QMovie_FrameChanged")]
	public static extern void QMovie_FrameChanged(void* c_this, int32 frameNumber);
	[LinkName("QMovie_Start")]
	public static extern void QMovie_Start(void* c_this);
	[LinkName("QMovie_JumpToNextFrame")]
	public static extern bool QMovie_JumpToNextFrame(void* c_this);
	[LinkName("QMovie_SetPaused")]
	public static extern void QMovie_SetPaused(void* c_this, bool paused);
	[LinkName("QMovie_Stop")]
	public static extern void QMovie_Stop(void* c_this);
	[LinkName("QMovie_SetSpeed")]
	public static extern void QMovie_SetSpeed(void* c_this, int32 percentSpeed);
	[LinkName("QMovie_Tr2")]
	public static extern char8[] QMovie_Tr2(char8[] s, char8[] c);
	[LinkName("QMovie_Tr3")]
	public static extern char8[] QMovie_Tr3(char8[] s, char8[] c, int32 n);
}