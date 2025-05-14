using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QMediaRecorder__Quality
{
	VeryLowQuality = 0,
	LowQuality = 1,
	NormalQuality = 2,
	HighQuality = 3,
	VeryHighQuality = 4,
}
[AllowDuplicates]
public enum QMediaRecorder__EncodingMode
{
	ConstantQualityEncoding = 0,
	ConstantBitRateEncoding = 1,
	AverageBitRateEncoding = 2,
	TwoPassEncoding = 3,
}
[AllowDuplicates]
public enum QMediaRecorder__RecorderState
{
	StoppedState = 0,
	RecordingState = 1,
	PausedState = 2,
}
[AllowDuplicates]
public enum QMediaRecorder__Error
{
	NoError = 0,
	ResourceError = 1,
	FormatError = 2,
	OutOfSpaceError = 3,
	LocationNotWritable = 4,
}
public interface IQMediaRecorder
{
	void* NativePtr { get; }
}
public struct QMediaRecorderPtr : IQMediaRecorder, IDisposable, IQObject
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this(void* ptr)
	{
		this.nativePtr = ptr;
	}
	
	public static Self New()
	{
		return .(CQt.QMediaRecorder_new());
	}
	
	public void Dispose()
	{
		CQt.QMediaRecorder_Delete(this.nativePtr);
	}
	
	public void* MetaObject()
	{
		return CQt.QMediaRecorder_MetaObject(this.nativePtr);
	}
	
	public void* Metacast(char8* param1)
	{
		return CQt.QMediaRecorder_Metacast(this.nativePtr, param1);
	}
	
	public int32 Metacall(int64 param1, int32 param2, void* param3)
	{
		return CQt.QMediaRecorder_Metacall(this.nativePtr, (int64)param1, param2, param3);
	}
	
	public static libqt_string Tr(char8* s)
	{
		return CQt.QMediaRecorder_Tr(s);
	}
	
	public bool IsAvailable()
	{
		return CQt.QMediaRecorder_IsAvailable(this.nativePtr);
	}
	
	public void OutputLocation()
	{
		CQt.QMediaRecorder_OutputLocation(this.nativePtr);
	}
	
	public void SetOutputLocation(IQUrl location)
	{
		CQt.QMediaRecorder_SetOutputLocation(this.nativePtr, (location == default || location.NativePtr == default) ? default : location.NativePtr);
	}
	
	public void ActualLocation()
	{
		CQt.QMediaRecorder_ActualLocation(this.nativePtr);
	}
	
	public int64 RecorderState()
	{
		return CQt.QMediaRecorder_RecorderState(this.nativePtr);
	}
	
	public int64 Error()
	{
		return CQt.QMediaRecorder_Error(this.nativePtr);
	}
	
	public libqt_string ErrorString()
	{
		return CQt.QMediaRecorder_ErrorString(this.nativePtr);
	}
	
	public int64 Duration()
	{
		return CQt.QMediaRecorder_Duration(this.nativePtr);
	}
	
	public void MediaFormat()
	{
		CQt.QMediaRecorder_MediaFormat(this.nativePtr);
	}
	
	public void SetMediaFormat(IQMediaFormat format)
	{
		CQt.QMediaRecorder_SetMediaFormat(this.nativePtr, (format == default || format.NativePtr == default) ? default : format.NativePtr);
	}
	
	public int64 EncodingMode()
	{
		return CQt.QMediaRecorder_EncodingMode(this.nativePtr);
	}
	
	public void SetEncodingMode(int64 encodingMode)
	{
		CQt.QMediaRecorder_SetEncodingMode(this.nativePtr, (int64)encodingMode);
	}
	
	public int64 Quality()
	{
		return CQt.QMediaRecorder_Quality(this.nativePtr);
	}
	
	public void SetQuality(int64 quality)
	{
		CQt.QMediaRecorder_SetQuality(this.nativePtr, (int64)quality);
	}
	
	public void VideoResolution()
	{
		CQt.QMediaRecorder_VideoResolution(this.nativePtr);
	}
	
	public void SetVideoResolution(IQSize videoResolution)
	{
		CQt.QMediaRecorder_SetVideoResolution(this.nativePtr, (videoResolution == default || videoResolution.NativePtr == default) ? default : videoResolution.NativePtr);
	}
	
	public void SetVideoResolution2(int32 width, int32 height)
	{
		CQt.QMediaRecorder_SetVideoResolution2(this.nativePtr, width, height);
	}
	
	public double VideoFrameRate()
	{
		return CQt.QMediaRecorder_VideoFrameRate(this.nativePtr);
	}
	
	public void SetVideoFrameRate(double frameRate)
	{
		CQt.QMediaRecorder_SetVideoFrameRate(this.nativePtr, frameRate);
	}
	
	public int32 VideoBitRate()
	{
		return CQt.QMediaRecorder_VideoBitRate(this.nativePtr);
	}
	
	public void SetVideoBitRate(int32 bitRate)
	{
		CQt.QMediaRecorder_SetVideoBitRate(this.nativePtr, bitRate);
	}
	
	public int32 AudioBitRate()
	{
		return CQt.QMediaRecorder_AudioBitRate(this.nativePtr);
	}
	
	public void SetAudioBitRate(int32 bitRate)
	{
		CQt.QMediaRecorder_SetAudioBitRate(this.nativePtr, bitRate);
	}
	
	public int32 AudioChannelCount()
	{
		return CQt.QMediaRecorder_AudioChannelCount(this.nativePtr);
	}
	
	public void SetAudioChannelCount(int32 channels)
	{
		CQt.QMediaRecorder_SetAudioChannelCount(this.nativePtr, channels);
	}
	
	public int32 AudioSampleRate()
	{
		return CQt.QMediaRecorder_AudioSampleRate(this.nativePtr);
	}
	
	public void SetAudioSampleRate(int32 sampleRate)
	{
		CQt.QMediaRecorder_SetAudioSampleRate(this.nativePtr, sampleRate);
	}
	
	public void MetaData()
	{
		CQt.QMediaRecorder_MetaData(this.nativePtr);
	}
	
	public void SetMetaData(IQMediaMetaData metaData)
	{
		CQt.QMediaRecorder_SetMetaData(this.nativePtr, (metaData == default || metaData.NativePtr == default) ? default : metaData.NativePtr);
	}
	
	public void AddMetaData(IQMediaMetaData metaData)
	{
		CQt.QMediaRecorder_AddMetaData(this.nativePtr, (metaData == default || metaData.NativePtr == default) ? default : metaData.NativePtr);
	}
	
	public void* CaptureSession()
	{
		return CQt.QMediaRecorder_CaptureSession(this.nativePtr);
	}
	
	public void Record()
	{
		CQt.QMediaRecorder_Record(this.nativePtr);
	}
	
	public void Pause()
	{
		CQt.QMediaRecorder_Pause(this.nativePtr);
	}
	
	public void Stop()
	{
		CQt.QMediaRecorder_Stop(this.nativePtr);
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return CQt.QMediaRecorder_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return CQt.QMediaRecorder_Tr3(s, c, n);
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
public class QMediaRecorder
{
	public QMediaRecorderPtr handle;
	
	public static implicit operator QMediaRecorderPtr(Self self)
	{
		return self.handle;
	}
	
	public this()
	{
		this.handle = QMediaRecorderPtr.New();
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
		return QMediaRecorderPtr.Tr(s);
	}
	
	public bool IsAvailable()
	{
		return this.handle.IsAvailable();
	}
	
	public void OutputLocation()
	{
		this.handle.OutputLocation();
	}
	
	public void SetOutputLocation(IQUrl location)
	{
		this.handle.SetOutputLocation(location);
	}
	
	public void ActualLocation()
	{
		this.handle.ActualLocation();
	}
	
	public int64 RecorderState()
	{
		return this.handle.RecorderState();
	}
	
	public int64 Error()
	{
		return this.handle.Error();
	}
	
	public libqt_string ErrorString()
	{
		return this.handle.ErrorString();
	}
	
	public int64 Duration()
	{
		return this.handle.Duration();
	}
	
	public void MediaFormat()
	{
		this.handle.MediaFormat();
	}
	
	public void SetMediaFormat(IQMediaFormat format)
	{
		this.handle.SetMediaFormat(format);
	}
	
	public int64 EncodingMode()
	{
		return this.handle.EncodingMode();
	}
	
	public void SetEncodingMode(int64 encodingMode)
	{
		this.handle.SetEncodingMode(encodingMode);
	}
	
	public int64 Quality()
	{
		return this.handle.Quality();
	}
	
	public void SetQuality(int64 quality)
	{
		this.handle.SetQuality(quality);
	}
	
	public void VideoResolution()
	{
		this.handle.VideoResolution();
	}
	
	public void SetVideoResolution(IQSize videoResolution)
	{
		this.handle.SetVideoResolution(videoResolution);
	}
	
	public void SetVideoResolution2(int32 width, int32 height)
	{
		this.handle.SetVideoResolution2(width, height);
	}
	
	public double VideoFrameRate()
	{
		return this.handle.VideoFrameRate();
	}
	
	public void SetVideoFrameRate(double frameRate)
	{
		this.handle.SetVideoFrameRate(frameRate);
	}
	
	public int32 VideoBitRate()
	{
		return this.handle.VideoBitRate();
	}
	
	public void SetVideoBitRate(int32 bitRate)
	{
		this.handle.SetVideoBitRate(bitRate);
	}
	
	public int32 AudioBitRate()
	{
		return this.handle.AudioBitRate();
	}
	
	public void SetAudioBitRate(int32 bitRate)
	{
		this.handle.SetAudioBitRate(bitRate);
	}
	
	public int32 AudioChannelCount()
	{
		return this.handle.AudioChannelCount();
	}
	
	public void SetAudioChannelCount(int32 channels)
	{
		this.handle.SetAudioChannelCount(channels);
	}
	
	public int32 AudioSampleRate()
	{
		return this.handle.AudioSampleRate();
	}
	
	public void SetAudioSampleRate(int32 sampleRate)
	{
		this.handle.SetAudioSampleRate(sampleRate);
	}
	
	public void MetaData()
	{
		this.handle.MetaData();
	}
	
	public void SetMetaData(IQMediaMetaData metaData)
	{
		this.handle.SetMetaData(metaData);
	}
	
	public void AddMetaData(IQMediaMetaData metaData)
	{
		this.handle.AddMetaData(metaData);
	}
	
	public void* CaptureSession()
	{
		return this.handle.CaptureSession();
	}
	
	public void Record()
	{
		this.handle.Record();
	}
	
	public void Pause()
	{
		this.handle.Pause();
	}
	
	public void Stop()
	{
		this.handle.Stop();
	}
	
	public static libqt_string Tr2(char8* s, char8* c)
	{
		return QMediaRecorderPtr.Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8* s, char8* c, int32 n)
	{
		return QMediaRecorderPtr.Tr3(s, c, n);
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
		QMediaRecorderPtr.Connect(sender, signal, receiver, method);
	}
	
	public void Connect2(IQObject sender, char8* signal, char8* member)
	{
		this.handle.Connect2(sender, signal, member);
	}
	
	public static bool Disconnect(IQObject sender, IQMetaMethod signal, IQObject receiver, IQMetaMethod member)
	{
		return QMediaRecorderPtr.Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__ConnectionPtr param1)
	{
		return QMediaRecorderPtr.DisconnectWithQMetaObjectConnection(param1);
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
		QMediaRecorderPtr.Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public void Connect4(IQObject sender, char8* signal, char8* member, int64 typeVal)
	{
		this.handle.Connect4(sender, signal, member, typeVal);
	}
	
}
extension CQt
{
	[LinkName("QMediaRecorder_new")]
	public static extern void* QMediaRecorder_new();
	[LinkName("QMediaRecorder_new2")]
	public static extern void* QMediaRecorder_new2(void* parent);
	[LinkName("QMediaRecorder_MetaObject")]
	public static extern void* QMediaRecorder_MetaObject(void* c_this);
	[LinkName("QMediaRecorder_Metacast")]
	public static extern void* QMediaRecorder_Metacast(void* c_this, char8* param1);
	[LinkName("QMediaRecorder_Metacall")]
	public static extern int32 QMediaRecorder_Metacall(void* c_this, int64 param1, int32 param2, void* param3);
	[LinkName("QMediaRecorder_Tr")]
	public static extern libqt_string QMediaRecorder_Tr(char8* s);
	[LinkName("QMediaRecorder_IsAvailable")]
	public static extern bool QMediaRecorder_IsAvailable(void* c_this);
	[LinkName("QMediaRecorder_OutputLocation")]
	public static extern void QMediaRecorder_OutputLocation(void* c_this);
	[LinkName("QMediaRecorder_SetOutputLocation")]
	public static extern void QMediaRecorder_SetOutputLocation(void* c_this, void* location);
	[LinkName("QMediaRecorder_ActualLocation")]
	public static extern void QMediaRecorder_ActualLocation(void* c_this);
	[LinkName("QMediaRecorder_RecorderState")]
	public static extern int64 QMediaRecorder_RecorderState(void* c_this);
	[LinkName("QMediaRecorder_Error")]
	public static extern int64 QMediaRecorder_Error(void* c_this);
	[LinkName("QMediaRecorder_ErrorString")]
	public static extern libqt_string QMediaRecorder_ErrorString(void* c_this);
	[LinkName("QMediaRecorder_Duration")]
	public static extern int64 QMediaRecorder_Duration(void* c_this);
	[LinkName("QMediaRecorder_MediaFormat")]
	public static extern void QMediaRecorder_MediaFormat(void* c_this);
	[LinkName("QMediaRecorder_SetMediaFormat")]
	public static extern void QMediaRecorder_SetMediaFormat(void* c_this, void* format);
	[LinkName("QMediaRecorder_EncodingMode")]
	public static extern int64 QMediaRecorder_EncodingMode(void* c_this);
	[LinkName("QMediaRecorder_SetEncodingMode")]
	public static extern void QMediaRecorder_SetEncodingMode(void* c_this, int64 encodingMode);
	[LinkName("QMediaRecorder_Quality")]
	public static extern int64 QMediaRecorder_Quality(void* c_this);
	[LinkName("QMediaRecorder_SetQuality")]
	public static extern void QMediaRecorder_SetQuality(void* c_this, int64 quality);
	[LinkName("QMediaRecorder_VideoResolution")]
	public static extern void QMediaRecorder_VideoResolution(void* c_this);
	[LinkName("QMediaRecorder_SetVideoResolution")]
	public static extern void QMediaRecorder_SetVideoResolution(void* c_this, void* videoResolution);
	[LinkName("QMediaRecorder_SetVideoResolution2")]
	public static extern void QMediaRecorder_SetVideoResolution2(void* c_this, int32 width, int32 height);
	[LinkName("QMediaRecorder_VideoFrameRate")]
	public static extern double QMediaRecorder_VideoFrameRate(void* c_this);
	[LinkName("QMediaRecorder_SetVideoFrameRate")]
	public static extern void QMediaRecorder_SetVideoFrameRate(void* c_this, double frameRate);
	[LinkName("QMediaRecorder_VideoBitRate")]
	public static extern int32 QMediaRecorder_VideoBitRate(void* c_this);
	[LinkName("QMediaRecorder_SetVideoBitRate")]
	public static extern void QMediaRecorder_SetVideoBitRate(void* c_this, int32 bitRate);
	[LinkName("QMediaRecorder_AudioBitRate")]
	public static extern int32 QMediaRecorder_AudioBitRate(void* c_this);
	[LinkName("QMediaRecorder_SetAudioBitRate")]
	public static extern void QMediaRecorder_SetAudioBitRate(void* c_this, int32 bitRate);
	[LinkName("QMediaRecorder_AudioChannelCount")]
	public static extern int32 QMediaRecorder_AudioChannelCount(void* c_this);
	[LinkName("QMediaRecorder_SetAudioChannelCount")]
	public static extern void QMediaRecorder_SetAudioChannelCount(void* c_this, int32 channels);
	[LinkName("QMediaRecorder_AudioSampleRate")]
	public static extern int32 QMediaRecorder_AudioSampleRate(void* c_this);
	[LinkName("QMediaRecorder_SetAudioSampleRate")]
	public static extern void QMediaRecorder_SetAudioSampleRate(void* c_this, int32 sampleRate);
	[LinkName("QMediaRecorder_MetaData")]
	public static extern void QMediaRecorder_MetaData(void* c_this);
	[LinkName("QMediaRecorder_SetMetaData")]
	public static extern void QMediaRecorder_SetMetaData(void* c_this, void* metaData);
	[LinkName("QMediaRecorder_AddMetaData")]
	public static extern void QMediaRecorder_AddMetaData(void* c_this, void* metaData);
	[LinkName("QMediaRecorder_CaptureSession")]
	public static extern void* QMediaRecorder_CaptureSession(void* c_this);
	[LinkName("QMediaRecorder_Record")]
	public static extern void QMediaRecorder_Record(void* c_this);
	[LinkName("QMediaRecorder_Pause")]
	public static extern void QMediaRecorder_Pause(void* c_this);
	[LinkName("QMediaRecorder_Stop")]
	public static extern void QMediaRecorder_Stop(void* c_this);
	[LinkName("QMediaRecorder_Connect_RecorderStateChanged")]
	public static extern void QMediaRecorder_Connect_RecorderStateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_DurationChanged")]
	public static extern void QMediaRecorder_Connect_DurationChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ActualLocationChanged")]
	public static extern void QMediaRecorder_Connect_ActualLocationChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_EncoderSettingsChanged")]
	public static extern void QMediaRecorder_Connect_EncoderSettingsChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ErrorOccurred")]
	public static extern void QMediaRecorder_Connect_ErrorOccurred(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ErrorChanged")]
	public static extern void QMediaRecorder_Connect_ErrorChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_MetaDataChanged")]
	public static extern void QMediaRecorder_Connect_MetaDataChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_MediaFormatChanged")]
	public static extern void QMediaRecorder_Connect_MediaFormatChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_EncodingModeChanged")]
	public static extern void QMediaRecorder_Connect_EncodingModeChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_QualityChanged")]
	public static extern void QMediaRecorder_Connect_QualityChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoResolutionChanged")]
	public static extern void QMediaRecorder_Connect_VideoResolutionChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoFrameRateChanged")]
	public static extern void QMediaRecorder_Connect_VideoFrameRateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoBitRateChanged")]
	public static extern void QMediaRecorder_Connect_VideoBitRateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioBitRateChanged")]
	public static extern void QMediaRecorder_Connect_AudioBitRateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioChannelCountChanged")]
	public static extern void QMediaRecorder_Connect_AudioChannelCountChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioSampleRateChanged")]
	public static extern void QMediaRecorder_Connect_AudioSampleRateChanged(void* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Tr2")]
	public static extern libqt_string QMediaRecorder_Tr2(char8* s, char8* c);
	[LinkName("QMediaRecorder_Tr3")]
	public static extern libqt_string QMediaRecorder_Tr3(char8* s, char8* c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMediaRecorder_Delete")]
	public static extern void QMediaRecorder_Delete(void* self);
}