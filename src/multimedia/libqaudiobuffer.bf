using System;
using System.Interop;
namespace Qt;

public struct QAudioBuffer
{
	[LinkName("QAudioBuffer_new")]
	public static extern void* QAudioBuffer_new();
	[LinkName("QAudioBuffer_new2")]
	public static extern void* QAudioBuffer_new2(QAudioBuffer other);
	[LinkName("QAudioBuffer_new3")]
	public static extern void* QAudioBuffer_new3(uint8[] data, QAudioFormat format);
	[LinkName("QAudioBuffer_new4")]
	public static extern void* QAudioBuffer_new4(int32 numFrames, QAudioFormat format);
	[LinkName("QAudioBuffer_new5")]
	public static extern void* QAudioBuffer_new5(uint8[] data, QAudioFormat format, int64 startTime);
	[LinkName("QAudioBuffer_new6")]
	public static extern void* QAudioBuffer_new6(int32 numFrames, QAudioFormat format, int64 startTime);
	[LinkName("QAudioBuffer_OperatorAssign")]
	public static extern void QAudioBuffer_OperatorAssign(void* c_this, QAudioBuffer other);
	[LinkName("QAudioBuffer_Swap")]
	public static extern void QAudioBuffer_Swap(void* c_this, QAudioBuffer other);
	[LinkName("QAudioBuffer_IsValid")]
	public static extern bool QAudioBuffer_IsValid(void* c_this);
	[LinkName("QAudioBuffer_Detach")]
	public static extern void QAudioBuffer_Detach(void* c_this);
	[LinkName("QAudioBuffer_Format")]
	public static extern QAudioFormat QAudioBuffer_Format(void* c_this);
	[LinkName("QAudioBuffer_FrameCount")]
	public static extern int32 QAudioBuffer_FrameCount(void* c_this);
	[LinkName("QAudioBuffer_SampleCount")]
	public static extern int32 QAudioBuffer_SampleCount(void* c_this);
	[LinkName("QAudioBuffer_ByteCount")]
	public static extern int32 QAudioBuffer_ByteCount(void* c_this);
	[LinkName("QAudioBuffer_Duration")]
	public static extern int64 QAudioBuffer_Duration(void* c_this);
	[LinkName("QAudioBuffer_StartTime")]
	public static extern int64 QAudioBuffer_StartTime(void* c_this);
}