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
public struct QMovie : QObject
{
	[LinkName("QMovie_new")]
	public static extern QMovie* QMovie_new();
	[LinkName("QMovie_new2")]
	public static extern QMovie* QMovie_new2(QIODevice* device);
	[LinkName("QMovie_new3")]
	public static extern QMovie* QMovie_new3(libqt_string fileName);
	[LinkName("QMovie_new4")]
	public static extern QMovie* QMovie_new4(QObject* parent);
	[LinkName("QMovie_new5")]
	public static extern QMovie* QMovie_new5(QIODevice* device, libqt_string format);
	[LinkName("QMovie_new6")]
	public static extern QMovie* QMovie_new6(QIODevice* device, libqt_string format, QObject* parent);
	[LinkName("QMovie_new7")]
	public static extern QMovie* QMovie_new7(libqt_string fileName, libqt_string format);
	[LinkName("QMovie_new8")]
	public static extern QMovie* QMovie_new8(libqt_string fileName, libqt_string format, QObject* parent);
	[LinkName("QMovie_MetaObject")]
	public static extern QMetaObject* QMovie_MetaObject(Self* c_this);
	[LinkName("QMovie_Metacast")]
	public static extern void* QMovie_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMovie_Metacall")]
	public static extern int32 QMovie_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMovie_Tr")]
	public static extern libqt_string QMovie_Tr(char8[] s);
	[LinkName("QMovie_SupportedFormats")]
	public static extern libqt_string[] QMovie_SupportedFormats();
	[LinkName("QMovie_SetDevice")]
	public static extern void QMovie_SetDevice(Self* c_this, QIODevice* device);
	[LinkName("QMovie_Device")]
	public static extern QIODevice* QMovie_Device(Self* c_this);
	[LinkName("QMovie_SetFileName")]
	public static extern void QMovie_SetFileName(Self* c_this, libqt_string fileName);
	[LinkName("QMovie_FileName")]
	public static extern libqt_string QMovie_FileName(Self* c_this);
	[LinkName("QMovie_SetFormat")]
	public static extern void QMovie_SetFormat(Self* c_this, libqt_string format);
	[LinkName("QMovie_Format")]
	public static extern libqt_string QMovie_Format(Self* c_this);
	[LinkName("QMovie_SetBackgroundColor")]
	public static extern void QMovie_SetBackgroundColor(Self* c_this, QColor* color);
	[LinkName("QMovie_BackgroundColor")]
	public static extern QColor QMovie_BackgroundColor(Self* c_this);
	[LinkName("QMovie_State")]
	public static extern int64 QMovie_State(Self* c_this);
	[LinkName("QMovie_FrameRect")]
	public static extern QRect QMovie_FrameRect(Self* c_this);
	[LinkName("QMovie_CurrentImage")]
	public static extern QImage QMovie_CurrentImage(Self* c_this);
	[LinkName("QMovie_CurrentPixmap")]
	public static extern QPixmap QMovie_CurrentPixmap(Self* c_this);
	[LinkName("QMovie_IsValid")]
	public static extern bool QMovie_IsValid(Self* c_this);
	[LinkName("QMovie_LastError")]
	public static extern int64 QMovie_LastError(Self* c_this);
	[LinkName("QMovie_LastErrorString")]
	public static extern libqt_string QMovie_LastErrorString(Self* c_this);
	[LinkName("QMovie_JumpToFrame")]
	public static extern bool QMovie_JumpToFrame(Self* c_this, int32 frameNumber);
	[LinkName("QMovie_LoopCount")]
	public static extern int32 QMovie_LoopCount(Self* c_this);
	[LinkName("QMovie_FrameCount")]
	public static extern int32 QMovie_FrameCount(Self* c_this);
	[LinkName("QMovie_NextFrameDelay")]
	public static extern int32 QMovie_NextFrameDelay(Self* c_this);
	[LinkName("QMovie_CurrentFrameNumber")]
	public static extern int32 QMovie_CurrentFrameNumber(Self* c_this);
	[LinkName("QMovie_Speed")]
	public static extern int32 QMovie_Speed(Self* c_this);
	[LinkName("QMovie_ScaledSize")]
	public static extern QSize QMovie_ScaledSize(Self* c_this);
	[LinkName("QMovie_SetScaledSize")]
	public static extern void QMovie_SetScaledSize(Self* c_this, QSize* size);
	[LinkName("QMovie_CacheMode")]
	public static extern int64 QMovie_CacheMode(Self* c_this);
	[LinkName("QMovie_SetCacheMode")]
	public static extern void QMovie_SetCacheMode(Self* c_this, int64 mode);
	[LinkName("QMovie_Connect_Started")]
	public static extern void QMovie_Connect_Started(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Resized")]
	public static extern void QMovie_Connect_Resized(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Updated")]
	public static extern void QMovie_Connect_Updated(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_StateChanged")]
	public static extern void QMovie_Connect_StateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Error")]
	public static extern void QMovie_Connect_Error(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_Finished")]
	public static extern void QMovie_Connect_Finished(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Connect_FrameChanged")]
	public static extern void QMovie_Connect_FrameChanged(Self* c_this, c_intptr slot);
	[LinkName("QMovie_Start")]
	public static extern void QMovie_Start(Self* c_this);
	[LinkName("QMovie_JumpToNextFrame")]
	public static extern bool QMovie_JumpToNextFrame(Self* c_this);
	[LinkName("QMovie_SetPaused")]
	public static extern void QMovie_SetPaused(Self* c_this, bool paused);
	[LinkName("QMovie_Stop")]
	public static extern void QMovie_Stop(Self* c_this);
	[LinkName("QMovie_SetSpeed")]
	public static extern void QMovie_SetSpeed(Self* c_this, int32 percentSpeed);
	[LinkName("QMovie_Tr2")]
	public static extern libqt_string QMovie_Tr2(char8[] s, char8[] c);
	[LinkName("QMovie_Tr3")]
	public static extern libqt_string QMovie_Tr3(char8[] s, char8[] c, int32 n);
}