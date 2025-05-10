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
public interface IQAudioDevice
{
	void* NativePtr { get; }
}
public class QAudioDevice : IQAudioDevice
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAudioDevice_new();
	}
	
	public ~this()
	{
		CQt.QAudioDevice_Delete(this.nativePtr);
	}
	
	public void Swap(IQAudioDevice other)
	{
		CQt.QAudioDevice_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void OperatorAssign(IQAudioDevice other)
	{
		CQt.QAudioDevice_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorEqual(IQAudioDevice other)
	{
		return CQt.QAudioDevice_OperatorEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool OperatorNotEqual(IQAudioDevice other)
	{
		return CQt.QAudioDevice_OperatorNotEqual(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsNull()
	{
		return CQt.QAudioDevice_IsNull(this.nativePtr);
	}
	
	public libqt_string Id()
	{
		return CQt.QAudioDevice_Id(this.nativePtr);
	}
	
	public libqt_string Description()
	{
		return CQt.QAudioDevice_Description(this.nativePtr);
	}
	
	public bool IsDefault()
	{
		return CQt.QAudioDevice_IsDefault(this.nativePtr);
	}
	
	public int64 Mode()
	{
		return CQt.QAudioDevice_Mode(this.nativePtr);
	}
	
	public bool IsFormatSupported(IQAudioFormat format)
	{
		return CQt.QAudioDevice_IsFormatSupported(this.nativePtr, (format == default) ? default : (void*)format.NativePtr);
	}
	
	public void PreferredFormat()
	{
		CQt.QAudioDevice_PreferredFormat(this.nativePtr);
	}
	
	public int32 MinimumSampleRate()
	{
		return CQt.QAudioDevice_MinimumSampleRate(this.nativePtr);
	}
	
	public int32 MaximumSampleRate()
	{
		return CQt.QAudioDevice_MaximumSampleRate(this.nativePtr);
	}
	
	public int32 MinimumChannelCount()
	{
		return CQt.QAudioDevice_MinimumChannelCount(this.nativePtr);
	}
	
	public int32 MaximumChannelCount()
	{
		return CQt.QAudioDevice_MaximumChannelCount(this.nativePtr);
	}
	
	public int64[] SupportedSampleFormats()
	{
		return CQt.QAudioDevice_SupportedSampleFormats(this.nativePtr);
	}
	
	public int64 ChannelConfiguration()
	{
		return CQt.QAudioDevice_ChannelConfiguration(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAudioDevice_new")]
	public static extern void* QAudioDevice_new();
	[LinkName("QAudioDevice_new2")]
	public static extern void* QAudioDevice_new2(void* other);
	[LinkName("QAudioDevice_Swap")]
	public static extern void QAudioDevice_Swap(void* c_this, void* other);
	[LinkName("QAudioDevice_OperatorAssign")]
	public static extern void QAudioDevice_OperatorAssign(void* c_this, void* other);
	[LinkName("QAudioDevice_OperatorEqual")]
	public static extern bool QAudioDevice_OperatorEqual(void* c_this, void* other);
	[LinkName("QAudioDevice_OperatorNotEqual")]
	public static extern bool QAudioDevice_OperatorNotEqual(void* c_this, void* other);
	[LinkName("QAudioDevice_IsNull")]
	public static extern bool QAudioDevice_IsNull(void* c_this);
	[LinkName("QAudioDevice_Id")]
	public static extern libqt_string QAudioDevice_Id(void* c_this);
	[LinkName("QAudioDevice_Description")]
	public static extern libqt_string QAudioDevice_Description(void* c_this);
	[LinkName("QAudioDevice_IsDefault")]
	public static extern bool QAudioDevice_IsDefault(void* c_this);
	[LinkName("QAudioDevice_Mode")]
	public static extern int64 QAudioDevice_Mode(void* c_this);
	[LinkName("QAudioDevice_IsFormatSupported")]
	public static extern bool QAudioDevice_IsFormatSupported(void* c_this, void* format);
	[LinkName("QAudioDevice_PreferredFormat")]
	public static extern void QAudioDevice_PreferredFormat(void* c_this);
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
	/// Delete this object from C++ memory
	[LinkName("QAudioDevice_Delete")]
	public static extern void QAudioDevice_Delete(void* self);
}