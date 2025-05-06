using System;
using System.Interop;
namespace Qt;

public struct QAudioOutput : QObject
{
	[LinkName("QAudioOutput_new")]
	public static extern QAudioOutput* QAudioOutput_new();
	[LinkName("QAudioOutput_new2")]
	public static extern QAudioOutput* QAudioOutput_new2(QAudioDevice* device);
	[LinkName("QAudioOutput_new3")]
	public static extern QAudioOutput* QAudioOutput_new3(QObject* parent);
	[LinkName("QAudioOutput_new4")]
	public static extern QAudioOutput* QAudioOutput_new4(QAudioDevice* device, QObject* parent);
	[LinkName("QAudioOutput_MetaObject")]
	public static extern QMetaObject* QAudioOutput_MetaObject(Self* c_this);
	[LinkName("QAudioOutput_Metacast")]
	public static extern void* QAudioOutput_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAudioOutput_Metacall")]
	public static extern int32 QAudioOutput_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioOutput_Tr")]
	public static extern libqt_string QAudioOutput_Tr(char8[] s);
	[LinkName("QAudioOutput_Device")]
	public static extern QAudioDevice QAudioOutput_Device(Self* c_this);
	[LinkName("QAudioOutput_Volume")]
	public static extern float QAudioOutput_Volume(Self* c_this);
	[LinkName("QAudioOutput_IsMuted")]
	public static extern bool QAudioOutput_IsMuted(Self* c_this);
	[LinkName("QAudioOutput_SetDevice")]
	public static extern void QAudioOutput_SetDevice(Self* c_this, QAudioDevice* device);
	[LinkName("QAudioOutput_SetVolume")]
	public static extern void QAudioOutput_SetVolume(Self* c_this, float volume);
	[LinkName("QAudioOutput_SetMuted")]
	public static extern void QAudioOutput_SetMuted(Self* c_this, bool muted);
	[LinkName("QAudioOutput_DeviceChanged")]
	public static extern void QAudioOutput_DeviceChanged(Self* c_this);
	[LinkName("QAudioOutput_VolumeChanged")]
	public static extern void QAudioOutput_VolumeChanged(Self* c_this, float volume);
	[LinkName("QAudioOutput_MutedChanged")]
	public static extern void QAudioOutput_MutedChanged(Self* c_this, bool muted);
	[LinkName("QAudioOutput_Tr2")]
	public static extern libqt_string QAudioOutput_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioOutput_Tr3")]
	public static extern libqt_string QAudioOutput_Tr3(char8[] s, char8[] c, int32 n);
}