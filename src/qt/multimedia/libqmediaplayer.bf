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
public interface IQMediaPlayer
{
	void* NativePtr { get; }
}
public class QMediaPlayer : IQMediaPlayer, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMediaPlayer_new();
	}
	
	public ~this()
	{
		CQt.QMediaPlayer_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMediaPlayer_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return CQt.QMediaPlayer_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMediaPlayer_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMediaPlayer_Tr(s);
	}
	
	public void[] AudioTracks()
	{
		return CQt.QMediaPlayer_AudioTracks(this.nativePtr);
	}
	
	public void[] VideoTracks()
	{
		return CQt.QMediaPlayer_VideoTracks(this.nativePtr);
	}
	
	public void[] SubtitleTracks()
	{
		return CQt.QMediaPlayer_SubtitleTracks(this.nativePtr);
	}
	
	public int32 ActiveAudioTrack()
	{
		return CQt.QMediaPlayer_ActiveAudioTrack(this.nativePtr);
	}
	
	public int32 ActiveVideoTrack()
	{
		return CQt.QMediaPlayer_ActiveVideoTrack(this.nativePtr);
	}
	
	public int32 ActiveSubtitleTrack()
	{
		return CQt.QMediaPlayer_ActiveSubtitleTrack(this.nativePtr);
	}
	
	public void SetActiveAudioTrack(int32 index)
	{
		CQt.QMediaPlayer_SetActiveAudioTrack(this.nativePtr, index);
	}
	
	public void SetActiveVideoTrack(int32 index)
	{
		CQt.QMediaPlayer_SetActiveVideoTrack(this.nativePtr, index);
	}
	
	public void SetActiveSubtitleTrack(int32 index)
	{
		CQt.QMediaPlayer_SetActiveSubtitleTrack(this.nativePtr, index);
	}
	
	public void SetAudioOutput(IQAudioOutput output)
	{
		CQt.QMediaPlayer_SetAudioOutput(this.nativePtr, (output == null) ? null : (void*)output.NativePtr);
	}
	
	public void* AudioOutput()
	{
		return CQt.QMediaPlayer_AudioOutput(this.nativePtr);
	}
	
	public void SetVideoOutput(IQObject videoOutput)
	{
		CQt.QMediaPlayer_SetVideoOutput(this.nativePtr, (videoOutput == null) ? null : (void*)videoOutput.NativePtr);
	}
	
	public void* VideoOutput()
	{
		return CQt.QMediaPlayer_VideoOutput(this.nativePtr);
	}
	
	public void SetVideoSink(IQVideoSink sink)
	{
		CQt.QMediaPlayer_SetVideoSink(this.nativePtr, (sink == null) ? null : (void*)sink.NativePtr);
	}
	
	public void* VideoSink()
	{
		return CQt.QMediaPlayer_VideoSink(this.nativePtr);
	}
	
	public void Source()
	{
		CQt.QMediaPlayer_Source(this.nativePtr);
	}
	
	public void* SourceDevice()
	{
		return CQt.QMediaPlayer_SourceDevice(this.nativePtr);
	}
	
	public int64 PlaybackState()
	{
		return CQt.QMediaPlayer_PlaybackState(this.nativePtr);
	}
	
	public int64 MediaStatus()
	{
		return CQt.QMediaPlayer_MediaStatus(this.nativePtr);
	}
	
	public int64 Duration()
	{
		return CQt.QMediaPlayer_Duration(this.nativePtr);
	}
	
	public int64 Position()
	{
		return CQt.QMediaPlayer_Position(this.nativePtr);
	}
	
	public bool HasAudio()
	{
		return CQt.QMediaPlayer_HasAudio(this.nativePtr);
	}
	
	public bool HasVideo()
	{
		return CQt.QMediaPlayer_HasVideo(this.nativePtr);
	}
	
	public float BufferProgress()
	{
		return CQt.QMediaPlayer_BufferProgress(this.nativePtr);
	}
	
	public void BufferedTimeRange()
	{
		CQt.QMediaPlayer_BufferedTimeRange(this.nativePtr);
	}
	
	public bool IsSeekable()
	{
		return CQt.QMediaPlayer_IsSeekable(this.nativePtr);
	}
	
	public double PlaybackRate()
	{
		return CQt.QMediaPlayer_PlaybackRate(this.nativePtr);
	}
	
	public int32 Loops()
	{
		return CQt.QMediaPlayer_Loops(this.nativePtr);
	}
	
	public void SetLoops(int32 loops)
	{
		CQt.QMediaPlayer_SetLoops(this.nativePtr, loops);
	}
	
	public int64 Error()
	{
		return CQt.QMediaPlayer_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QMediaPlayer_ErrorString(this.nativePtr);
	}
	
	public bool IsAvailable()
	{
		return CQt.QMediaPlayer_IsAvailable(this.nativePtr);
	}
	
	public void MetaData()
	{
		CQt.QMediaPlayer_MetaData(this.nativePtr);
	}
	
	public void Play()
	{
		CQt.QMediaPlayer_Play(this.nativePtr);
	}
	
	public void Pause()
	{
		CQt.QMediaPlayer_Pause(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QMediaPlayer_Stop(this.nativePtr);
	}
	
	public void SetPosition(int64 position)
	{
		CQt.QMediaPlayer_SetPosition(this.nativePtr, position);
	}
	
	public void SetPlaybackRate(double rate)
	{
		CQt.QMediaPlayer_SetPlaybackRate(this.nativePtr, rate);
	}
	
	public void SetSource(IQUrl source)
	{
		CQt.QMediaPlayer_SetSource(this.nativePtr, (source == default) ? default : (void*)source.NativePtr);
	}
	
	public void SetSourceDevice(IQIODevice device)
	{
		CQt.QMediaPlayer_SetSourceDevice(this.nativePtr, (device == null) ? null : (void*)device.NativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMediaPlayer_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMediaPlayer_Tr3(s, c, n);
	}
	
	public void SetSourceDevice2(IQIODevice device, IQUrl sourceUrl)
	{
		CQt.QMediaPlayer_SetSourceDevice2(this.nativePtr, (device == null) ? null : (void*)device.NativePtr, (sourceUrl == default) ? default : (void*)sourceUrl.NativePtr);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == null) ? null : (void*)watched.NativePtr, (event == null) ? null : (void*)event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(IQAnyStringView name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, (name == default) ? default : (char8*)name.NativePtr);
	}
	
	public bool IsWidgetType()
	{
		return CQt.QObject_IsWidgetType(this.nativePtr);
	}
	
	public bool IsWindowType()
	{
		return CQt.QObject_IsWindowType(this.nativePtr);
	}
	
	public bool IsQuickItemType()
	{
		return CQt.QObject_IsQuickItemType(this.nativePtr);
	}
	
	public bool SignalsBlocked()
	{
		return CQt.QObject_SignalsBlocked(this.nativePtr);
	}
	
	public bool BlockSignals(bool b)
	{
		return CQt.QObject_BlockSignals(this.nativePtr, b);
	}
	
	public void* Thread()
	{
		return CQt.QObject_Thread(this.nativePtr);
	}
	
	public void MoveToThread(IQThread thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, (thread == null) ? null : (void*)thread.NativePtr);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return CQt.QObject_StartTimer(this.nativePtr, interval);
	}
	
	public void KillTimer(int32 id)
	{
		CQt.QObject_KillTimer(this.nativePtr, id);
	}
	
	public void*[] Children()
	{
		return CQt.QObject_Children(this.nativePtr);
	}
	
	public void SetParent(IQObject parent)
	{
		CQt.QObject_SetParent(this.nativePtr, (parent == null) ? null : (void*)parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == null) ? null : (void*)filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == null) ? null : (void*)obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (member == default) ? default : (void*)member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default) ? default : (void*)param1.NativePtr);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default) ? default : (void*)value.NativePtr);
	}
	
	public void Property(char8* name)
	{
		CQt.QObject_Property(this.nativePtr, name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return CQt.QObject_DynamicPropertyNames(this.nativePtr);
	}
	
	public void* BindingStorage()
	{
		return CQt.QObject_BindingStorage(this.nativePtr);
	}
	
	public void* BindingStorage2()
	{
		return CQt.QObject_BindingStorage2(this.nativePtr);
	}
	
	public void* Parent()
	{
		return CQt.QObject_Parent(this.nativePtr);
	}
	
	public bool Inherits(char8* classname)
	{
		return CQt.QObject_Inherits(this.nativePtr, classname);
	}
	
	public void DeleteLater()
	{
		CQt.QObject_DeleteLater(this.nativePtr);
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return CQt.QObject_StartTimer2(this.nativePtr, interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == null) ? null : (void*)sender.NativePtr, (signal == default) ? default : (void*)signal.NativePtr, (receiver == null) ? null : (void*)receiver.NativePtr, (method == default) ? default : (void*)method.NativePtr, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == null) ? null : (void*)sender.NativePtr, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QMediaPlayer_new")]
	public static extern void* QMediaPlayer_new();
	[LinkName("QMediaPlayer_new2")]
	public static extern void* QMediaPlayer_new2(void* parent);
	[LinkName("QMediaPlayer_MetaObject")]
	public static extern void* QMediaPlayer_MetaObject(void* c_this);
	[LinkName("QMediaPlayer_Metacast")]
	public static extern void* QMediaPlayer_Metacast(void* c_this, char8* param1);
	[LinkName("QMediaPlayer_Metacall")]
	public static extern int32 QMediaPlayer_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMediaPlayer_Tr")]
	public static extern libqt_string QMediaPlayer_Tr(char8* s);
	[LinkName("QMediaPlayer_AudioTracks")]
	public static extern void[] QMediaPlayer_AudioTracks(void* c_this);
	[LinkName("QMediaPlayer_VideoTracks")]
	public static extern void[] QMediaPlayer_VideoTracks(void* c_this);
	[LinkName("QMediaPlayer_SubtitleTracks")]
	public static extern void[] QMediaPlayer_SubtitleTracks(void* c_this);
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
	public static extern void QMediaPlayer_SetAudioOutput(void* c_this, void* output);
	[LinkName("QMediaPlayer_AudioOutput")]
	public static extern void* QMediaPlayer_AudioOutput(void* c_this);
	[LinkName("QMediaPlayer_SetVideoOutput")]
	public static extern void QMediaPlayer_SetVideoOutput(void* c_this, void* videoOutput);
	[LinkName("QMediaPlayer_VideoOutput")]
	public static extern void* QMediaPlayer_VideoOutput(void* c_this);
	[LinkName("QMediaPlayer_SetVideoSink")]
	public static extern void QMediaPlayer_SetVideoSink(void* c_this, void* sink);
	[LinkName("QMediaPlayer_VideoSink")]
	public static extern void* QMediaPlayer_VideoSink(void* c_this);
	[LinkName("QMediaPlayer_Source")]
	public static extern void QMediaPlayer_Source(void* c_this);
	[LinkName("QMediaPlayer_SourceDevice")]
	public static extern void* QMediaPlayer_SourceDevice(void* c_this);
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
	public static extern void QMediaPlayer_BufferedTimeRange(void* c_this);
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
	public static extern libqt_string QMediaPlayer_ErrorString(void* c_this);
	[LinkName("QMediaPlayer_IsAvailable")]
	public static extern bool QMediaPlayer_IsAvailable(void* c_this);
	[LinkName("QMediaPlayer_MetaData")]
	public static extern void QMediaPlayer_MetaData(void* c_this);
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
	public static extern void QMediaPlayer_SetSource(void* c_this, void* source);
	[LinkName("QMediaPlayer_SetSourceDevice")]
	public static extern void QMediaPlayer_SetSourceDevice(void* c_this, void* device);
	[LinkName("QMediaPlayer_Connect_SourceChanged")]
	public static extern void QMediaPlayer_Connect_SourceChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PlaybackStateChanged")]
	public static extern void QMediaPlayer_Connect_PlaybackStateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_MediaStatusChanged")]
	public static extern void QMediaPlayer_Connect_MediaStatusChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_DurationChanged")]
	public static extern void QMediaPlayer_Connect_DurationChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PositionChanged")]
	public static extern void QMediaPlayer_Connect_PositionChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_HasAudioChanged")]
	public static extern void QMediaPlayer_Connect_HasAudioChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_HasVideoChanged")]
	public static extern void QMediaPlayer_Connect_HasVideoChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_BufferProgressChanged")]
	public static extern void QMediaPlayer_Connect_BufferProgressChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_SeekableChanged")]
	public static extern void QMediaPlayer_Connect_SeekableChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_PlaybackRateChanged")]
	public static extern void QMediaPlayer_Connect_PlaybackRateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_LoopsChanged")]
	public static extern void QMediaPlayer_Connect_LoopsChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_MetaDataChanged")]
	public static extern void QMediaPlayer_Connect_MetaDataChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_VideoOutputChanged")]
	public static extern void QMediaPlayer_Connect_VideoOutputChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_AudioOutputChanged")]
	public static extern void QMediaPlayer_Connect_AudioOutputChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_TracksChanged")]
	public static extern void QMediaPlayer_Connect_TracksChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ActiveTracksChanged")]
	public static extern void QMediaPlayer_Connect_ActiveTracksChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ErrorChanged")]
	public static extern void QMediaPlayer_Connect_ErrorChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Connect_ErrorOccurred")]
	public static extern void QMediaPlayer_Connect_ErrorOccurred(void* c_this, c_intptr slot);
	[LinkName("QMediaPlayer_Tr2")]
	public static extern libqt_string QMediaPlayer_Tr2(char8* s, char8* c);
	[LinkName("QMediaPlayer_Tr3")]
	public static extern libqt_string QMediaPlayer_Tr3(char8* s, char8* c, int32 n);
	[LinkName("QMediaPlayer_SetSourceDevice2")]
	public static extern void QMediaPlayer_SetSourceDevice2(void* c_this, void* device, void* sourceUrl);
	/// Delete this object from C++ memory
	[LinkName("QMediaPlayer_Delete")]
	public static extern void QMediaPlayer_Delete(void* self);
}