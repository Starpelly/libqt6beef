using System;
using System.Interop;
namespace Qt;

public struct QAudioSource : QObject
{
	[LinkName("QAudioSource_new")]
	public static extern QAudioSource* QAudioSource_new();
	[LinkName("QAudioSource_new2")]
	public static extern QAudioSource* QAudioSource_new2(QAudioDevice* audioDeviceInfo);
	[LinkName("QAudioSource_new3")]
	public static extern QAudioSource* QAudioSource_new3(QAudioFormat* format);
	[LinkName("QAudioSource_new4")]
	public static extern QAudioSource* QAudioSource_new4(QAudioFormat* format, QObject* parent);
	[LinkName("QAudioSource_new5")]
	public static extern QAudioSource* QAudioSource_new5(QAudioDevice* audioDeviceInfo, QAudioFormat* format);
	[LinkName("QAudioSource_new6")]
	public static extern QAudioSource* QAudioSource_new6(QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent);
	[LinkName("QAudioSource_MetaObject")]
	public static extern QMetaObject* QAudioSource_MetaObject(Self* c_this);
	[LinkName("QAudioSource_Metacast")]
	public static extern void* QAudioSource_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAudioSource_Metacall")]
	public static extern int32 QAudioSource_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioSource_Tr")]
	public static extern libqt_string QAudioSource_Tr(char8[] s);
	[LinkName("QAudioSource_IsNull")]
	public static extern bool QAudioSource_IsNull(Self* c_this);
	[LinkName("QAudioSource_Format")]
	public static extern QAudioFormat QAudioSource_Format(Self* c_this);
	[LinkName("QAudioSource_Start")]
	public static extern void QAudioSource_Start(Self* c_this, QIODevice* device);
	[LinkName("QAudioSource_Start2")]
	public static extern QIODevice* QAudioSource_Start2(Self* c_this);
	[LinkName("QAudioSource_Stop")]
	public static extern void QAudioSource_Stop(Self* c_this);
	[LinkName("QAudioSource_Reset")]
	public static extern void QAudioSource_Reset(Self* c_this);
	[LinkName("QAudioSource_Suspend")]
	public static extern void QAudioSource_Suspend(Self* c_this);
	[LinkName("QAudioSource_Resume")]
	public static extern void QAudioSource_Resume(Self* c_this);
	[LinkName("QAudioSource_SetBufferSize")]
	public static extern void QAudioSource_SetBufferSize(Self* c_this, int32 bytes);
	[LinkName("QAudioSource_BufferSize")]
	public static extern int32 QAudioSource_BufferSize(Self* c_this);
	[LinkName("QAudioSource_BytesAvailable")]
	public static extern int32 QAudioSource_BytesAvailable(Self* c_this);
	[LinkName("QAudioSource_SetVolume")]
	public static extern void QAudioSource_SetVolume(Self* c_this, double volume);
	[LinkName("QAudioSource_Volume")]
	public static extern double QAudioSource_Volume(Self* c_this);
	[LinkName("QAudioSource_ProcessedUSecs")]
	public static extern int64 QAudioSource_ProcessedUSecs(Self* c_this);
	[LinkName("QAudioSource_ElapsedUSecs")]
	public static extern int64 QAudioSource_ElapsedUSecs(Self* c_this);
	[LinkName("QAudioSource_Error")]
	public static extern int64 QAudioSource_Error(Self* c_this);
	[LinkName("QAudioSource_State")]
	public static extern int64 QAudioSource_State(Self* c_this);
	[LinkName("QAudioSource_Connect_StateChanged")]
	public static extern void QAudioSource_Connect_StateChanged(Self* c_this, c_intptr slot);
	[LinkName("QAudioSource_Tr2")]
	public static extern libqt_string QAudioSource_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioSource_Tr3")]
	public static extern libqt_string QAudioSource_Tr3(char8[] s, char8[] c, int32 n);
}