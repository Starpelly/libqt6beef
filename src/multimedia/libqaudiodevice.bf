using System;
using System.Interop;
namespace Qt;

[AllowDuplicates]
public enum QAudioDevice__Mode
{
	Null = 0,
	Input = 1,
	Output = 2,
}
public struct QAudioDevice
{
	[LinkName("QAudioDevice_new")]
	public static extern void* QAudioDevice_new();
	[LinkName("QAudioDevice_new2")]
	public static extern void* QAudioDevice_new2(QAudioDevice other);
	[LinkName("QAudioDevice_Swap")]
	public static extern void QAudioDevice_Swap(void* c_this, QAudioDevice other);
	[LinkName("QAudioDevice_OperatorAssign")]
	public static extern void QAudioDevice_OperatorAssign(void* c_this, QAudioDevice other);
	[LinkName("QAudioDevice_OperatorEqual")]
	public static extern bool QAudioDevice_OperatorEqual(void* c_this, QAudioDevice other);
	[LinkName("QAudioDevice_OperatorNotEqual")]
	public static extern bool QAudioDevice_OperatorNotEqual(void* c_this, QAudioDevice other);
	[LinkName("QAudioDevice_IsNull")]
	public static extern bool QAudioDevice_IsNull(void* c_this);
	[LinkName("QAudioDevice_Id")]
	public static extern uint8[] QAudioDevice_Id(void* c_this);
	[LinkName("QAudioDevice_Description")]
	public static extern char8[] QAudioDevice_Description(void* c_this);
	[LinkName("QAudioDevice_IsDefault")]
	public static extern bool QAudioDevice_IsDefault(void* c_this);
	[LinkName("QAudioDevice_Mode")]
	public static extern int64 QAudioDevice_Mode(void* c_this);
	[LinkName("QAudioDevice_IsFormatSupported")]
	public static extern bool QAudioDevice_IsFormatSupported(void* c_this, QAudioFormat format);
	[LinkName("QAudioDevice_PreferredFormat")]
	public static extern QAudioFormat QAudioDevice_PreferredFormat(void* c_this);
	[LinkName("QAudioDevice_MinimumSampleRate")]
	public static extern int32 QAudioDevice_MinimumSampleRate(void* c_this);
	[LinkName("QAudioDevice_MaximumSampleRate")]
	public static extern int32 QAudioDevice_MaximumSampleRate(void* c_this);
	[LinkName("QAudioDevice_MinimumChannelCount")]
	public static extern int32 QAudioDevice_MinimumChannelCount(void* c_this);
	[LinkName("QAudioDevice_MaximumChannelCount")]
	public static extern int32 QAudioDevice_MaximumChannelCount(void* c_this);
	[LinkName("QAudioDevice_SupportedSampleFormats")]
	public static extern int64[] QAudioDevice_SupportedSampleFormats(void* c_this);
	[LinkName("QAudioDevice_ChannelConfiguration")]
	public static extern int64 QAudioDevice_ChannelConfiguration(void* c_this);
}