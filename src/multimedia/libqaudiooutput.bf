using System;
using System.Interop;
namespace Qt;

public struct QAudioOutput
{
	[LinkName("QAudioOutput_new")]
	public static extern void* QAudioOutput_new();
	[LinkName("QAudioOutput_new2")]
	public static extern void* QAudioOutput_new2(QAudioDevice device);
	[LinkName("QAudioOutput_new3")]
	public static extern void* QAudioOutput_new3(QObject parent);
	[LinkName("QAudioOutput_new4")]
	public static extern void* QAudioOutput_new4(QAudioDevice device, QObject parent);
	[LinkName("QAudioOutput_MetaObject")]
	public static extern QMetaObject QAudioOutput_MetaObject(void* c_this);
	[LinkName("QAudioOutput_Metacast")]
	public static extern void QAudioOutput_Metacast(void* c_this, char8[] param1);
	[LinkName("QAudioOutput_Metacall")]
	public static extern int32 QAudioOutput_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QAudioOutput_Tr")]
	public static extern char8[] QAudioOutput_Tr(char8[] s);
	[LinkName("QAudioOutput_Device")]
	public static extern QAudioDevice QAudioOutput_Device(void* c_this);
	[LinkName("QAudioOutput_Volume")]
	public static extern float QAudioOutput_Volume(void* c_this);
	[LinkName("QAudioOutput_IsMuted")]
	public static extern bool QAudioOutput_IsMuted(void* c_this);
	[LinkName("QAudioOutput_SetDevice")]
	public static extern void QAudioOutput_SetDevice(void* c_this, QAudioDevice device);
	[LinkName("QAudioOutput_SetVolume")]
	public static extern void QAudioOutput_SetVolume(void* c_this, float volume);
	[LinkName("QAudioOutput_SetMuted")]
	public static extern void QAudioOutput_SetMuted(void* c_this, bool muted);
	[LinkName("QAudioOutput_DeviceChanged")]
	public static extern void QAudioOutput_DeviceChanged(void* c_this);
	[LinkName("QAudioOutput_VolumeChanged")]
	public static extern void QAudioOutput_VolumeChanged(void* c_this, float volume);
	[LinkName("QAudioOutput_MutedChanged")]
	public static extern void QAudioOutput_MutedChanged(void* c_this, bool muted);
	[LinkName("QAudioOutput_Tr2")]
	public static extern char8[] QAudioOutput_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioOutput_Tr3")]
	public static extern char8[] QAudioOutput_Tr3(char8[] s, char8[] c, int32 n);
}