using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMediaPlayer__PlaybackState
{
	StoppedState = 0,
	PlayingState = 1,
	PausedState = 2,
}
[AllowDuplicates]
public enum QMediaPlayer__MediaStatus
{
	NoMedia = 0,
	LoadingMedia = 1,
	LoadedMedia = 2,
	StalledMedia = 3,
	BufferingMedia = 4,
	BufferedMedia = 5,
	EndOfMedia = 6,
	InvalidMedia = 7,
}
[AllowDuplicates]
public enum QMediaPlayer__Error
{
	NoError = 0,
	ResourceError = 1,
	FormatError = 2,
	NetworkError = 3,
	AccessDeniedError = 4,
}
[AllowDuplicates]
public enum QMediaPlayer__Loops
{
	Infinite = -1,
	Once = 1,
}
public struct QMediaPlayer : QObject
{
	[LinkName("QMediaPlayer_new")]
	public static extern QMediaPlayer* QMediaPlayer_new();
	[LinkName("QMediaPlayer_new2")]
	public static extern QMediaPlayer* QMediaPlayer_new2(QObject* parent);
	[LinkName("QMediaPlayer_MetaObject")]
	public static extern QMetaObject* QMediaPlayer_MetaObject(Self* c_this);
	[LinkName("QMediaPlayer_Metacast")]
	public static extern void* QMediaPlayer_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMediaPlayer_Metacall")]
	public static extern int32 QMediaPlayer_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMediaPlayer_Tr")]
	public static extern libqt_string QMediaPlayer_Tr(char8[] s);
	[LinkName("QMediaPlayer_AudioTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_AudioTracks(Self* c_this);
	[LinkName("QMediaPlayer_VideoTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_VideoTracks(Self* c_this);
	[LinkName("QMediaPlayer_SubtitleTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_SubtitleTracks(Self* c_this);
	[LinkName("QMediaPlayer_ActiveAudioTrack")]
	public static extern int32 QMediaPlayer_ActiveAudioTrack(Self* c_this);
	[LinkName("QMediaPlayer_ActiveVideoTrack")]
	public static extern int32 QMediaPlayer_ActiveVideoTrack(Self* c_this);
	[LinkName("QMediaPlayer_ActiveSubtitleTrack")]
	public static extern int32 QMediaPlayer_ActiveSubtitleTrack(Self* c_this);
	[LinkName("QMediaPlayer_SetActiveAudioTrack")]
	public static extern void QMediaPlayer_SetActiveAudioTrack(Self* c_this, int32 index);
	[LinkName("QMediaPlayer_SetActiveVideoTrack")]
	public static extern void QMediaPlayer_SetActiveVideoTrack(Self* c_this, int32 index);
	[LinkName("QMediaPlayer_SetActiveSubtitleTrack")]
	public static extern void QMediaPlayer_SetActiveSubtitleTrack(Self* c_this, int32 index);
	[LinkName("QMediaPlayer_SetAudioOutput")]
	public static extern void QMediaPlayer_SetAudioOutput(Self* c_this, QAudioOutput* output);
	[LinkName("QMediaPlayer_AudioOutput")]
	public static extern QAudioOutput* QMediaPlayer_AudioOutput(Self* c_this);
	[LinkName("QMediaPlayer_SetVideoOutput")]
	public static extern void QMediaPlayer_SetVideoOutput(Self* c_this, QObject* videoOutput);
	[LinkName("QMediaPlayer_VideoOutput")]
	public static extern QObject* QMediaPlayer_VideoOutput(Self* c_this);
	[LinkName("QMediaPlayer_SetVideoSink")]
	public static extern void QMediaPlayer_SetVideoSink(Self* c_this, QVideoSink* sink);
	[LinkName("QMediaPlayer_VideoSink")]
	public static extern QVideoSink* QMediaPlayer_VideoSink(Self* c_this);
	[LinkName("QMediaPlayer_Source")]
	public static extern QUrl QMediaPlayer_Source(Self* c_this);
	[LinkName("QMediaPlayer_SourceDevice")]
	public static extern QIODevice* QMediaPlayer_SourceDevice(Self* c_this);
	[LinkName("QMediaPlayer_PlaybackState")]
	public static extern int64 QMediaPlayer_PlaybackState(Self* c_this);
	[LinkName("QMediaPlayer_MediaStatus")]
	public static extern int64 QMediaPlayer_MediaStatus(Self* c_this);
	[LinkName("QMediaPlayer_Duration")]
	public static extern int64 QMediaPlayer_Duration(Self* c_this);
	[LinkName("QMediaPlayer_Position")]
	public static extern int64 QMediaPlayer_Position(Self* c_this);
	[LinkName("QMediaPlayer_HasAudio")]
	public static extern bool QMediaPlayer_HasAudio(Self* c_this);
	[LinkName("QMediaPlayer_HasVideo")]
	public static extern bool QMediaPlayer_HasVideo(Self* c_this);
	[LinkName("QMediaPlayer_BufferProgress")]
	public static extern float QMediaPlayer_BufferProgress(Self* c_this);
	[LinkName("QMediaPlayer_BufferedTimeRange")]
	public static extern QMediaTimeRange QMediaPlayer_BufferedTimeRange(Self* c_this);
	[LinkName("QMediaPlayer_IsSeekable")]
	public static extern bool QMediaPlayer_IsSeekable(Self* c_this);
	[LinkName("QMediaPlayer_PlaybackRate")]
	public static extern double QMediaPlayer_PlaybackRate(Self* c_this);
	[LinkName("QMediaPlayer_Loops")]
	public static extern int32 QMediaPlayer_Loops(Self* c_this);
	[LinkName("QMediaPlayer_SetLoops")]
	public static extern void QMediaPlayer_SetLoops(Self* c_this, int32 loops);
	[LinkName("QMediaPlayer_Error")]
	public static extern int64 QMediaPlayer_Error(Self* c_this);
	[LinkName("QMediaPlayer_ErrorString")]
	public static extern libqt_string QMediaPlayer_ErrorString(Self* c_this);
	[LinkName("QMediaPlayer_IsAvailable")]
	public static extern bool QMediaPlayer_IsAvailable(Self* c_this);
	[LinkName("QMediaPlayer_MetaData")]
	public static extern QMediaMetaData QMediaPlayer_MetaData(Self* c_this);
	[LinkName("QMediaPlayer_Play")]
	public static extern void QMediaPlayer_Play(Self* c_this);
	[LinkName("QMediaPlayer_Pause")]
	public static extern void QMediaPlayer_Pause(Self* c_this);
	[LinkName("QMediaPlayer_Stop")]
	public static extern void QMediaPlayer_Stop(Self* c_this);
	[LinkName("QMediaPlayer_SetPosition")]
	public static extern void QMediaPlayer_SetPosition(Self* c_this, int64 position);
	[LinkName("QMediaPlayer_SetPlaybackRate")]
	public static extern void QMediaPlayer_SetPlaybackRate(Self* c_this, double rate);
	[LinkName("QMediaPlayer_SetSource")]
	public static extern void QMediaPlayer_SetSource(Self* c_this, QUrl* source);
	[LinkName("QMediaPlayer_SetSourceDevice")]
	public static extern void QMediaPlayer_SetSourceDevice(Self* c_this, QIODevice* device);
	[LinkName("QMediaPlayer_Connect_SourceChanged")]
	public static extern void QMediaPlayer_Connect_SourceChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PlaybackStateChanged")]
	public static extern void QMediaPlayer_Connect_PlaybackStateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_MediaStatusChanged")]
	public static extern void QMediaPlayer_Connect_MediaStatusChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_DurationChanged")]
	public static extern void QMediaPlayer_Connect_DurationChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PositionChanged")]
	public static extern void QMediaPlayer_Connect_PositionChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_HasAudioChanged")]
	public static extern void QMediaPlayer_Connect_HasAudioChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_HasVideoChanged")]
	public static extern void QMediaPlayer_Connect_HasVideoChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_BufferProgressChanged")]
	public static extern void QMediaPlayer_Connect_BufferProgressChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_SeekableChanged")]
	public static extern void QMediaPlayer_Connect_SeekableChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PlaybackRateChanged")]
	public static extern void QMediaPlayer_Connect_PlaybackRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_LoopsChanged")]
	public static extern void QMediaPlayer_Connect_LoopsChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_MetaDataChanged")]
	public static extern void QMediaPlayer_Connect_MetaDataChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_VideoOutputChanged")]
	public static extern void QMediaPlayer_Connect_VideoOutputChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_AudioOutputChanged")]
	public static extern void QMediaPlayer_Connect_AudioOutputChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_TracksChanged")]
	public static extern void QMediaPlayer_Connect_TracksChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ActiveTracksChanged")]
	public static extern void QMediaPlayer_Connect_ActiveTracksChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ErrorChanged")]
	public static extern void QMediaPlayer_Connect_ErrorChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ErrorOccurred")]
	public static extern void QMediaPlayer_Connect_ErrorOccurred(Self* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Tr2")]
	public static extern libqt_string QMediaPlayer_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaPlayer_Tr3")]
	public static extern libqt_string QMediaPlayer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMediaPlayer_SetSourceDevice2")]
	public static extern void QMediaPlayer_SetSourceDevice2(Self* c_this, QIODevice* device, QUrl* sourceUrl);
}