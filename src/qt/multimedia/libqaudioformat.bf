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
public class QAudioFormat
{
	protected void* nativePtr;
	
	public this(void* other)
	{
		this.nativePtr = CQt.QAudioFormat_new(other);
	}
	
	public ~this()
	{
		CQt.QAudioFormat_Delete(this.nativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QAudioFormat_IsValid(this.nativePtr);
	}
	
	public void SetSampleRate(int32 sampleRate)
	{
		CQt.QAudioFormat_SetSampleRate(this.nativePtr, sampleRate);
	}
	
	public int32 SampleRate()
	{
		return CQt.QAudioFormat_SampleRate(this.nativePtr);
	}
	
	public void SetChannelConfig(int64 config)
	{
		CQt.QAudioFormat_SetChannelConfig(this.nativePtr, config);
	}
	
	public int64 ChannelConfig()
	{
		return CQt.QAudioFormat_ChannelConfig(this.nativePtr);
	}
	
	public void SetChannelCount(int32 channelCount)
	{
		CQt.QAudioFormat_SetChannelCount(this.nativePtr, channelCount);
	}
	
	public int32 ChannelCount()
	{
		return CQt.QAudioFormat_ChannelCount(this.nativePtr);
	}
	
	public int32 ChannelOffset(int64 channel)
	{
		return CQt.QAudioFormat_ChannelOffset(this.nativePtr, channel);
	}
	
	public void SetSampleFormat(int64 f)
	{
		CQt.QAudioFormat_SetSampleFormat(this.nativePtr, f);
	}
	
	public int64 SampleFormat()
	{
		return CQt.QAudioFormat_SampleFormat(this.nativePtr);
	}
	
	public int32 BytesForDuration(int64 microseconds)
	{
		return CQt.QAudioFormat_BytesForDuration(this.nativePtr, microseconds);
	}
	
	public int64 DurationForBytes(int32 byteCount)
	{
		return CQt.QAudioFormat_DurationForBytes(this.nativePtr, byteCount);
	}
	
	public int32 BytesForFrames(int32 frameCount)
	{
		return CQt.QAudioFormat_BytesForFrames(this.nativePtr, frameCount);
	}
	
	public int32 FramesForBytes(int32 byteCount)
	{
		return CQt.QAudioFormat_FramesForBytes(this.nativePtr, byteCount);
	}
	
	public int32 FramesForDuration(int64 microseconds)
	{
		return CQt.QAudioFormat_FramesForDuration(this.nativePtr, microseconds);
	}
	
	public int64 DurationForFrames(int32 frameCount)
	{
		return CQt.QAudioFormat_DurationForFrames(this.nativePtr, frameCount);
	}
	
	public int32 BytesPerFrame()
	{
		return CQt.QAudioFormat_BytesPerFrame(this.nativePtr);
	}
	
	public int32 BytesPerSample()
	{
		return CQt.QAudioFormat_BytesPerSample(this.nativePtr);
	}
	
	public float NormalizedSampleValue(void* sample)
	{
		return CQt.QAudioFormat_NormalizedSampleValue(this.nativePtr, sample);
	}
	
	public static int64 DefaultChannelConfigForChannelCount(int32 channelCount)
	{
		return CQt.QAudioFormat_DefaultChannelConfigForChannelCount(channelCount);
	}
	
}
extension CQt
{
	[LinkName("QAudioFormat_new")]
	public static extern void* QAudioFormat_new(void* other);
	[LinkName("QAudioFormat_new2")]
	public static extern void* QAudioFormat_new2(void* other);
	[LinkName("QAudioFormat_new3")]
	public static extern void* QAudioFormat_new3();
	[LinkName("QAudioFormat_new4")]
	public static extern void* QAudioFormat_new4(void* param1);
	[LinkName("QAudioFormat_IsValid")]
	public static extern bool QAudioFormat_IsValid(void* c_this);
	[LinkName("QAudioFormat_SetSampleRate")]
	public static extern void QAudioFormat_SetSampleRate(void* c_this, int32 sampleRate);
	[LinkName("QAudioFormat_SampleRate")]
	public static extern int32 QAudioFormat_SampleRate(void* c_this);
	[LinkName("QAudioFormat_SetChannelConfig")]
	public static extern void QAudioFormat_SetChannelConfig(void* c_this, int64 config);
	[LinkName("QAudioFormat_ChannelConfig")]
	public static extern int64 QAudioFormat_ChannelConfig(void* c_this);
	[LinkName("QAudioFormat_SetChannelCount")]
	public static extern void QAudioFormat_SetChannelCount(void* c_this, int32 channelCount);
	[LinkName("QAudioFormat_ChannelCount")]
	public static extern int32 QAudioFormat_ChannelCount(void* c_this);
	[LinkName("QAudioFormat_ChannelOffset")]
	public static extern int32 QAudioFormat_ChannelOffset(void* c_this, int64 channel);
	[LinkName("QAudioFormat_SetSampleFormat")]
	public static extern void QAudioFormat_SetSampleFormat(void* c_this, int64 f);
	[LinkName("QAudioFormat_SampleFormat")]
	public static extern int64 QAudioFormat_SampleFormat(void* c_this);
	[LinkName("QAudioFormat_BytesForDuration")]
	public static extern int32 QAudioFormat_BytesForDuration(void* c_this, int64 microseconds);
	[LinkName("QAudioFormat_DurationForBytes")]
	public static extern int64 QAudioFormat_DurationForBytes(void* c_this, int32 byteCount);
	[LinkName("QAudioFormat_BytesForFrames")]
	public static extern int32 QAudioFormat_BytesForFrames(void* c_this, int32 frameCount);
	[LinkName("QAudioFormat_FramesForBytes")]
	public static extern int32 QAudioFormat_FramesForBytes(void* c_this, int32 byteCount);
	[LinkName("QAudioFormat_FramesForDuration")]
	public static extern int32 QAudioFormat_FramesForDuration(void* c_this, int64 microseconds);
	[LinkName("QAudioFormat_DurationForFrames")]
	public static extern int64 QAudioFormat_DurationForFrames(void* c_this, int32 frameCount);
	[LinkName("QAudioFormat_BytesPerFrame")]
	public static extern int32 QAudioFormat_BytesPerFrame(void* c_this);
	[LinkName("QAudioFormat_BytesPerSample")]
	public static extern int32 QAudioFormat_BytesPerSample(void* c_this);
	[LinkName("QAudioFormat_NormalizedSampleValue")]
	public static extern float QAudioFormat_NormalizedSampleValue(void* c_this, void* sample);
	[LinkName("QAudioFormat_DefaultChannelConfigForChannelCount")]
	public static extern int64 QAudioFormat_DefaultChannelConfigForChannelCount(int32 channelCount);
	/// Delete this object from C++ memory
	[LinkName("QAudioFormat_Delete")]
	public static extern void QAudioFormat_Delete(void* self);
}