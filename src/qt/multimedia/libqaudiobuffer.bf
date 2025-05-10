using System;
using System.Interop;
namespace Qt;

public interface IQAudioBuffer
{
	void* NativePtr { get; }
}
public class QAudioBuffer : IQAudioBuffer
{
	protected void* nativePtr;
	public void* NativePtr => nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QAudioBuffer_new();
	}
	
	public ~this()
	{
		CQt.QAudioBuffer_Delete(this.nativePtr);
	}
	
	public void OperatorAssign(IQAudioBuffer other)
	{
		CQt.QAudioBuffer_OperatorAssign(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public void Swap(IQAudioBuffer other)
	{
		CQt.QAudioBuffer_Swap(this.nativePtr, (other == default) ? default : (void*)other.NativePtr);
	}
	
	public bool IsValid()
	{
		return CQt.QAudioBuffer_IsValid(this.nativePtr);
	}
	
	public void Detach()
	{
		CQt.QAudioBuffer_Detach(this.nativePtr);
	}
	
	public void Format()
	{
		CQt.QAudioBuffer_Format(this.nativePtr);
	}
	
	public int32 FrameCount()
	{
		return CQt.QAudioBuffer_FrameCount(this.nativePtr);
	}
	
	public int32 SampleCount()
	{
		return CQt.QAudioBuffer_SampleCount(this.nativePtr);
	}
	
	public int32 ByteCount()
	{
		return CQt.QAudioBuffer_ByteCount(this.nativePtr);
	}
	
	public int64 Duration()
	{
		return CQt.QAudioBuffer_Duration(this.nativePtr);
	}
	
	public int64 StartTime()
	{
		return CQt.QAudioBuffer_StartTime(this.nativePtr);
	}
	
}
extension CQt
{
	[LinkName("QAudioBuffer_new")]
	public static extern void* QAudioBuffer_new();
	[LinkName("QAudioBuffer_new2")]
	public static extern void* QAudioBuffer_new2(void* other);
	[LinkName("QAudioBuffer_new3")]
	public static extern void* QAudioBuffer_new3(libqt_string data, void* format);
	[LinkName("QAudioBuffer_new4")]
	public static extern void* QAudioBuffer_new4(int32 numFrames, void* format);
	[LinkName("QAudioBuffer_new5")]
	public static extern void* QAudioBuffer_new5(libqt_string data, void* format, int64 startTime);
	[LinkName("QAudioBuffer_new6")]
	public static extern void* QAudioBuffer_new6(int32 numFrames, void* format, int64 startTime);
	[LinkName("QAudioBuffer_OperatorAssign")]
	public static extern void QAudioBuffer_OperatorAssign(void* c_this, void* other);
	[LinkName("QAudioBuffer_Swap")]
	public static extern void QAudioBuffer_Swap(void* c_this, void* other);
	[LinkName("QAudioBuffer_IsValid")]
	public static extern bool QAudioBuffer_IsValid(void* c_this);
	[LinkName("QAudioBuffer_Detach")]
	public static extern void QAudioBuffer_Detach(void* c_this);
	[LinkName("QAudioBuffer_Format")]
	public static extern void QAudioBuffer_Format(void* c_this);
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
	/// Delete this object from C++ memory
	[LinkName("QAudioBuffer_Delete")]
	public static extern void QAudioBuffer_Delete(void* self);
}