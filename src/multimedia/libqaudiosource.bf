using System;
using System.Interop;
namespace Qt;

public struct QAudioSource
{
	[LinkName("QAudioSource_new")]
	public static extern void* QAudioSource_new();
	[LinkName("QAudioSource_new2")]
	public static extern void* QAudioSource_new2(QAudioDevice audioDeviceInfo);
	[LinkName("QAudioSource_new3")]
	public static extern void* QAudioSource_new3(QAudioFormat format);
	[LinkName("QAudioSource_new4")]
	public static extern void* QAudioSource_new4(QAudioFormat format, QObject parent);
	[LinkName("QAudioSource_new5")]
	public static extern void* QAudioSource_new5(QAudioDevice audioDeviceInfo, QAudioFormat format);
	[LinkName("QAudioSource_new6")]
	public static extern void* QAudioSource_new6(QAudioDevice audioDeviceInfo, QAudioFormat format, QObject parent);
	[LinkName("QAudioSource_MetaObject")]
	public static extern QMetaObject QAudioSource_MetaObject(void* c_this);
	[LinkName("QAudioSource_Metacast")]
	public static extern void QAudioSource_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioSource_Metacall")]
	public static extern int32 QAudioSource_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAudioSource_Tr")]
	public static extern char8[] QAudioSource_Tr(char8[] s);
	[LinkName("QAudioSource_IsNull")]
	public static extern bool QAudioSource_IsNull(void* c_this);
	[LinkName("QAudioSource_Format")]
	public static extern QAudioFormat QAudioSource_Format(void* c_this);
	[LinkName("QAudioSource_Start")]
	public static extern void QAudioSource_Start(void* c_this, QIODevice device);
	[LinkName("QAudioSource_Start2")]
	public static extern QIODevice QAudioSource_Start2(void* c_this);
	[LinkName("QAudioSource_Stop")]
	public static extern void QAudioSource_Stop(void* c_this);
	[LinkName("QAudioSource_Reset")]
	public static extern void QAudioSource_Reset(void* c_this);
	[LinkName("QAudioSource_Suspend")]
	public static extern void QAudioSource_Suspend(void* c_this);
	[LinkName("QAudioSource_Resume")]
	public static extern void QAudioSource_Resume(void* c_this);
	[LinkName("QAudioSource_SetBufferSize")]
	public static extern void QAudioSource_SetBufferSize(void* c_this, int32 bytes);
	[LinkName("QAudioSource_BufferSize")]
	public static extern int32 QAudioSource_BufferSize(void* c_this);
	[LinkName("QAudioSource_BytesAvailable")]
	public static extern int32 QAudioSource_BytesAvailable(void* c_this);
	[LinkName("QAudioSource_SetVolume")]
	public static extern void QAudioSource_SetVolume(void* c_this, double volume);
	[LinkName("QAudioSource_Volume")]
	public static extern double QAudioSource_Volume(void* c_this);
	[LinkName("QAudioSource_ProcessedUSecs")]
	public static extern int64 QAudioSource_ProcessedUSecs(void* c_this);
	[LinkName("QAudioSource_ElapsedUSecs")]
	public static extern int64 QAudioSource_ElapsedUSecs(void* c_this);
	[LinkName("QAudioSource_Error")]
	public static extern int64 QAudioSource_Error(void* c_this);
	[LinkName("QAudioSource_State")]
	public static extern int64 QAudioSource_State(void* c_this);
	[LinkName("QAudioSource_StateChanged")]
	public static extern void QAudioSource_StateChanged(void* c_this, int64 state);
	[LinkName("QAudioSource_Tr2")]
	public static extern char8[] QAudioSource_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioSource_Tr3")]
	public static extern char8[] QAudioSource_Tr3(char8[] s, char8[] c, int32 n);
}