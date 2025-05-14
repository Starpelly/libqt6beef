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
public struct QMediaPlayerPtr : IQMediaPlayer, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMediaPlayer_new());
	}
	
	public void Dispose()
	{
		CQt.QMediaPlayer_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QMediaPlayer_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QMediaPlayer_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QMediaPlayer_Metacall(this.nativePtr, (int64)param1, param2, param3);
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
		CQt.QMediaPlayer_SetAudioOutput(this.nativePtr, (output == default || output.NativePtr == default) ? default : output.NativePtr);
	}
	
	public void* AudioOutput()
	{
		return CQt.QMediaPlayer_AudioOutput(this.nativePtr);
	}
	
	public void SetVideoOutput(IQObject videoOutput)
	{
		CQt.QMediaPlayer_SetVideoOutput(this.nativePtr, (videoOutput == default || videoOutput.NativePtr == default) ? default : videoOutput.NativePtr);
	}
	
	public void* VideoOutput()
	{
		return CQt.QMediaPlayer_VideoOutput(this.nativePtr);
	}
	
	public void SetVideoSink(IQVideoSink sink)
	{
		CQt.QMediaPlayer_SetVideoSink(this.nativePtr, (sink == default || sink.NativePtr == default) ? default : sink.NativePtr);
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
		CQt.QMediaPlayer_SetSource(this.nativePtr, (source == default || source.NativePtr == default) ? default : source.NativePtr);
	}
	
	public void SetSourceDevice(IQIODevice device)
	{
		CQt.QMediaPlayer_SetSourceDevice(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr);
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
		CQt.QMediaPlayer_SetSourceDevice2(this.nativePtr, (device == default || device.NativePtr == default) ? default : device.NativePtr, (sourceUrl == default || sourceUrl.NativePtr == default) ? default : sourceUrl.NativePtr);
	}
	
	public bool Event(IQEvent event)
	{
		return CQt.QObject_Event(this.nativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public bool EventFilter(IQObject watched, IQEvent event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, (watched == default || watched.NativePtr == default) ? default : watched.NativePtr, (event == default || event.NativePtr == default) ? default : event.NativePtr);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(char8* name)
	{
		CQt.QObject_SetObjectName(this.nativePtr, name);
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
		CQt.QObject_MoveToThread(this.nativePtr, (thread == default || thread.NativePtr == default) ? default : thread.NativePtr);
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
		CQt.QObject_SetParent(this.nativePtr, (parent == default || parent.NativePtr == default) ? default : parent.NativePtr);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, (filterObj == default || filterObj.NativePtr == default) ? default : filterObj.NativePtr);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, (obj == default || obj.NativePtr == default) ? default : obj.NativePtr);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		CQt.QObject_Connect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		CQt.QObject_Connect2(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return CQt.QObject_Disconnect((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (member == default || member.NativePtr == default) ? default : member.NativePtr);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection((param1 == default || param1.NativePtr == default) ? default : param1.NativePtr);
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
		return CQt.QObject_SetProperty(this.nativePtr, name, (value == default || value.NativePtr == default) ? default : value.NativePtr);
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
		return CQt.QObject_StartTimer2(this.nativePtr, interval, (int64)timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		CQt.QObject_Connect5((sender == default || sender.NativePtr == default) ? default : sender.NativePtr, (signal == default || signal.NativePtr == default) ? default : signal.NativePtr, (receiver == default || receiver.NativePtr == default) ? default : receiver.NativePtr, (method == default || method.NativePtr == default) ? default : method.NativePtr, (int64)typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		CQt.QObject_Connect4(this.nativePtr, (sender == default || sender.NativePtr == default) ? default : sender.NativePtr, signal, member, (int64)typeVal);
	}
	
}
public class QMediaPlayer
{
	public QMediaPlayerPtr handle;
	
	public static implicit operator QMediaPlayerPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMediaPlayerPtr.New();
	}
	
	public ~this()
	{
		this.handle.Dispose();
	}
	
	public virtual void* MetaObject()
	{
		return this.handle.MetaObject();
	}
	
	public virtual void* Metacast(char8* param1)
	{
		return this.handle.Metacast(param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return this.handle.Metacall(param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return QMediaPlayerPtr.Tr(s);
	}
	
	public void[] AudioTracks()
	{
		return this.handle.AudioTracks();
	}
	
	public void[] VideoTracks()
	{
		return this.handle.VideoTracks();
	}
	
	public void[] SubtitleTracks()
	{
		return this.handle.SubtitleTracks();
	}
	
	public int32 ActiveAudioTrack()
	{
		return this.handle.ActiveAudioTrack();
	}
	
	public int32 ActiveVideoTrack()
	{
		return this.handle.ActiveVideoTrack();
	}
	
	public int32 ActiveSubtitleTrack()
	{
		return this.handle.ActiveSubtitleTrack();
	}
	
	public void SetActiveAudioTrack(int32 index)
	{
		this.handle.SetActiveAudioTrack(index);
	}
	
	public void SetActiveVideoTrack(int32 index)
	{
		this.handle.SetActiveVideoTrack(index);
	}
	
	public void SetActiveSubtitleTrack(int32 index)
	{
		this.handle.SetActiveSubtitleTrack(index);
	}
	
	public void SetAudioOutput(IQAudioOutput output)
	{
		this.handle.SetAudioOutput(output);
	}
	
	public void* AudioOutput()
	{
		return this.handle.AudioOutput();
	}
	
	public void SetVideoOutput(IQObject videoOutput)
	{
		this.handle.SetVideoOutput(videoOutput);
	}
	
	public void* VideoOutput()
	{
		return this.handle.VideoOutput();
	}
	
	public void SetVideoSink(IQVideoSink sink)
	{
		this.handle.SetVideoSink(sink);
	}
	
	public void* VideoSink()
	{
		return this.handle.VideoSink();
	}
	
	public void Source()
	{
		this.handle.Source();
	}
	
	public void* SourceDevice()
	{
		return this.handle.SourceDevice();
	}
	
	public int64 PlaybackState()
	{
		return this.handle.PlaybackState();
	}
	
	public int64 MediaStatus()
	{
		return this.handle.MediaStatus();
	}
	
	public int64 Duration()
	{
		return this.handle.Duration();
	}
	
	public int64 Position()
	{
		return this.handle.Position();
	}
	
	public bool HasAudio()
	{
		return this.handle.HasAudio();
	}
	
	public bool HasVideo()
	{
		return this.handle.HasVideo();
	}
	
	public float BufferProgress()
	{
		return this.handle.BufferProgress();
	}
	
	public void BufferedTimeRange()
	{
		this.handle.BufferedTimeRange();
	}
	
	public bool IsSeekable()
	{
		return this.handle.IsSeekable();
	}
	
	public double PlaybackRate()
	{
		return this.handle.PlaybackRate();
	}
	
	public int32 Loops()
	{
		return this.handle.Loops();
	}
	
	public void SetLoops(int32 loops)
	{
		this.handle.SetLoops(loops);
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public bool IsAvailable()
	{
		return this.handle.IsAvailable();
	}
	
	public void MetaData()
	{
		this.handle.MetaData();
	}
	
	public void Play()
	{
		this.handle.Play();
	}
	
	public void Pause()
	{
		this.handle.Pause();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public void SetPosition(int64 position)
	{
		this.handle.SetPosition(position);
	}
	
	public void SetPlaybackRate(double rate)
	{
		this.handle.SetPlaybackRate(rate);
	}
	
	public void SetSource(IQUrl source)
	{
		this.handle.SetSource(source);
	}
	
	public void SetSourceDevice(IQIODevice device)
	{
		this.handle.SetSourceDevice(device);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QMediaPlayerPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QMediaPlayerPtr.Tr3(s, c, n);
	}
	
	public void SetSourceDevice2(IQIODevice device, IQUrl sourceUrl)
	{
		this.handle.SetSourceDevice2(device, sourceUrl);
	}
	
	public virtual bool Event(IQEvent event)
	{
		return this.handle.Event(event);
	}
	
	public virtual bool EventFilter(IQObject watched, IQEvent event)
	{
		return this.handle.EventFilter(watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return this.handle.ObjectName();
	}
	
	public void SetObjectName(char8* name)
	{
		this.handle.SetObjectName(name);
	}
	
	public bool IsWidgetType()
	{
		return this.handle.IsWidgetType();
	}
	
	public bool IsWindowType()
	{
		return this.handle.IsWindowType();
	}
	
	public bool IsQuickItemType()
	{
		return this.handle.IsQuickItemType();
	}
	
	public bool SignalsBlocked()
	{
		return this.handle.SignalsBlocked();
	}
	
	public bool BlockSignals(bool b)
	{
		return this.handle.BlockSignals(b);
	}
	
	public void* Thread()
	{
		return this.handle.Thread();
	}
	
	public void MoveToThread(IQThread thread)
	{
		this.handle.MoveToThread(thread);
	}
	
	public int32 StartTimer(int32 interval)
	{
		return this.handle.StartTimer(interval);
	}
	
	public void KillTimer(int32 id)
	{
		this.handle.KillTimer(id);
	}
	
	public void*[] Children()
	{
		return this.handle.Children();
	}
	
	public void SetParent(IQObject parent)
	{
		this.handle.SetParent(parent);
	}
	
	public void InstallEventFilter(IQObject filterObj)
	{
		this.handle.InstallEventFilter(filterObj);
	}
	
	public void RemoveEventFilter(IQObject obj)
	{
		this.handle.RemoveEventFilter(obj);
	}
	
	public static void Connect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method)
	{
		QMediaPlayerPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QMediaPlayerPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QMediaPlayerPtr.DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		this.handle.DumpObjectTree();
	}
	
	public void DumpObjectInfo()
	{
		this.handle.DumpObjectInfo();
	}
	
	public bool SetProperty(char8* name, IQVariant value)
	{
		return this.handle.SetProperty(name, value);
	}
	
	public void Property(char8* name)
	{
		this.handle.Property(name);
	}
	
	public libqt_string[] DynamicPropertyNames()
	{
		return this.handle.DynamicPropertyNames();
	}
	
	public void* BindingStorage()
	{
		return this.handle.BindingStorage();
	}
	
	public void* BindingStorage2()
	{
		return this.handle.BindingStorage2();
	}
	
	public void* Parent()
	{
		return this.handle.Parent();
	}
	
	public bool Inherits(char8* classname)
	{
		return this.handle.Inherits(classname);
	}
	
	public void DeleteLater()
	{
		this.handle.DeleteLater();
	}
	
	public int32 StartTimer2(int32 interval, int64 timerType)
	{
		return this.handle.StartTimer2(interval, timerType);
	}
	
	public static void Connect5(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod method, int64 typeVal)
	{
		QMediaPlayerPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
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