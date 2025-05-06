using System;
using System.Interop;
namespace Qt;

public struct QAudioBuffer
{
	[LinkName("QAudioBuffer_new")]
	public static extern QAudioBuffer* QAudioBuffer_new();
	[LinkName("QAudioBuffer_new2")]
	public static extern QAudioBuffer* QAudioBuffer_new2(QAudioBuffer* other);
	[LinkName("QAudioBuffer_new3")]
	public static extern QAudioBuffer* QAudioBuffer_new3(libqt_string data, QAudioFormat* format);
	[LinkName("QAudioBuffer_new4")]
	public static extern QAudioBuffer* QAudioBuffer_new4(int32 numFrames, QAudioFormat* format);
	[LinkName("QAudioBuffer_new5")]
	public static extern QAudioBuffer* QAudioBuffer_new5(libqt_string data, QAudioFormat* format, int64 startTime);
	[LinkName("QAudioBuffer_new6")]
	public static extern QAudioBuffer* QAudioBuffer_new6(int32 numFrames, QAudioFormat* format, int64 startTime);
	[LinkName("QAudioBuffer_OperatorAssign")]
	public static extern void QAudioBuffer_OperatorAssign(Self* c_this, QAudioBuffer* other);
	[LinkName("QAudioBuffer_Swap")]
	public static extern void QAudioBuffer_Swap(Self* c_this, QAudioBuffer* other);
	[LinkName("QAudioBuffer_IsValid")]
	public static extern bool QAudioBuffer_IsValid(Self* c_this);
	[LinkName("QAudioBuffer_Detach")]
	public static extern void QAudioBuffer_Detach(Self* c_this);
	[LinkName("QAudioBuffer_Format")]
	public static extern QAudioFormat QAudioBuffer_Format(Self* c_this);
	[LinkName("QAudioBuffer_FrameCount")]
	public static extern int32 QAudioBuffer_FrameCount(Self* c_this);
	[LinkName("QAudioBuffer_SampleCount")]
	public static extern int32 QAudioBuffer_SampleCount(Self* c_this);
	[LinkName("QAudioBuffer_ByteCount")]
	public static extern int32 QAudioBuffer_ByteCount(Self* c_this);
	[LinkName("QAudioBuffer_Duration")]
	public static extern int64 QAudioBuffer_Duration(Self* c_this);
	[LinkName("QAudioBuffer_StartTime")]
	public static extern int64 QAudioBuffer_StartTime(Self* c_this);
}