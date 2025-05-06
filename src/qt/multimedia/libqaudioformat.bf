using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAudioFormat__SampleFormat
{
	Unknown = 0,
	UInt8 = 1,
	Int16 = 2,
	Int32 = 3,
	Float = 4,
	NSampleFormats = 5,
}
[AllowDuplicates]
public enum QAudioFormat__AudioChannelPosition
{
	UnknownPosition = 0,
	FrontLeft = 1,
	FrontRight = 2,
	FrontCenter = 3,
	LFE = 4,
	BackLeft = 5,
	BackRight = 6,
	FrontLeftOfCenter = 7,
	FrontRightOfCenter = 8,
	BackCenter = 9,
	SideLeft = 10,
	SideRight = 11,
	TopCenter = 12,
	TopFrontLeft = 13,
	TopFrontCenter = 14,
	TopFrontRight = 15,
	TopBackLeft = 16,
	TopBackCenter = 17,
	TopBackRight = 18,
	LFE2 = 19,
	TopSideLeft = 20,
	TopSideRight = 21,
	BottomFrontCenter = 22,
	BottomFrontLeft = 23,
	BottomFrontRight = 24,
}
[AllowDuplicates]
public enum QAudioFormat__ChannelConfig
{
	ChannelConfigUnknown = 0,
	ChannelConfigMono = 8,
	ChannelConfigStereo = 6,
	ChannelConfig2Dot1 = 22,
	ChannelConfig3Dot0 = 14,
	ChannelConfig3Dot1 = 30,
	ChannelConfigSurround5Dot0 = 110,
	ChannelConfigSurround5Dot1 = 126,
	ChannelConfigSurround7Dot0 = 3182,
	ChannelConfigSurround7Dot1 = 3198,
}
public struct QAudioFormat
{
	[LinkName("QAudioFormat_new")]
	public static extern QAudioFormat* QAudioFormat_new(QAudioFormat* other);
	[LinkName("QAudioFormat_new2")]
	public static extern QAudioFormat* QAudioFormat_new2(QAudioFormat* other);
	[LinkName("QAudioFormat_new3")]
	public static extern QAudioFormat* QAudioFormat_new3();
	[LinkName("QAudioFormat_new4")]
	public static extern QAudioFormat* QAudioFormat_new4(QAudioFormat* param1);
	[LinkName("QAudioFormat_IsValid")]
	public static extern bool QAudioFormat_IsValid(Self* c_this);
	[LinkName("QAudioFormat_SetSampleRate")]
	public static extern void QAudioFormat_SetSampleRate(Self* c_this, int32 sampleRate);
	[LinkName("QAudioFormat_SampleRate")]
	public static extern int32 QAudioFormat_SampleRate(Self* c_this);
	[LinkName("QAudioFormat_SetChannelConfig")]
	public static extern void QAudioFormat_SetChannelConfig(Self* c_this, int64 config);
	[LinkName("QAudioFormat_ChannelConfig")]
	public static extern int64 QAudioFormat_ChannelConfig(Self* c_this);
	[LinkName("QAudioFormat_SetChannelCount")]
	public static extern void QAudioFormat_SetChannelCount(Self* c_this, int32 channelCount);
	[LinkName("QAudioFormat_ChannelCount")]
	public static extern int32 QAudioFormat_ChannelCount(Self* c_this);
	[LinkName("QAudioFormat_ChannelOffset")]
	public static extern int32 QAudioFormat_ChannelOffset(Self* c_this, int64 channel);
	[LinkName("QAudioFormat_SetSampleFormat")]
	public static extern void QAudioFormat_SetSampleFormat(Self* c_this, int64 f);
	[LinkName("QAudioFormat_SampleFormat")]
	public static extern int64 QAudioFormat_SampleFormat(Self* c_this);
	[LinkName("QAudioFormat_BytesForDuration")]
	public static extern int32 QAudioFormat_BytesForDuration(Self* c_this, int64 microseconds);
	[LinkName("QAudioFormat_DurationForBytes")]
	public static extern int64 QAudioFormat_DurationForBytes(Self* c_this, int32 byteCount);
	[LinkName("QAudioFormat_BytesForFrames")]
	public static extern int32 QAudioFormat_BytesForFrames(Self* c_this, int32 frameCount);
	[LinkName("QAudioFormat_FramesForBytes")]
	public static extern int32 QAudioFormat_FramesForBytes(Self* c_this, int32 byteCount);
	[LinkName("QAudioFormat_FramesForDuration")]
	public static extern int32 QAudioFormat_FramesForDuration(Self* c_this, int64 microseconds);
	[LinkName("QAudioFormat_DurationForFrames")]
	public static extern int64 QAudioFormat_DurationForFrames(Self* c_this, int32 frameCount);
	[LinkName("QAudioFormat_BytesPerFrame")]
	public static extern int32 QAudioFormat_BytesPerFrame(Self* c_this);
	[LinkName("QAudioFormat_BytesPerSample")]
	public static extern int32 QAudioFormat_BytesPerSample(Self* c_this);
	[LinkName("QAudioFormat_NormalizedSampleValue")]
	public static extern float QAudioFormat_NormalizedSampleValue(Self* c_this, void* sample);
	[LinkName("QAudioFormat_DefaultChannelConfigForChannelCount")]
	public static extern int64 QAudioFormat_DefaultChannelConfigForChannelCount(int32 channelCount);
}