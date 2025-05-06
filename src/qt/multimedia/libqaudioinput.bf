using System;
using System.Interop;
namespace Qt;

public struct QAudioInput : QObject
{
	[LinkName("QAudioInput_new")]
	public static extern QAudioInput* QAudioInput_new();
	[LinkName("QAudioInput_new2")]
	public static extern QAudioInput* QAudioInput_new2(QAudioDevice* deviceInfo);
	[LinkName("QAudioInput_new3")]
	public static extern QAudioInput* QAudioInput_new3(QObject* parent);
	[LinkName("QAudioInput_new4")]
	public static extern QAudioInput* QAudioInput_new4(QAudioDevice* deviceInfo, QObject* parent);
	[LinkName("QAudioInput_MetaObject")]
	public static extern QMetaObject* QAudioInput_MetaObject(Self* c_this);
	[LinkName("QAudioInput_Metacast")]
	public static extern void* QAudioInput_Metacast(Self* c_this, char8[] param1);
	[LinkName("QAudioInput_Metacall")]
	public static extern int32 QAudioInput_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QAudioInput_Tr")]
	public static extern libqt_string QAudioInput_Tr(char8[] s);
	[LinkName("QAudioInput_Device")]
	public static extern QAudioDevice QAudioInput_Device(Self* c_this);
	[LinkName("QAudioInput_Volume")]
	public static extern float QAudioInput_Volume(Self* c_this);
	[LinkName("QAudioInput_IsMuted")]
	public static extern bool QAudioInput_IsMuted(Self* c_this);
	[LinkName("QAudioInput_SetDevice")]
	public static extern void QAudioInput_SetDevice(Self* c_this, QAudioDevice* device);
	[LinkName("QAudioInput_SetVolume")]
	public static extern void QAudioInput_SetVolume(Self* c_this, float volume);
	[LinkName("QAudioInput_SetMuted")]
	public static extern void QAudioInput_SetMuted(Self* c_this, bool muted);
	[LinkName("QAudioInput_DeviceChanged")]
	public static extern void QAudioInput_DeviceChanged(Self* c_this);
	[LinkName("QAudioInput_VolumeChanged")]
	public static extern void QAudioInput_VolumeChanged(Self* c_this, float volume);
	[LinkName("QAudioInput_MutedChanged")]
	public static extern void QAudioInput_MutedChanged(Self* c_this, bool muted);
	[LinkName("QAudioInput_Tr2")]
	public static extern libqt_string QAudioInput_Tr2(char8[] s, char8[] c);
	[LinkName("QAudioInput_Tr3")]
	public static extern libqt_string QAudioInput_Tr3(char8[] s, char8[] c, int32 n);
}