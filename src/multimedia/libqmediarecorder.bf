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
public struct QMediaRecorder
{
	[LinkName("QMediaRecorder_new")]
	public static extern void* QMediaRecorder_new();
	[LinkName("QMediaRecorder_new2")]
	public static extern void* QMediaRecorder_new2(QObject parent);
	[LinkName("QMediaRecorder_MetaObject")]
	public static extern QMetaObject QMediaRecorder_MetaObject(void* c_this);
	[LinkName("QMediaRecorder_Metacast")]
	public static extern void QMediaRecorder_Metacast(void* c_this, char8[] param1);
	[LinkName("QMediaRecorder_Metacall")]
	public static extern int32 QMediaRecorder_Metacall(void* c_this, int64 param1, int32 param2, void param3);
	[LinkName("QMediaRecorder_Tr")]
	public static extern char8[] QMediaRecorder_Tr(char8[] s);
	[LinkName("QMediaRecorder_IsAvailable")]
	public static extern bool QMediaRecorder_IsAvailable(void* c_this);
	[LinkName("QMediaRecorder_OutputLocation")]
	public static extern QUrl QMediaRecorder_OutputLocation(void* c_this);
	[LinkName("QMediaRecorder_SetOutputLocation")]
	public static extern void QMediaRecorder_SetOutputLocation(void* c_this, QUrl location);
	[LinkName("QMediaRecorder_ActualLocation")]
	public static extern QUrl QMediaRecorder_ActualLocation(void* c_this);
	[LinkName("QMediaRecorder_RecorderState")]
	public static extern int64 QMediaRecorder_RecorderState(void* c_this);
	[LinkName("QMediaRecorder_Error")]
	public static extern int64 QMediaRecorder_Error(void* c_this);
	[LinkName("QMediaRecorder_ErrorString")]
	public static extern char8[] QMediaRecorder_ErrorString(void* c_this);
	[LinkName("QMediaRecorder_Duration")]
	public static extern int64 QMediaRecorder_Duration(void* c_this);
	[LinkName("QMediaRecorder_MediaFormat")]
	public static extern QMediaFormat QMediaRecorder_MediaFormat(void* c_this);
	[LinkName("QMediaRecorder_SetMediaFormat")]
	public static extern void QMediaRecorder_SetMediaFormat(void* c_this, QMediaFormat format);
	[LinkName("QMediaRecorder_EncodingMode")]
	public static extern int64 QMediaRecorder_EncodingMode(void* c_this);
	[LinkName("QMediaRecorder_SetEncodingMode")]
	public static extern void QMediaRecorder_SetEncodingMode(void* c_this, int64 encodingMode);
	[LinkName("QMediaRecorder_Quality")]
	public static extern int64 QMediaRecorder_Quality(void* c_this);
	[LinkName("QMediaRecorder_SetQuality")]
	public static extern void QMediaRecorder_SetQuality(void* c_this, int64 quality);
	[LinkName("QMediaRecorder_VideoResolution")]
	public static extern QSize QMediaRecorder_VideoResolution(void* c_this);
	[LinkName("QMediaRecorder_SetVideoResolution")]
	public static extern void QMediaRecorder_SetVideoResolution(void* c_this, QSize videoResolution);
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
	public static extern QMediaMetaData QMediaRecorder_MetaData(void* c_this);
	[LinkName("QMediaRecorder_SetMetaData")]
	public static extern void QMediaRecorder_SetMetaData(void* c_this, QMediaMetaData metaData);
	[LinkName("QMediaRecorder_AddMetaData")]
	public static extern void QMediaRecorder_AddMetaData(void* c_this, QMediaMetaData metaData);
	[LinkName("QMediaRecorder_CaptureSession")]
	public static extern QMediaCaptureSession QMediaRecorder_CaptureSession(void* c_this);
	[LinkName("QMediaRecorder_Record")]
	public static extern void QMediaRecorder_Record(void* c_this);
	[LinkName("QMediaRecorder_Pause")]
	public static extern void QMediaRecorder_Pause(void* c_this);
	[LinkName("QMediaRecorder_Stop")]
	public static extern void QMediaRecorder_Stop(void* c_this);
	[LinkName("QMediaRecorder_RecorderStateChanged")]
	public static extern void QMediaRecorder_RecorderStateChanged(void* c_this, int64 state);
	[LinkName("QMediaRecorder_DurationChanged")]
	public static extern void QMediaRecorder_DurationChanged(void* c_this, int64 duration);
	[LinkName("QMediaRecorder_ActualLocationChanged")]
	public static extern void QMediaRecorder_ActualLocationChanged(void* c_this, QUrl location);
	[LinkName("QMediaRecorder_EncoderSettingsChanged")]
	public static extern void QMediaRecorder_EncoderSettingsChanged(void* c_this);
	[LinkName("QMediaRecorder_ErrorOccurred")]
	public static extern void QMediaRecorder_ErrorOccurred(void* c_this, int64 errorVal, char8[] errorString);
	[LinkName("QMediaRecorder_ErrorChanged")]
	public static extern void QMediaRecorder_ErrorChanged(void* c_this);
	[LinkName("QMediaRecorder_MetaDataChanged")]
	public static extern void QMediaRecorder_MetaDataChanged(void* c_this);
	[LinkName("QMediaRecorder_MediaFormatChanged")]
	public static extern void QMediaRecorder_MediaFormatChanged(void* c_this);
	[LinkName("QMediaRecorder_EncodingModeChanged")]
	public static extern void QMediaRecorder_EncodingModeChanged(void* c_this);
	[LinkName("QMediaRecorder_QualityChanged")]
	public static extern void QMediaRecorder_QualityChanged(void* c_this);
	[LinkName("QMediaRecorder_VideoResolutionChanged")]
	public static extern void QMediaRecorder_VideoResolutionChanged(void* c_this);
	[LinkName("QMediaRecorder_VideoFrameRateChanged")]
	public static extern void QMediaRecorder_VideoFrameRateChanged(void* c_this);
	[LinkName("QMediaRecorder_VideoBitRateChanged")]
	public static extern void QMediaRecorder_VideoBitRateChanged(void* c_this);
	[LinkName("QMediaRecorder_AudioBitRateChanged")]
	public static extern void QMediaRecorder_AudioBitRateChanged(void* c_this);
	[LinkName("QMediaRecorder_AudioChannelCountChanged")]
	public static extern void QMediaRecorder_AudioChannelCountChanged(void* c_this);
	[LinkName("QMediaRecorder_AudioSampleRateChanged")]
	public static extern void QMediaRecorder_AudioSampleRateChanged(void* c_this);
	[LinkName("QMediaRecorder_Tr2")]
	public static extern char8[] QMediaRecorder_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaRecorder_Tr3")]
	public static extern char8[] QMediaRecorder_Tr3(char8[] s, char8[] c, int32 n);
}