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
public struct QMediaPlayer
{
	[LinkName("QMediaPlayer_new")]
	public static extern void* QMediaPlayer_new();
	[LinkName("QMediaPlayer_new2")]
	public static extern void* QMediaPlayer_new2(QObject parent);
	[LinkName("QMediaPlayer_MetaObject")]
	public static extern QMetaObject QMediaPlayer_MetaObject(void* c_this);
	[LinkName("QMediaPlayer_Metacast")]
	public static extern void QMediaPlayer_Metacast(void* c_this, char8[] param1);
	[LinkName("QMediaPlayer_Metacall")]
	public static extern int32 QMediaPlayer_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMediaPlayer_Tr")]
	public static extern char8[] QMediaPlayer_Tr(char8[] s);
	[LinkName("QMediaPlayer_AudioTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_AudioTracks(void* c_this);
	[LinkName("QMediaPlayer_VideoTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_VideoTracks(void* c_this);
	[LinkName("QMediaPlayer_SubtitleTracks")]
	public static extern QMediaMetaData[] QMediaPlayer_SubtitleTracks(void* c_this);
	[LinkName("QMediaPlayer_ActiveAudioTrack")]
	public static extern int32 QMediaPlayer_ActiveAudioTrack(void* c_this);
	[LinkName("QMediaPlayer_ActiveVideoTrack")]
	public static extern int32 QMediaPlayer_ActiveVideoTrack(void* c_this);
	[LinkName("QMediaPlayer_ActiveSubtitleTrack")]
	public static extern int32 QMediaPlayer_ActiveSubtitleTrack(void* c_this);
	[LinkName("QMediaPlayer_SetActiveAudioTrack")]
	public static extern void QMediaPlayer_SetActiveAudioTrack(void* c_this, int32 index);
	[LinkName("QMediaPlayer_SetActiveVideoTrack")]
	public static extern void QMediaPlayer_SetActiveVideoTrack(void* c_this, int32 index);
	[LinkName("QMediaPlayer_SetActiveSubtitleTrack")]
	public static extern void QMediaPlayer_SetActiveSubtitleTrack(void* c_this, int32 index);
	[LinkName("QMediaPlayer_SetAudioOutput")]
	public static extern void QMediaPlayer_SetAudioOutput(void* c_this, QAudioOutput output);
	[LinkName("QMediaPlayer_AudioOutput")]
	public static extern QAudioOutput QMediaPlayer_AudioOutput(void* c_this);
	[LinkName("QMediaPlayer_SetVideoOutput")]
	public static extern void QMediaPlayer_SetVideoOutput(void* c_this, QObject videoOutput);
	[LinkName("QMediaPlayer_VideoOutput")]
	public static extern QObject QMediaPlayer_VideoOutput(void* c_this);
	[LinkName("QMediaPlayer_SetVideoSink")]
	public static extern void QMediaPlayer_SetVideoSink(void* c_this, QVideoSink sink);
	[LinkName("QMediaPlayer_VideoSink")]
	public static extern QVideoSink QMediaPlayer_VideoSink(void* c_this);
	[LinkName("QMediaPlayer_Source")]
	public static extern QUrl QMediaPlayer_Source(void* c_this);
	[LinkName("QMediaPlayer_SourceDevice")]
	public static extern QIODevice QMediaPlayer_SourceDevice(void* c_this);
	[LinkName("QMediaPlayer_PlaybackState")]
	public static extern int64 QMediaPlayer_PlaybackState(void* c_this);
	[LinkName("QMediaPlayer_MediaStatus")]
	public static extern int64 QMediaPlayer_MediaStatus(void* c_this);
	[LinkName("QMediaPlayer_Duration")]
	public static extern int64 QMediaPlayer_Duration(void* c_this);
	[LinkName("QMediaPlayer_Position")]
	public static extern int64 QMediaPlayer_Position(void* c_this);
	[LinkName("QMediaPlayer_HasAudio")]
	public static extern bool QMediaPlayer_HasAudio(void* c_this);
	[LinkName("QMediaPlayer_HasVideo")]
	public static extern bool QMediaPlayer_HasVideo(void* c_this);
	[LinkName("QMediaPlayer_BufferProgress")]
	public static extern float QMediaPlayer_BufferProgress(void* c_this);
	[LinkName("QMediaPlayer_BufferedTimeRange")]
	public static extern QMediaTimeRange QMediaPlayer_BufferedTimeRange(void* c_this);
	[LinkName("QMediaPlayer_IsSeekable")]
	public static extern bool QMediaPlayer_IsSeekable(void* c_this);
	[LinkName("QMediaPlayer_PlaybackRate")]
	public static extern double QMediaPlayer_PlaybackRate(void* c_this);
	[LinkName("QMediaPlayer_Loops")]
	public static extern int32 QMediaPlayer_Loops(void* c_this);
	[LinkName("QMediaPlayer_SetLoops")]
	public static extern void QMediaPlayer_SetLoops(void* c_this, int32 loops);
	[LinkName("QMediaPlayer_Error")]
	public static extern int64 QMediaPlayer_Error(void* c_this);
	[LinkName("QMediaPlayer_ErrorString")]
	public static extern char8[] QMediaPlayer_ErrorString(void* c_this);
	[LinkName("QMediaPlayer_IsAvailable")]
	public static extern bool QMediaPlayer_IsAvailable(void* c_this);
	[LinkName("QMediaPlayer_MetaData")]
	public static extern QMediaMetaData QMediaPlayer_MetaData(void* c_this);
	[LinkName("QMediaPlayer_Play")]
	public static extern void QMediaPlayer_Play(void* c_this);
	[LinkName("QMediaPlayer_Pause")]
	public static extern void QMediaPlayer_Pause(void* c_this);
	[LinkName("QMediaPlayer_Stop")]
	public static extern void QMediaPlayer_Stop(void* c_this);
	[LinkName("QMediaPlayer_SetPosition")]
	public static extern void QMediaPlayer_SetPosition(void* c_this, int64 position);
	[LinkName("QMediaPlayer_SetPlaybackRate")]
	public static extern void QMediaPlayer_SetPlaybackRate(void* c_this, double rate);
	[LinkName("QMediaPlayer_SetSource")]
	public static extern void QMediaPlayer_SetSource(void* c_this, QUrl source);
	[LinkName("QMediaPlayer_SetSourceDevice")]
	public static extern void QMediaPlayer_SetSourceDevice(void* c_this, QIODevice device);
	[LinkName("QMediaPlayer_SourceChanged")]
	public static extern void QMediaPlayer_SourceChanged(void* c_this, QUrl media);
	[LinkName("QMediaPlayer_PlaybackStateChanged")]
	public static extern void QMediaPlayer_PlaybackStateChanged(void* c_this, int64 newState);
	[LinkName("QMediaPlayer_MediaStatusChanged")]
	public static extern void QMediaPlayer_MediaStatusChanged(void* c_this, int64 status);
	[LinkName("QMediaPlayer_DurationChanged")]
	public static extern void QMediaPlayer_DurationChanged(void* c_this, int64 duration);
	[LinkName("QMediaPlayer_PositionChanged")]
	public static extern void QMediaPlayer_PositionChanged(void* c_this, int64 position);
	[LinkName("QMediaPlayer_HasAudioChanged")]
	public static extern void QMediaPlayer_HasAudioChanged(void* c_this, bool available);
	[LinkName("QMediaPlayer_HasVideoChanged")]
	public static extern void QMediaPlayer_HasVideoChanged(void* c_this, bool videoAvailable);
	[LinkName("QMediaPlayer_BufferProgressChanged")]
	public static extern void QMediaPlayer_BufferProgressChanged(void* c_this, float progress);
	[LinkName("QMediaPlayer_SeekableChanged")]
	public static extern void QMediaPlayer_SeekableChanged(void* c_this, bool seekable);
	[LinkName("QMediaPlayer_PlaybackRateChanged")]
	public static extern void QMediaPlayer_PlaybackRateChanged(void* c_this, double rate);
	[LinkName("QMediaPlayer_LoopsChanged")]
	public static extern void QMediaPlayer_LoopsChanged(void* c_this);
	[LinkName("QMediaPlayer_MetaDataChanged")]
	public static extern void QMediaPlayer_MetaDataChanged(void* c_this);
	[LinkName("QMediaPlayer_VideoOutputChanged")]
	public static extern void QMediaPlayer_VideoOutputChanged(void* c_this);
	[LinkName("QMediaPlayer_AudioOutputChanged")]
	public static extern void QMediaPlayer_AudioOutputChanged(void* c_this);
	[LinkName("QMediaPlayer_TracksChanged")]
	public static extern void QMediaPlayer_TracksChanged(void* c_this);
	[LinkName("QMediaPlayer_ActiveTracksChanged")]
	public static extern void QMediaPlayer_ActiveTracksChanged(void* c_this);
	[LinkName("QMediaPlayer_ErrorChanged")]
	public static extern void QMediaPlayer_ErrorChanged(void* c_this);
	[LinkName("QMediaPlayer_ErrorOccurred")]
	public static extern void QMediaPlayer_ErrorOccurred(void* c_this, int64 errorVal, char8[] errorString);
	[LinkName("QMediaPlayer_Tr2")]
	public static extern char8[] QMediaPlayer_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaPlayer_Tr3")]
	public static extern char8[] QMediaPlayer_Tr3(char8[] s, char8[] c, int32 n);
	[LinkName("QMediaPlayer_SetSourceDevice2")]
	public static extern void QMediaPlayer_SetSourceDevice2(void* c_this, QIODevice device, QUrl sourceUrl);
}