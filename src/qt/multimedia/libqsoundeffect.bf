using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QSoundEffect__Loop
{
	Infinite = -2,
}
[AllowDuplicates]
public enum QSoundEffect__Status
{
	Null = 0,
	Loading = 1,
	Ready = 2,
	Error = 3,
}
public struct QSoundEffect : QObject
{
	[LinkName("QSoundEffect_new")]
	public static extern QSoundEffect* QSoundEffect_new();
	[LinkName("QSoundEffect_new2")]
	public static extern QSoundEffect* QSoundEffect_new2(QAudioDevice* audioDevice);
	[LinkName("QSoundEffect_new3")]
	public static extern QSoundEffect* QSoundEffect_new3(QObject* parent);
	[LinkName("QSoundEffect_new4")]
	public static extern QSoundEffect* QSoundEffect_new4(QAudioDevice* audioDevice, QObject* parent);
	[LinkName("QSoundEffect_MetaObject")]
	public static extern QMetaObject* QSoundEffect_MetaObject(Self* c_this);
	[LinkName("QSoundEffect_Metacast")]
	public static extern void* QSoundEffect_Metacast(Self* c_this, char8[] param1);
	[LinkName("QSoundEffect_Metacall")]
	public static extern int32 QSoundEffect_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QSoundEffect_Tr")]
	public static extern libqt_string QSoundEffect_Tr(char8[] s);
	[LinkName("QSoundEffect_SupportedMimeTypes")]
	public static extern libqt_string[] QSoundEffect_SupportedMimeTypes();
	[LinkName("QSoundEffect_Source")]
	public static extern QUrl QSoundEffect_Source(Self* c_this);
	[LinkName("QSoundEffect_SetSource")]
	public static extern void QSoundEffect_SetSource(Self* c_this, QUrl* url);
	[LinkName("QSoundEffect_LoopCount")]
	public static extern int32 QSoundEffect_LoopCount(Self* c_this);
	[LinkName("QSoundEffect_LoopsRemaining")]
	public static extern int32 QSoundEffect_LoopsRemaining(Self* c_this);
	[LinkName("QSoundEffect_SetLoopCount")]
	public static extern void QSoundEffect_SetLoopCount(Self* c_this, int32 loopCount);
	[LinkName("QSoundEffect_AudioDevice")]
	public static extern QAudioDevice QSoundEffect_AudioDevice(Self* c_this);
	[LinkName("QSoundEffect_SetAudioDevice")]
	public static extern void QSoundEffect_SetAudioDevice(Self* c_this, QAudioDevice* device);
	[LinkName("QSoundEffect_Volume")]
	public static extern float QSoundEffect_Volume(Self* c_this);
	[LinkName("QSoundEffect_SetVolume")]
	public static extern void QSoundEffect_SetVolume(Self* c_this, float volume);
	[LinkName("QSoundEffect_IsMuted")]
	public static extern bool QSoundEffect_IsMuted(Self* c_this);
	[LinkName("QSoundEffect_SetMuted")]
	public static extern void QSoundEffect_SetMuted(Self* c_this, bool muted);
	[LinkName("QSoundEffect_IsLoaded")]
	public static extern bool QSoundEffect_IsLoaded(Self* c_this);
	[LinkName("QSoundEffect_IsPlaying")]
	public static extern bool QSoundEffect_IsPlaying(Self* c_this);
	[LinkName("QSoundEffect_Status")]
	public static extern int64 QSoundEffect_Status(Self* c_this);
	[LinkName("QSoundEffect_Connect_SourceChanged")]
	public static extern void QSoundEffect_Connect_SourceChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoopCountChanged")]
	public static extern void QSoundEffect_Connect_LoopCountChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoopsRemainingChanged")]
	public static extern void QSoundEffect_Connect_LoopsRemainingChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_VolumeChanged")]
	public static extern void QSoundEffect_Connect_VolumeChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_MutedChanged")]
	public static extern void QSoundEffect_Connect_MutedChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_LoadedChanged")]
	public static extern void QSoundEffect_Connect_LoadedChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_PlayingChanged")]
	public static extern void QSoundEffect_Connect_PlayingChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_StatusChanged")]
	public static extern void QSoundEffect_Connect_StatusChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Connect_AudioDeviceChanged")]
	public static extern void QSoundEffect_Connect_AudioDeviceChanged(Self* c_this, c_intptr slot);
	[LinkName("QSoundEffect_Play")]
	public static extern void QSoundEffect_Play(Self* c_this);
	[LinkName("QSoundEffect_Stop")]
	public static extern void QSoundEffect_Stop(Self* c_this);
	[LinkName("QSoundEffect_Tr2")]
	public static extern libqt_string QSoundEffect_Tr2(char8[] s, char8[] c);
	[LinkName("QSoundEffect_Tr3")]
	public static extern libqt_string QSoundEffect_Tr3(char8[] s, char8[] c, int32 n);
}