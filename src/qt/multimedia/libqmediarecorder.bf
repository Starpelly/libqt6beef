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
public class QMediaRecorder
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QMediaRecorder_new();
	}
	
	public ~this()
	{
		CQt.QMediaRecorder_Delete(this.nativePtr);
	}
	
	public virtual void* MetaObject()
	{
		return CQt.QMediaRecorder_MetaObject(this.nativePtr);
	}
	
	public virtual void* Metacast(char8[] param1)
	{
		return CQt.QMediaRecorder_Metacast(this.nativePtr, param1);
	}
	
	public virtual int32 Metacall(int64 param1, int32 param2, void** param3)
	{
		return CQt.QMediaRecorder_Metacall(this.nativePtr, param1, param2, param3);
	}
	
	public static libqt_string Tr(char8[] s)
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
	
	public void SetOutputLocation(void* location)
	{
		CQt.QMediaRecorder_SetOutputLocation(this.nativePtr, location);
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
	
	public void SetMediaFormat(void* format)
	{
		CQt.QMediaRecorder_SetMediaFormat(this.nativePtr, format);
	}
	
	public int64 EncodingMode()
	{
		return CQt.QMediaRecorder_EncodingMode(this.nativePtr);
	}
	
	public void SetEncodingMode(int64 encodingMode)
	{
		CQt.QMediaRecorder_SetEncodingMode(this.nativePtr, encodingMode);
	}
	
	public int64 Quality()
	{
		return CQt.QMediaRecorder_Quality(this.nativePtr);
	}
	
	public void SetQuality(int64 quality)
	{
		CQt.QMediaRecorder_SetQuality(this.nativePtr, quality);
	}
	
	public void VideoResolution()
	{
		CQt.QMediaRecorder_VideoResolution(this.nativePtr);
	}
	
	public void SetVideoResolution(void* videoResolution)
	{
		CQt.QMediaRecorder_SetVideoResolution(this.nativePtr, videoResolution);
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
	
	public void SetMetaData(void* metaData)
	{
		CQt.QMediaRecorder_SetMetaData(this.nativePtr, metaData);
	}
	
	public void AddMetaData(void* metaData)
	{
		CQt.QMediaRecorder_AddMetaData(this.nativePtr, metaData);
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
	
	public static libqt_string Tr2(char8[] s, char8[] c)
	{
		return CQt.QMediaRecorder_Tr2(s, c);
	}
	
	public static libqt_string Tr3(char8[] s, char8[] c, int32 n)
	{
		return CQt.QMediaRecorder_Tr3(s, c, n);
	}
	
	public virtual bool Event(void* event)
	{
		return CQt.QObject_Event(this.nativePtr, event);
	}
	
	public virtual bool EventFilter(void* watched, void* event)
	{
		return CQt.QObject_EventFilter(this.nativePtr, watched, event);
	}
	
	public libqt_string ObjectName()
	{
		return CQt.QObject_ObjectName(this.nativePtr);
	}
	
	public void SetObjectName(void name)
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
	
	public void MoveToThread(void* thread)
	{
		CQt.QObject_MoveToThread(this.nativePtr, thread);
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
	
	public void SetParent(void* parent)
	{
		CQt.QObject_SetParent(this.nativePtr, parent);
	}
	
	public void InstallEventFilter(void* filterObj)
	{
		CQt.QObject_InstallEventFilter(this.nativePtr, filterObj);
	}
	
	public void RemoveEventFilter(void* obj)
	{
		CQt.QObject_RemoveEventFilter(this.nativePtr, obj);
	}
	
	public static QMetaObject__Connection Connect(void* sender, void* signal, void* receiver, void* method)
	{
		return CQt.QObject_Connect(sender, signal, receiver, method);
	}
	
	public QMetaObject__Connection Connect2(void* sender, char8[] signal, char8[] member)
	{
		return CQt.QObject_Connect2(this.nativePtr, sender, signal, member);
	}
	
	public static bool Disconnect(void* sender, void* signal, void* receiver, void* member)
	{
		return CQt.QObject_Disconnect(sender, signal, receiver, member);
	}
	
	public static bool DisconnectWithQMetaObjectConnection(QMetaObject__Connection* param1)
	{
		return CQt.QObject_DisconnectWithQMetaObjectConnection(param1);
	}
	
	public void DumpObjectTree()
	{
		CQt.QObject_DumpObjectTree(this.nativePtr);
	}
	
	public void DumpObjectInfo()
	{
		CQt.QObject_DumpObjectInfo(this.nativePtr);
	}
	
	public bool SetProperty(char8[] name, void* value)
	{
		return CQt.QObject_SetProperty(this.nativePtr, name, value);
	}
	
	public void Property(char8[] name)
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
	
	public bool Inherits(char8[] classname)
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
	
	public static QMetaObject__Connection Connect5(void* sender, void* signal, void* receiver, void* method, int64 typeVal)
	{
		return CQt.QObject_Connect5(sender, signal, receiver, method, typeVal);
	}
	
	public QMetaObject__Connection Connect4(void* sender, char8[] signal, char8[] member, int64 typeVal)
	{
		return CQt.QObject_Connect4(this.nativePtr, sender, signal, member, typeVal);
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
	public static extern void* QMediaRecorder_Metacast(void* c_this, char8[] param1);
	[LinkName("QMediaRecorder_Metacall")]
	public static extern int32 QMediaRecorder_Metacall(void* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMediaRecorder_Tr")]
	public static extern libqt_string QMediaRecorder_Tr(char8[] s);
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
	public static extern libqt_string QMediaRecorder_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaRecorder_Tr3")]
	public static extern libqt_string QMediaRecorder_Tr3(char8[] s, char8[] c, int32 n);
	/// Delete this object from C++ memory
	[LinkName("QMediaRecorder_Delete")]
	public static extern void QMediaRecorder_Delete(void* self);
}