using System;
using System.Interop;
namespace Qt;

public struct QAudioSink
{
	[LinkName("QAudioSink_new")]
	public static extern void* QAudioSink_new();
	[LinkName("QAudioSink_new2")]
	public static extern void* QAudioSink_new2(QAudioDevice audioDeviceInfo);
	[LinkName("QAudioSink_new3")]
	public static extern void* QAudioSink_new3(QAudioFormat format);
	[LinkName("QAudioSink_new4")]
	public static extern void* QAudioSink_new4(QAudioFormat format, QObject parent);
	[LinkName("QAudioSink_new5")]
	public static extern void* QAudioSink_new5(QAudioDevice audioDeviceInfo, QAudioFormat format);
	[LinkName("QAudioSink_new6")]
	public static extern void* QAudioSink_new6(QAudioDevice audioDeviceInfo, QAudioFormat format, QObject parent);
	[LinkName("QAudioSink_MetaObject")]
	public static extern QMetaObject QAudioSink_MetaObject(void* c_this);
	[LinkName("QAudioSink_Metacast")]
	public static extern void QAudioSink_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioSink_Metacall")]
	public static extern int32 QAudioSink_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAudioSink_Tr")]
	public static extern char8[] QAudioSink_Tr(char8[] s);
	[LinkName("QAudioSink_IsNull")]
	public static extern bool QAudioSink_IsNull(void* c_this);
	[LinkName("QAudioSink_Format")]
	public static extern QAudioFormat QAudioSink_Format(void* c_this);
	[LinkName("QAudioSink_Start")]
	public static extern void QAudioSink_Start(void* c_this, QIODevice device);
	[LinkName("QAudioSink_Start2")]
	public static extern QIODevice QAudioSink_Start2(void* c_this);
	[LinkName("QAudioSink_Stop")]
	public static extern void QAudioSink_Stop(void* c_this);
	[LinkName("QAudioSink_Reset")]
	public static extern void QAudioSink_Reset(void* c_this);
	[LinkName("QAudioSink_Suspend")]
	public static extern void QAudioSink_Suspend(void* c_this);
	[LinkName("QAudioSink_Resume")]
	public static extern void QAudioSink_Resume(void* c_this);
	[LinkName("QAudioSink_SetBufferSize")]
	public static extern void QAudioSink_SetBufferSize(void* c_this, int32 bytes);
	[LinkName("QAudioSink_BufferSize")]
	public static extern int32 QAudioSink_BufferSize(void* c_this);
	[LinkName("QAudioSink_BytesFree")]
	public static extern int32 QAudioSink_BytesFree(void* c_this);
	[LinkName("QAudioSink_ProcessedUSecs")]
	public static extern int64 QAudioSink_ProcessedUSecs(void* c_this);
	[LinkName("QAudioSink_ElapsedUSecs")]
	public static extern int64 QAudioSink_ElapsedUSecs(void* c_this);
	[LinkName("QAudioSink_Error")]
	public static extern int64 QAudioSink_Error(void* c_this);
	[LinkName("QAudioSink_State")]
	public static extern int64 QAudioSink_State(void* c_this);
	[LinkName("QAudioSink_SetVolume")]
	public static extern void QAudioSink_SetVolume(void* c_this, double volume);
	[LinkName("QAudioSink_Volume")]
	public static extern double QAudioSink_Volume(void* c_this);
	[LinkName("QAudioSink_StateChanged")]
	public static extern void QAudioSink_StateChanged(void* c_this, int64 state);
	[LinkName("QAudioSink_Tr2")]
	public static extern char8[] QAudioSink_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioSink_Tr3")]
	public static extern char8[] QAudioSink_Tr3(char8[] s, char8[] c, int32 n);
}