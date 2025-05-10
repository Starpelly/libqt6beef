using System;
using System.Interop;
namespace Qt;

public class QStringEncoder
{
	protected void* nativePtr;
	
	public this()
	{
		this.nativePtr = CQt.QStringEncoder_new();
	}
	
	public ~this()
	{
		CQt.QStringEncoder_Delete(this.nativePtr);
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return CQt.QStringEncoder_RequiredSpace(this.nativePtr, inputLength);
	}
	
	public bool IsValid()
	{
		return CQt.QStringConverter_IsValid(this.nativePtr);
	}
	
	public void ResetState()
	{
		CQt.QStringConverter_ResetState(this.nativePtr);
	}
	
	public bool HasError()
	{
		return CQt.QStringConverter_HasError(this.nativePtr);
	}
	
	public char8[] Name()
	{
		return CQt.QStringConverter_Name(this.nativePtr);
	}
	
	public static char8[] NameForEncoding(int64 e)
	{
		return CQt.QStringConverter_NameForEncoding(e);
	}
	
}
extension CQt
{
	[LinkName("QStringEncoder_new")]
	public static extern void* QStringEncoder_new();
	[LinkName("QStringEncoder_new2")]
	public static extern void* QStringEncoder_new2(int64 encoding);
	[LinkName("QStringEncoder_new3")]
	public static extern void* QStringEncoder_new3(char8[] name);
	[LinkName("QStringEncoder_new4")]
	public static extern void* QStringEncoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringEncoder_new5")]
	public static extern void* QStringEncoder_new5(char8[] name, int64 flags);
	[LinkName("QStringEncoder_RequiredSpace")]
	public static extern int32 QStringEncoder_RequiredSpace(void* c_this, int32 inputLength);
	/// Delete this object from C++ memory
	[LinkName("QStringEncoder_Delete")]
	public static extern void QStringEncoder_Delete(void* self);
}
public class QStringDecoder
{
	protected void* nativePtr;
	
	public this(int64 encoding)
	{
		this.nativePtr = CQt.QStringDecoder_new(encoding);
	}
	
	public ~this()
	{
		CQt.QStringDecoder_Delete(this.nativePtr);
	}
	
	public int32 RequiredSpace(int32 inputLength)
	{
		return CQt.QStringDecoder_RequiredSpace(this.nativePtr, inputLength);
	}
	
	public void* AppendToBuffer(void* _out, void ba)
	{
		return CQt.QStringDecoder_AppendToBuffer(this.nativePtr, _out, ba);
	}
	
	public static void DecoderForHtml(void data)
	{
		CQt.QStringDecoder_DecoderForHtml(data);
	}
	
	public bool IsValid()
	{
		return CQt.QStringConverter_IsValid(this.nativePtr);
	}
	
	public void ResetState()
	{
		CQt.QStringConverter_ResetState(this.nativePtr);
	}
	
	public bool HasError()
	{
		return CQt.QStringConverter_HasError(this.nativePtr);
	}
	
	public char8[] Name()
	{
		return CQt.QStringConverter_Name(this.nativePtr);
	}
	
	public static char8[] NameForEncoding(int64 e)
	{
		return CQt.QStringConverter_NameForEncoding(e);
	}
	
}
extension CQt
{
	[LinkName("QStringDecoder_new")]
	public static extern void* QStringDecoder_new(int64 encoding);
	[LinkName("QStringDecoder_new2")]
	public static extern void* QStringDecoder_new2();
	[LinkName("QStringDecoder_new3")]
	public static extern void* QStringDecoder_new3(char8[] name);
	[LinkName("QStringDecoder_new4")]
	public static extern void* QStringDecoder_new4(int64 encoding, int64 flags);
	[LinkName("QStringDecoder_new5")]
	public static extern void* QStringDecoder_new5(char8[] name, int64 f);
	[LinkName("QStringDecoder_RequiredSpace")]
	public static extern int32 QStringDecoder_RequiredSpace(void* c_this, int32 inputLength);
	[LinkName("QStringDecoder_AppendToBuffer")]
	public static extern void* QStringDecoder_AppendToBuffer(void* c_this, void* _out, void ba);
	[LinkName("QStringDecoder_DecoderForHtml")]
	public static extern void QStringDecoder_DecoderForHtml(void data);
	/// Delete this object from C++ memory
	[LinkName("QStringDecoder_Delete")]
	public static extern void QStringDecoder_Delete(void* self);
}