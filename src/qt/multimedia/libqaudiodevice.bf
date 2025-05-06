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
	public static extern QAudioDevice* QAudioDevice_new();
	[LinkName("QAudioDevice_new2")]
	public static extern QAudioDevice* QAudioDevice_new2(QAudioDevice* other);
	[LinkName("QAudioDevice_Swap")]
	public static extern void QAudioDevice_Swap(Self* c_this, QAudioDevice* other);
	[LinkName("QAudioDevice_OperatorAssign")]
	public static extern void QAudioDevice_OperatorAssign(Self* c_this, QAudioDevice* other);
	[LinkName("QAudioDevice_OperatorEqual")]
	public static extern bool QAudioDevice_OperatorEqual(Self* c_this, QAudioDevice* other);
	[LinkName("QAudioDevice_OperatorNotEqual")]
	public static extern bool QAudioDevice_OperatorNotEqual(Self* c_this, QAudioDevice* other);
	[LinkName("QAudioDevice_IsNull")]
	public static extern bool QAudioDevice_IsNull(Self* c_this);
	[LinkName("QAudioDevice_Id")]
	public static extern libqt_string QAudioDevice_Id(Self* c_this);
	[LinkName("QAudioDevice_Description")]
	public static extern libqt_string QAudioDevice_Description(Self* c_this);
	[LinkName("QAudioDevice_IsDefault")]
	public static extern bool QAudioDevice_IsDefault(Self* c_this);
	[LinkName("QAudioDevice_Mode")]
	public static extern int64 QAudioDevice_Mode(Self* c_this);
	[LinkName("QAudioDevice_IsFormatSupported")]
	public static extern bool QAudioDevice_IsFormatSupported(Self* c_this, QAudioFormat* format);
	[LinkName("QAudioDevice_PreferredFormat")]
	public static extern QAudioFormat QAudioDevice_PreferredFormat(Self* c_this);
	[LinkName("QAudioDevice_MinimumSampleRate")]
	public static extern int32 QAudioDevice_MinimumSampleRate(Self* c_this);
	[LinkName("QAudioDevice_MaximumSampleRate")]
	public static extern int32 QAudioDevice_MaximumSampleRate(Self* c_this);
	[LinkName("QAudioDevice_MinimumChannelCount")]
	public static extern int32 QAudioDevice_MinimumChannelCount(Self* c_this);
	[LinkName("QAudioDevice_MaximumChannelCount")]
	public static extern int32 QAudioDevice_MaximumChannelCount(Self* c_this);
	[LinkName("QAudioDevice_SupportedSampleFormats")]
	public static extern int64[] QAudioDevice_SupportedSampleFormats(Self* c_this);
	[LinkName("QAudioDevice_ChannelConfiguration")]
	public static extern int64 QAudioDevice_ChannelConfiguration(Self* c_this);
}