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
public struct QMediaRecorder : QObject
{
	[LinkName("QMediaRecorder_new")]
	public static extern QMediaRecorder* QMediaRecorder_new();
	[LinkName("QMediaRecorder_new2")]
	public static extern QMediaRecorder* QMediaRecorder_new2(QObject* parent);
	[LinkName("QMediaRecorder_MetaObject")]
	public static extern QMetaObject* QMediaRecorder_MetaObject(Self* c_this);
	[LinkName("QMediaRecorder_Metacast")]
	public static extern void* QMediaRecorder_Metacast(Self* c_this, char8[] param1);
	[LinkName("QMediaRecorder_Metacall")]
	public static extern int32 QMediaRecorder_Metacall(Self* c_this, int64 param1, int32 param2, void** param3);
	[LinkName("QMediaRecorder_Tr")]
	public static extern libqt_string QMediaRecorder_Tr(char8[] s);
	[LinkName("QMediaRecorder_IsAvailable")]
	public static extern bool QMediaRecorder_IsAvailable(Self* c_this);
	[LinkName("QMediaRecorder_OutputLocation")]
	public static extern QUrl QMediaRecorder_OutputLocation(Self* c_this);
	[LinkName("QMediaRecorder_SetOutputLocation")]
	public static extern void QMediaRecorder_SetOutputLocation(Self* c_this, QUrl* location);
	[LinkName("QMediaRecorder_ActualLocation")]
	public static extern QUrl QMediaRecorder_ActualLocation(Self* c_this);
	[LinkName("QMediaRecorder_RecorderState")]
	public static extern int64 QMediaRecorder_RecorderState(Self* c_this);
	[LinkName("QMediaRecorder_Error")]
	public static extern int64 QMediaRecorder_Error(Self* c_this);
	[LinkName("QMediaRecorder_ErrorString")]
	public static extern libqt_string QMediaRecorder_ErrorString(Self* c_this);
	[LinkName("QMediaRecorder_Duration")]
	public static extern int64 QMediaRecorder_Duration(Self* c_this);
	[LinkName("QMediaRecorder_MediaFormat")]
	public static extern QMediaFormat QMediaRecorder_MediaFormat(Self* c_this);
	[LinkName("QMediaRecorder_SetMediaFormat")]
	public static extern void QMediaRecorder_SetMediaFormat(Self* c_this, QMediaFormat* format);
	[LinkName("QMediaRecorder_EncodingMode")]
	public static extern int64 QMediaRecorder_EncodingMode(Self* c_this);
	[LinkName("QMediaRecorder_SetEncodingMode")]
	public static extern void QMediaRecorder_SetEncodingMode(Self* c_this, int64 encodingMode);
	[LinkName("QMediaRecorder_Quality")]
	public static extern int64 QMediaRecorder_Quality(Self* c_this);
	[LinkName("QMediaRecorder_SetQuality")]
	public static extern void QMediaRecorder_SetQuality(Self* c_this, int64 quality);
	[LinkName("QMediaRecorder_VideoResolution")]
	public static extern QSize QMediaRecorder_VideoResolution(Self* c_this);
	[LinkName("QMediaRecorder_SetVideoResolution")]
	public static extern void QMediaRecorder_SetVideoResolution(Self* c_this, QSize* videoResolution);
	[LinkName("QMediaRecorder_SetVideoResolution2")]
	public static extern void QMediaRecorder_SetVideoResolution2(Self* c_this, int32 width, int32 height);
	[LinkName("QMediaRecorder_VideoFrameRate")]
	public static extern double QMediaRecorder_VideoFrameRate(Self* c_this);
	[LinkName("QMediaRecorder_SetVideoFrameRate")]
	public static extern void QMediaRecorder_SetVideoFrameRate(Self* c_this, double frameRate);
	[LinkName("QMediaRecorder_VideoBitRate")]
	public static extern int32 QMediaRecorder_VideoBitRate(Self* c_this);
	[LinkName("QMediaRecorder_SetVideoBitRate")]
	public static extern void QMediaRecorder_SetVideoBitRate(Self* c_this, int32 bitRate);
	[LinkName("QMediaRecorder_AudioBitRate")]
	public static extern int32 QMediaRecorder_AudioBitRate(Self* c_this);
	[LinkName("QMediaRecorder_SetAudioBitRate")]
	public static extern void QMediaRecorder_SetAudioBitRate(Self* c_this, int32 bitRate);
	[LinkName("QMediaRecorder_AudioChannelCount")]
	public static extern int32 QMediaRecorder_AudioChannelCount(Self* c_this);
	[LinkName("QMediaRecorder_SetAudioChannelCount")]
	public static extern void QMediaRecorder_SetAudioChannelCount(Self* c_this, int32 channels);
	[LinkName("QMediaRecorder_AudioSampleRate")]
	public static extern int32 QMediaRecorder_AudioSampleRate(Self* c_this);
	[LinkName("QMediaRecorder_SetAudioSampleRate")]
	public static extern void QMediaRecorder_SetAudioSampleRate(Self* c_this, int32 sampleRate);
	[LinkName("QMediaRecorder_MetaData")]
	public static extern QMediaMetaData QMediaRecorder_MetaData(Self* c_this);
	[LinkName("QMediaRecorder_SetMetaData")]
	public static extern void QMediaRecorder_SetMetaData(Self* c_this, QMediaMetaData* metaData);
	[LinkName("QMediaRecorder_AddMetaData")]
	public static extern void QMediaRecorder_AddMetaData(Self* c_this, QMediaMetaData* metaData);
	[LinkName("QMediaRecorder_CaptureSession")]
	public static extern QMediaCaptureSession* QMediaRecorder_CaptureSession(Self* c_this);
	[LinkName("QMediaRecorder_Record")]
	public static extern void QMediaRecorder_Record(Self* c_this);
	[LinkName("QMediaRecorder_Pause")]
	public static extern void QMediaRecorder_Pause(Self* c_this);
	[LinkName("QMediaRecorder_Stop")]
	public static extern void QMediaRecorder_Stop(Self* c_this);
	[LinkName("QMediaRecorder_Connect_RecorderStateChanged")]
	public static extern void QMediaRecorder_Connect_RecorderStateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_DurationChanged")]
	public static extern void QMediaRecorder_Connect_DurationChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ActualLocationChanged")]
	public static extern void QMediaRecorder_Connect_ActualLocationChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_EncoderSettingsChanged")]
	public static extern void QMediaRecorder_Connect_EncoderSettingsChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ErrorOccurred")]
	public static extern void QMediaRecorder_Connect_ErrorOccurred(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_ErrorChanged")]
	public static extern void QMediaRecorder_Connect_ErrorChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_MetaDataChanged")]
	public static extern void QMediaRecorder_Connect_MetaDataChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_MediaFormatChanged")]
	public static extern void QMediaRecorder_Connect_MediaFormatChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_EncodingModeChanged")]
	public static extern void QMediaRecorder_Connect_EncodingModeChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_QualityChanged")]
	public static extern void QMediaRecorder_Connect_QualityChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoResolutionChanged")]
	public static extern void QMediaRecorder_Connect_VideoResolutionChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoFrameRateChanged")]
	public static extern void QMediaRecorder_Connect_VideoFrameRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_VideoBitRateChanged")]
	public static extern void QMediaRecorder_Connect_VideoBitRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioBitRateChanged")]
	public static extern void QMediaRecorder_Connect_AudioBitRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioChannelCountChanged")]
	public static extern void QMediaRecorder_Connect_AudioChannelCountChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Connect_AudioSampleRateChanged")]
	public static extern void QMediaRecorder_Connect_AudioSampleRateChanged(Self* c_this, c_intptr slot);
	[LinkName("QMediaRecorder_Tr2")]
	public static extern libqt_string QMediaRecorder_Tr2(char8[] s, char8[] c);
	[LinkName("QMediaRecorder_Tr3")]
	public static extern libqt_string QMediaRecorder_Tr3(char8[] s, char8[] c, int32 n);
}